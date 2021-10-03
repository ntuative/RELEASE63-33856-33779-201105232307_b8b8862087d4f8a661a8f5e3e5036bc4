package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_166:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_168:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1231:String;
      
      private var var_1537:Array;
      
      private var var_1142:Array;
      
      private var var_1943:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1231 = param2;
         this.var_1537 = param3;
         this.var_1142 = param4;
         if(this.var_1142 == null)
         {
            this.var_1142 = [];
         }
         this.var_1943 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1231;
      }
      
      public function get choices() : Array
      {
         return this.var_1537.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1142.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1943;
      }
   }
}
