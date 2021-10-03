package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_791:TileHeightMap = null;
      
      private var var_1258:LegacyWallGeometry = null;
      
      private var var_1259:RoomCamera = null;
      
      private var var_790:SelectedRoomObjectData = null;
      
      private var var_792:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_528:Map;
      
      private var var_529:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_528 = new Map();
         this.var_529 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1258 = new LegacyWallGeometry();
         this.var_1259 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_791;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_791 != null)
         {
            this.var_791.dispose();
         }
         this.var_791 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1258;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1259;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_790;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_790 != null)
         {
            this.var_790.dispose();
         }
         this.var_790 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_792;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_792 != null)
         {
            this.var_792.dispose();
         }
         this.var_792 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_791 != null)
         {
            this.var_791.dispose();
            this.var_791 = null;
         }
         if(this.var_1258 != null)
         {
            this.var_1258.dispose();
            this.var_1258 = null;
         }
         if(this.var_1259 != null)
         {
            this.var_1259.dispose();
            this.var_1259 = null;
         }
         if(this.var_790 != null)
         {
            this.var_790.dispose();
            this.var_790 = null;
         }
         if(this.var_792 != null)
         {
            this.var_792.dispose();
            this.var_792 = null;
         }
         if(this.var_528 != null)
         {
            this.var_528.dispose();
            this.var_528 = null;
         }
         if(this.var_529 != null)
         {
            this.var_529.dispose();
            this.var_529 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_528.remove(param1.id);
            this.var_528.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_528.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_528.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_528.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_529.remove(param1.id);
            this.var_529.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_529.length > 0)
         {
            return this.getWallItemDataWithId(this.var_529.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_529.remove(param1);
      }
   }
}
