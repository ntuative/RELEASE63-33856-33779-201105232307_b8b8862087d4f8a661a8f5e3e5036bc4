package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserFigureUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_184:String = "RWUTUE_USER_FIGURE";
       
      
      private var _userId:int;
      
      private var var_47:BitmapData;
      
      private var var_2556:Boolean;
      
      private var var_1987:String = "";
      
      private var var_2767:int;
      
      public function RoomWidgetUserFigureUpdateEvent(param1:int, param2:BitmapData, param3:Boolean, param4:String, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_184,param6,param7);
         this._userId = param1;
         this.var_47 = param2;
         this.var_2556 = param3;
         this.var_1987 = param4;
         this.var_2767 = param5;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function get isOwnUser() : Boolean
      {
         return this.var_2556;
      }
      
      public function get customInfo() : String
      {
         return this.var_1987;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2767;
      }
   }
}
