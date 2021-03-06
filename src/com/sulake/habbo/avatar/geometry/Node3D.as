package com.sulake.habbo.avatar.geometry
{
   public class Node3D
   {
       
      
      private var var_434:Vector3D;
      
      private var var_1992:Vector3D;
      
      private var var_2790:Boolean = false;
      
      public function Node3D(param1:Number, param2:Number, param3:Number)
      {
         this.var_1992 = new Vector3D();
         super();
         this.var_434 = new Vector3D(param1,param2,param3);
         if(param1 != 0 || param2 != 0 || param3 != 0)
         {
            this.var_2790 = true;
         }
      }
      
      public function get location() : Vector3D
      {
         return this.var_434;
      }
      
      public function get transformedLocation() : Vector3D
      {
         return this.var_1992;
      }
      
      public function applyTransform(param1:Matrix4x4) : void
      {
         if(this.var_2790)
         {
            this.var_1992 = param1.vectorMultiplication(this.var_434);
         }
      }
   }
}
