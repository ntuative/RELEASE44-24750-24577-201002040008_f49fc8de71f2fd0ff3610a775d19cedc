package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.tracking.LatencyPingResponseMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingReportMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingRequestMessageComposer;
   import com.sulake.habbo.communication.messages.parser.tracking.LatencyPingResponseMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LatencyTracker
   {
       
      
      private var var_159:Array;
      
      private var var_47:Boolean = false;
      
      private var var_1497:int = 0;
      
      private var var_1498:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_495:Map;
      
      private var var_2053:int = 0;
      
      private var var_1495:int = 0;
      
      private var var_170:IHabboConfigurationManager;
      
      private var var_1263:int = 0;
      
      private var _connection:IConnection;
      
      private var var_1496:int = 0;
      
      public function LatencyTracker()
      {
         super();
      }
      
      public function update(param1:uint) : void
      {
         if(!var_47)
         {
            return;
         }
         if(getTimer() - var_1497 > var_1498)
         {
            testLatency();
         }
      }
      
      private function testLatency() : void
      {
         var_1497 = getTimer();
         var_495.add(var_1263,var_1497);
         _connection.send(new LatencyPingRequestMessageComposer(var_1263));
         ++var_1263;
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function init() : void
      {
         if(var_170 == null || _communication == null || _connection == null)
         {
            return;
         }
         var_1498 = int(var_170.getKey("latencytest.interval"));
         var_1496 = int(var_170.getKey("latencytest.report.index"));
         var_2053 = int(var_170.getKey("latencytest.report.delta"));
         _communication.addHabboConnectionMessageEvent(new LatencyPingResponseMessageEvent(onPingResponse));
         if(var_1498 < 1)
         {
            return;
         }
         var_495 = new Map();
         var_159 = new Array();
         var_47 = true;
      }
      
      private function onPingResponse(param1:IMessageEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         if(var_495 == null || var_159 == null)
         {
            return;
         }
         var _loc2_:LatencyPingResponseMessageParser = (param1 as LatencyPingResponseMessageEvent).getParser();
         var _loc3_:int = var_495.getValue(_loc2_.requestId);
         var_495.remove(_loc2_.requestId);
         var _loc4_:int = getTimer() - _loc3_;
         var_159.push(_loc4_);
         if(var_159.length == var_1496 && var_1496 > 0)
         {
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            _loc8_ = 0;
            while(_loc8_ < var_159.length)
            {
               _loc5_ += var_159[_loc8_];
               _loc8_++;
            }
            _loc9_ = _loc5_ / 0;
            _loc8_ = 0;
            while(_loc8_ < var_159.length)
            {
               if(var_159[_loc8_] < _loc9_ * 2)
               {
                  _loc6_ += var_159[_loc8_];
                  _loc7_++;
               }
               _loc8_++;
            }
            if(_loc7_ == 0)
            {
               var_159 = [];
               return;
            }
            _loc10_ = _loc6_ / _loc7_;
            if(Math.abs(_loc9_ - var_1495) > var_2053 || var_1495 == 0)
            {
               var_1495 = _loc9_;
               _loc11_ = new LatencyPingReportMessageComposer(_loc9_,_loc10_,var_159.length);
               _connection.send(_loc11_);
            }
            var_159 = [];
         }
      }
      
      public function dispose() : void
      {
         var_47 = false;
         var_170 = null;
         _communication = null;
         _connection = null;
         if(var_495 != null)
         {
            var_495.dispose();
            var_495 = null;
         }
         var_159 = null;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_170 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
