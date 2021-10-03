package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
      
      public static const const_110:int = 1;
      
      public static const const_74:int = 2;
       
      
      private var var_1337:int;
      
      private var _furniId:int;
      
      private var var_2338:int;
      
      private var var_2169:String;
      
      private var var_1642:int;
      
      private var var_2337:int;
      
      private var var_2339:int;
      
      private var var_408:int;
      
      private var var_2336:int = -1;
      
      private var var_1730:int;
      
      private var var_47:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this.var_1337 = param1;
         this._furniId = param2;
         this.var_2338 = param3;
         this.var_2169 = param4;
         this.var_1642 = param5;
         this.var_408 = param6;
         this.var_2337 = param7;
         this.var_1730 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_47)
         {
            this.var_47.dispose();
            this.var_47 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this.var_1337;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2338;
      }
      
      public function get stuffData() : String
      {
         return this.var_2169;
      }
      
      public function get price() : int
      {
         return this.var_1642;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2337;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_47 != null)
         {
            this.var_47.dispose();
         }
         this.var_47 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2339 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2339;
      }
      
      public function get status() : int
      {
         return this.var_408;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2336;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2336 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1642 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1337 = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1730;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1730 = param1;
      }
   }
}
