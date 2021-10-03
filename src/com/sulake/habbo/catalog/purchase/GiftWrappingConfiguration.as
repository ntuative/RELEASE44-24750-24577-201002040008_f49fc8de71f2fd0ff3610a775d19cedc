package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_566:Array;
      
      private var var_1269:int;
      
      private var var_1474:Array;
      
      private var var_567:Array;
      
      private var var_1684:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1684 = _loc2_.isWrappingEnabled;
         var_1269 = _loc2_.wrappingPrice;
         var_1474 = _loc2_.stuffTypes;
         var_567 = _loc2_.boxTypes;
         var_566 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_566;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1474;
      }
      
      public function get price() : int
      {
         return var_1269;
      }
      
      public function get boxTypes() : Array
      {
         return var_567;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1684;
      }
   }
}
