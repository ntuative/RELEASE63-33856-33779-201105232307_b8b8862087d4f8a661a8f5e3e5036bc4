package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_844:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2725:int;
      
      private var var_2726:int;
      
      private var _color:uint;
      
      private var var_1332:int;
      
      private var var_2724:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_844);
         this.var_2725 = param1;
         this.var_2726 = param2;
         this._color = param3;
         this.var_1332 = param4;
         this.var_2724 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2725;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2726;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1332;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2724;
      }
   }
}
