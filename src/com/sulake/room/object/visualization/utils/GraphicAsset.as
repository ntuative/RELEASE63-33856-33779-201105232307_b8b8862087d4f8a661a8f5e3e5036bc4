package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2290:String;
      
      private var var_2782:String;
      
      private var var_435:BitmapDataAsset;
      
      private var var_1557:Boolean;
      
      private var var_1556:Boolean;
      
      private var var_2781:Boolean;
      
      private var _offsetX:int;
      
      private var var_1194:int;
      
      private var var_270:int;
      
      private var _height:int;
      
      private var var_709:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2290 = param1;
         this.var_2782 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_435 = _loc9_;
            this.var_709 = false;
         }
         else
         {
            this.var_435 = null;
            this.var_709 = true;
         }
         this.var_1557 = param4;
         this.var_1556 = param5;
         this._offsetX = param6;
         this.var_1194 = param7;
         this.var_2781 = param8;
      }
      
      public function dispose() : void
      {
         this.var_435 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_709 && this.var_435 != null)
         {
            _loc1_ = this.var_435.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_270 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_709 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1556;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1557;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_270;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2290;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2782;
      }
      
      public function get asset() : IAsset
      {
         return this.var_435;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2781;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1557)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1556)
         {
            return this.var_1194;
         }
         return -(this.height + this.var_1194);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1194;
      }
   }
}
