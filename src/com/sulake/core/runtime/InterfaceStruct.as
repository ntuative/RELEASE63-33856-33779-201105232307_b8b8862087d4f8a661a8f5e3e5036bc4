package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1558:IID;
      
      private var var_1981:String;
      
      private var var_110:IUnknown;
      
      private var var_813:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1558 = param1;
         this.var_1981 = getQualifiedClassName(this.var_1558);
         this.var_110 = param2;
         this.var_813 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1558;
      }
      
      public function get iis() : String
      {
         return this.var_1981;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_110;
      }
      
      public function get references() : uint
      {
         return this.var_813;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_110 == null;
      }
      
      public function dispose() : void
      {
         this.var_1558 = null;
         this.var_1981 = null;
         this.var_110 = null;
         this.var_813 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_813;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_813) : uint(0);
      }
   }
}
