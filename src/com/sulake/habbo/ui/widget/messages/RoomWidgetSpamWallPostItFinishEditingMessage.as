package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetSpamWallPostItFinishEditingMessage extends RoomWidgetMessage
   {
      
      public static const const_923:String = "RWSWPFEE_SEND_POSTIT_DATA";
       
      
      private var var_218:int;
      
      private var var_434:String;
      
      private var _text:String;
      
      private var var_334:String;
      
      public function RoomWidgetSpamWallPostItFinishEditingMessage(param1:String, param2:int, param3:String, param4:String, param5:String)
      {
         super(param1);
         this.var_218 = param2;
         this.var_434 = param3;
         this._text = param4;
         this.var_334 = param5;
      }
      
      public function get location() : String
      {
         return this.var_434;
      }
      
      public function get objectId() : int
      {
         return this.var_218;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get colorHex() : String
      {
         return this.var_334;
      }
   }
}
