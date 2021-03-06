package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1870:IID;
      
      private var var_1092:Boolean;
      
      private var var_1236:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1870 = param1;
         this.var_1236 = new Array();
         this.var_1092 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1870;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1092;
      }
      
      public function get receivers() : Array
      {
         return this.var_1236;
      }
      
      public function dispose() : void
      {
         if(!this.var_1092)
         {
            this.var_1092 = true;
            this.var_1870 = null;
            while(this.var_1236.length > 0)
            {
               this.var_1236.pop();
            }
            this.var_1236 = null;
         }
      }
   }
}
