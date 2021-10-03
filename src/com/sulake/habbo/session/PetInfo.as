package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1685:int;
      
      private var var_1102:int;
      
      private var var_2571:int;
      
      private var var_2236:int;
      
      private var var_2574:int;
      
      private var _energy:int;
      
      private var var_2572:int;
      
      private var _nutrition:int;
      
      private var var_2570:int;
      
      private var var_2241:int;
      
      private var _ownerName:String;
      
      private var var_2242:int;
      
      private var var_507:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1685;
      }
      
      public function get level() : int
      {
         return this.var_1102;
      }
      
      public function get levelMax() : int
      {
         return this.var_2571;
      }
      
      public function get experience() : int
      {
         return this.var_2236;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2574;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2572;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2570;
      }
      
      public function get ownerId() : int
      {
         return this.var_2241;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2242;
      }
      
      public function get age() : int
      {
         return this.var_507;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1685 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1102 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2571 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2236 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2574 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2572 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2570 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2241 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2242 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_507 = param1;
      }
   }
}
