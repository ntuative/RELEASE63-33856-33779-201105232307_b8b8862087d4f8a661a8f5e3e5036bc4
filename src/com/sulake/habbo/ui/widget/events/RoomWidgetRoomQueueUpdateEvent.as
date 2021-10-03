package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_439:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_554:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_1161:int;
      
      private var var_2343:Boolean;
      
      private var var_498:Boolean;
      
      private var var_2057:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1161 = param2;
         this.var_2343 = param3;
         this.var_498 = param4;
         this.var_2057 = param5;
      }
      
      public function get position() : int
      {
         return this.var_1161;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_2343;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_498;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_2057;
      }
   }
}
