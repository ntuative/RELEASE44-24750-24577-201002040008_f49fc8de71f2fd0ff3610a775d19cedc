package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_2063:int;
      
      private var var_1269:int;
      
      private var var_1640:int;
      
      private var var_1639:int = -1;
      
      private var var_363:int;
      
      private var var_1638:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1268:int;
      
      private var var_1637:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1637 = param2;
         var_1638 = param3;
         var_1269 = param4;
         var_363 = param5;
         var_1640 = param6;
         var_1268 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_2063 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_2063;
      }
      
      public function get price() : int
      {
         return var_1269;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1639;
      }
      
      public function get offerCount() : int
      {
         return var_1268;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1638;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1639 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1269 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1268 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_363;
      }
      
      public function get averagePrice() : int
      {
         return var_1640;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1637;
      }
   }
}
