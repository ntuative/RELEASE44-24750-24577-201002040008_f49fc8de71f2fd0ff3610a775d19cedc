package com.sulake.habbo.catalog.marketplace
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ILocalization;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.room.ImageResult;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class MarketplaceConfirmationDialog implements IGetImageListener
   {
       
      
      private var var_94:IHabboCatalog;
      
      private var var_656:MarketPlaceLogic;
      
      private var _window:IFrameWindow;
      
      private var _roomEngine:IRoomEngine;
      
      private var var_86:MarketPlaceOfferData;
      
      public function MarketplaceConfirmationDialog(param1:MarketPlaceLogic, param2:IHabboCatalog, param3:IRoomEngine)
      {
         super();
         var_656 = param1;
         var_94 = param2;
         _roomEngine = param3;
      }
      
      private function hide() : void
      {
         if(_window)
         {
            _window.dispose();
            _window = null;
         }
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         if(var_86 && var_86.imageCallback == param1)
         {
            var_86.image = param2;
            setImage();
         }
      }
      
      private function method_9(param1:WindowEvent, param2:IWindow) : void
      {
         if(!param1 || !param2)
         {
            return;
         }
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         switch(param2.name)
         {
            case "buy_button":
               var_94.buyMarketPlaceOffer(var_86.offerId);
               hide();
               break;
            case "header_button_close":
            case "cancel_button":
               hide();
         }
      }
      
      public function showConfirmation(param1:int, param2:MarketPlaceOfferData) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(!param2)
         {
            return;
         }
         var_86 = param2;
         if(!var_656 || !var_94 || true)
         {
            return;
         }
         if(_window)
         {
            _window.dispose();
         }
         _window = createWindow("marketplace_purchase_confirmation") as IFrameWindow;
         _window.procedure = method_9;
         _window.center();
         var _loc3_:ITextWindow = _window.findChildByName("header_text") as ITextWindow;
         if(_loc3_)
         {
            if(param1 == var_656.const_1426)
            {
               _loc3_.text = "${catalog.marketplace.confirm_header}";
            }
            if(param1 == var_656.const_1545)
            {
               _loc3_.text = "${catalog.marketplace.confirm_higher_header}";
            }
         }
         _loc3_ = _window.findChildByName("item_name") as ITextWindow;
         if(_loc3_)
         {
            _loc3_.text = "${roomItem.name.undefined}";
         }
         _loc3_ = _window.findChildByName("item_price") as ITextWindow;
         if(_loc3_)
         {
            _loc4_ = var_94.localization.getKey("catalog.marketplace.confirm_price");
            _loc4_ = _loc4_.replace("%price%",var_86.price);
            _loc3_.text = _loc4_;
         }
         _loc3_ = _window.findChildByName("item_average_price") as ITextWindow;
         if(_loc3_)
         {
            _loc5_ = var_94.localization.getLocalization("catalog.marketplace.offer_details.average_price");
            if(_loc5_)
            {
               _loc4_ = _loc5_.raw;
               _loc4_ = _loc4_.replace("%days%",var_656.averagePricePeriod.toString());
               _loc6_ = false ? " - " : var_86.averagePrice.toString();
               _loc4_ = _loc4_.replace("%average%",_loc6_);
               _loc3_.text = _loc4_;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         _loc3_ = _window.findChildByName("offer_count") as ITextWindow;
         if(_loc3_)
         {
            _loc5_ = var_94.localization.getLocalization("catalog.marketplace.offer_details.offer_count");
            if(_loc5_)
            {
               _loc4_ = _loc5_.raw;
               _loc4_ = _loc4_.replace("%count%",var_86.offerCount);
               _loc3_.text = _loc4_;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         setImage();
      }
      
      private function setImage() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!var_86 || !_window || !_roomEngine)
         {
            return;
         }
         if(true)
         {
            if(false)
            {
               _loc1_ = _roomEngine.getFurnitureIcon(var_86.furniId,this);
            }
            else if(false)
            {
               _loc1_ = _roomEngine.getWallItemIcon(var_86.furniId,this);
            }
            if(_loc1_ && _loc1_.data)
            {
               var_86.image = _loc1_.data as BitmapData;
               var_86.imageCallback = _loc1_.id;
            }
         }
         if(false)
         {
            _loc2_ = _window.findChildByName("item_image") as IBitmapWrapperWindow;
            if(_loc2_)
            {
               if(_loc2_.bitmap)
               {
                  _loc2_.bitmap.dispose();
                  _loc2_.bitmap = null;
               }
               _loc2_.bitmap = new BitmapData(_loc2_.width,_loc2_.height,true,0);
               _loc2_.bitmap.draw(var_86.image,new Matrix(1,0,0,1,(_loc2_.width - var_86.image.width) / 2,(_loc2_.height - var_86.image.height) / 2));
            }
         }
      }
      
      private function createWindow(param1:String) : IWindow
      {
         if(!var_94 || true || true)
         {
            return null;
         }
         var _loc2_:XmlAsset = var_94.assets.getAssetByName(param1) as XmlAsset;
         if(!_loc2_ || !_loc2_.content)
         {
            return null;
         }
         var _loc3_:XML = _loc2_.content as XML;
         if(!_loc3_)
         {
            return null;
         }
         return var_94.windowManager.buildFromXML(_loc3_);
      }
      
      public function dispose() : void
      {
         var_656 = null;
         var_94 = null;
         _roomEngine = null;
         if(_window)
         {
            _window.dispose();
            _window = null;
         }
         var_86 = null;
      }
   }
}
