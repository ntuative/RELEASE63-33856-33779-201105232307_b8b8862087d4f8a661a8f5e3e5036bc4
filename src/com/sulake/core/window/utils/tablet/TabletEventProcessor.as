package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2992:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_85 = param1.desktop;
         var_64 = param1.var_1342 as WindowController;
         var_176 = param1.var_1341 as WindowController;
         var_165 = param1.renderer;
         var_873 = param1.var_1340;
         param2.begin();
         param2.end();
         param1.desktop = var_85;
         param1.var_1342 = var_64;
         param1.var_1341 = var_176;
         param1.renderer = var_165;
         param1.var_1340 = var_873;
      }
   }
}
