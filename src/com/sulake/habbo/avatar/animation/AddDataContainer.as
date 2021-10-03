package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1490:String;
      
      private var var_1369:String;
      
      private var var_1020:String;
      
      private var var_405:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1490 = String(param1.@align);
         var_1020 = String(param1.@base);
         var_1369 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_405 = Number(_loc2_);
            if(var_405 > 1)
            {
               var_405 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1490;
      }
      
      public function get ink() : String
      {
         return var_1369;
      }
      
      public function get base() : String
      {
         return var_1020;
      }
      
      public function get isBlended() : Boolean
      {
         return var_405 != 1;
      }
      
      public function get blend() : Number
      {
         return var_405;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
