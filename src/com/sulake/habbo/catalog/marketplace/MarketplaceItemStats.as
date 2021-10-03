package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2337:int;
      
      private var var_2594:int;
      
      private var var_2595:int;
      
      private var _dayOffsets:Array;
      
      private var var_1888:Array;
      
      private var var_1887:Array;
      
      private var var_2592:int;
      
      private var var_2593:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2337;
      }
      
      public function get offerCount() : int
      {
         return this.var_2594;
      }
      
      public function get historyLength() : int
      {
         return this.var_2595;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1888;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1887;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2592;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2593;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2337 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2594 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2595 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1888 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1887 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2592 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2593 = param1;
      }
   }
}
