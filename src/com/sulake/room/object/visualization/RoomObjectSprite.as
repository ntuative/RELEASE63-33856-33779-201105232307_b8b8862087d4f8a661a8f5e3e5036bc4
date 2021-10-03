package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1217:int = 0;
       
      
      private var var_435:BitmapData = null;
      
      private var var_2290:String = "";
      
      private var var_320:Boolean = true;
      
      private var var_2507:String = "";
      
      private var var_2509:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_1827:String;
      
      private var var_1557:Boolean = false;
      
      private var var_1556:Boolean = false;
      
      private var _offset:Point;
      
      private var var_270:int = 0;
      
      private var _height:int = 0;
      
      private var var_1158:Number = 0;
      
      private var var_2508:Boolean = false;
      
      private var var_2513:Boolean = true;
      
      private var var_2510:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var var_2511:int = 0;
      
      private var var_2512:Array = null;
      
      public function RoomObjectSprite()
      {
         this.var_1827 = BlendMode.NORMAL;
         this._offset = new Point(0,0);
         super();
         this.var_2511 = var_1217++;
      }
      
      public function dispose() : void
      {
         this.var_435 = null;
         this.var_270 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_435;
      }
      
      public function get assetName() : String
      {
         return this.var_2290;
      }
      
      public function get visible() : Boolean
      {
         return this.var_320;
      }
      
      public function get tag() : String
      {
         return this.var_2507;
      }
      
      public function get alpha() : int
      {
         return this.var_2509;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_1827;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1556;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1557;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_270;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1158;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2508;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2513;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2510;
      }
      
      public function get instanceId() : int
      {
         return this.var_2511;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2512;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_270 = param1.width;
            this._height = param1.height;
         }
         this.var_435 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2290 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_320 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2507 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2509 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_1827 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2512 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1557 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1556 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1158 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2508 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2513 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2510 = param1;
         ++this._updateID;
      }
   }
}
