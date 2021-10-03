package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      public static const const_1174:int = 1;
      
      public static const const_502:int = 2;
      
      private static const const_1052:int = 5;
      
      private static const const_1463:int = 250;
      
      private static const const_1465:int = 100;
      
      private static const const_1462:int = 180;
      
      private static const const_1464:int = 200;
       
      
      private var var_369:Timer;
      
      private var var_370:Timer;
      
      private var _assets:IAssetLibrary;
      
      private var var_83:IWindowContainer;
      
      private var _parent:IWindowContainer;
      
      private var var_1862:int = 2;
      
      private var var_771:BitmapData;
      
      private var var_986:BitmapData;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         this.var_369 = new Timer(const_1463,1);
         this.var_370 = new Timer(const_1465,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         this.var_83 = param1;
         this.var_83.visible = false;
         this._assets = param2;
         this.var_369.addEventListener(TimerEvent.TIMER,this.onDisplayTimer);
         this.var_370.addEventListener(TimerEvent.TIMER,this.onHideTimer);
         var _loc3_:BitmapDataAsset = this._assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_986 = _loc3_.content as BitmapData;
         }
         _loc3_ = this._assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_771 = _loc3_.content as BitmapData;
         }
      }
      
      public function dispose() : void
      {
         if(this.var_369 != null)
         {
            this.var_369.removeEventListener(TimerEvent.TIMER,this.onDisplayTimer);
            this.var_369.stop();
            this.var_369 = null;
         }
         if(this.var_370 != null)
         {
            this.var_370.removeEventListener(TimerEvent.TIMER,this.onHideTimer);
            this.var_370.stop();
            this.var_370 = null;
         }
         this._assets = null;
         this.var_83 = null;
         this._parent = null;
         this.var_771 = null;
         this.var_986 = null;
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(this.var_83 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_83);
         }
         this._parent = param1;
         this.var_1862 = param4;
         var _loc5_:ITextWindow = ITextWindow(this.var_83.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = this.var_83.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1462,param3.width),Math.min(const_1464,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (this.var_83.width - _loc6_.width) / 2;
            this.var_83.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      public function show() : void
      {
         this.var_370.reset();
         this.var_369.reset();
         if(this._parent == null)
         {
            return;
         }
         this.var_83.visible = true;
         this._parent.addChild(this.var_83);
         this.refreshArrow(this.var_1862);
         switch(this.var_1862)
         {
            case const_1174:
               this.var_83.x = -1 * this.var_83.width - const_1052;
               break;
            case const_502:
               this.var_83.x = this._parent.width + const_1052;
         }
         this.var_83.y = (this._parent.height - this.var_83.height) / 2;
      }
      
      public function hide() : void
      {
         this.var_83.visible = false;
         this.var_370.reset();
         this.var_369.reset();
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_83);
         }
      }
      
      public function showDelayed() : void
      {
         this.var_370.reset();
         this.var_369.reset();
         this.var_369.start();
      }
      
      public function hideDelayed() : void
      {
         this.var_370.reset();
         this.var_369.reset();
         this.var_370.start();
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(this.var_83 == null || this.var_83.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_83.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_1174:
               _loc2_.bitmap = this.var_986.clone();
               _loc2_.width = this.var_986.width;
               _loc2_.height = this.var_986.height;
               _loc2_.y = (this.var_83.height - this.var_986.height) / 2;
               _loc2_.x = this.var_83.width - 1;
               break;
            case const_502:
               _loc2_.bitmap = this.var_771.clone();
               _loc2_.width = this.var_771.width;
               _loc2_.height = this.var_771.height;
               _loc2_.y = (this.var_83.height - this.var_771.height) / 2;
               _loc2_.x = -1 * this.var_771.width + 1;
         }
         _loc2_.invalidate();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.show();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         this.hide();
      }
   }
}
