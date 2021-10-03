package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectDimmerStateUpdateEvent extends RoomObjectEvent
   {
      
      public static const DIMMER_STATE:String = "RODSUE_DIMMER_STATE";
       
      
      private var var_1009:int;
      
      private var _color:uint;
      
      private var var_1008:int;
      
      private var var_2038:int;
      
      private var var_47:int;
      
      public function RoomObjectDimmerStateUpdateEvent(param1:int, param2:String, param3:int, param4:int, param5:int, param6:uint, param7:int, param8:Boolean = false, param9:Boolean = false)
      {
         super(DIMMER_STATE,param1,param2,param8,param9);
         var_47 = param3;
         var_2038 = param4;
         var_1009 = param5;
         _color = param6;
         var_1008 = param7;
      }
      
      public function get brightness() : uint
      {
         return var_1008;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_1009;
      }
      
      public function get state() : int
      {
         return var_47;
      }
      
      public function get presetId() : int
      {
         return var_2038;
      }
   }
}
