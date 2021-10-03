package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
      
      public static const const_901:int = 0;
      
      public static const WARNING_TYPE_CHAT_DELAY:int = 1;
       
      
      private var var_1102:Boolean = true;
      
      private var var_1285:int = 0;
      
      private var var_771:int = 0;
      
      private var var_1141:int = 0;
      
      private var var_772:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1286:int = 15;
      
      private var var_170:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_1284:int = 60;
      
      public function LagWarningLogger()
      {
         super();
         var_1141 = getTimer();
      }
      
      public function logWarnings() : void
      {
         if(!var_1102)
         {
            return;
         }
         if(nothingToReport)
         {
            return;
         }
         var _loc1_:LagWarningReportMessageComposer = new LagWarningReportMessageComposer(var_771,var_772);
         if(_connection != null)
         {
            _connection.send(_loc1_);
         }
         resetLog();
         ++var_1285;
      }
      
      private function get nothingToReport() : Boolean
      {
         return var_771 == 0 && var_772 == 0;
      }
      
      private function resetLog() : void
      {
         var_771 = 0;
         var_772 = 0;
      }
      
      public function update(param1:uint) : void
      {
         if(!var_1102)
         {
            return;
         }
         if(getTimer() - var_1141 > var_1284 * 1000 && var_1285 < var_1286)
         {
            var_1141 = getTimer();
            logWarnings();
         }
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_170 = param1;
         var_1284 = int(var_170.getKey("lagwarninglog.interval","60"));
         var_1286 = int(var_170.getKey("lagwarninglog.reportlimit","15"));
         var_1102 = Boolean(int(var_170.getKey("lagwarninglog.enabled","1")));
      }
      
      public function registerWarning(param1:int) : void
      {
         switch(param1)
         {
            case WARNING_TYPE_CHAT_DELAY:
               var_772 += 1;
            case const_901:
               var_771 += 1;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
