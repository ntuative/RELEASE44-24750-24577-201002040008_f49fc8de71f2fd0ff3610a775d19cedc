package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1002:String = "select_outfit";
       
      
      private var var_2142:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1002);
         var_2142 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2142;
      }
   }
}
