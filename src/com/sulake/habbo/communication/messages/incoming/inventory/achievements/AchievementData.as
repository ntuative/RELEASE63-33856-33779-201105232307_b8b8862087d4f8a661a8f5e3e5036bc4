package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1102:int;
      
      private var var_297:String;
      
      private var var_2095:int;
      
      private var var_2416:int;
      
      private var var_1764:int;
      
      private var var_2096:int;
      
      private var var_2094:Boolean;
      
      private var _category:String;
      
      private var var_2906:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1102 = param1.readInteger();
         this.var_297 = param1.readString();
         this.var_2095 = Math.max(1,param1.readInteger());
         this.var_2416 = param1.readInteger();
         this.var_1764 = param1.readInteger();
         this.var_2096 = param1.readInteger();
         this.var_2094 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2906 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_297;
      }
      
      public function get level() : int
      {
         return this.var_1102;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2095;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2416;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1764;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2096;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_2094;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2906;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1102 > 1 || this.var_2094;
      }
      
      public function setMaxProgress() : void
      {
         this.var_2096 = this.var_2095;
      }
   }
}
