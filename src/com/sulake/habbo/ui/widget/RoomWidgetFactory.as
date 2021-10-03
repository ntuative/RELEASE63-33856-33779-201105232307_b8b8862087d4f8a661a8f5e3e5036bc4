package com.sulake.habbo.ui.widget
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.quest.IHabboQuestEngine;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.sound.IHabboSoundManager;
   import com.sulake.habbo.ui.IRoomWidgetFactory;
   import com.sulake.habbo.ui.IRoomWidgetHandler;
   import com.sulake.habbo.ui.widget.avatarinfo.AvatarInfoWidget;
   import com.sulake.habbo.ui.widget.chatinput.RoomChatInputWidget;
   import com.sulake.habbo.ui.widget.chooser.FurniChooserWidget;
   import com.sulake.habbo.ui.widget.chooser.UserChooserWidget;
   import com.sulake.habbo.ui.widget.doorbell.DoorbellWidget;
   import com.sulake.habbo.ui.widget.enums.RoomWidgetEnum;
   import com.sulake.habbo.ui.widget.friendrequest.FriendRequestWidget;
   import com.sulake.habbo.ui.widget.furniture.clothingchange.ClothingChangeFurnitureWidget;
   import com.sulake.habbo.ui.widget.furniture.credit.CreditFurniWidget;
   import com.sulake.habbo.ui.widget.furniture.dimmer.DimmerFurniWidget;
   import com.sulake.habbo.ui.widget.furniture.ecotronbox.EcotronBoxFurniWidget;
   import com.sulake.habbo.ui.widget.furniture.petpackage.PetPackageFurniWidget;
   import com.sulake.habbo.ui.widget.furniture.placeholder.PlaceholderWidget;
   import com.sulake.habbo.ui.widget.furniture.present.PresentFurniWidget;
   import com.sulake.habbo.ui.widget.furniture.stickie.SpamWallPostItFurniWidget;
   import com.sulake.habbo.ui.widget.furniture.stickie.StickieFurniWidget;
   import com.sulake.habbo.ui.widget.furniture.teaser.TeaserFurniWidget;
   import com.sulake.habbo.ui.widget.furniture.trophy.TrophyFurniWidget;
   import com.sulake.habbo.ui.widget.furniture.welcomegift.WelcomeGiftWidget;
   import com.sulake.habbo.ui.widget.infostand.InfostandWidget;
   import com.sulake.habbo.ui.widget.loadingbar.LoadingBarWidget;
   import com.sulake.habbo.ui.widget.memenu.MeMenuWidget;
   import com.sulake.habbo.ui.widget.notification.UserNotificationWidget;
   import com.sulake.habbo.ui.widget.playlisteditor.PlayListEditorWidget;
   import com.sulake.habbo.ui.widget.poll.PollWidget;
   import com.sulake.habbo.ui.widget.poll.VoteWidget;
   import com.sulake.habbo.ui.widget.purse.PurseWidget;
   import com.sulake.habbo.ui.widget.roomchat.RoomChatWidget;
   import com.sulake.habbo.ui.widget.roomqueue.RoomQueueWidget;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCatalog;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboInventory;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboQuestEngine;
   import com.sulake.iid.IIDHabboSoundManager;
   import com.sulake.iid.IIDRoomEngine;
   import iid.IIDHabboWindowManager;
   
   public class RoomWidgetFactory extends Component implements IRoomWidgetFactory
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_2956:IAssetLibrary;
      
      private var var_63:IHabboLocalizationManager;
      
      private var var_133:IHabboConfigurationManager;
      
      private var _questEngine:IHabboQuestEngine;
      
      private var _catalog:IHabboCatalog;
      
      private var var_13:IHabboInventory;
      
      private var _soundManager:IHabboSoundManager;
      
      private var _roomEngine:IRoomEngine;
      
      private var var_2387:int = 0;
      
      public function RoomWidgetFactory(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         super(param1,param2,param3);
         this.var_2956 = param1.root.assets;
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationReady);
         queueInterface(new IIDHabboConfigurationManager(),this.onHabboConfigurationReady);
         queueInterface(new IIDHabboCatalog(),this.onCatalogReady);
         queueInterface(new IIDHabboInventory(),this.onInventoryReady);
         queueInterface(new IIDHabboSoundManager(),this.onSoundManagerReady);
         queueInterface(new IIDHabboQuestEngine(),this.onQuestEngineReady);
         queueInterface(new IIDRoomEngine(),this.onRoomEngineReady);
      }
      
      override public function dispose() : void
      {
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_63)
         {
            this.var_63.release(new IIDHabboLocalizationManager());
            this.var_63 = null;
         }
         if(this.var_133)
         {
            this.var_133.release(new IIDHabboConfigurationManager());
            this.var_133 = null;
         }
         if(this._soundManager)
         {
            this._soundManager.release(new IIDHabboSoundManager());
            this._soundManager = null;
         }
         if(this._catalog)
         {
            this._catalog.release(new IIDHabboCatalog());
            this._catalog = null;
         }
         if(this.var_13)
         {
            this.var_13.release(new IIDHabboInventory());
            this.var_13 = null;
         }
         if(this._questEngine)
         {
            this._questEngine.release(new IIDHabboQuestEngine());
            this._questEngine = null;
         }
         if(this._roomEngine)
         {
            this._roomEngine.release(new IIDRoomEngine());
            this._roomEngine = null;
         }
         super.dispose();
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = param2 as IHabboWindowManager;
      }
      
      private function onLocalizationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_63 = param2 as IHabboLocalizationManager;
      }
      
      private function onHabboConfigurationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_133 = param2 as IHabboConfigurationManager;
      }
      
      private function onCatalogReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._catalog = param2 as IHabboCatalog;
      }
      
      private function onInventoryReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_13 = param2 as IHabboInventory;
      }
      
      private function onSoundManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._soundManager = param2 as IHabboSoundManager;
      }
      
      private function onQuestEngineReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._questEngine = param2 as IHabboQuestEngine;
      }
      
      private function onRoomEngineReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._roomEngine = param2 as IRoomEngine;
      }
      
      public function createWidget(param1:String, param2:IRoomWidgetHandler) : IRoomWidget
      {
         var _loc3_:* = null;
         if(this._windowManager == null)
         {
            return null;
         }
         switch(param1)
         {
            case RoomWidgetEnum.const_411:
               _loc3_ = new RoomChatWidget(param2,this._windowManager,assets,this.var_63,this.var_133,this.var_2387++,this,this._questEngine);
               break;
            case RoomWidgetEnum.const_404:
               _loc3_ = new RoomChatInputWidget(param2,this._windowManager,assets,this.var_63,this.var_133,this);
               break;
            case RoomWidgetEnum.const_581:
               _loc3_ = new InfostandWidget(param2,this._windowManager,assets,this.var_63,this.var_133,this._catalog);
               break;
            case RoomWidgetEnum.const_628:
               _loc3_ = new MeMenuWidget(param2,this._windowManager,assets,this.var_63,events,this.var_133);
               break;
            case RoomWidgetEnum.const_688:
               _loc3_ = new PlaceholderWidget(param2,this._windowManager,assets,this.var_63);
               break;
            case RoomWidgetEnum.const_465:
               _loc3_ = new CreditFurniWidget(param2,this._windowManager,assets,this.var_63);
               break;
            case RoomWidgetEnum.const_593:
               _loc3_ = new StickieFurniWidget(param2,this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_621:
               _loc3_ = new PresentFurniWidget(param2,this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_588:
               _loc3_ = new TrophyFurniWidget(param2,this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_482:
               _loc3_ = new TeaserFurniWidget(param2,this._windowManager,assets,this.var_63,this.var_133,this.var_13);
               break;
            case RoomWidgetEnum.const_466:
               _loc3_ = new EcotronBoxFurniWidget(param2,this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_520:
               _loc3_ = new PetPackageFurniWidget(param2,this._windowManager,assets,this.var_63);
               break;
            case RoomWidgetEnum.const_122:
               _loc3_ = new DoorbellWidget(param2,this._windowManager,assets,this.var_63);
               break;
            case RoomWidgetEnum.const_606:
               _loc3_ = new LoadingBarWidget(param2,this._windowManager,assets,this.var_63,this.var_133);
               break;
            case RoomWidgetEnum.const_769:
               _loc3_ = new RoomQueueWidget(param2,this._windowManager,assets,this.var_63,this.var_133);
               break;
            case RoomWidgetEnum.const_117:
               _loc3_ = new VoteWidget(param2,this._windowManager,assets,this.var_63,this.var_133);
               break;
            case RoomWidgetEnum.const_441:
               _loc3_ = new PollWidget(param2,this._windowManager,assets,this.var_63);
               break;
            case RoomWidgetEnum.const_306:
               _loc3_ = new UserChooserWidget(param2,this._windowManager,assets,this.var_63);
               break;
            case RoomWidgetEnum.const_607:
               _loc3_ = new FurniChooserWidget(param2,this._windowManager,assets,this.var_63);
               break;
            case RoomWidgetEnum.const_556:
               _loc3_ = new DimmerFurniWidget(param2,this._windowManager,assets,this.var_63);
               break;
            case RoomWidgetEnum.const_162:
               _loc3_ = new FriendRequestWidget(param2,this._windowManager,assets,this.var_63,this);
               break;
            case RoomWidgetEnum.const_571:
               _loc3_ = new ClothingChangeFurnitureWidget(param2,this._windowManager,assets,this.var_63);
               break;
            case RoomWidgetEnum.const_832:
               _loc3_ = new RoomWidgetBase(param2,this._windowManager);
               break;
            case RoomWidgetEnum.const_118:
               _loc3_ = new UserNotificationWidget(param2,this._windowManager,assets,this.var_63);
               break;
            case RoomWidgetEnum.const_385:
               _loc3_ = new PurseWidget(param2,this._windowManager,assets,this.var_63);
               break;
            case RoomWidgetEnum.const_127:
               _loc3_ = new AvatarInfoWidget(param2,this._windowManager,assets,this.var_133,this.var_63,this);
               break;
            case RoomWidgetEnum.const_503:
               _loc3_ = new WelcomeGiftWidget(param2,this._windowManager,assets,this.var_63);
               break;
            case RoomWidgetEnum.const_586:
               _loc3_ = new PlayListEditorWidget(param2,this._windowManager,this._soundManager,assets,this.var_63,this.var_133,this._catalog);
               break;
            case RoomWidgetEnum.const_573:
               _loc3_ = new SpamWallPostItFurniWidget(param2,this._windowManager,assets);
         }
         return _loc3_;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get localizations() : IHabboLocalizationManager
      {
         return this.var_63;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return this.var_133;
      }
   }
}
