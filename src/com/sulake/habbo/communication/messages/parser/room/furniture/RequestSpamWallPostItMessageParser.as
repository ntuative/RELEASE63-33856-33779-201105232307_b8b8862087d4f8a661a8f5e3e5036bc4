package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RequestSpamWallPostItMessageParser implements IMessageParser
   {
       
      
      private var var_1805:int;
      
      private var var_434:String;
      
      public function RequestSpamWallPostItMessageParser()
      {
         super();
      }
      
      public function get itemId() : int
      {
         return this.var_1805;
      }
      
      public function get location() : String
      {
         return this.var_434;
      }
      
      public function flush() : Boolean
      {
         this.var_1805 = -1;
         this.var_434 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1805 = param1.readInteger();
         this.var_434 = param1.readString();
         return true;
      }
   }
}
