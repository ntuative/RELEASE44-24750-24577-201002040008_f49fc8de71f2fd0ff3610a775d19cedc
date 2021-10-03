package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1766:Array;
      
      private var var_1695:String;
      
      private var var_1767:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1695 = param1;
         var_1766 = param2;
         var_1767 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1695;
      }
      
      public function get yieldList() : Array
      {
         return var_1766;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1767;
      }
   }
}
