package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1580:XML;
      
      private var var_1346:ITextWindow;
      
      private var var_1344:ITextWindow;
      
      private var var_1583:XML;
      
      private var var_732:IWindowContainer;
      
      private var var_2256:ITextWindow;
      
      private var var_1581:String = "";
      
      private var var_2327:IButtonWindow;
      
      private var var_1579:XML;
      
      private var var_1345:ITextWindow;
      
      private var var_1582:XML;
      
      private var var_733:IButtonWindow;
      
      private var var_86:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_453:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1583) as IWindowContainer;
               break;
            case Offer.const_459:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1582) as IWindowContainer;
               break;
            case Offer.const_343:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1580) as IWindowContainer;
               break;
            case Offer.const_562:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1579) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_732 != null)
            {
               _window.removeChild(var_732);
               var_732.dispose();
            }
            var_732 = _loc2_;
            _window.addChild(_loc2_);
            var_732.x = 0;
            var_732.y = 0;
         }
         var_1345 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1344 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1346 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2256 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_733 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_733 != null)
         {
            var_733.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_733.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_86 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_86,page,var_1581);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1583 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1582 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1580 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1579 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_860,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1581 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_86 = param1.offer;
         attachStub(var_86.priceType);
         if(var_1345 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_86.priceInCredits));
            var_1345.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1344 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_86.priceInPixels));
            var_1344.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1346 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_86.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_86.priceInPixels));
            var_1346.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_733 != null)
         {
            var_733.enable();
         }
      }
   }
}
