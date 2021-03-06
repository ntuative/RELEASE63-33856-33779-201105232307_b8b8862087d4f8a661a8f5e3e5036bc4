package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1616:Boolean = false;
      
      private var var_1642:int;
      
      private var var_1974:Array;
      
      private var var_865:Array;
      
      private var var_864:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1616 = _loc2_.isWrappingEnabled;
         this.var_1642 = _loc2_.wrappingPrice;
         this.var_1974 = _loc2_.stuffTypes;
         this.var_865 = _loc2_.boxTypes;
         this.var_864 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1616;
      }
      
      public function get price() : int
      {
         return this.var_1642;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1974;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_865;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_864;
      }
   }
}
