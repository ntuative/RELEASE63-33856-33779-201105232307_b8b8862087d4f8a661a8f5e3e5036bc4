package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_568:int = 0;
      
      public static const const_216:int = 1;
      
      public static const const_123:int = 2;
      
      public static const const_715:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1794:String;
      
      private var var_2707:int;
      
      private var var_1543:int;
      
      private var var_2704:int;
      
      private var var_2837:int;
      
      private var var_877:Array;
      
      private var var_2705:Array;
      
      private var var_2836:int;
      
      private var var_2711:Boolean;
      
      private var var_2709:Boolean;
      
      private var var_2706:Boolean;
      
      private var var_2708:Boolean;
      
      private var var_2712:int;
      
      private var var_2710:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2711;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2711 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2709;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2709 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2706;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2706 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2708;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2708 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2712;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2712 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2710;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2710 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1794;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1794 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2707;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2707 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1543;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1543 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2704;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2704 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2837;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2837 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_877;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_877 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2705;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2705 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2836;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2836 = param1;
      }
   }
}
