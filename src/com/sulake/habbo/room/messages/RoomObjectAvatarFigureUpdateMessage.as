package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1623:String;
      
      private var var_532:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_532 = param1;
         var_1623 = param2;
      }
      
      public function get race() : String
      {
         return var_1623;
      }
      
      public function get figure() : String
      {
         return var_532;
      }
   }
}
