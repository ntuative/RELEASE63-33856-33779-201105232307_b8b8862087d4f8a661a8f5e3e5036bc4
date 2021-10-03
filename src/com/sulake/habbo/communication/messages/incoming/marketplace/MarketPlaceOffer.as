package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1337:int;
      
      private var _furniId:int;
      
      private var var_2338:int;
      
      private var var_2169:String;
      
      private var var_1642:int;
      
      private var var_408:int;
      
      private var var_2336:int = -1;
      
      private var var_2337:int;
      
      private var var_1730:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1337 = param1;
         this._furniId = param2;
         this.var_2338 = param3;
         this.var_2169 = param4;
         this.var_1642 = param5;
         this.var_408 = param6;
         this.var_2336 = param7;
         this.var_2337 = param8;
         this.var_1730 = param9;
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
      
      public function get status() : int
      {
         return this.var_408;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2336;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2337;
      }
      
      public function get offerCount() : int
      {
         return this.var_1730;
      }
   }
}
