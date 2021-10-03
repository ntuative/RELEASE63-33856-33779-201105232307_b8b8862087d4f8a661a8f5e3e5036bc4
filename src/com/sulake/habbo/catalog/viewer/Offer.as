package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1656:String = "pricing_model_unknown";
      
      public static const const_435:String = "pricing_model_single";
      
      public static const const_397:String = "pricing_model_multi";
      
      public static const const_519:String = "pricing_model_bundle";
      
      public static const const_1757:String = "price_type_none";
      
      public static const const_766:String = "price_type_credits";
      
      public static const const_1151:String = "price_type_activitypoints";
      
      public static const const_1331:String = "price_type_credits_and_activitypoints";
       
      
      private var var_793:String;
      
      private var var_1262:String;
      
      private var var_1337:int;
      
      private var var_1910:String;
      
      private var var_1264:int;
      
      private var var_1263:int;
      
      private var var_1909:int;
      
      private var var_343:ICatalogPage;
      
      private var var_639:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2647:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this.var_1337 = param1;
         this.var_1910 = param2;
         this.var_1264 = param3;
         this.var_1263 = param4;
         this.var_1909 = param5;
         this.var_343 = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_343;
      }
      
      public function get offerId() : int
      {
         return this.var_1337;
      }
      
      public function get localizationId() : String
      {
         return this.var_1910;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1264;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1263;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1909;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_639;
      }
      
      public function get pricingModel() : String
      {
         return this.var_793;
      }
      
      public function get priceType() : String
      {
         return this.var_1262;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2647;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2647 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1337 = 0;
         this.var_1910 = "";
         this.var_1264 = 0;
         this.var_1263 = 0;
         this.var_1909 = 0;
         this.var_343 = null;
         if(this.var_639 != null)
         {
            this.var_639.dispose();
            this.var_639 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_793)
         {
            case const_435:
               this.var_639 = new SingleProductContainer(this,param1);
               break;
            case const_397:
               this.var_639 = new MultiProductContainer(this,param1);
               break;
            case const_519:
               this.var_639 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_793);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_793 = const_435;
            }
            else
            {
               this.var_793 = const_397;
            }
         }
         else if(param1.length > 1)
         {
            this.var_793 = const_519;
         }
         else
         {
            this.var_793 = const_1656;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1264 > 0 && this.var_1263 > 0)
         {
            this.var_1262 = const_1331;
         }
         else if(this.var_1264 > 0)
         {
            this.var_1262 = const_766;
         }
         else if(this.var_1263 > 0)
         {
            this.var_1262 = const_1151;
         }
         else
         {
            this.var_1262 = const_1757;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_343.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_639.products)
         {
            _loc4_ = this.var_343.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}
