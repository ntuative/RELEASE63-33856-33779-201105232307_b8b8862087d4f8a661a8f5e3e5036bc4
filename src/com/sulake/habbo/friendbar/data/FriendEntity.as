package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1080:int;
      
      private var var_712:Boolean;
      
      private var var_2019:Boolean;
      
      private var var_696:String;
      
      private var var_1543:int;
      
      private var var_1828:String;
      
      private var var_1653:String;
      
      private var var_1651:String;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1651 = param3;
         this.var_1828 = param4;
         this.var_1080 = param5;
         this.var_712 = param6;
         this.var_2019 = param7;
         this.var_696 = param8;
         this.var_1543 = param9;
         this.var_1653 = param10;
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
      
      public function get allowFollow() : Boolean
      {
         return this.var_2019;
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
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_1080 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_712 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this.var_2019 = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_696 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1543 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1828 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1653 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1651 = param1;
      }
   }
}
