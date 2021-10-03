package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1613:int;
      
      private var var_1612:Boolean;
      
      private var var_1615:int;
      
      private var var_1337:String;
      
      private var var_1616:Boolean = false;
      
      private var var_1611:int;
      
      private var var_432:int;
      
      private var var_1030:String;
      
      private var var_1614:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1159:int;
      
      private var var_1610:Boolean;
      
      private var var_1609:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1613 = param1;
         var_1030 = param2;
         _objId = param3;
         var_1159 = param4;
         var_1337 = param5;
         var_1612 = param6;
         var_1610 = param7;
         var_1611 = param8;
         var_1614 = param9;
         var_1615 = param10;
         var_432 = -1;
      }
      
      public function get songId() : int
      {
         return var_1615;
      }
      
      public function get iconCallbackId() : int
      {
         return var_432;
      }
      
      public function get expiryTime() : int
      {
         return var_1611;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1609 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1616 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_432 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1610;
      }
      
      public function get slotId() : String
      {
         return var_1614;
      }
      
      public function get classId() : int
      {
         return var_1159;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1612;
      }
      
      public function get stuffData() : String
      {
         return var_1337;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1613;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1616;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1609;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1030;
      }
   }
}
