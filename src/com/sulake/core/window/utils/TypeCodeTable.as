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
         param1["background"] = const_529;
         param1["bitmap"] = const_500;
         param1["border"] = const_704;
         param1["border_notify"] = const_1366;
         param1["button"] = const_400;
         param1["button_thick"] = const_710;
         param1["button_icon"] = const_1219;
         param1["button_group_left"] = const_557;
         param1["button_group_center"] = const_507;
         param1["button_group_right"] = const_514;
         param1["canvas"] = const_623;
         param1["checkbox"] = const_518;
         param1["closebutton"] = const_840;
         param1["container"] = const_329;
         param1["container_button"] = const_694;
         param1["display_object_wrapper"] = const_646;
         param1["dropmenu"] = const_415;
         param1["dropmenu_item"] = const_436;
         param1["frame"] = const_310;
         param1["frame_notify"] = const_1253;
         param1["header"] = const_667;
         param1["icon"] = const_850;
         param1["itemgrid"] = const_880;
         param1["itemgrid_horizontal"] = const_359;
         param1["itemgrid_vertical"] = const_604;
         param1["itemlist"] = const_800;
         param1["itemlist_horizontal"] = const_291;
         param1["itemlist_vertical"] = const_289;
         param1["maximizebox"] = const_1244;
         param1["menu"] = const_1294;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_888;
         param1["minimizebox"] = const_1243;
         param1["notify"] = const_1365;
         param1["null"] = const_433;
         param1["password"] = const_728;
         param1["radiobutton"] = const_560;
         param1["region"] = const_456;
         param1["restorebox"] = const_1364;
         param1["scaler"] = const_889;
         param1["scaler_horizontal"] = const_1323;
         param1["scaler_vertical"] = const_1339;
         param1["scrollbar_horizontal"] = const_461;
         param1["scrollbar_vertical"] = const_663;
         param1["scrollbar_slider_button_up"] = const_934;
         param1["scrollbar_slider_button_down"] = const_1000;
         param1["scrollbar_slider_button_left"] = const_965;
         param1["scrollbar_slider_button_right"] = const_855;
         param1["scrollbar_slider_bar_horizontal"] = const_815;
         param1["scrollbar_slider_bar_vertical"] = const_820;
         param1["scrollbar_slider_track_horizontal"] = const_795;
         param1["scrollbar_slider_track_vertical"] = const_812;
         param1["scrollable_itemlist"] = const_1286;
         param1["scrollable_itemlist_vertical"] = const_474;
         param1["scrollable_itemlist_horizontal"] = const_905;
         param1["selector"] = const_638;
         param1["selector_list"] = const_542;
         param1["submenu"] = const_888;
         param1["tab_button"] = const_598;
         param1["tab_container_button"] = const_846;
         param1["tab_context"] = const_475;
         param1["tab_content"] = const_981;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_625;
         param1["input"] = const_688;
         param1["toolbar"] = const_1241;
         param1["tooltip"] = WINDOW_TYPE_TOOLTIP;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
