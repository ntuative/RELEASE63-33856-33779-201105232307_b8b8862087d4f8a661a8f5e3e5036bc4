package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_1038:String = "";
      
      private var var_696:String = "";
      
      private var var_2824:String = "";
      
      private var var_2767:int;
      
      private var var_2760:int = 0;
      
      private var var_2826:String = "";
      
      private var var_2825:int = 0;
      
      private var var_2756:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2767;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2767 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_1038;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_1038 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_696;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_696 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2824;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2824 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2760;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2760 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2826;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2826 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2825;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2825 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2756;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2756 = param1;
      }
   }
}
