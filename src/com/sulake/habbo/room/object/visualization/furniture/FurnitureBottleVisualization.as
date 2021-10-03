package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1055:int = 20;
      
      private static const const_657:int = 9;
      
      private static const const_1434:int = -1;
       
      
      private var var_310:Array;
      
      private var var_768:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_310 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_768)
            {
               this.var_768 = true;
               this.var_310 = new Array();
               this.var_310.push(const_1434);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_768)
            {
               this.var_768 = false;
               this.var_310 = new Array();
               this.var_310.push(const_1055);
               this.var_310.push(const_657 + param1);
               this.var_310.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(0))
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
