package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_734:String = "";
      
      public static const const_428:int = 0;
      
      public static const const_583:int = 255;
      
      public static const const_884:Boolean = false;
      
      public static const const_515:int = 0;
      
      public static const const_563:int = 0;
      
      public static const const_430:int = 0;
      
      public static const const_1192:int = 1;
      
      public static const const_1329:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2507:String = "";
      
      private var var_1923:int = 0;
      
      private var var_2509:int = 255;
      
      private var var_2911:Boolean = false;
      
      private var var_2913:int = 0;
      
      private var var_2912:int = 0;
      
      private var var_2910:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2507 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2507;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1923 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1923;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2509 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2509;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2911 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2911;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2913 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2913;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2912 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2912;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2910 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2910;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
