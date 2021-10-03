package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_119:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_140:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_943:int = 2;
      
      public static const const_825:int = 3;
      
      public static const const_1809:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1828:String = "";
      
      private var var_2767:int;
      
      private var var_2760:int = 0;
      
      private var var_2756:int = 0;
      
      private var var_696:String = "";
      
      private var var_47:BitmapData = null;
      
      private var var_226:Array;
      
      private var var_1594:int = 0;
      
      private var var_2758:String = "";
      
      private var var_2753:int = 0;
      
      private var var_2764:int = 0;
      
      private var var_1965:Boolean = false;
      
      private var var_1651:String = "";
      
      private var var_2755:Boolean = false;
      
      private var var_2761:Boolean = true;
      
      private var var_1198:int = 0;
      
      private var var_2759:Boolean = false;
      
      private var var_2757:Boolean = false;
      
      private var var_2762:Boolean = false;
      
      private var var_2754:Boolean = false;
      
      private var var_2765:Boolean = false;
      
      private var var_2763:Boolean = false;
      
      private var var_2766:int = 0;
      
      private var var_1964:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_226 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1828 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1828;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2767 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2767;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2760 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2760;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2756 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2756;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_696 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_696;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_47 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_226 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_226;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1594 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1594;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2758 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2758;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2755 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2755;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1198 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1198;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2759 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2759;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2757 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2757;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2762 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2762;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2754 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2754;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2765 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2765;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2763 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2763;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2766 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2766;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2761 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2761;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1964 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1964;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2753 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2753;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2764 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2764;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1965 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1965;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1651 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1651;
      }
   }
}
