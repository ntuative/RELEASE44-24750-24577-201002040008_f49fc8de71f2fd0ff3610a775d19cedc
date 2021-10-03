package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_647:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_647 = new ByteArray();
         var_647.writeShort(param1);
         var_647.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_647.position = 0;
         if(false)
         {
            _loc1_ = var_647.readShort();
            var_647.position = 0;
         }
         return _loc1_;
      }
   }
}
