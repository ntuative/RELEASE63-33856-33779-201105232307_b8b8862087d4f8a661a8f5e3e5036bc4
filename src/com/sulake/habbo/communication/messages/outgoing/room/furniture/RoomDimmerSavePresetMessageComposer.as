package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2725:int;
      
      private var var_2726:int;
      
      private var var_2795:String;
      
      private var var_2794:int;
      
      private var var_2793:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2725 = param1;
         this.var_2726 = param2;
         this.var_2795 = param3;
         this.var_2794 = param4;
         this.var_2793 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2725,this.var_2726,this.var_2795,this.var_2794,int(this.var_2793)];
      }
      
      public function dispose() : void
      {
      }
   }
}
