package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_129:int = 0;
      
      public static const const_120:int = 1;
      
      public static const const_97:int = 2;
      
      public static const const_543:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1118:int = 0;
      
      private var var_1668:String = "";
      
      private var var_209:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_209 = param2;
         var_1118 = param3;
         var_1668 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1668;
      }
      
      public function get chatType() : int
      {
         return var_1118;
      }
      
      public function get text() : String
      {
         return var_209;
      }
   }
}
