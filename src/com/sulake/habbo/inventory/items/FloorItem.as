package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2169:String;
      
      protected var var_1455:Number;
      
      protected var var_2941:Boolean;
      
      protected var var_2940:Boolean;
      
      protected var var_2345:Boolean;
      
      protected var var_2488:Boolean;
      
      protected var var_2942:int;
      
      protected var var_2350:int;
      
      protected var var_2346:int;
      
      protected var var_2349:int;
      
      protected var var_2101:String;
      
      protected var var_1753:int;
      
      protected var var_912:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2345 = param5;
         this.var_2940 = param6;
         this.var_2941 = param7;
         this.var_2488 = param8;
         this.var_2169 = param9;
         this.var_1455 = param10;
         this.var_2942 = param11;
         this.var_2350 = param12;
         this.var_2346 = param13;
         this.var_2349 = param14;
         this.var_2101 = param15;
         this.var_1753 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2169;
      }
      
      public function get extra() : Number
      {
         return this.var_1455;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2941;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2940;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2345;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2488;
      }
      
      public function get expires() : int
      {
         return this.var_2942;
      }
      
      public function get creationDay() : int
      {
         return this.var_2350;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2346;
      }
      
      public function get creationYear() : int
      {
         return this.var_2349;
      }
      
      public function get slotId() : String
      {
         return this.var_2101;
      }
      
      public function get songId() : int
      {
         return this.var_1753;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_912 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_912;
      }
   }
}
