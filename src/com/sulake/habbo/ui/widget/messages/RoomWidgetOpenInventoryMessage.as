package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_786:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1129:String = "inventory_effects";
      
      public static const const_1288:String = "inventory_badges";
      
      public static const const_1684:String = "inventory_clothes";
      
      public static const const_1645:String = "inventory_furniture";
       
      
      private var var_2675:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_786);
         this.var_2675 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2675;
      }
   }
}
