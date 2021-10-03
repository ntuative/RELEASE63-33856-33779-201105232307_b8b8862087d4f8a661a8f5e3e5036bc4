package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2267:int;
      
      private var var_1554:String;
      
      private var _objId:int;
      
      private var var_1843:int;
      
      private var _category:int;
      
      private var var_2169:String;
      
      private var var_2265:Boolean;
      
      private var var_2268:Boolean;
      
      private var var_2269:Boolean;
      
      private var var_2266:Boolean;
      
      private var var_2222:int;
      
      private var var_1455:int;
      
      private var var_2101:String = "";
      
      private var var_1753:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2267 = param1;
         this.var_1554 = param2;
         this._objId = param3;
         this.var_1843 = param4;
         this._category = param5;
         this.var_2169 = param6;
         this.var_2265 = param7;
         this.var_2268 = param8;
         this.var_2269 = param9;
         this.var_2266 = param10;
         this.var_2222 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_2101 = param1;
         this.var_1455 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2267;
      }
      
      public function get itemType() : String
      {
         return this.var_1554;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1843;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2169;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2265;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2268;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2269;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2266;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2222;
      }
      
      public function get slotId() : String
      {
         return this.var_2101;
      }
      
      public function get songId() : int
      {
         return this.var_1753;
      }
      
      public function get extra() : int
      {
         return this.var_1455;
      }
   }
}
