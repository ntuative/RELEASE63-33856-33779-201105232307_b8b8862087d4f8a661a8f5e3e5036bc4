package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChangeMottoMessage extends RoomWidgetMessage
   {
      
      public static const const_742:String = "RWVM_CHANGE_MOTTO_MESSAGE";
       
      
      private var var_1828:String;
      
      public function RoomWidgetChangeMottoMessage(param1:String)
      {
         super(const_742);
         this.var_1828 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1828;
      }
   }
}
