package com.sulake.habbo.ui.widget.avatarinfo
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.room.object.RoomObjectTypeEnum;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetUserActionMessage;
   import com.sulake.habbo.utils.FixedSizeStack;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class AvatarInfoView
   {
      
      private static const const_1408:int = 25;
      
      private static const const_1025:int = 3;
       
      
      protected var _window:IWindowContainer;
      
      protected var _widget:AvatarInfoWidget;
      
      protected var _userId:int;
      
      protected var _userName:String;
      
      protected var var_1624:int;
      
      protected var var_2157:Boolean;
      
      protected var var_2391:int;
      
      protected var var_1352:Boolean;
      
      protected var var_2159:FixedSizeStack;
      
      protected var var_2158:int = -1000000;
      
      protected var _fadeStartTimer:Timer;
      
      protected var var_2930:int = 3000;
      
      protected var var_1626:Boolean;
      
      protected var var_1625:Boolean;
      
      protected var _blend:Number;
      
      protected var var_1627:int;
      
      protected var var_2929:int = 500;
      
      protected var var_1623:Boolean;
      
      public function AvatarInfoView(param1:AvatarInfoWidget)
      {
         this.var_2159 = new FixedSizeStack(const_1408);
         super();
         this._widget = param1;
         this.var_1623 = true;
         this.var_1626 = false;
         this.var_1625 = false;
      }
      
      public static function setup(param1:AvatarInfoView, param2:int, param3:String, param4:int, param5:int, param6:Boolean = false) : void
      {
         param1._userId = param2;
         param1._userName = param3;
         param1.var_1624 = param5;
         param1.var_2391 = param4;
         param1.var_2157 = param6;
         param1.var_1626 = false;
         param1.var_2930 = 3000;
         param1.var_2929 = 500;
         param1.var_1625 = false;
         param1._blend = 1;
         if(param1.var_1623)
         {
            if(!param1._fadeStartTimer)
            {
               param1._fadeStartTimer = new Timer(param1.var_2930,1);
               param1._fadeStartTimer.addEventListener(TimerEvent.TIMER_COMPLETE,param1.onTimerComplete);
            }
            param1._fadeStartTimer.reset();
            param1._fadeStartTimer.start();
         }
         param1.updateWindow();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userType() : int
      {
         return this.var_1624;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2391;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2157;
      }
      
      public function dispose() : void
      {
         this._widget = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this._fadeStartTimer)
         {
            this._fadeStartTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onTimerComplete);
            this._fadeStartTimer.reset();
            this._fadeStartTimer = null;
         }
      }
      
      private function onTimerComplete(param1:TimerEvent) : void
      {
         this.var_1625 = true;
         this.var_1627 = 0;
         this.hide(true);
      }
      
      protected function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      protected function updateWindow() : void
      {
         var _loc2_:* = null;
         if(!this._widget || !this._widget.assets || !this._widget.windowManager)
         {
            return;
         }
         if(!this._window)
         {
            _loc2_ = this._widget.assets.getAssetByName("avatar_info_widget").content as XML;
            this._window = this._widget.windowManager.buildFromXML(_loc2_,0) as IWindowContainer;
            if(!this._window)
            {
               return;
            }
         }
         var _loc1_:IWindow = this._window.findChildByName("name");
         _loc1_.caption = this._userName;
         if(!this.var_2157)
         {
            this._window.findChildByName("change_name_container").visible = false;
            this._window.height = 39;
            this._window.width = 32 + _loc1_.width;
         }
         else
         {
            this.addMouseClickListener(this._window.findChildByName("change_name_container"),this.clickHandler);
         }
      }
      
      protected function clickHandler(param1:WindowMouseEvent) : void
      {
         this._widget.messageListener.processWidgetMessage(new RoomWidgetUserActionMessage(RoomWidgetUserActionMessage.const_828));
         this._widget.removeView(this,false);
      }
      
      public function setImageAsset(param1:IBitmapWrapperWindow, param2:String) : void
      {
         if(!param1 || !this._widget || !this._widget.assets)
         {
            return;
         }
         var _loc3_:BitmapDataAsset = this._widget.assets.getAssetByName(param2) as BitmapDataAsset;
         if(!_loc3_)
         {
            return;
         }
         var _loc4_:BitmapData = _loc3_.content as BitmapData;
         if(!_loc4_)
         {
            return;
         }
         if(param1.bitmap)
         {
            param1.bitmap.fillRect(param1.bitmap.rect,0);
         }
         else
         {
            param1.bitmap = new BitmapData(param1.width,param1.height,true,0);
         }
         param1.bitmap.draw(_loc4_);
      }
      
      public function show() : void
      {
         if(this._window != null)
         {
            this._widget.windowManager.getDesktop(0).addChild(this._window);
            this._window.visible = true;
            this._window.activate();
         }
      }
      
      public function hide(param1:Boolean) : void
      {
         if(this._window != null)
         {
            if(!this.var_1626 && param1)
            {
               this.var_1626 = true;
               this._fadeStartTimer.start();
            }
            else
            {
               this._widget.windowManager.getDesktop(0).removeChild(this._window);
               this._window.visible = false;
            }
         }
      }
      
      public function update(param1:Rectangle, param2:Point, param3:uint) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(!param1)
         {
            return;
         }
         if(!this._window)
         {
            this.updateWindow();
         }
         if(this.var_1625)
         {
            this.var_1627 += param3;
            this._blend = 1 - this.var_1627 / Number(this.var_2929);
         }
         else
         {
            this._blend = 1;
         }
         if(this._blend <= 0)
         {
            this._widget.removeView(this,false);
            return;
         }
         if(!this.var_1352)
         {
            _loc4_ = -this._window.height;
            if(this.var_1624 == RoomObjectTypeEnum.const_135 || this.var_1624 == RoomObjectTypeEnum.const_629)
            {
               _loc4_ += param1.height > 50 ? 25 : 0;
            }
            else
            {
               _loc4_ -= 4;
            }
            _loc5_ = param2.y - param1.top;
            this.var_2159.addValue(_loc5_);
            _loc6_ = this.var_2159.getMax();
            if(_loc6_ < this.var_2158 - const_1025)
            {
               _loc6_ = this.var_2158 - const_1025;
            }
            _loc7_ = param2.y - _loc6_;
            this.var_2158 = _loc6_;
            this._window.x = param2.x - this._window.width / 2;
            this._window.y = _loc7_ + _loc4_;
         }
         this._window.blend = this._blend;
         this.show();
      }
   }
}
