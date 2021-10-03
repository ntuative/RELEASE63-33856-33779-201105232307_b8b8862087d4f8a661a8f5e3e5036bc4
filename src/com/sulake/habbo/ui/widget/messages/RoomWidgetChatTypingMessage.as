package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_859:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_647:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_859);
         this.var_647 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_647;
      }
   }
}
