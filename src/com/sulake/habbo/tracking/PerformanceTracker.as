package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1520:GarbageMonitor = null;
      
      private var var_1141:int = 0;
      
      private var var_1270:Boolean = false;
      
      private var var_2068:String = "";
      
      private var var_1519:String = "";
      
      private var var_355:Number = 0;
      
      private var var_1286:int = 10;
      
      private var var_2302:Array;
      
      private var var_614:int = 0;
      
      private var var_1284:int = 60;
      
      private var var_1042:int = 0;
      
      private var var_1043:int = 0;
      
      private var var_2069:String = "";
      
      private var var_2133:Number = 0;
      
      private var var_1287:int = 1000;
      
      private var var_2135:Boolean = true;
      
      private var var_2134:Number = 0.15;
      
      private var var_170:IHabboConfigurationManager = null;
      
      private var var_2071:String = "";
      
      private var var_1285:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2302 = [];
         super();
         var_1519 = Capabilities.version;
         var_2068 = Capabilities.os;
         var_1270 = Capabilities.isDebugger;
         var_2071 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1520 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1141 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1520.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1520.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_355;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1284 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1519;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1043;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1287)
         {
            ++var_1042;
            _loc3_ = true;
         }
         else
         {
            ++var_614;
            if(var_614 <= 1)
            {
               var_355 = param1;
            }
            else
            {
               _loc4_ = Number(var_614);
               var_355 = var_355 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1141 > var_1284 * 1000 && var_1285 < var_1286)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_355);
            _loc5_ = true;
            if(var_2135 && var_1285 > 0)
            {
               _loc6_ = differenceInPercents(var_2133,var_355);
               if(_loc6_ < var_2134)
               {
                  _loc5_ = false;
               }
            }
            var_1141 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2133 = var_355;
               if(sendReport())
               {
                  ++var_1285;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1286 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1287 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_2071,var_1519,var_2068,var_2069,var_1270,_loc4_,_loc3_,var_1043,var_355,var_1042);
            _connection.send(_loc1_);
            var_1043 = 0;
            var_355 = 0;
            var_614 = 0;
            var_1042 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_170 = param1;
         var_1284 = int(var_170.getKey("performancetest.interval","60"));
         var_1287 = int(var_170.getKey("performancetest.slowupdatelimit","1000"));
         var_1286 = int(var_170.getKey("performancetest.reportlimit","10"));
         var_2134 = Number(var_170.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2135 = Boolean(int(var_170.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
