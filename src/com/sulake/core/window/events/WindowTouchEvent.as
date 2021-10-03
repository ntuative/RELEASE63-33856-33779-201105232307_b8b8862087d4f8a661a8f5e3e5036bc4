package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowTouchEvent extends WindowEvent
   {
      
      public static const const_956:String = "WTE_BEGIN";
      
      public static const const_1186:String = "WTE_END";
      
      public static const const_2071:String = "WTE_MOVE";
      
      public static const const_2029:String = "WTE_OUT";
      
      public static const const_2079:String = "WTE_OVER";
      
      public static const const_2040:String = "WTE_ROLL_OUT";
      
      public static const const_2165:String = "WTE_ROLL_OVER";
      
      public static const const_922:String = "WTE_TAP";
      
      private static const POOL:Array = [];
       
      
      public var localX:Number;
      
      public var localY:Number;
      
      public var stageX:Number;
      
      public var stageY:Number;
      
      public var altKey:Boolean;
      
      public var ctrlKey:Boolean;
      
      public var shiftKey:Boolean;
      
      public var var_2920:Number;
      
      public var sizeX:Number;
      
      public var sizeY:Number;
      
      public function WindowTouchEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Boolean, param13:Boolean) : WindowTouchEvent
      {
         var _loc14_:* = null;
         _loc14_ = POOL.length > 0 ? POOL.pop() : new WindowTouchEvent();
         _loc14_._type = param1;
         _loc14_._window = param2;
         _loc14_.var_706 = param3;
         _loc14_.var_478 = false;
         _loc14_.var_705 = POOL;
         _loc14_.sizeX = param6;
         _loc14_.sizeY = param7;
         _loc14_.localX = param4;
         _loc14_.localY = param5;
         _loc14_.stageX = param8;
         _loc14_.stageY = param9;
         _loc14_.var_2920 = param10;
         _loc14_.altKey = param11;
         _loc14_.ctrlKey = param12;
         _loc14_.shiftKey = param13;
         return _loc14_;
      }
      
      override public function clone() : WindowEvent
      {
         return allocate(_type,window,related,this.localX,this.localY,this.sizeX,this.sizeY,this.stageX,this.stageY,this.var_2920,this.altKey,this.ctrlKey,this.shiftKey);
      }
      
      override public function toString() : String
      {
         return "WindowTouchEvent { type: " + _type + " cancelable: " + var_485 + " window: " + _window + " localX: " + this.localX + " localY: " + this.localY + " }";
      }
   }
}
