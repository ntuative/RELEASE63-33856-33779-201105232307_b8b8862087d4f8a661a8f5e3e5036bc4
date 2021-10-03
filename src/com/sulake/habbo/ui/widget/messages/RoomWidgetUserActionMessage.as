package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_467:String = "RWUAM_WHISPER_USER";
      
      public static const const_580:String = "RWUAM_IGNORE_USER";
      
      public static const const_549:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_426:String = "RWUAM_KICK_USER";
      
      public static const const_548:String = "RWUAM_BAN_USER";
      
      public static const const_541:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_565:String = "RWUAM_RESPECT_USER";
      
      public static const const_489:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_559:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_470:String = "RWUAM_START_TRADING";
      
      public static const const_687:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_478:String = "RWUAM_KICK_BOT";
      
      public static const const_601:String = "RWUAM_REPORT";
      
      public static const const_595:String = "RWUAM_PICKUP_PET";
      
      public static const const_1657:String = "RWUAM_TRAIN_PET";
      
      public static const const_527:String = " RWUAM_RESPECT_PET";
      
      public static const const_372:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_828:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
