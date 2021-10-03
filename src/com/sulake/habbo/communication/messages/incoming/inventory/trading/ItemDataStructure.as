package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1030:String;
      
      private var var_1944:int;
      
      private var var_1942:int;
      
      private var var_1473:int;
      
      private var var_1945:int;
      
      private var _category:int;
      
      private var var_2343:int;
      
      private var var_1947:int;
      
      private var var_1941:int;
      
      private var var_1940:int;
      
      private var var_1943:int;
      
      private var var_1946:Boolean;
      
      private var var_1337:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1944 = param1;
         var_1030 = param2;
         var_1942 = param3;
         var_1940 = param4;
         _category = param5;
         var_1337 = param6;
         var_1473 = param7;
         var_1941 = param8;
         var_1947 = param9;
         var_1943 = param10;
         var_1945 = param11;
         var_1946 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1940;
      }
      
      public function get extra() : int
      {
         return var_1473;
      }
      
      public function get stuffData() : String
      {
         return var_1337;
      }
      
      public function get groupable() : Boolean
      {
         return var_1946;
      }
      
      public function get creationMonth() : int
      {
         return var_1943;
      }
      
      public function get roomItemID() : int
      {
         return var_1942;
      }
      
      public function get itemType() : String
      {
         return var_1030;
      }
      
      public function get itemID() : int
      {
         return var_1944;
      }
      
      public function get songID() : int
      {
         return var_1473;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1941;
      }
      
      public function get creationYear() : int
      {
         return var_1945;
      }
      
      public function get creationDay() : int
      {
         return var_1947;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
