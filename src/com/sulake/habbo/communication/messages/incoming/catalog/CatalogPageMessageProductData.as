package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_193:String = "e";
      
      public static const const_74:String = "i";
      
      public static const const_73:String = "s";
       
      
      private var var_960:String;
      
      private var var_1161:String;
      
      private var var_1160:int;
      
      private var var_1660:int;
      
      private var var_961:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1161 = param1.readString();
         var_1660 = param1.readInteger();
         var_960 = param1.readString();
         var_961 = param1.readInteger();
         var_1160 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_961;
      }
      
      public function get productType() : String
      {
         return var_1161;
      }
      
      public function get expiration() : int
      {
         return var_1160;
      }
      
      public function get furniClassId() : int
      {
         return var_1660;
      }
      
      public function get extraParam() : String
      {
         return var_960;
      }
   }
}
