package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_1685:int;
      
      private var var_1447:Array;
      
      private var var_1251:Array;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1685;
      }
      
      public function get allCommands() : Array
      {
         return this.var_1447;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_1251;
      }
      
      public function flush() : Boolean
      {
         this.var_1685 = -1;
         this.var_1447 = null;
         this.var_1251 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1685 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1447 = new Array();
         while(_loc2_-- > 0)
         {
            this.var_1447.push(param1.readInteger());
         }
         var _loc3_:int = param1.readInteger();
         this.var_1251 = new Array();
         while(_loc3_-- > 0)
         {
            this.var_1251.push(param1.readInteger());
         }
         return true;
      }
   }
}
