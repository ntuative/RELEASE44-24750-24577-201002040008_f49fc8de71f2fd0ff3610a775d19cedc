package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2198:Class;
      
      private var var_2199:Class;
      
      private var var_2200:String;
      
      private var var_1303:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2200 = param1;
         var_2199 = param2;
         var_2198 = param3;
         if(rest == null)
         {
            var_1303 = new Array();
         }
         else
         {
            var_1303 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2198;
      }
      
      public function get assetClass() : Class
      {
         return var_2199;
      }
      
      public function get mimeType() : String
      {
         return var_2200;
      }
      
      public function get fileTypes() : Array
      {
         return var_1303;
      }
   }
}
