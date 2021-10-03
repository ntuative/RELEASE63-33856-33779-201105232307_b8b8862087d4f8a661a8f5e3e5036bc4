package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_434:RoomObjectLocationCacheItem = null;
      
      private var var_201:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_434 = new RoomObjectLocationCacheItem(param1);
         this.var_201 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_434;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_201;
      }
      
      public function dispose() : void
      {
         if(this.var_434 != null)
         {
            this.var_434.dispose();
            this.var_434 = null;
         }
         if(this.var_201 != null)
         {
            this.var_201.dispose();
            this.var_201 = null;
         }
      }
   }
}
