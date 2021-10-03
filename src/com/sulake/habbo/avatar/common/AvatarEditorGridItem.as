package com.sulake.habbo.avatar.common
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import com.sulake.habbo.avatar.structure.figure.IFigurePart;
   import com.sulake.habbo.avatar.structure.figure.IFigurePartSet;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class AvatarEditorGridItem
   {
      
      private static var var_87:Array = [];
      
      {
         var_87.push("li");
         var_87.push("lh");
         var_87.push("ls");
         var_87.push("bd");
         var_87.push("sh");
         var_87.push("lg");
         var_87.push("ch");
         var_87.push("wa");
         var_87.push("ca");
         var_87.push("rh");
         var_87.push("rs");
         var_87.push("hd");
         var_87.push("fc");
         var_87.push("ey");
         var_87.push("hr");
         var_87.push("hrb");
         var_87.push("fa");
         var_87.push("ea");
         var_87.push("ha");
         var_87.push("he");
         var_87.push("ri");
      }
      
      private const const_1604:int = 16777215;
      
      private var _isSelected:Boolean = false;
      
      private var var_1381:BitmapData;
      
      private const const_1603:int = 13421772;
      
      private var var_820:Rectangle;
      
      private var _window:IWindowContainer;
      
      private var var_993:Boolean;
      
      private var var_364:BitmapData;
      
      private var _color:IPartColor;
      
      private var _model:IAvatarEditorCategoryModel;
      
      private var var_562:IFigurePartSet;
      
      private var _id:int;
      
      public function AvatarEditorGridItem(param1:IWindowContainer, param2:IAvatarEditorCategoryModel, param3:IFigurePartSet, param4:IPartColor = null, param5:Boolean = true)
      {
         super();
         _model = param2;
         var_562 = param3;
         _window = param1;
         var _loc6_:ITextWindow = _window.findChildByName("number") as ITextWindow;
         _loc6_.text = id + "";
         var _loc7_:BitmapDataAsset = param2.controller.assets.getAssetByName("habbo_club_icon") as BitmapDataAsset;
         var_1381 = _loc7_.content as BitmapData;
         _color = param4;
         if(param3 == null)
         {
            var_364 = new BitmapData(1,1,true,16777215);
         }
         else
         {
            var_993 = param3.isColorable;
         }
         var_993 = param5;
         var _loc8_:IAvatarRenderManager = _model.controller.avatarRenderManager;
         updateThumbData();
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
         updateThumbData();
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_364 = param1;
         updateThumbData();
      }
      
      public function update() : void
      {
         updateThumbData();
      }
      
      public function set color(param1:IPartColor) : void
      {
         _color = param1;
         updateThumbData();
      }
      
      public function get id() : int
      {
         if(var_562 == null)
         {
            return -1;
         }
         return var_562.id;
      }
      
      private function sortByDrawOrder(param1:IFigurePart, param2:IFigurePart) : Number
      {
         var _loc3_:Number = var_87.indexOf(param1.type);
         var _loc4_:Number = var_87.indexOf(param2.type);
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(param1.index < param2.index)
         {
            return -1;
         }
         if(param1.index > param2.index)
         {
            return 1;
         }
         return 0;
      }
      
      public function dispose() : void
      {
         _model = null;
         var_562 = null;
         if(_window != null)
         {
            if(true)
            {
               _window.dispose();
            }
         }
         _window = null;
      }
      
      public function get view() : IWindowContainer
      {
         return _window;
      }
      
      private function updateThumbData() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         if(_window == null)
         {
            return;
         }
         if(false)
         {
            return;
         }
         var _loc1_:IBitmapWrapperWindow = _window.findChildByName("bitmap") as IBitmapWrapperWindow;
         if(_loc1_)
         {
            if(var_364 != null)
            {
               _loc2_ = var_364.clone();
               if(_color != null && var_993)
               {
                  _loc2_.colorTransform(_loc2_.rect,_color.colorTransform);
               }
            }
            else
            {
               _loc2_ = renderThumb();
            }
            _loc3_ = !!_loc1_.bitmap ? _loc1_.bitmap : new BitmapData(_loc1_.width,_loc1_.height);
            _loc3_.fillRect(_loc3_.rect,16777215);
            _loc4_ = (_loc3_.width - _loc2_.width) / 2;
            _loc5_ = (_loc3_.height - _loc2_.height) / 2;
            _loc3_.copyPixels(_loc2_,_loc2_.rect,new Point(_loc4_,_loc5_),null,null,true);
            _loc1_.bitmap = _loc3_;
            _window.findChildByName("number_container").visible = false;
         }
         if(var_562 != null && false)
         {
            _loc6_ = _window.findChildByTag("CLUB_ICON") as IBitmapWrapperWindow;
            if(_loc6_ != null)
            {
               _loc6_.bitmap = new BitmapData(_loc6_.width,_loc6_.height,true,16777215);
               _loc6_.bitmap.copyPixels(var_1381,var_1381.rect,new Point(0,0),null,null,true);
            }
         }
         if(isSelected)
         {
            _window.color = const_1603;
         }
         else
         {
            _window.color = const_1604;
         }
         _window.invalidate();
      }
      
      private function renderThumb() : BitmapData
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(var_820 == null)
         {
            analyzeLayers();
         }
         _loc1_ = new BitmapData(var_820.width,var_820.height,true,16777215);
         for each(_loc2_ in partSet.parts.concat().sort(sortByDrawOrder))
         {
            _loc3_ = "undefined_undefined_" + _loc2_.type + "_" + _loc2_.id + "_" + FigureData.const_966 + "_" + FigureData.const_258;
            _loc4_ = _model.controller.avatarRenderManager.getAssetByName(_loc3_) as BitmapDataAsset;
            if(_loc4_ != null)
            {
               _loc5_ = (_loc4_.content as BitmapData).clone();
               _loc6_ = -1 * _loc4_.offset.x - 0;
               _loc7_ = -1 * _loc4_.offset.y - 0;
               if(_color != null && var_993 && _loc2_.isColorable)
               {
                  _loc5_.colorTransform(_loc5_.rect,_color.colorTransform);
               }
               _loc1_.copyPixels(_loc5_,_loc5_.rect,new Point(_loc6_,_loc7_),null,null,true);
            }
            else
            {
               Logger.log("Could not find asset: " + _loc3_);
            }
         }
         return _loc1_;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      private function analyzeLayers() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:Rectangle = new Rectangle();
         for each(_loc1_ in partSet.parts)
         {
            _loc2_ = "undefined_undefined_" + _loc1_.type + "_" + _loc1_.id + "_" + FigureData.const_966 + "_" + FigureData.const_258;
            _loc3_ = _model.controller.avatarRenderManager.getAssetByName(_loc2_) as BitmapDataAsset;
            if(_loc3_ != null)
            {
               _loc4_ = (_loc3_.content as BitmapData).clone();
               _loc5_ = _loc5_.union(new Rectangle(-1 * _loc3_.offset.x,-1 * _loc3_.offset.y,_loc4_.width,_loc4_.height));
            }
         }
         var_820 = _loc5_;
      }
      
      public function get partSet() : IFigurePartSet
      {
         return var_562;
      }
   }
}
