package com.sulake.habbo.navigator.roomthumbnails
{
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ThumbnailImageConfiguration
   {
       
      
      private var _selected:Boolean;
      
      private var var_1875:BitmapData;
      
      private var var_658:IBitmapWrapperWindow;
      
      private var var_1447:int = 1;
      
      private var _navigator:HabboNavigator;
      
      private var _type:int;
      
      private var var_1874:BitmapData;
      
      private var var_1876:Rectangle;
      
      private var var_1873:String;
      
      private var _id:int;
      
      public function ThumbnailImageConfiguration(param1:HabboNavigator, param2:int, param3:int, param4:String, param5:BitmapData)
      {
         super();
         this._navigator = param1;
         this._id = param2;
         this._type = param3;
         this.var_1873 = param4;
         this.var_1874 = param5;
      }
      
      public function getImg() : BitmapData
      {
         if(this.var_1875 == null)
         {
            this.var_1875 = this._navigator.getButtonImage(this.var_1873);
         }
         return this.var_1875;
      }
      
      public function copyTo(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = this.getImg();
         param1.copyPixels(_loc2_,_loc2_.rect,new Point((param1.width - _loc2_.width) / 2,param1.height - _loc2_.height),null,null,true);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function setSelected(param1:Boolean) : void
      {
         if(this._selected == param1)
         {
            return;
         }
         this._selected = param1;
         refreshListImg();
      }
      
      public function registerListImg(param1:IBitmapWrapperWindow) : void
      {
         this.var_658 = param1;
         refreshListImg();
      }
      
      private function refreshListImg() : void
      {
         var _loc1_:* = null;
         if(this.var_1876 == null)
         {
            _loc1_ = var_658.bitmap.rect;
            this.var_1876 = new Rectangle(var_1447,var_1447,_loc1_.width - 2 * var_1447,_loc1_.height - 2 * var_1447);
         }
         var_658.bitmap.fillRect(var_658.bitmap.rect,4281545523);
         var_658.bitmap.fillRect(this.var_1876,4284900966);
         copyTo(var_658.bitmap);
         if(_selected)
         {
            var_658.bitmap.copyPixels(var_1874,var_1874.rect,new Point(0,0),null,null,true);
         }
         var_658.invalidate();
      }
      
      public function get picName() : String
      {
         return this.var_1873;
      }
   }
}
