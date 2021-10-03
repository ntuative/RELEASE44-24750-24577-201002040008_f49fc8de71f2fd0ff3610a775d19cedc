package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectMouseEvent;
   
   public class RoomObjectTileMouseEvent extends RoomObjectMouseEvent
   {
       
      
      private var var_1985:Number;
      
      private var var_1986:Number;
      
      private var var_1984:Number;
      
      public function RoomObjectTileMouseEvent(param1:String, param2:int, param3:String, param4:Number, param5:Number, param6:Number, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param2,param3,param7,param8);
         var_1985 = param4;
         var_1986 = param5;
         var_1984 = param6;
      }
      
      public function get tileX() : Number
      {
         return var_1985;
      }
      
      public function get tileY() : Number
      {
         return var_1986;
      }
      
      public function get tileZ() : Number
      {
         return var_1984;
      }
   }
}
