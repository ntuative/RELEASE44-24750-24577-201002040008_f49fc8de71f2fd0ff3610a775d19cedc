package com.sulake.room.renderer.utils
{
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import flash.display.BitmapData;
   
   public class SortableSprite
   {
       
      
      private var _y:int = 0;
      
      private var var_93:int = 0;
      
      private var _bitmapData:BitmapData = null;
      
      private var var_1898:IRoomObjectSprite = null;
      
      private var _name:String = "";
      
      private var var_92:Number = 0;
      
      public function SortableSprite()
      {
         super();
      }
      
      public function get bitmapData() : BitmapData
      {
         return _bitmapData;
      }
      
      public function get sprite() : IRoomObjectSprite
      {
         return var_1898;
      }
      
      public function set sprite(param1:IRoomObjectSprite) : void
      {
         var_1898 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set bitmapData(param1:BitmapData) : void
      {
         _bitmapData = param1;
      }
      
      public function set y(param1:int) : void
      {
         _y = param1;
      }
      
      public function set z(param1:Number) : void
      {
         var_92 = param1;
      }
      
      public function set x(param1:int) : void
      {
         var_93 = param1;
      }
      
      public function get x() : int
      {
         return var_93;
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_92;
      }
   }
}
