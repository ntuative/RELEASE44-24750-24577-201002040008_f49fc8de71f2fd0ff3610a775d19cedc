package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1275:String = "WN_CREATED";
      
      public static const const_914:String = "WN_DISABLE";
      
      public static const const_989:String = "WN_DEACTIVATED";
      
      public static const const_997:String = "WN_OPENED";
      
      public static const const_990:String = "WN_CLOSED";
      
      public static const const_951:String = "WN_DESTROY";
      
      public static const const_1465:String = "WN_ARRANGED";
      
      public static const const_458:String = "WN_PARENT_RESIZED";
      
      public static const const_943:String = "WN_ENABLE";
      
      public static const const_980:String = "WN_RELOCATE";
      
      public static const const_921:String = "WN_FOCUS";
      
      public static const const_793:String = "WN_PARENT_RELOCATED";
      
      public static const const_452:String = "WN_PARAM_UPDATED";
      
      public static const const_558:String = "WN_PARENT_ACTIVATED";
      
      public static const const_188:String = "WN_RESIZED";
      
      public static const const_798:String = "WN_CLOSE";
      
      public static const const_843:String = "WN_PARENT_REMOVED";
      
      public static const const_229:String = "WN_CHILD_RELOCATED";
      
      public static const const_711:String = "WN_ENABLED";
      
      public static const const_230:String = "WN_CHILD_RESIZED";
      
      public static const const_863:String = "WN_MINIMIZED";
      
      public static const const_589:String = "WN_DISABLED";
      
      public static const const_192:String = "WN_CHILD_ACTIVATED";
      
      public static const const_349:String = "WN_STATE_UPDATED";
      
      public static const const_689:String = "WN_UNSELECTED";
      
      public static const const_375:String = "WN_STYLE_UPDATED";
      
      public static const const_1586:String = "WN_UPDATE";
      
      public static const const_387:String = "WN_PARENT_ADDED";
      
      public static const const_687:String = "WN_RESIZE";
      
      public static const const_559:String = "WN_CHILD_REMOVED";
      
      public static const const_1535:String = "";
      
      public static const const_929:String = "WN_RESTORED";
      
      public static const const_305:String = "WN_SELECTED";
      
      public static const const_807:String = "WN_MINIMIZE";
      
      public static const const_977:String = "WN_FOCUSED";
      
      public static const const_1288:String = "WN_LOCK";
      
      public static const const_288:String = "WN_CHILD_ADDED";
      
      public static const const_816:String = "WN_UNFOCUSED";
      
      public static const const_407:String = "WN_RELOCATED";
      
      public static const const_968:String = "WN_DEACTIVATE";
      
      public static const const_1310:String = "WN_CRETAE";
      
      public static const const_777:String = "WN_RESTORE";
      
      public static const const_298:String = "WN_ACTVATED";
      
      public static const const_1280:String = "WN_LOCKED";
      
      public static const const_365:String = "WN_SELECT";
      
      public static const const_994:String = "WN_MAXIMIZE";
      
      public static const const_993:String = "WN_OPEN";
      
      public static const const_554:String = "WN_UNSELECT";
      
      public static const const_1440:String = "WN_ARRANGE";
      
      public static const const_1302:String = "WN_UNLOCKED";
      
      public static const const_1520:String = "WN_UPDATED";
      
      public static const const_791:String = "WN_ACTIVATE";
      
      public static const const_1211:String = "WN_UNLOCK";
      
      public static const const_852:String = "WN_MAXIMIZED";
      
      public static const const_858:String = "WN_DESTROYED";
      
      public static const const_902:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1563,cancelable);
      }
   }
}
