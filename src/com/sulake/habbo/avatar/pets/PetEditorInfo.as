package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1723:Boolean;
      
      private var var_1724:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1723 = Boolean(parseInt(param1.@club));
         var_1724 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1723;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1724;
      }
   }
}
