package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_693:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_936:int = 0;
      
      public static const const_1363:Array = [2,3,4];
       
      
      private var var_89:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_693);
         var_89 = param1;
      }
      
      public function get style() : int
      {
         return var_89;
      }
   }
}
