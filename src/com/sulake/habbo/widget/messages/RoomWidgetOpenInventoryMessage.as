package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_895:String = "inventory_badges";
      
      public static const const_1172:String = "inventory_clothes";
      
      public static const const_1358:String = "inventory_furniture";
      
      public static const const_510:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_917:String = "inventory_effects";
       
      
      private var var_2066:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_510);
         var_2066 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2066;
      }
   }
}
