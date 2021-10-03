package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1337:String;
      
      private var var_1030:String;
      
      private var var_1833:Boolean;
      
      private var var_1473:int;
      
      private var var_1613:int;
      
      private var var_1832:Boolean;
      
      private var var_1614:String = "";
      
      private var var_1612:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1159:int;
      
      private var var_1610:Boolean;
      
      private var var_1615:int = -1;
      
      private var var_1611:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1613 = param1;
         var_1030 = param2;
         _objId = param3;
         var_1159 = param4;
         _category = param5;
         var_1337 = param6;
         var_1833 = param7;
         var_1612 = param8;
         var_1610 = param9;
         var_1832 = param10;
         var_1611 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1614;
      }
      
      public function get extra() : int
      {
         return var_1473;
      }
      
      public function get classId() : int
      {
         return var_1159;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1832;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1833;
      }
      
      public function get stripId() : int
      {
         return var_1613;
      }
      
      public function get stuffData() : String
      {
         return var_1337;
      }
      
      public function get songId() : int
      {
         return var_1615;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1614 = param1;
         var_1473 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1030;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1611;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1610;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1612;
      }
   }
}
