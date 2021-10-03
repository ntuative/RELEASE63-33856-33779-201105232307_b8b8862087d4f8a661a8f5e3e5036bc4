package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2090:int = 16777215;
      
      public static const const_1319:int = 8191;
      
      public static const const_1315:int = 8191;
      
      public static const const_2105:int = 1;
      
      public static const const_1198:int = 1;
      
      public static const const_1176:int = 1;
      
      private static var var_551:uint = 0;
      
      private static var var_552:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1319)
         {
            param2 = const_1319;
         }
         else if(param2 < const_1198)
         {
            param2 = const_1198;
         }
         if(param3 > const_1315)
         {
            param3 = const_1315;
         }
         else if(param3 < const_1176)
         {
            param3 = const_1176;
         }
         super(param2,param3,param4,param5);
         ++var_551;
         var_552 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_551;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_552;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_552 -= width * height * 4;
            --var_551;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
