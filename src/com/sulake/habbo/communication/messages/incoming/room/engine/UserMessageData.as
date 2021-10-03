package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1212:String = "M";
      
      public static const const_1626:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_174:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_430:int = 0;
      
      private var _name:String = "";
      
      private var var_1624:int = 0;
      
      private var var_1038:String = "";
      
      private var var_696:String = "";
      
      private var var_2824:String = "";
      
      private var var_2767:int;
      
      private var var_2760:int = 0;
      
      private var var_2826:String = "";
      
      private var var_2825:int = 0;
      
      private var var_2756:int = 0;
      
      private var var_2829:String = "";
      
      private var var_192:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_192 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_192)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_174;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_174 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_173;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_173 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_430;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_430 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_192)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1624;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_1624 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1038;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_1038 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_696;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_696 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2824;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2824 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2767;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2767 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2760;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2760 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2826;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2826 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2825;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2825 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2756;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2756 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2829;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2829 = param1;
         }
      }
   }
}
