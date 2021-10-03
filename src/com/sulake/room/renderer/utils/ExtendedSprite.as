package com.sulake.room.renderer.utils
{
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class ExtendedSprite extends Sprite
   {
       
      
      private var var_1022:Boolean = false;
      
      private var var_2296:Point;
      
      private var var_1304:String = "";
      
      private var var_1980:Boolean = false;
      
      private var var_1979:Boolean = false;
      
      private var _bitmap:Bitmap = null;
      
      private var var_1787:String = "";
      
      private var var_1251:int = 128;
      
      public function ExtendedSprite()
      {
         super();
         var_2296 = new Point();
         enableAlpha();
      }
      
      public function get alphaActive() : Boolean
      {
         return var_1022;
      }
      
      override public function removeChildAt(param1:int) : DisplayObject
      {
         if(param1 == 0)
         {
            return removeChild(_bitmap);
         }
         return null;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_1980;
      }
      
      public function get alphaTolerance() : int
      {
         return var_1251;
      }
      
      public function disableAlpha() : void
      {
         var_1022 = false;
      }
      
      public function set identifier(param1:String) : void
      {
         var_1304 = param1;
      }
      
      public function get tag() : String
      {
         return var_1787;
      }
      
      override public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject
      {
         if(param2 != 0)
         {
            return param1;
         }
         return addChild(param1);
      }
      
      public function set alphaTolerance(param1:int) : void
      {
         var_1251 = param1;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(numChildren > 0)
         {
            _loc1_ = removeChildAt(0);
            if(_loc1_ != null && _loc1_ is Bitmap)
            {
               _loc2_ = _loc1_ as Bitmap;
               _loc2_.bitmapData = null;
            }
         }
         _bitmap = null;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_1980 = param1;
      }
      
      override public function set hitArea(param1:Sprite) : void
      {
         if(param1 != null && super.hitArea == null)
         {
            disableAlpha();
         }
         else if(param1 == null && super.hitArea != null)
         {
            enableAlpha();
         }
         super.hitArea = param1;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_1979 = param1;
      }
      
      public function get identifier() : String
      {
         return var_1304;
      }
      
      public function enableAlpha() : void
      {
         disableAlpha();
         if(hitArea != null)
         {
            return;
         }
         var_1022 = true;
      }
      
      override public function hitTestPoint(param1:Number, param2:Number, param3:Boolean = false) : Boolean
      {
         if(var_1251 > 255)
         {
            return false;
         }
         if(numChildren == 0)
         {
            return false;
         }
         var _loc4_:Bitmap = _bitmap;
         if(_loc4_ == null)
         {
            return false;
         }
         if(param1 < 0 || param1 >= _loc4_.bitmapData.width || param2 < 0 || param2 >= _loc4_.bitmapData.height)
         {
            return false;
         }
         if(!var_1022 || !_loc4_.bitmapData.transparent)
         {
            return true;
         }
         var _loc5_:uint = _loc4_.bitmapData.getPixel32(param1,param2);
         _loc5_ >>= 24;
         return _loc5_ > var_1251;
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_1979;
      }
      
      public function set tag(param1:String) : void
      {
         var_1787 = param1;
      }
      
      override public function removeChild(param1:DisplayObject) : DisplayObject
      {
         if(param1 == null)
         {
            return null;
         }
         if(param1 as Bitmap == _bitmap)
         {
            _bitmap = null;
         }
         return super.removeChild(param1);
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         if(numChildren > 0)
         {
            return param1;
         }
         if(param1 is Bitmap)
         {
            super.addChild(param1);
            _bitmap = param1 as Bitmap;
         }
         return param1;
      }
   }
}
