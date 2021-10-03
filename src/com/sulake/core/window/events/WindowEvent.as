package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1820:String = "WE_DESTROY";
      
      public static const const_327:String = "WE_DESTROYED";
      
      public static const const_1644:String = "WE_OPEN";
      
      public static const const_1743:String = "WE_OPENED";
      
      public static const const_1671:String = "WE_CLOSE";
      
      public static const const_1844:String = "WE_CLOSED";
      
      public static const const_1915:String = "WE_FOCUS";
      
      public static const const_339:String = "WE_FOCUSED";
      
      public static const const_1890:String = "WE_UNFOCUS";
      
      public static const const_1667:String = "WE_UNFOCUSED";
      
      public static const const_1838:String = "WE_ACTIVATE";
      
      public static const const_499:String = "WE_ACTIVATED";
      
      public static const const_1806:String = "WE_DEACTIVATE";
      
      public static const const_525:String = "WE_DEACTIVATED";
      
      public static const const_361:String = "WE_SELECT";
      
      public static const const_49:String = "WE_SELECTED";
      
      public static const const_469:String = "WE_UNSELECT";
      
      public static const const_523:String = "WE_UNSELECTED";
      
      public static const const_1832:String = "WE_LOCK";
      
      public static const const_1823:String = "WE_LOCKED";
      
      public static const const_1860:String = "WE_UNLOCK";
      
      public static const const_1779:String = "WE_UNLOCKED";
      
      public static const const_882:String = "WE_ENABLE";
      
      public static const const_272:String = "WE_ENABLED";
      
      public static const const_710:String = "WE_DISABLE";
      
      public static const const_242:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_407:String = "WE_RELOCATED";
      
      public static const const_1106:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1857:String = "WE_MINIMIZE";
      
      public static const const_1878:String = "WE_MINIMIZED";
      
      public static const const_1877:String = "WE_MAXIMIZE";
      
      public static const const_1902:String = "WE_MAXIMIZED";
      
      public static const const_1811:String = "WE_RESTORE";
      
      public static const const_1632:String = "WE_RESTORED";
      
      public static const const_338:String = "WE_CHILD_ADDED";
      
      public static const const_443:String = "WE_CHILD_REMOVED";
      
      public static const const_194:String = "WE_CHILD_RELOCATED";
      
      public static const const_134:String = "WE_CHILD_RESIZED";
      
      public static const const_310:String = "WE_CHILD_ACTIVATED";
      
      public static const const_507:String = "WE_PARENT_ADDED";
      
      public static const const_1769:String = "WE_PARENT_REMOVED";
      
      public static const const_1856:String = "WE_PARENT_RELOCATED";
      
      public static const const_807:String = "WE_PARENT_RESIZED";
      
      public static const const_1158:String = "WE_PARENT_ACTIVATED";
      
      public static const const_179:String = "WE_OK";
      
      public static const const_558:String = "WE_CANCEL";
      
      public static const const_106:String = "WE_CHANGE";
      
      public static const const_617:String = "WE_SCROLL";
      
      public static const const_178:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_706:IWindow;
      
      protected var var_1091:Boolean;
      
      protected var var_485:Boolean;
      
      protected var var_478:Boolean;
      
      protected var var_705:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_706 = param3;
         _loc5_.var_485 = param4;
         _loc5_.var_478 = false;
         _loc5_.var_705 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_706;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_485;
      }
      
      public function recycle() : void
      {
         if(this.var_478)
         {
            throw new Error("Event already recycled!");
         }
         this.var_706 = null;
         this._window = null;
         this.var_478 = true;
         this.var_1091 = false;
         this.var_705.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function method_11() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1091;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1091 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1091;
      }
      
      public function stopPropagation() : void
      {
         this.var_1091 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1091 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_485 + " window: " + this._window + " }";
      }
   }
}
