package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2228:int;
      
      private var var_2227:int;
      
      private var var_2229:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2228 = param1;
         this.var_2227 = param2;
         this.var_2229 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2228,this.var_2227,this.var_2229];
      }
      
      public function dispose() : void
      {
      }
   }
}
