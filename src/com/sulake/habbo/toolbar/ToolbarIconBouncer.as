package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2044:Number;
      
      private var var_579:Number = 0;
      
      private var var_2043:Number;
      
      private var var_580:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2044 = param1;
         var_2043 = param2;
      }
      
      public function update() : void
      {
         var_580 += var_2043;
         var_579 += var_580;
         if(var_579 > 0)
         {
            var_579 = 0;
            var_580 = var_2044 * -1 * var_580;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_580 = param1;
         var_579 = 0;
      }
      
      public function get location() : Number
      {
         return var_579;
      }
   }
}
