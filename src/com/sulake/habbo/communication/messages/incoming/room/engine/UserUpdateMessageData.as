package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_174:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_2891:Number = 0;
      
      private var var_2892:Number = 0;
      
      private var var_2890:Number = 0;
      
      private var var_2888:Number = 0;
      
      private var var_430:int = 0;
      
      private var var_2413:int = 0;
      
      private var var_335:Array;
      
      private var var_2889:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_335 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_174 = param3;
         this.var_173 = param4;
         this.var_2891 = param5;
         this.var_430 = param6;
         this.var_2413 = param7;
         this.var_2892 = param8;
         this.var_2890 = param9;
         this.var_2888 = param10;
         this.var_2889 = param11;
         this.var_335 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_174;
      }
      
      public function get z() : Number
      {
         return this.var_173;
      }
      
      public function get localZ() : Number
      {
         return this.var_2891;
      }
      
      public function get targetX() : Number
      {
         return this.var_2892;
      }
      
      public function get targetY() : Number
      {
         return this.var_2890;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2888;
      }
      
      public function get dir() : int
      {
         return this.var_430;
      }
      
      public function get dirHead() : int
      {
         return this.var_2413;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2889;
      }
      
      public function get actions() : Array
      {
         return this.var_335.slice();
      }
   }
}
