package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_1688:int = 0;
      
      private var var_1591:Dictionary;
      
      private var var_2052:int = 0;
      
      private var var_2053:int = 0;
      
      private var var_2475:Boolean = false;
      
      private var var_2498:int = 0;
      
      private var var_2502:int = 0;
      
      public function Purse()
      {
         this.var_1591 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1688;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1688 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2052;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2052 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2053;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2053 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_2052 > 0 || this.var_2053 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2475;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2475 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2498;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2498 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2502;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2502 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1591;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1591 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1591[param1];
      }
   }
}
