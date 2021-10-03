package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1616:Boolean;
      
      private var var_2408:int;
      
      private var var_1762:int;
      
      private var var_1761:int;
      
      private var var_2406:int;
      
      private var var_2412:int;
      
      private var var_2409:int;
      
      private var var_2407:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1616;
      }
      
      public function get commission() : int
      {
         return this.var_2408;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1762;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1761;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2412;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2406;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2409;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2407;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1616 = param1.readBoolean();
         this.var_2408 = param1.readInteger();
         this.var_1762 = param1.readInteger();
         this.var_1761 = param1.readInteger();
         this.var_2412 = param1.readInteger();
         this.var_2406 = param1.readInteger();
         this.var_2409 = param1.readInteger();
         this.var_2407 = param1.readInteger();
         return true;
      }
   }
}
