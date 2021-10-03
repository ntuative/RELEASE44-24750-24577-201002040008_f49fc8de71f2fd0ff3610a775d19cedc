package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2051:Boolean = false;
      
      private var var_2050:int = 0;
      
      private var var_1736:int = 0;
      
      private var var_2052:int = 0;
      
      private var var_1525:int = 0;
      
      private var var_1734:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1525 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2050;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2051;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2051 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2050 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1736 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1525;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2052 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1736;
      }
      
      public function get pixelBalance() : int
      {
         return var_2052;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1734 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1734;
      }
   }
}
