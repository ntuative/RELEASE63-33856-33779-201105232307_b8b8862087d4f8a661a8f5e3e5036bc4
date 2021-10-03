package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_348:int = 1;
      
      public static const const_204:int = 2;
      
      public static const const_291:int = 3;
      
      public static const const_322:int = 4;
      
      public static const const_223:int = 5;
      
      public static const const_421:int = 1;
      
      public static const const_886:int = 2;
      
      public static const const_735:int = 3;
      
      public static const const_814:int = 4;
      
      public static const const_283:int = 5;
      
      public static const const_959:int = 6;
      
      public static const const_802:int = 7;
      
      public static const const_287:int = 8;
      
      public static const const_381:int = 9;
      
      public static const const_2095:int = 10;
      
      public static const const_903:int = 11;
      
      public static const const_618:int = 12;
       
      
      private var var_437:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_437 = new Array();
         this.var_437.push(new Tab(this._navigator,const_348,const_618,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_534));
         this.var_437.push(new Tab(this._navigator,const_204,const_421,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_534));
         this.var_437.push(new Tab(this._navigator,const_322,const_903,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1105));
         this.var_437.push(new Tab(this._navigator,const_291,const_283,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_534));
         this.var_437.push(new Tab(this._navigator,const_223,const_287,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_719));
         this.setSelectedTab(const_348);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_322;
      }
      
      public function get tabs() : Array
      {
         return this.var_437;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_437)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_437)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_437)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
