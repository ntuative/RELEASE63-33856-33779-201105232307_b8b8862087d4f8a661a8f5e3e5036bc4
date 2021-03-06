package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1676:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1554:String;
      
      private var var_1843:int;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         this.var_1554 = param2;
         this.var_1843 = param3;
      }
      
      public function get itemType() : String
      {
         return this.var_1554;
      }
      
      public function get classId() : int
      {
         return this.var_1843;
      }
   }
}
