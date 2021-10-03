package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_712:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1787:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_712);
         var_1787 = param1;
      }
      
      public function get tag() : String
      {
         return var_1787;
      }
   }
}
