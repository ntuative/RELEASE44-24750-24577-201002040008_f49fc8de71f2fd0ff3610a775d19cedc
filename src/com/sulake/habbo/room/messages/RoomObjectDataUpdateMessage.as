package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   
   public class RoomObjectDataUpdateMessage extends RoomObjectUpdateMessage
   {
       
      
      private var var_1473:Number = NaN;
      
      private var var_47:int;
      
      private var _data:String;
      
      public function RoomObjectDataUpdateMessage(param1:int, param2:String, param3:Number = NaN)
      {
         super(null,null);
         var_47 = param1;
         _data = param2;
         var_1473 = param3;
      }
      
      public function get extra() : Number
      {
         return var_1473;
      }
      
      public function get state() : int
      {
         return var_47;
      }
      
      public function get data() : String
      {
         return _data;
      }
   }
}
