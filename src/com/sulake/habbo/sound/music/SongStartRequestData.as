package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1753:int;
      
      private var var_1746:Number;
      
      private var var_2368:Number;
      
      private var var_2369:int;
      
      private var var_2367:Number;
      
      private var var_2366:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1753 = param1;
         this.var_1746 = param2;
         this.var_2368 = param3;
         this.var_2367 = param4;
         this.var_2366 = param5;
         this.var_2369 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1753;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1746 < 0)
         {
            return 0;
         }
         return this.var_1746 + (getTimer() - this.var_2369) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2368;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2367;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2366;
      }
   }
}
