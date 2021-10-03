package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1707:String;
      
      private var var_2291:int;
      
      private var var_2294:int;
      
      private var var_1909:int;
      
      private var _id:int;
      
      private var var_1706:Boolean;
      
      private var _type:String;
      
      private var var_1705:String;
      
      private var var_1704:int;
      
      private var _localizationCode:String;
      
      private var var_2295:int;
      
      private var var_2292:int;
      
      private var var_2293:int;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1707 = param1.readString();
         this.var_2291 = param1.readInteger();
         this.var_2294 = param1.readInteger();
         this.var_1909 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1706 = param1.readBoolean();
         this._type = param1.readString();
         this.var_1705 = param1.readString();
         this.var_1704 = param1.readInteger();
         this._localizationCode = param1.readString();
         this.var_2295 = param1.readInteger();
         this.var_2292 = param1.readInteger();
         this.var_2293 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this._type = "";
         this.var_1705 = "";
         this.var_1704 = 0;
      }
      
      public function get campaignCode() : String
      {
         return this.var_1707;
      }
      
      public function get localizationCode() : String
      {
         return this._localizationCode;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2291;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2294;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1909;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1706;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_1705;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1704;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2295;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2292;
      }
      
      public function get waitPeriodSeconds() : int
      {
         return this.var_2293;
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1707;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this._localizationCode;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1706 = param1;
      }
   }
}
