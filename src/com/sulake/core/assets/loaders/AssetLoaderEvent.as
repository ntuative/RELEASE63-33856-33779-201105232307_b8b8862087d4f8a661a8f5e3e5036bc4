package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_29:String = "AssetLoaderEventComplete";
      
      public static const const_1160:String = "AssetLoaderEventProgress";
      
      public static const const_1334:String = "AssetLoaderEventUnload";
      
      public static const const_1251:String = "AssetLoaderEventStatus";
      
      public static const const_50:String = "AssetLoaderEventError";
      
      public static const const_1302:String = "AssetLoaderEventOpen";
       
      
      private var var_408:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_408 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_408;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_408);
      }
      
      override public function toString() : String
      {
         return formatToString("AssetLoaderEvent","type","status");
      }
   }
}
