package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1656:int = 0;
      
      private var var_1655:int = 0;
      
      private var var_1909:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1656;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1655;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1909;
      }
      
      public function flush() : Boolean
      {
         this.var_1656 = 0;
         this.var_1655 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1656 = param1.readInteger();
         this.var_1655 = param1.readInteger();
         this.var_1909 = param1.readInteger();
         return true;
      }
   }
}
