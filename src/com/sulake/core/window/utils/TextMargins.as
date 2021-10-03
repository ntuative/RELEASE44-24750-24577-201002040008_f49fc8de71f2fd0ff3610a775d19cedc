package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_815:int;
      
      private var _right:int;
      
      private var var_816:int;
      
      private var var_814:int;
      
      private var var_187:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_816 = param1;
         var_814 = param2;
         _right = param3;
         var_815 = param4;
         var_187 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_815 = param1;
         var_187(this);
      }
      
      public function get left() : int
      {
         return var_816;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_816 == 0 && _right == 0 && var_814 == 0 && var_815 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_814 = param1;
         var_187(this);
      }
      
      public function get top() : int
      {
         return var_814;
      }
      
      public function set left(param1:int) : void
      {
         var_816 = param1;
         var_187(this);
      }
      
      public function get bottom() : int
      {
         return var_815;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_816,var_814,_right,var_815,param1);
      }
      
      public function dispose() : void
      {
         var_187 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_187(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
