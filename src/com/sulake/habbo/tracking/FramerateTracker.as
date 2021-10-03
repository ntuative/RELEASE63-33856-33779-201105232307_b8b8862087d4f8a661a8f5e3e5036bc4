package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1837:int;
      
      private var var_2833:int;
      
      private var var_795:int;
      
      private var var_516:Number;
      
      private var var_2834:Boolean;
      
      private var var_2832:int;
      
      private var var_2024:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_516);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2833 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2832 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2834 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_795;
         if(this.var_795 == 1)
         {
            this.var_516 = param1;
            this.var_1837 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_795);
            this.var_516 = this.var_516 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2834 && param3 - this.var_1837 >= this.var_2833)
         {
            this.var_795 = 0;
            if(this.var_2024 < this.var_2832)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_2024;
               this.var_1837 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
