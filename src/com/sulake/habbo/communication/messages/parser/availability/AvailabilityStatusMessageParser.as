package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1407:Boolean;
      
      private var var_2105:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1407;
      }
      
      public function get onShutDown() : Boolean
      {
         return this.var_2105;
      }
      
      public function flush() : Boolean
      {
         this.var_1407 = false;
         this.var_2105 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1407 = param1.readInteger() > 0;
         this.var_2105 = param1.readInteger() > 0;
         return true;
      }
   }
}
