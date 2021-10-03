package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetPlayListModificationMessage extends RoomWidgetMessage
   {
      
      public static const const_880:String = "RWPLAM_ADD_TO_PLAYLIST";
      
      public static const const_909:String = "RWPLAM_REMOVE_FROM_PLAYLIST";
       
      
      private var var_2389:int;
      
      private var var_2405:int;
      
      public function RoomWidgetPlayListModificationMessage(param1:String, param2:int = -1, param3:int = -1)
      {
         super(param1);
         this.var_2405 = param2;
         this.var_2389 = param3;
      }
      
      public function get diskId() : int
      {
         return this.var_2389;
      }
      
      public function get slotNumber() : int
      {
         return this.var_2405;
      }
   }
}
