package com.sulake.core.assets
{
   import flash.utils.getQualifiedClassName;
   
   public class UnknownAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_1080:AssetTypeDeclaration;
      
      private var var_898:String;
      
      private var var_35:Object = null;
      
      public function UnknownAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_1080 = param1;
         var_898 = param2;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_1080;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         var_35 = param1;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         var_35 = param1.content as Object;
      }
      
      public function get content() : Object
      {
         return var_35;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            var_35 = null;
            var_1080 = null;
            var_898 = null;
         }
      }
      
      public function get url() : String
      {
         return var_898;
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + ": " + var_35;
      }
   }
}
