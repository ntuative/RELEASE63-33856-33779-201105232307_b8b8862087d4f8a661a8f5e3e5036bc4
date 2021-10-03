package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.ui.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _type:int;
      
      private var var_1643:int;
      
      private var var_978:int = 1;
      
      private var var_1483:int;
      
      private var var_498:Boolean = false;
      
      private var _isSelected:Boolean = false;
      
      private var var_1852:Boolean = false;
      
      private var var_707:BitmapData;
      
      private var var_2546:Date;
      
      public function Effect()
      {
         super();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get duration() : int
      {
         return this.var_1643;
      }
      
      public function get effectsInInventory() : int
      {
         return this.var_978;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_498;
      }
      
      public function get isInUse() : Boolean
      {
         return this.var_1852;
      }
      
      public function get isSelected() : Boolean
      {
         return this._isSelected;
      }
      
      public function get icon() : BitmapData
      {
         return this.var_707;
      }
      
      public function get iconImage() : BitmapData
      {
         return this.var_707;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(this.var_498)
         {
            _loc1_ = this.var_1483 - (new Date().valueOf() - this.var_2546.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return this.var_1483;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function set duration(param1:int) : void
      {
         this.var_1643 = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         this.var_1483 = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         this._isSelected = param1;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         this.var_1852 = param1;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         this.var_707 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         this.var_978 = param1;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !this.var_498)
         {
            this.var_2546 = new Date();
         }
         this.var_498 = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --this.var_978;
         if(this.var_978 < 0)
         {
            this.var_978 = 0;
         }
         this.var_1483 = this.var_1643;
         this.var_498 = false;
         this.var_1852 = false;
      }
   }
}
