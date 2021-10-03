package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1681:int;
      
      private var var_1372:int;
      
      private var var_1682:int;
      
      private var var_1683:int;
      
      private var var_1685:int;
      
      private var var_1373:int;
      
      private var var_1570:int;
      
      private var var_1684:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1681;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1372;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1570;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1683;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1685;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1373;
      }
      
      public function get commission() : int
      {
         return var_1682;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1684 = param1.readBoolean();
         var_1682 = param1.readInteger();
         var_1372 = param1.readInteger();
         var_1373 = param1.readInteger();
         var_1683 = param1.readInteger();
         var_1681 = param1.readInteger();
         var_1685 = param1.readInteger();
         var_1570 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1684;
      }
   }
}
