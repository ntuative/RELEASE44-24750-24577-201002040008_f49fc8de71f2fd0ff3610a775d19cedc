package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_879:String = "price_type_none";
      
      public static const const_451:String = "pricing_model_multi";
      
      public static const const_453:String = "price_type_credits";
      
      public static const const_343:String = "price_type_credits_and_pixels";
      
      public static const const_373:String = "pricing_model_bundle";
      
      public static const const_347:String = "pricing_model_single";
      
      public static const const_562:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1340:String = "pricing_model_unknown";
      
      public static const const_459:String = "price_type_pixels";
       
      
      private var var_774:int;
      
      private var _offerId:int;
      
      private var var_775:int;
      
      private var var_375:String;
      
      private var var_536:String;
      
      private var var_1725:int;
      
      private var var_682:ICatalogPage;
      
      private var var_1143:String;
      
      private var var_376:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1143 = param1.localizationId;
         var_774 = param1.priceInCredits;
         var_775 = param1.priceInPixels;
         var_682 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(_loc4_.productType);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_375;
      }
      
      public function get page() : ICatalogPage
      {
         return var_682;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1725 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_376;
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
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1143 = "";
         var_774 = 0;
         var_775 = 0;
         var_682 = null;
         if(var_376 != null)
         {
            var_376.dispose();
            var_376 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_536;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1725;
      }
      
      public function get priceInCredits() : int
      {
         return var_774;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_375 = const_347;
            }
            else
            {
               var_375 = const_451;
            }
         }
         else if(param1.length > 1)
         {
            var_375 = const_373;
         }
         else
         {
            var_375 = const_1340;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_375)
         {
            case const_347:
               var_376 = new SingleProductContainer(this,param1);
               break;
            case const_451:
               var_376 = new MultiProductContainer(this,param1);
               break;
            case const_373:
               var_376 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_375);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_774 > 0 && var_775 > 0)
         {
            var_536 = const_343;
         }
         else if(var_774 > 0)
         {
            var_536 = const_453;
         }
         else if(var_775 > 0)
         {
            var_536 = const_459;
         }
         else
         {
            var_536 = const_879;
         }
      }
   }
}
