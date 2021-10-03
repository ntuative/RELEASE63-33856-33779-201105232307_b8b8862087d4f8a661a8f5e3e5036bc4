package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_696:String;
      
      private var var_1038:String;
      
      private var var_2641:String;
      
      private var var_1651:String;
      
      private var var_2640:int;
      
      private var var_2636:String;
      
      private var var_2637:int;
      
      private var var_2639:int;
      
      private var var_2638:int;
      
      private var var_1198:int;
      
      private var _petRespectLeft:int;
      
      private var var_2495:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_696 = param1.readString();
         this.var_1038 = param1.readString();
         this.var_2641 = param1.readString();
         this.var_1651 = param1.readString();
         this.var_2640 = param1.readInteger();
         this.var_2636 = param1.readString();
         this.var_2637 = param1.readInteger();
         this.var_2639 = param1.readInteger();
         this.var_2638 = param1.readInteger();
         this.var_1198 = param1.readInteger();
         this._petRespectLeft = param1.readInteger();
         this.var_2495 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_696;
      }
      
      public function get sex() : String
      {
         return this.var_1038;
      }
      
      public function get customData() : String
      {
         return this.var_2641;
      }
      
      public function get realName() : String
      {
         return this.var_1651;
      }
      
      public function get tickets() : int
      {
         return this.var_2640;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2636;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2637;
      }
      
      public function get directMail() : int
      {
         return this.var_2639;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2638;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1198;
      }
      
      public function get petRespectLeft() : int
      {
         return this._petRespectLeft;
      }
      
      public function get identityId() : int
      {
         return this.var_2495;
      }
   }
}
