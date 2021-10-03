package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1055:int = 20;
      
      private static const const_657:int = 10;
      
      private static const const_1487:int = 31;
      
      private static const const_1434:int = 32;
      
      private static const const_658:int = 30;
       
      
      private var var_310:Array;
      
      private var var_768:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_310 = new Array();
         super();
         super.setAnimation(const_658);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_768)
            {
               this.var_768 = true;
               this.var_310 = new Array();
               this.var_310.push(const_1487);
               this.var_310.push(const_1434);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_657)
         {
            if(this.var_768)
            {
               this.var_768 = false;
               this.var_310 = new Array();
               if(direction == 2)
               {
                  this.var_310.push(const_1055 + 5 - param1);
                  this.var_310.push(const_657 + 5 - param1);
               }
               else
               {
                  this.var_310.push(const_1055 + param1);
                  this.var_310.push(const_657 + param1);
               }
               this.var_310.push(const_658);
               return;
            }
            super.setAnimation(const_658);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
