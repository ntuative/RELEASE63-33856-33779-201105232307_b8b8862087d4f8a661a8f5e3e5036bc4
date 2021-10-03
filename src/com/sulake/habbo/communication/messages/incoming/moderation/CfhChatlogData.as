package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2003:int;
      
      private var var_2805:int;
      
      private var var_1516:int;
      
      private var var_2806:int;
      
      private var var_125:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2003 = param1.readInteger();
         this.var_2805 = param1.readInteger();
         this.var_1516 = param1.readInteger();
         this.var_2806 = param1.readInteger();
         this.var_125 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2003);
      }
      
      public function get callId() : int
      {
         return this.var_2003;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2805;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1516;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2806;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_125;
      }
   }
}
