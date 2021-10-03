package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2131:String;
      
      private var var_885:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2131 = param1;
         var_885 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2131;
      }
      
      public function get parameter() : String
      {
         return var_885;
      }
   }
}
