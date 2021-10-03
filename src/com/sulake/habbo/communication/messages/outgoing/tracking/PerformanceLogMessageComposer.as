package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1042:int = 0;
      
      private var var_1270:int = 0;
      
      private var var_2068:String = "";
      
      private var var_1043:int = 0;
      
      private var var_2069:String = "";
      
      private var var_2073:int = 0;
      
      private var var_1519:String = "";
      
      private var var_2070:int = 0;
      
      private var var_2072:int = 0;
      
      private var var_2071:String = "";
      
      private var var_2067:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2070 = param1;
         var_2071 = param2;
         var_1519 = param3;
         var_2068 = param4;
         var_2069 = param5;
         if(param6)
         {
            var_1270 = 1;
         }
         else
         {
            var_1270 = 0;
         }
         var_2073 = param7;
         var_2072 = param8;
         var_1043 = param9;
         var_2067 = param10;
         var_1042 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2070,var_2071,var_1519,var_2068,var_2069,var_1270,var_2073,var_2072,var_1043,var_2067,var_1042];
      }
      
      public function dispose() : void
      {
      }
   }
}
