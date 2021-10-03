package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2235:Boolean;
      
      protected var var_1473:Number;
      
      protected var var_2236:Boolean;
      
      protected var _type:int;
      
      protected var var_2237:Boolean;
      
      protected var var_1615:int;
      
      protected var var_2238:Boolean;
      
      protected var var_1337:String;
      
      protected var var_1945:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1614:String;
      
      protected var var_1946:Boolean;
      
      protected var _category:int;
      
      protected var var_1943:int;
      
      protected var var_2234:int;
      
      protected var var_1947:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_1946 = param5;
         var_2238 = param6;
         var_2235 = param7;
         var_2236 = param8;
         var_1337 = param9;
         var_1473 = param10;
         var_2234 = param11;
         var_1947 = param12;
         var_1943 = param13;
         var_1945 = param14;
         var_1614 = param15;
         var_1615 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2237;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1473;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2237 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_1615;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2236;
      }
      
      public function get slotId() : String
      {
         return var_1614;
      }
      
      public function get expires() : int
      {
         return var_2234;
      }
      
      public function get creationYear() : int
      {
         return var_1945;
      }
      
      public function get creationDay() : int
      {
         return var_1947;
      }
      
      public function get stuffData() : String
      {
         return var_1337;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2238;
      }
      
      public function get groupable() : Boolean
      {
         return var_1946;
      }
      
      public function get creationMonth() : int
      {
         return var_1943;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2235;
      }
   }
}
