package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_257:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2809:int = 0;
      
      private var var_2808:int = 0;
      
      private var var_2811:int = 0;
      
      private var var_2810:Boolean = false;
      
      private var var_2494:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_257,param6,param7);
         this.var_2809 = param1;
         this.var_2808 = param2;
         this.var_2811 = param3;
         this.var_2810 = param4;
         this.var_2494 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2809;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2808;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2811;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2810;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2494;
      }
   }
}
