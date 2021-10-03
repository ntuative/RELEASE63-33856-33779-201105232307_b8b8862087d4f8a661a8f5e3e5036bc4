package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1434:int = 3;
      
      private static const const_1585:int = 2;
      
      private static const const_1587:int = 1;
      
      private static const const_1586:int = 15;
       
      
      private var var_310:Array;
      
      private var var_1323:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_310 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1585)
         {
            this.var_310 = new Array();
            this.var_310.push(const_1587);
            this.var_1323 = const_1586;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1323 > 0)
         {
            --this.var_1323;
         }
         if(this.var_1323 == 0)
         {
            if(this.var_310.length > 0)
            {
               super.setAnimation(this.var_310.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
