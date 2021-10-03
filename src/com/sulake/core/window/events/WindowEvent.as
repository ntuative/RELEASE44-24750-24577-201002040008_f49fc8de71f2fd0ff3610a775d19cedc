package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_303:String = "WE_CHILD_RESIZED";
      
      public static const const_1345:String = "WE_CLOSE";
      
      public static const const_1135:String = "WE_DESTROY";
      
      public static const const_152:String = "WE_CHANGE";
      
      public static const const_1293:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1504:String = "WE_PARENT_RESIZE";
      
      public static const const_88:String = "WE_UPDATE";
      
      public static const const_1332:String = "WE_MAXIMIZE";
      
      public static const const_344:String = "WE_DESTROYED";
      
      public static const const_886:String = "WE_UNSELECT";
      
      public static const const_1238:String = "WE_MAXIMIZED";
      
      public static const const_1424:String = "WE_UNLOCKED";
      
      public static const const_392:String = "WE_CHILD_REMOVED";
      
      public static const const_169:String = "WE_OK";
      
      public static const const_44:String = "WE_RESIZED";
      
      public static const const_1359:String = "WE_ACTIVATE";
      
      public static const const_239:String = "WE_ENABLED";
      
      public static const const_438:String = "WE_CHILD_RELOCATED";
      
      public static const const_1259:String = "WE_CREATE";
      
      public static const const_725:String = "WE_SELECT";
      
      public static const const_174:String = "";
      
      public static const const_1468:String = "WE_LOCKED";
      
      public static const const_1481:String = "WE_PARENT_RELOCATE";
      
      public static const const_1461:String = "WE_CHILD_REMOVE";
      
      public static const const_1428:String = "WE_CHILD_RELOCATE";
      
      public static const const_1474:String = "WE_LOCK";
      
      public static const const_191:String = "WE_FOCUSED";
      
      public static const const_591:String = "WE_UNSELECTED";
      
      public static const const_799:String = "WE_DEACTIVATED";
      
      public static const const_1235:String = "WE_MINIMIZED";
      
      public static const const_1469:String = "WE_ARRANGED";
      
      public static const const_1547:String = "WE_UNLOCK";
      
      public static const const_1471:String = "WE_ATTACH";
      
      public static const const_1190:String = "WE_OPEN";
      
      public static const const_1222:String = "WE_RESTORE";
      
      public static const const_1565:String = "WE_PARENT_RELOCATED";
      
      public static const const_1210:String = "WE_RELOCATE";
      
      public static const const_1495:String = "WE_CHILD_RESIZE";
      
      public static const const_1452:String = "WE_ARRANGE";
      
      public static const const_1228:String = "WE_OPENED";
      
      public static const const_1139:String = "WE_CLOSED";
      
      public static const const_1418:String = "WE_DETACHED";
      
      public static const const_1477:String = "WE_UPDATED";
      
      public static const const_1209:String = "WE_UNFOCUSED";
      
      public static const const_440:String = "WE_RELOCATED";
      
      public static const const_1260:String = "WE_DEACTIVATE";
      
      public static const const_219:String = "WE_DISABLED";
      
      public static const const_520:String = "WE_CANCEL";
      
      public static const const_653:String = "WE_ENABLE";
      
      public static const const_1221:String = "WE_ACTIVATED";
      
      public static const const_1200:String = "WE_FOCUS";
      
      public static const const_1496:String = "WE_DETACH";
      
      public static const const_1346:String = "WE_RESTORED";
      
      public static const const_1230:String = "WE_UNFOCUS";
      
      public static const const_52:String = "WE_SELECTED";
      
      public static const const_1360:String = "WE_PARENT_RESIZED";
      
      public static const const_1171:String = "WE_CREATED";
      
      public static const const_1515:String = "WE_ATTACHED";
      
      public static const const_1247:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1563:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1340:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1563 = param3;
         var_1340 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1340;
      }
      
      public function get related() : IWindow
      {
         return var_1563;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1340 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
