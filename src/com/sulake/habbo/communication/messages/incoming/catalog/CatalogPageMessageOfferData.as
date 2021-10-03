package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_794:Array;
      
      private var var_774:int;
      
      private var var_1143:String;
      
      private var _offerId:int;
      
      private var var_775:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1143 = param1.readString();
         var_774 = param1.readInteger();
         var_775 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_794 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_794.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_794;
      }
      
      public function get priceInCredits() : int
      {
         return var_774;
      }
      
      public function get localizationId() : String
      {
         return var_1143;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_775;
      }
   }
}
