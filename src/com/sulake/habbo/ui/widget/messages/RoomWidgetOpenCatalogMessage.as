package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_382:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1125:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1293:String = "RWOCM_PIXELS";
      
      public static const const_1298:String = "RWOCM_CREDITS";
       
      
      private var var_2679:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_382);
         this.var_2679 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2679;
      }
   }
}
