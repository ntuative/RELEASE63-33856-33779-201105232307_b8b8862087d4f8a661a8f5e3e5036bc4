package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2582:int = 0;
      
      private var var_1476:String = "";
      
      private var var_1839:String = "";
      
      private var var_2534:String = "";
      
      private var var_2581:String = "";
      
      private var var_1879:int = 0;
      
      private var var_2583:int = 0;
      
      private var var_2579:int = 0;
      
      private var var_1479:int = 0;
      
      private var var_2580:int = 0;
      
      private var var_1478:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2582 = param1;
         this.var_1476 = param2;
         this.var_1839 = param3;
         this.var_2534 = param4;
         this.var_2581 = param5;
         if(param6)
         {
            this.var_1879 = 1;
         }
         else
         {
            this.var_1879 = 0;
         }
         this.var_2583 = param7;
         this.var_2579 = param8;
         this.var_1479 = param9;
         this.var_2580 = param10;
         this.var_1478 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2582,this.var_1476,this.var_1839,this.var_2534,this.var_2581,this.var_1879,this.var_2583,this.var_2579,this.var_1479,this.var_2580,this.var_1478];
      }
   }
}
