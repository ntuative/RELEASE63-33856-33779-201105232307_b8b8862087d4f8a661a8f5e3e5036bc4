package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1337:int;
      
      private var var_1910:String;
      
      private var var_1264:int;
      
      private var var_1263:int;
      
      private var var_1909:int;
      
      private var var_1163:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1337 = param1.readInteger();
         this.var_1910 = param1.readString();
         this.var_1264 = param1.readInteger();
         this.var_1263 = param1.readInteger();
         this.var_1909 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1163 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1163.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
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
      
      public function get products() : Array
      {
         return this.var_1163;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1909;
      }
   }
}
