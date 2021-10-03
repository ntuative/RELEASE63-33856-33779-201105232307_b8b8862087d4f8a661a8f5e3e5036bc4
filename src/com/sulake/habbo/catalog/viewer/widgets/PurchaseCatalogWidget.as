package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.purse.ActivityPointTypeEnum;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetInitPurchaseEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetPurchaseOverrideEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_2397:XML;
      
      private var var_2398:XML;
      
      private var var_2399:XML;
      
      private var var_944:IWindowContainer;
      
      private var var_605:IButtonWindow;
      
      private var var_2987:IButtonWindow;
      
      private var var_1758:ITextWindow;
      
      private var var_1756:ITextWindow;
      
      private var var_1757:ITextWindow;
      
      private var var_2957:ITextWindow;
      
      private var var_98:Offer;
      
      private var var_1759:String = "";
      
      private var var_1444:Function;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      override public function dispose() : void
      {
         events.removeEventListener(WidgetEvent.CWE_SELECT_PRODUCT,this.onSelectProduct);
         events.removeEventListener(WidgetEvent.const_683,this.onSetParameter);
         events.removeEventListener(WidgetEvent.CWE_PURCHASE_OVERRIDE,this.onPurchaseOverride);
         super.dispose();
      }
      
      override public function init() : Boolean
      {
         if(!super.init())
         {
            return false;
         }
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            this.var_2397 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            this.var_2398 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            this.var_2399 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,this.onSelectProduct);
         events.addEventListener(WidgetEvent.const_683,this.onSetParameter);
         events.addEventListener(WidgetEvent.CWE_PURCHASE_OVERRIDE,this.onPurchaseOverride);
         events.addEventListener(WidgetEvent.CWE_INIT_PURCHASE,this.initPurchase);
         return true;
      }
      
      private function onPurchaseOverride(param1:CatalogWidgetPurchaseOverrideEvent) : void
      {
         this.var_1444 = param1.callback;
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_766:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2397) as IWindowContainer;
               break;
            case Offer.const_1151:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2398) as IWindowContainer;
               break;
            case Offer.const_1331:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2399) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach..." + this.var_98.priceType);
         }
         if(_loc2_ != null)
         {
            if(this.var_944 != null)
            {
               _window.removeChild(this.var_944);
               this.var_944.dispose();
            }
            this.var_944 = _loc2_;
            _window.addChild(_loc2_);
            this.var_944.x = 0;
            this.var_944.y = 0;
         }
         this.var_1758 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         this.var_1756 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         this.var_1757 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         this.var_2957 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         this.var_605 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(this.var_605 != null)
         {
            if(this.var_1444 != null)
            {
               this.var_605.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.var_1444);
            }
            else
            {
               this.var_605.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.var_1444);
               this.var_605.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onPurchase);
            }
            this.var_605.disable();
         }
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc4_:* = null;
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         this.var_98 = param1.offer;
         this.attachStub(this.var_98.priceType);
         if(this.var_1758 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(this.var_98.priceInCredits));
            this.var_1758.caption = "${catalog.purchase.price.credits}";
         }
         var _loc3_:String = this.var_98.activityPointType == ActivityPointTypeEnum.PIXEL ? "pixels" : "activitypoints";
         if(this.var_1756 != null)
         {
            _loc4_ = "catalog.purchase.price.activitypoints." + this.var_98.activityPointType;
            _loc2_.registerParameter(_loc4_,_loc3_,this.var_98.priceInActivityPoints.toString());
            this.var_1756.caption = _loc2_.getKey(_loc4_);
         }
         if(this.var_1757 != null)
         {
            _loc4_ = "catalog.purchase.price.credits+activitypoints." + this.var_98.activityPointType;
            _loc2_.registerParameter(_loc4_,"credits",String(this.var_98.priceInCredits));
            _loc2_.registerParameter(_loc4_,_loc3_,String(this.var_98.priceInActivityPoints));
            this.var_1757.caption = _loc2_.getKey(_loc4_);
         }
         var _loc5_:IWindow = _window.findChildByName("activity_points_bg");
         if(_loc5_ != null)
         {
            _loc5_.color = this.var_98.activityPointType == 0 ? 6737151 : uint(13421772);
         }
         if(this.var_605 != null)
         {
            this.var_605.enable();
         }
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         this.var_1759 = param1.parameter;
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(this.var_98 != null)
         {
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(this.var_98,page.pageId,this.var_1759);
         }
      }
      
      private function initPurchase(param1:CatalogWidgetInitPurchaseEvent) : void
      {
         if(this.var_98 != null)
         {
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(this.var_98,page.pageId,this.var_1759,param1.enableBuyAsGift);
         }
      }
   }
}
