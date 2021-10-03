package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2318:int;
      
      private var var_1652:String;
      
      private var var_2204:String;
      
      private var var_2896:Boolean;
      
      private var var_2895:Boolean;
      
      private var var_2898:int;
      
      private var var_2205:String;
      
      private var var_2897:String;
      
      private var var_1651:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2318 = param1.readInteger();
         this.var_1652 = param1.readString();
         this.var_2204 = param1.readString();
         this.var_2896 = param1.readBoolean();
         this.var_2895 = param1.readBoolean();
         param1.readString();
         this.var_2898 = param1.readInteger();
         this.var_2205 = param1.readString();
         this.var_2897 = param1.readString();
         this.var_1651 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2318;
      }
      
      public function get avatarName() : String
      {
         return this.var_1652;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2204;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2896;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2895;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2898;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2205;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2897;
      }
      
      public function get realName() : String
      {
         return this.var_1651;
      }
   }
}
