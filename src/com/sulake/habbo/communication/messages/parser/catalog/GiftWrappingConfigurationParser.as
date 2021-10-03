package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2741:Boolean;
      
      private var var_2740:int;
      
      private var var_1974:Array;
      
      private var var_865:Array;
      
      private var var_864:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2741;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2740;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1974 = [];
         this.var_865 = [];
         this.var_864 = [];
         this.var_2741 = param1.readBoolean();
         this.var_2740 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1974.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_865.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_864.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
