package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_366:int;
      
      private var var_2271:int;
      
      private var var_2270:Boolean;
      
      private var var_2241:int;
      
      private var _ownerName:String;
      
      private var var_125:RoomData;
      
      private var var_728:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_366 = param1.readInteger();
         this.var_2271 = param1.readInteger();
         this.var_2270 = param1.readBoolean();
         this.var_2241 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_125 = new RoomData(param1);
         this.var_728 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_125 != null)
         {
            this.var_125.dispose();
            this.var_125 = null;
         }
         if(this.var_728 != null)
         {
            this.var_728.dispose();
            this.var_728 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_366;
      }
      
      public function get userCount() : int
      {
         return this.var_2271;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2270;
      }
      
      public function get ownerId() : int
      {
         return this.var_2241;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_125;
      }
      
      public function get event() : RoomData
      {
         return this.var_728;
      }
   }
}
