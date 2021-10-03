package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1595:Number = 12;
       
      
      private var var_2877:int = -1;
      
      private var var_2880:int = -2;
      
      private var var_214:Vector3d = null;
      
      private var var_1326:Number = 0;
      
      private var var_1603:Number = 0;
      
      private var var_2078:Boolean = false;
      
      private var var_194:Vector3d = null;
      
      private var var_2076:Vector3d;
      
      private var var_2878:Boolean = false;
      
      private var var_2881:Boolean = false;
      
      private var var_2876:Boolean = false;
      
      private var var_2882:Boolean = false;
      
      private var var_2883:int = 0;
      
      private var var_2874:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2875:int = 0;
      
      private var var_2879:int = 0;
      
      private var var_1711:int = -1;
      
      private var var_2077:int = 0;
      
      private var var_2075:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_2076 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_194;
      }
      
      public function get targetId() : int
      {
         return this.var_2877;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2880;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_2076;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2878;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2881;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2876;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2882;
      }
      
      public function get screenWd() : int
      {
         return this.var_2883;
      }
      
      public function get screenHt() : int
      {
         return this.var_2874;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2875;
      }
      
      public function get roomHt() : int
      {
         return this.var_2879;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1711;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_214 != null && this.var_194 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2877 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_2076.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2880 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2878 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2881 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2876 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2882 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2883 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2874 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_2075 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2875 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2879 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1711 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_214 == null)
         {
            this.var_214 = new Vector3d();
         }
         if(this.var_214.x != param1.x || this.var_214.y != param1.y || this.var_214.z != param1.z)
         {
            this.var_214.assign(param1);
            this.var_2077 = 0;
            _loc2_ = Vector3d.dif(this.var_214,this.var_194);
            this.var_1326 = _loc2_.length;
            this.var_2078 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_214 = null;
         this.var_194 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_194 != null)
         {
            return;
         }
         this.var_194 = new Vector3d();
         this.var_194.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_194 == null)
         {
            this.var_194 = new Vector3d();
         }
         this.var_194.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_214 != null && this.var_194 != null)
         {
            ++this.var_2077;
            if(this.var_2075)
            {
               this.var_2075 = false;
               this.var_194 = this.var_214;
               this.var_214 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_214,this.var_194);
            if(_loc3_.length > this.var_1326)
            {
               this.var_1326 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_194 = this.var_214;
               this.var_214 = null;
               this.var_1603 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1326);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1326 / const_1595;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_2078)
               {
                  if(_loc7_ < this.var_1603)
                  {
                     _loc7_ = this.var_1603;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_2078 = false;
                  }
               }
               this.var_1603 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_194 = Vector3d.sum(this.var_194,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1711 = -1;
      }
   }
}
