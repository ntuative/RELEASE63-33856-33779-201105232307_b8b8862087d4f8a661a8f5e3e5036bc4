package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2549:int;
      
      private var var_2548:int;
      
      private var var_1264:int;
      
      private var var_1263:int;
      
      private var var_1909:int;
      
      private var var_2550:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2549 = param1.readInteger();
         this.var_2548 = param1.readInteger();
         this.var_1264 = param1.readInteger();
         this.var_1263 = param1.readInteger();
         this.var_1909 = param1.readInteger();
         this.var_2550 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2549;
      }
      
      public function get charges() : int
      {
         return this.var_2548;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1264;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1263;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2550;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1909;
      }
   }
}
