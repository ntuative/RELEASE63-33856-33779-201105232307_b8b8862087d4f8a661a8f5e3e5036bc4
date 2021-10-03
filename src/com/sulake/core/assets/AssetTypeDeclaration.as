package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2253:String;
      
      private var var_2254:Class;
      
      private var var_2255:Class;
      
      private var var_1697:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2253 = param1;
         this.var_2254 = param2;
         this.var_2255 = param3;
         if(rest == null)
         {
            this.var_1697 = new Array();
         }
         else
         {
            this.var_1697 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2253;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2254;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2255;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1697;
      }
   }
}
