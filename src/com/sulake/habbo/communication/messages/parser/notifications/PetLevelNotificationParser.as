package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1685:int;
      
      private var var_2634:String;
      
      private var var_1102:int;
      
      private var var_1187:int;
      
      private var var_1800:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1685 = param1.readInteger();
         this.var_2634 = param1.readString();
         this.var_1102 = param1.readInteger();
         this.var_1187 = param1.readInteger();
         this.var_1800 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1685;
      }
      
      public function get petName() : String
      {
         return this.var_2634;
      }
      
      public function get level() : int
      {
         return this.var_1102;
      }
      
      public function get petType() : int
      {
         return this.var_1187;
      }
      
      public function get breed() : int
      {
         return this.var_1800;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
