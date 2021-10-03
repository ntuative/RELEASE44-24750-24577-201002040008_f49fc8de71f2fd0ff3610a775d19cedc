package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_316:Timer;
      
      protected var var_905:String;
      
      protected var var_904:uint;
      
      protected var var_1073:Point;
      
      protected var var_245:IToolTipWindow;
      
      protected var var_1074:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1073 = new Point();
         var_1074 = new Point(20,20);
         var_904 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_316 != null)
         {
            var_316.stop();
            var_316.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_316 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1073);
            if(var_245 != null && true)
            {
               var_245.x = param1 + var_1074.x;
               var_245.y = param2 + var_1074.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_316 != null)
         {
            var_316.reset();
         }
         if(_window && true)
         {
            if(var_245 == null || false)
            {
               var_245 = _window.context.create("undefined::ToolTip",var_905,WindowType.WINDOW_TYPE_TOOLTIP,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_245.x = _loc2_.x + var_1073.x + var_1074.x;
            var_245.y = _loc2_.y + var_1073.y + var_1074.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_905 = IInteractiveWindow(param1).toolTipCaption;
               var_904 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_905 = param1.caption;
               var_904 = 500;
            }
            _mouse.x = var_127.mouseX;
            _mouse.y = var_127.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1073);
            if(var_905 != null && var_905 != "")
            {
               if(var_316 == null)
               {
                  var_316 = new Timer(var_904,1);
                  var_316.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_316.reset();
               var_316.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_245 != null && true)
         {
            var_245.destroy();
            var_245 = null;
         }
      }
   }
}
