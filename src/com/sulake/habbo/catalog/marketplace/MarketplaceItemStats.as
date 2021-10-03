package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1452:Array;
      
      private var var_1640:int;
      
      private var var_1892:int;
      
      private var var_1894:int;
      
      private var var_1893:int;
      
      private var _dayOffsets:Array;
      
      private var var_1891:int;
      
      private var var_1453:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1452;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1452 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1892;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1453 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1640 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1894;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1893;
      }
      
      public function get offerCount() : int
      {
         return var_1891;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1891 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1453;
      }
      
      public function get averagePrice() : int
      {
         return var_1640;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1893 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1894 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1892 = param1;
      }
   }
}
