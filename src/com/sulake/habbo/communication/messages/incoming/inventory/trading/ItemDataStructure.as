package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2351:int;
      
      private var var_1554:String;
      
      private var var_2352:int;
      
      private var var_2348:int;
      
      private var _category:int;
      
      private var var_2169:String;
      
      private var var_1455:int;
      
      private var var_2347:int;
      
      private var var_2350:int;
      
      private var var_2346:int;
      
      private var var_2349:int;
      
      private var var_2345:Boolean;
      
      private var var_2983:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2351 = param1;
         this.var_1554 = param2;
         this.var_2352 = param3;
         this.var_2348 = param4;
         this._category = param5;
         this.var_2169 = param6;
         this.var_1455 = param7;
         this.var_2347 = param8;
         this.var_2350 = param9;
         this.var_2346 = param10;
         this.var_2349 = param11;
         this.var_2345 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2351;
      }
      
      public function get itemType() : String
      {
         return this.var_1554;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2352;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2348;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2169;
      }
      
      public function get extra() : int
      {
         return this.var_1455;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2347;
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
      
      public function get groupable() : Boolean
      {
         return this.var_2345;
      }
      
      public function get songID() : int
      {
         return this.var_1455;
      }
   }
}
