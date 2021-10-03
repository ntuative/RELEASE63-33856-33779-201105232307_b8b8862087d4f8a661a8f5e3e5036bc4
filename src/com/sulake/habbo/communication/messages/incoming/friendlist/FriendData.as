package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1080:int;
      
      private var var_712:Boolean;
      
      private var var_1829:Boolean;
      
      private var var_696:String;
      
      private var var_1543:int;
      
      private var var_1828:String;
      
      private var var_1653:String;
      
      private var var_1651:String;
      
      private var var_2644:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1080 = param1.readInteger();
         this.var_712 = param1.readBoolean();
         this.var_1829 = param1.readBoolean();
         this.var_696 = param1.readString();
         this.var_1543 = param1.readInteger();
         this.var_1828 = param1.readString();
         this.var_1653 = param1.readString();
         this.var_1651 = param1.readString();
         this.var_2644 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1080;
      }
      
      public function get online() : Boolean
      {
         return this.var_712;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1829;
      }
      
      public function get figure() : String
      {
         return this.var_696;
      }
      
      public function get categoryId() : int
      {
         return this.var_1543;
      }
      
      public function get motto() : String
      {
         return this.var_1828;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1653;
      }
      
      public function get realName() : String
      {
         return this.var_1651;
      }
      
      public function get facebookId() : String
      {
         return this.var_2644;
      }
   }
}
