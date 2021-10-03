package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_395:int = -2147483648;
      
      private var var_394:int = 2147483647;
      
      private var var_392:int = 2147483647;
      
      private var _target:IWindow;
      
      private var var_393:int = -2147483648;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         _target = param1;
      }
      
      public function get maxWidth() : int
      {
         return var_394;
      }
      
      public function get isEmpty() : Boolean
      {
         return var_393 == int.MIN_VALUE && var_394 == int.MAX_VALUE && var_395 == int.MIN_VALUE && var_392 == int.MAX_VALUE;
      }
      
      public function set maxWidth(param1:int) : void
      {
         var_394 = param1;
         if(var_394 < int.MAX_VALUE && true && _target.width > var_394)
         {
            _target.width = var_394;
         }
      }
      
      public function setEmpty() : void
      {
         var_393 = int.MIN_VALUE;
         var_394 = int.MAX_VALUE;
         var_395 = int.MIN_VALUE;
         var_392 = int.MAX_VALUE;
      }
      
      public function set maxHeight(param1:int) : void
      {
         var_392 = param1;
         if(var_392 < int.MAX_VALUE && true && _target.height > var_392)
         {
            _target.height = var_392;
         }
      }
      
      public function get minHeight() : int
      {
         return var_395;
      }
      
      public function get minWidth() : int
      {
         return var_393;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_393 = var_393;
         _loc2_.var_394 = var_394;
         _loc2_.var_395 = var_395;
         _loc2_.var_392 = var_392;
         return _loc2_;
      }
      
      public function set minWidth(param1:int) : void
      {
         var_393 = param1;
         if(var_393 > int.MIN_VALUE && true && _target.width < var_393)
         {
            _target.width = var_393;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         var_395 = param1;
         if(var_395 > int.MIN_VALUE && true && _target.height < var_395)
         {
            _target.height = var_395;
         }
      }
      
      public function get maxHeight() : int
      {
         return var_392;
      }
   }
}
