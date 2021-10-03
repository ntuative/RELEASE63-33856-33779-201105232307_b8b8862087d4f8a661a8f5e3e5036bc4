package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2149:int = 1;
      
      public static const const_1813:int = 2;
       
      
      private var var_993:String;
      
      private var var_2497:int;
      
      private var var_2503:int;
      
      private var var_2499:int;
      
      private var var_2500:int;
      
      private var var_2505:Boolean;
      
      private var var_2475:Boolean;
      
      private var var_2498:int;
      
      private var var_2502:int;
      
      private var var_2501:Boolean;
      
      private var var_2504:int;
      
      private var var_2506:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_993 = param1.readString();
         this.var_2497 = param1.readInteger();
         this.var_2503 = param1.readInteger();
         this.var_2499 = param1.readInteger();
         this.var_2500 = param1.readInteger();
         this.var_2505 = param1.readBoolean();
         this.var_2475 = param1.readBoolean();
         this.var_2498 = param1.readInteger();
         this.var_2502 = param1.readInteger();
         this.var_2501 = param1.readBoolean();
         this.var_2504 = param1.readInteger();
         this.var_2506 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_993;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2497;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2503;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2499;
      }
      
      public function get responseType() : int
      {
         return this.var_2500;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2505;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2475;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2498;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2502;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2501;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2504;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2506;
      }
   }
}
