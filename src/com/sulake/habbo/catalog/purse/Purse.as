package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1736:int = 0;
      
      private var var_1733:int = 0;
      
      private var var_1735:int = 0;
      
      private var var_1734:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_1733;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1733 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1736 = param1;
      }
      
      public function get credits() : int
      {
         return var_1735;
      }
      
      public function get clubDays() : int
      {
         return var_1736;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1734 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1735 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1734;
      }
   }
}
