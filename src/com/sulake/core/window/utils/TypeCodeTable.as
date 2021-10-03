package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_772;
         param1["bitmap"] = const_770;
         param1["border"] = const_912;
         param1["border_notify"] = const_1888;
         param1["bubble"] = const_900;
         param1["bubble_pointer_up"] = const_1306;
         param1["bubble_pointer_right"] = const_1249;
         param1["bubble_pointer_down"] = const_1241;
         param1["bubble_pointer_left"] = const_1196;
         param1["button"] = const_522;
         param1["button_thick"] = const_934;
         param1["button_icon"] = const_1862;
         param1["button_group_left"] = const_697;
         param1["button_group_center"] = const_969;
         param1["button_group_right"] = const_698;
         param1["canvas"] = const_915;
         param1["checkbox"] = const_838;
         param1["closebutton"] = const_1229;
         param1["container"] = const_412;
         param1["container_button"] = const_797;
         param1["display_object_wrapper"] = const_827;
         param1["dropmenu"] = const_490;
         param1["dropmenu_item"] = const_464;
         param1["frame"] = const_398;
         param1["frame_notify"] = const_1688;
         param1["header"] = const_761;
         param1["html"] = const_1252;
         param1["icon"] = const_1221;
         param1["itemgrid"] = const_1285;
         param1["itemgrid_horizontal"] = const_624;
         param1["itemgrid_vertical"] = const_795;
         param1["itemlist"] = const_1187;
         param1["itemlist_horizontal"] = const_393;
         param1["itemlist_vertical"] = const_379;
         param1["label"] = const_939;
         param1["maximizebox"] = const_1768;
         param1["menu"] = const_1910;
         param1["menu_item"] = const_1679;
         param1["submenu"] = const_1289;
         param1["minimizebox"] = const_1649;
         param1["notify"] = const_1829;
         param1["null"] = const_876;
         param1["password"] = const_894;
         param1["radiobutton"] = const_780;
         param1["region"] = const_614;
         param1["restorebox"] = const_1907;
         param1["scaler"] = const_518;
         param1["scaler_horizontal"] = const_1647;
         param1["scaler_vertical"] = const_1701;
         param1["scrollbar_horizontal"] = const_472;
         param1["scrollbar_vertical"] = const_811;
         param1["scrollbar_slider_button_up"] = const_1253;
         param1["scrollbar_slider_button_down"] = const_1271;
         param1["scrollbar_slider_button_left"] = const_1256;
         param1["scrollbar_slider_button_right"] = const_1232;
         param1["scrollbar_slider_bar_horizontal"] = const_1284;
         param1["scrollbar_slider_bar_vertical"] = const_1103;
         param1["scrollbar_slider_track_horizontal"] = const_1115;
         param1["scrollbar_slider_track_vertical"] = const_1147;
         param1["scrollable_itemlist"] = const_1620;
         param1["scrollable_itemlist_vertical"] = WINDOW_TYPE_SCROLLABLE_ITEMLIST_VERTICAL;
         param1["scrollable_itemlist_horizontal"] = const_1139;
         param1["selector"] = const_836;
         param1["selector_list"] = const_700;
         param1["submenu"] = const_1289;
         param1["tab_button"] = const_978;
         param1["tab_container_button"] = const_1259;
         param1["tab_context"] = const_388;
         param1["tab_content"] = const_1282;
         param1["tab_selector"] = const_711;
         param1["text"] = const_695;
         param1["input"] = const_803;
         param1["toolbar"] = const_1683;
         param1["tooltip"] = const_400;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
