package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1917:String = "";
      
      private var var_2045:String = "";
      
      private var var_2400:String = "";
      
      private var var_2611:Number = 0;
      
      private var var_2610:Number = 0;
      
      private var var_2279:Number = 0;
      
      private var var_2281:Number = 0;
      
      private var var_2606:Boolean = false;
      
      private var var_2609:Boolean = false;
      
      private var var_2607:Boolean = false;
      
      private var var_2608:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1917 = param2;
         this.var_2045 = param3;
         this.var_2400 = param4;
         this.var_2611 = param5;
         this.var_2610 = param6;
         this.var_2279 = param7;
         this.var_2281 = param8;
         this.var_2606 = param9;
         this.var_2609 = param10;
         this.var_2607 = param11;
         this.var_2608 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1917;
      }
      
      public function get canvasId() : String
      {
         return this.var_2045;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2400;
      }
      
      public function get screenX() : Number
      {
         return this.var_2611;
      }
      
      public function get screenY() : Number
      {
         return this.var_2610;
      }
      
      public function get localX() : Number
      {
         return this.var_2279;
      }
      
      public function get localY() : Number
      {
         return this.var_2281;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2606;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2609;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2607;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2608;
      }
   }
}
