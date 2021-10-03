package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_696:String;
      
      private var var_2377:String;
      
      private var var_1080:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_696 = param1;
         this.var_1080 = param2;
         this.var_2377 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_696;
      }
      
      public function get race() : String
      {
         return this.var_2377;
      }
      
      public function get gender() : String
      {
         return this.var_1080;
      }
   }
}
