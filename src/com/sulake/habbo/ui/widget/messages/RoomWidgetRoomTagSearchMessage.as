package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_709:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_2507:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_709);
         this.var_2507 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2507;
      }
   }
}
