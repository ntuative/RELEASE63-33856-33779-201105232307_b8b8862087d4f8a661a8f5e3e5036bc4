package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_895:int = 1;
      
      public static const const_971:int = 2;
      
      public static const const_846:int = 3;
      
      public static const const_1268:int = 4;
      
      public static const const_892:int = 5;
      
      public static const const_1128:int = 6;
       
      
      private var _type:int;
      
      private var var_1274:int;
      
      private var var_2393:String;
      
      private var var_2857:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1274 = param2;
         this.var_2393 = param3;
         this.var_2857 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2393;
      }
      
      public function get time() : String
      {
         return this.var_2857;
      }
      
      public function get senderId() : int
      {
         return this.var_1274;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
