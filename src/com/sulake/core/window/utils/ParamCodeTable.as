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
         param1["null"] = const_100;
         param1["bound_to_parent_rect"] = const_85;
         param1["child_window"] = const_861;
         param1["embedded_controller"] = const_294;
         param1["resize_to_accommodate_children"] = const_59;
         param1["input_event_processor"] = const_48;
         param1["internal_event_handling"] = const_634;
         param1["mouse_dragging_target"] = const_204;
         param1["mouse_dragging_trigger"] = const_279;
         param1["mouse_scaling_target"] = const_264;
         param1["mouse_scaling_trigger"] = const_467;
         param1["horizontal_mouse_scaling_trigger"] = const_197;
         param1["vertical_mouse_scaling_trigger"] = const_187;
         param1["observe_parent_input_events"] = const_818;
         param1["optimize_region_to_layout_size"] = const_398;
         param1["parent_window"] = const_911;
         param1["relative_horizontal_scale_center"] = const_163;
         param1["relative_horizontal_scale_fixed"] = const_118;
         param1["relative_horizontal_scale_move"] = const_304;
         param1["relative_horizontal_scale_strech"] = const_227;
         param1["relative_scale_center"] = const_796;
         param1["relative_scale_fixed"] = const_632;
         param1["relative_scale_move"] = const_871;
         param1["relative_scale_strech"] = const_873;
         param1["relative_vertical_scale_center"] = const_166;
         param1["relative_vertical_scale_fixed"] = const_125;
         param1["relative_vertical_scale_move"] = const_283;
         param1["relative_vertical_scale_strech"] = const_255;
         param1["on_resize_align_left"] = const_525;
         param1["on_resize_align_right"] = const_385;
         param1["on_resize_align_center"] = const_468;
         param1["on_resize_align_top"] = const_611;
         param1["on_resize_align_bottom"] = const_379;
         param1["on_resize_align_middle"] = const_355;
         param1["on_accommodate_align_left"] = const_857;
         param1["on_accommodate_align_right"] = const_435;
         param1["on_accommodate_align_center"] = const_701;
         param1["on_accommodate_align_top"] = const_940;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_513;
         param1["route_input_events_to_parent"] = const_439;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_918;
         param1["scalable_with_mouse"] = const_805;
         param1["reflect_horizontal_resize_to_parent"] = const_345;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_254;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
