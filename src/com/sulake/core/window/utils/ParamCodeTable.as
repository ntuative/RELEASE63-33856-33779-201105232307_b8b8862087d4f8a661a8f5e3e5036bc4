package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_215;
         param1["bound_to_parent_rect"] = const_100;
         param1["child_window"] = const_1222;
         param1["embedded_controller"] = const_1171;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_944;
         param1["mouse_dragging_target"] = const_255;
         param1["mouse_dragging_trigger"] = const_377;
         param1["mouse_scaling_target"] = const_337;
         param1["mouse_scaling_trigger"] = const_610;
         param1["horizontal_mouse_scaling_trigger"] = const_269;
         param1["vertical_mouse_scaling_trigger"] = const_281;
         param1["observe_parent_input_events"] = const_1235;
         param1["optimize_region_to_layout_size"] = const_521;
         param1["parent_window"] = const_1287;
         param1["relative_horizontal_scale_center"] = const_190;
         param1["relative_horizontal_scale_fixed"] = const_148;
         param1["relative_horizontal_scale_move"] = const_409;
         param1["relative_horizontal_scale_strech"] = const_433;
         param1["relative_scale_center"] = const_1117;
         param1["relative_scale_fixed"] = const_705;
         param1["relative_scale_move"] = const_1183;
         param1["relative_scale_strech"] = const_1228;
         param1["relative_vertical_scale_center"] = const_218;
         param1["relative_vertical_scale_fixed"] = const_153;
         param1["relative_vertical_scale_move"] = const_261;
         param1["relative_vertical_scale_strech"] = const_311;
         param1["on_resize_align_left"] = const_833;
         param1["on_resize_align_right"] = const_538;
         param1["on_resize_align_center"] = const_494;
         param1["on_resize_align_top"] = const_950;
         param1["on_resize_align_bottom"] = const_609;
         param1["on_resize_align_middle"] = const_477;
         param1["on_accommodate_align_left"] = const_1335;
         param1["on_accommodate_align_right"] = const_487;
         param1["on_accommodate_align_center"] = const_973;
         param1["on_accommodate_align_top"] = const_1234;
         param1["on_accommodate_align_bottom"] = const_603;
         param1["on_accommodate_align_middle"] = const_804;
         param1["route_input_events_to_parent"] = const_508;
         param1["use_parent_graphic_context"] = const_34;
         param1["draggable_with_mouse"] = const_1273;
         param1["scalable_with_mouse"] = const_1145;
         param1["reflect_horizontal_resize_to_parent"] = const_513;
         param1["reflect_vertical_resize_to_parent"] = const_555;
         param1["reflect_resize_to_parent"] = const_323;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1207;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
