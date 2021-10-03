package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_233:String = "RWFAM_MOVE";
      
      public static const const_639:String = "RWFUAM_ROTATE";
      
      public static const const_655:String = "RWFAM_PICKUP";
       
      
      private var var_1637:int = 0;
      
      private var var_1636:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1637 = param2;
         var_1636 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1637;
      }
      
      public function get furniCategory() : int
      {
         return var_1636;
      }
   }
}
