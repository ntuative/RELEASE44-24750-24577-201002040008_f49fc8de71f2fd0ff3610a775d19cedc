package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1452:Array;
      
      private var var_1640:int;
      
      private var var_1892:int;
      
      private var var_1893:int;
      
      private var var_1894:int;
      
      private var _dayOffsets:Array;
      
      private var var_1891:int;
      
      private var var_1453:Array;
      
      public function MarketplaceItemStatsParser()
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
      
      public function get furniTypeId() : int
      {
         return var_1892;
      }
      
      public function get historyLength() : int
      {
         return var_1894;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1893;
      }
      
      public function get offerCount() : int
      {
         return var_1891;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1453;
      }
      
      public function get averagePrice() : int
      {
         return var_1640;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1640 = param1.readInteger();
         var_1891 = param1.readInteger();
         var_1894 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1452 = [];
         var_1453 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1452.push(param1.readInteger());
            var_1453.push(param1.readInteger());
            _loc3_++;
         }
         var_1893 = param1.readInteger();
         var_1892 = param1.readInteger();
         return true;
      }
   }
}
