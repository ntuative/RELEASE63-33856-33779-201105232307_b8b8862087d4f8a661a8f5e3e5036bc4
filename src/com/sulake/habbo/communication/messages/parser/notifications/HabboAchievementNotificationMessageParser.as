package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1102:int;
      
      private var var_1686:int;
      
      private var var_2416:int;
      
      private var var_1764:int;
      
      private var var_1446:int;
      
      private var var_297:int;
      
      private var var_2736:String = "";
      
      private var var_2737:String = "";
      
      private var var_2738:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1102 = param1.readInteger();
         this.var_297 = param1.readInteger();
         this.var_2736 = param1.readString();
         this.var_1686 = param1.readInteger();
         this.var_2416 = param1.readInteger();
         this.var_1764 = param1.readInteger();
         this.var_1446 = param1.readInteger();
         this.var_2738 = param1.readInteger();
         this.var_2737 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1102;
      }
      
      public function get points() : int
      {
         return this.var_1686;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2416;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1764;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1446;
      }
      
      public function get badgeId() : int
      {
         return this.var_297;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2736;
      }
      
      public function get achievementID() : int
      {
         return this.var_2738;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2737;
      }
   }
}
