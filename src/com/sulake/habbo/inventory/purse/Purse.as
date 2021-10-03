package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2052:int = 0;
      
      private var var_2053:int = 0;
      
      private var var_2476:int = 0;
      
      private var var_2477:Boolean = false;
      
      private var var_2475:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2052 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2053 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2476 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2477 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2475 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2052;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2053;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2476;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2477;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2475;
      }
   }
}
