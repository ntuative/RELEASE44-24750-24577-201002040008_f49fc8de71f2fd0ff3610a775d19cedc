package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1093:int = 80;
       
      
      private var var_490:Map;
      
      private var var_686:String = "";
      
      private var var_1248:Array;
      
      public function UserRegistry()
      {
         var_490 = new Map();
         var_1248 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_490.getValue(var_1248.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_686;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_490.getValue(param1) != null)
         {
            var_490.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_686);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_686 == "")
         {
            var_1248.push(param1);
         }
         var_490.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_490;
      }
      
      public function unregisterRoom() : void
      {
         var_686 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_490.length > const_1093)
         {
            _loc1_ = var_490.getKey(0);
            var_490.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_686 = param1;
         if(var_686 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
