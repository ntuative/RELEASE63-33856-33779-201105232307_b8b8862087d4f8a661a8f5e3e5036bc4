package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2690:int;
      
      private var var_2687:int;
      
      private var var_2688:int;
      
      private var var_2689:String;
      
      private var var_1779:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2690 = param1.readInteger();
         this.var_2687 = param1.readInteger();
         this.var_2688 = param1.readInteger();
         this.var_2689 = param1.readString();
         this.var_1779 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2690;
      }
      
      public function get minute() : int
      {
         return this.var_2687;
      }
      
      public function get chatterId() : int
      {
         return this.var_2688;
      }
      
      public function get chatterName() : String
      {
         return this.var_2689;
      }
      
      public function get msg() : String
      {
         return this.var_1779;
      }
   }
}
