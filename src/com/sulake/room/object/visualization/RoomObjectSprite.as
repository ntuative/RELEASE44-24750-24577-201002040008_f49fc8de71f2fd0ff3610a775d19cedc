package com.sulake.room.object.visualization
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
       
      
      private var var_989:Boolean = false;
      
      private var var_1979:Boolean = false;
      
      private var var_1983:String = "normal";
      
      private var var_1186:String = "";
      
      private var var_1980:Boolean = false;
      
      private var _offset:Point;
      
      private var var_351:Boolean = true;
      
      private var var_1981:Boolean = true;
      
      private var var_1031:Number = 0;
      
      private var _height:int = 0;
      
      private var _width:int = 0;
      
      private var var_1787:String = "";
      
      private var var_1982:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_839:IAsset = null;
      
      private var var_990:Boolean = false;
      
      public function RoomObjectSprite()
      {
         _offset = new Point(0,0);
         super();
      }
      
      public function get flipV() : Boolean
      {
         return var_989;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_1980;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         var_989 = param1;
      }
      
      public function get tag() : String
      {
         return var_1787;
      }
      
      public function dispose() : void
      {
         var_839 = null;
         _width = 0;
         _height = 0;
      }
      
      public function get offsetX() : int
      {
         return _offset.x;
      }
      
      public function get offsetY() : int
      {
         return _offset.y;
      }
      
      public function get height() : int
      {
         return _height;
      }
      
      public function set blendMode(param1:String) : void
      {
         var_1983 = param1;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         var_1981 = param1;
      }
      
      public function get blendMode() : String
      {
         return var_1983;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         var_1031 = param1;
      }
      
      public function set tag(param1:String) : void
      {
         var_1787 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         var_1982 = param1;
      }
      
      public function get assetName() : String
      {
         return var_1186;
      }
      
      public function get capturesMouse() : Boolean
      {
         return var_1981;
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_1979;
      }
      
      public function set assetName(param1:String) : void
      {
         var_1186 = param1;
      }
      
      public function set offsetX(param1:int) : void
      {
         _offset.x = param1;
      }
      
      public function set offsetY(param1:int) : void
      {
         _offset.y = param1;
      }
      
      public function get width() : int
      {
         return _width;
      }
      
      public function get relativeDepth() : Number
      {
         return var_1031;
      }
      
      public function get alpha() : int
      {
         return var_1982;
      }
      
      public function set asset(param1:IAsset) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1 is BitmapDataAsset)
         {
            var_839 = param1;
            _width = 0;
            _height = 0;
            if(param1 != null)
            {
               _loc2_ = param1 as BitmapDataAsset;
               _loc3_ = _loc2_.content as BitmapData;
               if(_loc3_ != null)
               {
                  _width = _loc3_.width;
                  _height = _loc3_.height;
               }
            }
         }
         else if(param1 == null)
         {
            var_839 = null;
            _width = 0;
            _height = 0;
         }
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         _color = param1;
      }
      
      public function get color() : int
      {
         return _color;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_1979 = param1;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_1980 = param1;
      }
      
      public function get asset() : IAsset
      {
         return var_839;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_351 = param1;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         var_990 = param1;
      }
      
      public function get visible() : Boolean
      {
         return var_351;
      }
      
      public function get flipH() : Boolean
      {
         return var_990;
      }
   }
}
