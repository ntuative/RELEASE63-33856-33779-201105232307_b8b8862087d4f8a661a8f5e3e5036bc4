package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_178:IWindowContainer;
      
      private var var_2946:int;
      
      private var var_349:RoomEventViewCtrl;
      
      private var var_347:Timer;
      
      private var var_134:RoomSettingsCtrl;
      
      private var var_246:RoomThumbnailCtrl;
      
      private var var_905:TagRenderer;
      
      private var var_350:IWindowContainer;
      
      private var var_348:IWindowContainer;
      
      private var var_587:IWindowContainer;
      
      private var var_1676:IWindowContainer;
      
      private var var_1677:IWindowContainer;
      
      private var var_1125:IWindowContainer;
      
      private var var_907:ITextWindow;
      
      private var var_904:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_721:ITextWindow;
      
      private var var_1120:ITextWindow;
      
      private var var_903:ITextWindow;
      
      private var var_723:ITextWindow;
      
      private var var_1396:ITextWindow;
      
      private var var_245:IWindowContainer;
      
      private var var_719:IWindowContainer;
      
      private var var_1394:IWindowContainer;
      
      private var var_1678:ITextWindow;
      
      private var var_586:ITextWindow;
      
      private var var_1679:IWindow;
      
      private var var_1121:IContainerButtonWindow;
      
      private var var_1119:IContainerButtonWindow;
      
      private var var_1124:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1122:IContainerButtonWindow;
      
      private var var_1397:IButtonWindow;
      
      private var var_1393:IButtonWindow;
      
      private var var_1395:IButtonWindow;
      
      private var var_722:IWindowContainer;
      
      private var var_1123:ITextWindow;
      
      private var var_906:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_720:IButtonWindow;
      
      private var var_1392:Boolean = false;
      
      private const const_831:int = 75;
      
      private const const_732:int = 3;
      
      private const const_708:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_349 = new RoomEventViewCtrl(this._navigator);
         this.var_134 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_246 = new RoomThumbnailCtrl(this._navigator);
         this.var_905 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_134);
         this.var_347 = new Timer(6000,1);
         this.var_347.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_347)
         {
            this.var_347.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_347.reset();
            this.var_347 = null;
         }
         this._navigator = null;
         this.var_349 = null;
         this.var_134 = null;
         this.var_246 = null;
         if(this.var_905)
         {
            this.var_905.dispose();
            this.var_905 = null;
         }
         this.var_178 = null;
         this.var_350 = null;
         this.var_348 = null;
         this.var_587 = null;
         this.var_1676 = null;
         this.var_1677 = null;
         this.var_1125 = null;
         this.var_907 = null;
         this.var_904 = null;
         this._ownerName = null;
         this.var_721 = null;
         this.var_1120 = null;
         this.var_903 = null;
         this.var_723 = null;
         this.var_1396 = null;
         this.var_245 = null;
         this.var_719 = null;
         this.var_1394 = null;
         this.var_1678 = null;
         this.var_586 = null;
         this.var_1679 = null;
         this.var_1121 = null;
         this.var_1119 = null;
         this.var_1124 = null;
         this._remFavouriteButton = null;
         this.var_1122 = null;
         this.var_1397 = null;
         this.var_1393 = null;
         this.var_1395 = null;
         this.var_722 = null;
         this.var_1123 = null;
         this.var_906 = null;
         this._buttons = null;
         this.var_720 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_347.reset();
         this.var_349.active = true;
         this.var_134.active = false;
         this.var_246.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_347.reset();
         this.var_134.load(param1);
         this.var_134.active = true;
         this.var_349.active = false;
         this.var_246.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_134.active = true;
         this.var_349.active = false;
         this.var_246.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_347.reset();
         this.var_134.active = false;
         this.var_349.active = false;
         this.var_246.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this.var_1392 = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_347.reset();
         this.var_349.active = false;
         this.var_134.active = false;
         this.var_246.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_732;
         this._window.y = this.const_831;
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_178,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_178.height = Util.getLowestPoint(this.var_178);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_708;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_350);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_134.refresh(this.var_350);
         this.var_246.refresh(this.var_350);
         Util.moveChildrenToColumn(this.var_350,["room_details","room_buttons"],0,2);
         this.var_350.height = Util.getLowestPoint(this.var_350);
         this.var_350.visible = true;
         Logger.log("XORP: " + this.var_348.visible + ", " + this.var_1125.visible + ", " + this.var_587.visible + ", " + this.var_587.rectangle + ", " + this.var_350.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_245);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_349.refresh(this.var_245);
         if(Util.hasVisibleChildren(this.var_245) && !(this.var_134.active || this.var_246.active))
         {
            Util.moveChildrenToColumn(this.var_245,["event_details","event_buttons"],0,2);
            this.var_245.height = Util.getLowestPoint(this.var_245);
            this.var_245.visible = true;
         }
         else
         {
            this.var_245.visible = false;
         }
         Logger.log("EVENT: " + this.var_245.visible + ", " + this.var_245.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_134.active && !this.var_246.active && !this.var_349.active)
         {
            this.var_722.visible = true;
            this.var_906.text = this.getEmbedData();
         }
         else
         {
            this.var_722.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_134.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_720)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_720.visible = _loc1_;
            if(this.var_1392)
            {
               this.var_720.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_720.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_134.active || this.var_246.active)
         {
            return;
         }
         this.var_907.text = param1.roomName;
         this.var_907.height = this.var_907.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_721.text = param1.description;
         this.var_905.refreshTags(this.var_348,param1.tags);
         this.var_721.visible = false;
         if(param1.description != "")
         {
            this.var_721.height = this.var_721.textHeight + 5;
            this.var_721.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1119,"facebook_logo_small",_loc3_,null,0);
         this.var_1119.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1121,"thumb_up",_loc4_,null,0);
         this.var_1121.visible = _loc4_;
         this.var_723.visible = !_loc4_;
         this.var_1396.visible = !_loc4_;
         this.var_1396.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_348,"home",param2,null,0);
         this._navigator.refreshButton(this.var_348,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_348,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_907.y,0);
         this.var_348.visible = true;
         this.var_348.height = Util.getLowestPoint(this.var_348);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_348.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_134.active || this.var_246.active)
         {
            return;
         }
         this.var_904.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_904.height = this.var_904.textHeight + 5;
         this.var_1120.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1120.height = this.var_1120.textHeight + 5;
         Util.moveChildrenToColumn(this.var_587,["public_space_name","public_space_desc"],this.var_904.y,0);
         this.var_587.visible = true;
         this.var_587.height = Math.max(86,Util.getLowestPoint(this.var_587));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_349.active)
         {
            return;
         }
         this.var_1678.text = param1.eventName;
         this.var_586.text = param1.eventDescription;
         this.var_905.refreshTags(this.var_719,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_586.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_586.height = this.var_586.textHeight + 5;
            this.var_586.y = Util.getLowestPoint(this.var_719) + 2;
            this.var_586.visible = true;
         }
         this.var_719.visible = true;
         this.var_719.height = Util.getLowestPoint(this.var_719);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_134.active || this.var_246.active)
         {
            return;
         }
         this.var_1397.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1124.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1122.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1125.visible = Util.hasVisibleChildren(this.var_1125);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_349.active)
         {
            return;
         }
         this.var_1393.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1395.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1394.visible = Util.hasVisibleChildren(this.var_1394);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_178 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_350 = IWindowContainer(this.find("room_info"));
         this.var_348 = IWindowContainer(this.find("room_details"));
         this.var_587 = IWindowContainer(this.find("public_space_details"));
         this.var_1676 = IWindowContainer(this.find("owner_name_cont"));
         this.var_1677 = IWindowContainer(this.find("rating_cont"));
         this.var_1125 = IWindowContainer(this.find("room_buttons"));
         this.var_907 = ITextWindow(this.find("room_name"));
         this.var_904 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_721 = ITextWindow(this.find("room_desc"));
         this.var_1120 = ITextWindow(this.find("public_space_desc"));
         this.var_903 = ITextWindow(this.find("owner_caption"));
         this.var_723 = ITextWindow(this.find("rating_caption"));
         this.var_1396 = ITextWindow(this.find("rating_txt"));
         this.var_245 = IWindowContainer(this.find("event_info"));
         this.var_719 = IWindowContainer(this.find("event_details"));
         this.var_1394 = IWindowContainer(this.find("event_buttons"));
         this.var_1678 = ITextWindow(this.find("event_name"));
         this.var_586 = ITextWindow(this.find("event_desc"));
         this.var_1119 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1121 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1679 = this.find("staff_pick_button");
         this.var_1124 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1122 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1397 = IButtonWindow(this.find("room_settings_button"));
         this.var_1393 = IButtonWindow(this.find("create_event_button"));
         this.var_1395 = IButtonWindow(this.find("edit_event_button"));
         this.var_722 = IWindowContainer(this.find("embed_info"));
         this.var_1123 = ITextWindow(this.find("embed_info_txt"));
         this.var_906 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_720 = IButtonWindow(this.find("zoom_button"));
         this.addMouseClickListener(this.var_1124,this.onAddFavouriteClick);
         this.addMouseClickListener(this._remFavouriteButton,this.onRemoveFavouriteClick);
         this.addMouseClickListener(this.var_1397,this.onRoomSettingsClick);
         this.addMouseClickListener(this.var_1122,this.onMakeHomeClick);
         this.addMouseClickListener(this.var_1393,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1395,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_906,this.onEmbedSrcClick);
         this.addMouseClickListener(this.var_1121,this.onThumbUp);
         this.addMouseClickListener(this.var_1679,this.onStaffPick);
         this.addMouseClickListener(this.var_1119,this.onFacebookLike);
         this.addMouseClickListener(this.var_720,this.onZoomClick);
         this._navigator.refreshButton(this.var_1124,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1122,"home",true,null,0);
         this.addMouseClickListener(this._window.findChildByTag("close"),this.onCloseButtonClick);
         this.addMouseOverListener(this.var_350,this.onHover);
         this.addMouseOverListener(this.var_245,this.onHover);
         this.var_903.width = this.var_903.textWidth;
         Util.moveChildrenToRow(this.var_1676,["owner_caption","owner_name"],this.var_903.x,this.var_903.y,3);
         this.var_723.width = this.var_723.textWidth;
         Util.moveChildrenToRow(this.var_1677,["rating_caption","rating_txt"],this.var_723.x,this.var_723.y,3);
         this.var_1123.height = this.var_1123.textHeight + 5;
         Util.moveChildrenToColumn(this.var_722,["embed_info_txt","embed_src_txt"],this.var_1123.y,2);
         this.var_722.height = Util.getLowestPoint(this.var_722) + 5;
         this.var_2946 = this._window.y + this._window.height;
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function addMouseOverListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,param2);
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc2_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc2_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc2_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc2_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc2_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent) : void
      {
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent) : void
      {
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent) : void
      {
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onFacebookLike(param1:WindowEvent) : void
      {
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent) : void
      {
         this.var_906.setSelection(0,this.var_906.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent) : void
      {
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.ZOOM_TOGGLE));
         this.var_1392 = !this.var_1392;
         this.refreshButtons();
      }
      
      private function onHover(param1:WindowEvent) : void
      {
         this.var_347.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_134 != null)
         {
            this.var_134.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
