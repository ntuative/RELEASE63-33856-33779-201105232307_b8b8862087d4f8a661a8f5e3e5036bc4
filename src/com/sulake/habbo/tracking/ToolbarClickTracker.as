package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1366:IHabboTracking;
      
      private var var_2056:Boolean = false;
      
      private var var_2428:int = 0;
      
      private var var_1770:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1366 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1366 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2056 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2428 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_2056)
         {
            return;
         }
         ++this.var_1770;
         if(this.var_1770 <= this.var_2428)
         {
            this.var_1366.track("toolbar",param1);
         }
      }
   }
}
