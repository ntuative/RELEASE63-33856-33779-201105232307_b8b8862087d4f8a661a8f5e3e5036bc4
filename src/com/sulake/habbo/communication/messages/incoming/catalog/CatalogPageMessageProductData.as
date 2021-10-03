package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_63:String = "i";
      
      public static const const_80:String = "s";
      
      public static const const_202:String = "e";
       
      
      private var var_1581:String;
      
      private var var_2914:int;
      
      private var var_1305:String;
      
      private var var_1580:int;
      
      private var var_2028:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1581 = param1.readString();
         this.var_2914 = param1.readInteger();
         this.var_1305 = param1.readString();
         this.var_1580 = param1.readInteger();
         this.var_2028 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1581;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2914;
      }
      
      public function get extraParam() : String
      {
         return this.var_1305;
      }
      
      public function get productCount() : int
      {
         return this.var_1580;
      }
      
      public function get expiration() : int
      {
         return this.var_2028;
      }
   }
}
