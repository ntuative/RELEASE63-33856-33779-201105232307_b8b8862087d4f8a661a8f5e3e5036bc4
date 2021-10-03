package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2201:Number = 0.0;
      
      private var var_2200:Number = 0.0;
      
      private var var_2198:Number = 0.0;
      
      private var var_2199:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2201 = param1;
         this.var_2200 = param2;
         this.var_2198 = param3;
         this.var_2199 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2201;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2200;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2198;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2199;
      }
   }
}
