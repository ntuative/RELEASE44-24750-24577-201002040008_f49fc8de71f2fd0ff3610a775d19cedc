package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_368:uint;
      
      private var var_919:IUnknown;
      
      private var var_1093:String;
      
      private var var_918:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_918 = param1;
         var_1093 = getQualifiedClassName(var_918);
         var_919 = param2;
         var_368 = 0;
      }
      
      public function get iid() : IID
      {
         return var_918;
      }
      
      public function get disposed() : Boolean
      {
         return var_919 == null;
      }
      
      public function get references() : uint
      {
         return var_368;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_368) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_919;
      }
      
      public function get iis() : String
      {
         return var_1093;
      }
      
      public function reserve() : uint
      {
         return ++var_368;
      }
      
      public function dispose() : void
      {
         var_918 = null;
         var_1093 = null;
         var_919 = null;
         var_368 = 0;
      }
   }
}
