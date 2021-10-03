package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2955:uint;
      
      private var var_154:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_278:IWindowContext;
      
      private var var_1167:IMouseDraggingService;
      
      private var var_1165:IMouseScalingService;
      
      private var var_1168:IMouseListenerService;
      
      private var var_1169:IFocusManagerService;
      
      private var var_1166:IToolTipAgentService;
      
      private var var_1164:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2955 = 0;
         this.var_154 = param2;
         this.var_278 = param1;
         this.var_1167 = new WindowMouseDragger(param2);
         this.var_1165 = new WindowMouseScaler(param2);
         this.var_1168 = new WindowMouseListener(param2);
         this.var_1169 = new FocusManager(param2);
         this.var_1166 = new WindowToolTipAgent(param2);
         this.var_1164 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1167 != null)
         {
            this.var_1167.dispose();
            this.var_1167 = null;
         }
         if(this.var_1165 != null)
         {
            this.var_1165.dispose();
            this.var_1165 = null;
         }
         if(this.var_1168 != null)
         {
            this.var_1168.dispose();
            this.var_1168 = null;
         }
         if(this.var_1169 != null)
         {
            this.var_1169.dispose();
            this.var_1169 = null;
         }
         if(this.var_1166 != null)
         {
            this.var_1166.dispose();
            this.var_1166 = null;
         }
         if(this.var_1164 != null)
         {
            this.var_1164.dispose();
            this.var_1164 = null;
         }
         this.var_154 = null;
         this.var_278 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1167;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1165;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1168;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1169;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1166;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1164;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
