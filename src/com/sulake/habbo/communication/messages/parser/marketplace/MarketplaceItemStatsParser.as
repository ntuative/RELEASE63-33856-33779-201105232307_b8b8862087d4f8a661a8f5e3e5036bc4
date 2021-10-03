package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2337:int;
      
      private var var_2594:int;
      
      private var var_2595:int;
      
      private var _dayOffsets:Array;
      
      private var var_1888:Array;
      
      private var var_1887:Array;
      
      private var var_2592:int;
      
      private var var_2593:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2337 = param1.readInteger();
         this.var_2594 = param1.readInteger();
         this.var_2595 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1888 = [];
         this.var_1887 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1888.push(param1.readInteger());
            this.var_1887.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2593 = param1.readInteger();
         this.var_2592 = param1.readInteger();
         return true;
      }
   }
}
