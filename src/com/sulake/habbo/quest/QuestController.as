package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_609:QuestsList;
      
      private var var_508:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_364:QuestTracker;
      
      private var var_952:CampaignCompleted;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this.var_364 = new QuestTracker(this._questEngine);
         this.var_609 = new QuestsList(this._questEngine);
         this.var_508 = new QuestDetails(this._questEngine);
         this._questCompleted = new QuestCompleted(this._questEngine);
         this.var_952 = new CampaignCompleted(this._questEngine);
      }
      
      public function onToolbarClick() : void
      {
         this.var_609.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_609.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_364.onQuest(param1);
         this.var_508.onQuest(param1);
         this._questCompleted.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_364.onQuestCompleted(param1);
         this.var_508.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_364.onQuestCancelled();
         this.var_508.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_364.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_609.onRoomExit();
         this.var_364.onRoomExit();
         this.var_508.onRoomExit();
         this.var_952.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_364.update(param1);
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         if(this.var_609)
         {
            this.var_609.dispose();
            this.var_609 = null;
         }
         if(this.var_364)
         {
            this.var_364.dispose();
            this.var_364 = null;
         }
         if(this.var_508)
         {
            this.var_508.dispose();
            this.var_508 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_952)
         {
            this.var_952.dispose();
            this.var_952 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_609;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_508;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_364;
      }
      
      public function get campaignCompleted() : CampaignCompleted
      {
         return this.var_952;
      }
   }
}
