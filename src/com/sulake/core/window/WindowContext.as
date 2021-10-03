package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.ICoreUpdateReceiver;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IScrollableWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.enum.WindowStyle;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.utils.IInternalWindowServices;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.InternalWindowServices;
   import com.sulake.core.window.utils.KeyboardEventQueue;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, ICoreUpdateReceiver
   {
      
      public static var var_894:MouseEventQueue;
      
      public static var var_1558:IMouseCursor;
      
      public static const const_1446:int = 2;
      
      private static var var_984:Factory;
      
      private static var var_141:IWindowRenderer;
      
      public static var var_1324:KeyboardEventQueue;
      
      public static const const_1516:int = 1;
      
      public static const ERROR_DURING_EVENT_HANDLING:int = 5;
      
      public static const const_1507:int = 0;
      
      public static const const_1488:int = 3;
      
      public static const const_1341:int = 4;
       
      
      protected var var_2242:IWindowFactory;
      
      private var _disposed:Boolean = false;
      
      private var var_659:WindowController;
      
      private var var_703:Date;
      
      protected var var_2244:IWindowParser;
      
      protected var var_900:Error;
      
      protected var var_2243:IInternalWindowServices;
      
      protected var var_105:WindowController;
      
      protected var var_1330:int = -1;
      
      protected var var_97:IDesktopWindow;
      
      private var var_1450:Boolean = false;
      
      protected var var_2324:Boolean = true;
      
      private var var_188:Boolean = false;
      
      protected var var_1072:SubstituteParentController;
      
      private var var_2284:Point;
      
      protected var var_314:DisplayObjectContainer;
      
      private var var_336:IWindowContextStateListener;
      
      private var _name:String;
      
      protected var _localization:ICoreLocalizationManager;
      
      private var var_559:Point;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         var_559 = new Point();
         var_2284 = new Point();
         super();
         _name = param1;
         var_141 = param2;
         _localization = param4;
         var_314 = param5;
         var_2243 = new InternalWindowServices(this,param5);
         var_2242 = param3;
         var_2244 = new WindowParser(this);
         var_703 = new Date();
         if(var_984 == null)
         {
            var_984 = new Factory();
         }
         if(var_894 == null)
         {
            var_894 = new MouseEventQueue(param5);
         }
         if(var_1324 == null)
         {
            var_1324 = new KeyboardEventQueue(param5);
         }
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         var_97 = new DesktopController("_CONTEXT_DESKTOP_" + _name,WindowType.const_433,WindowStyle.const_249,WindowParam.const_100,this,param6,null,null);
         var_314.addChild(var_97.getDisplayObject());
         var_314.doubleClickEnabled = true;
         var_314.addEventListener(Event.RESIZE,stageResizedHandler);
         var_105 = WindowController(var_97);
         var_1072 = new SubstituteParentController("_CONTEXT_SUBSTITUTE_PARENT",0,0,0,this,new Rectangle(0,0,0,0),null,null,null,null,0);
         var_336 = param7;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == var_97)
         {
            var_97 = null;
         }
         if(param1.state != WindowState.const_478)
         {
            param1.destroy();
         }
         var_141.removeRenderable(param1 as WindowController);
         return true;
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:Class = var_984.getWindowClassByType(param3);
         if(_loc12_ == null)
         {
            handleError(WindowContext.const_1341,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = var_1072;
            }
         }
         var _loc13_:IWindow = new _loc12_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : var_97,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc13_.caption = param2;
         }
         return _loc13_;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return var_97;
      }
      
      public function render(param1:uint) : void
      {
         var_1450 = true;
         var_141.update(param1);
         var_1450 = false;
      }
      
      public function dispose() : void
      {
         _disposed = true;
         var_314.removeEventListener(Event.RESIZE,stageResizedHandler);
         var_314.removeChild(IGraphicContextHost(var_97).getGraphicContext(true) as DisplayObject);
         var_97.destroy();
         var_97 = null;
         var_1072.destroy();
         var_1072 = null;
         var_984 = null;
         var_141 = null;
         var_105 = null;
         var_703 = null;
         var_336 = null;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(var_97 != null && true)
         {
            if(var_314 is Stage)
            {
               var_97.width = Stage(var_314).stageWidth;
               var_97.height = Stage(var_314).stageHeight;
            }
            else
            {
               var_97.width = var_314.width;
               var_97.height = var_314.height;
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         _localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : Boolean
      {
         var_141.addToRenderQueue(WindowController(param1),param2,param3);
         return true;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return var_2244;
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         _localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return var_2242;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_188 = true;
         if(var_900)
         {
            throw var_900;
         }
         var _loc6_:Point = new Point();
         var _loc7_:MouseEventQueue = WindowContext.var_894;
         _loc7_.begin();
         var_559.x = -1;
         var_559.y = -1;
         while(true)
         {
            _loc2_ = _loc7_.next() as MouseEvent;
            if(_loc2_ == null)
            {
               break;
            }
            if(_loc2_.stageX != var_559.x || _loc2_.stageY != var_559.y)
            {
               var_559.x = _loc2_.stageX;
               var_559.y = _loc2_.stageY;
               _loc5_ = new Array();
               var_97.groupChildrenUnderPoint(var_559,_loc5_);
            }
            _loc3_ = _loc5_ != null ? int(_loc5_.length) : 0;
            if(_loc3_ == 1)
            {
               if(_loc2_.type == MouseEvent.MOUSE_MOVE)
               {
                  if(var_105 != var_97 && true)
                  {
                     var_105.getGlobalPosition(_loc6_);
                     var_105.update(var_105,new MouseEvent(MouseEvent.MOUSE_OUT,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                     var_105 = WindowController(var_97);
                  }
               }
            }
            while(--_loc3_ > -1)
            {
               _loc4_ = passMouseEvent(WindowController(_loc5_[_loc3_]),_loc2_);
               if(_loc4_ != null && _loc4_.visible)
               {
                  if(_loc2_.type == MouseEvent.MOUSE_MOVE)
                  {
                     if(_loc4_ != var_105)
                     {
                        if(true)
                        {
                           var_105.getGlobalPosition(_loc6_);
                           var_105.update(var_105,new MouseEvent(MouseEvent.MOUSE_OUT,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                        }
                        if(!_loc4_.disposed)
                        {
                           _loc4_.getGlobalPosition(_loc6_);
                           _loc4_.update(_loc4_,new MouseEvent(MouseEvent.MOUSE_OVER,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                        }
                        if(!_loc4_.disposed)
                        {
                           var_105 = _loc4_;
                        }
                     }
                  }
                  else if(_loc2_.type == MouseEvent.MOUSE_UP || _loc2_.type == MouseEvent.CLICK)
                  {
                     if(var_105 && true)
                     {
                        if(var_336 != null)
                        {
                           var_336.mouseEventReceived(_loc2_.type,var_105);
                        }
                     }
                  }
                  if(_loc2_.altKey)
                  {
                     if(var_105)
                     {
                        Logger.log("HOVER: undefined");
                     }
                  }
                  if(_loc4_ != var_97)
                  {
                     _loc2_.stopPropagation();
                     _loc7_.remove();
                  }
                  break;
               }
            }
         }
         _loc7_.end();
         var_188 = false;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         var_900 = param2;
         var_1330 = param1;
         if(var_2324)
         {
            throw param2;
         }
      }
      
      public function getLastError() : Error
      {
         return var_900;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1558 == null)
         {
            var_1558 = new MouseCursorControl(var_314 as Stage);
         }
         return var_1558;
      }
      
      public function flushError() : void
      {
         var_900 = null;
         var_1330 = -1;
      }
      
      public function getLastErrorCode() : int
      {
         return var_1330;
      }
      
      private function passMouseEvent(param1:WindowController, param2:MouseEvent) : WindowController
      {
         if(param1.disposed)
         {
            return null;
         }
         if(!param1.testParamFlag(WindowParam.const_48))
         {
            return null;
         }
         if(param1.testStateFlag(WindowState.const_65))
         {
            return null;
         }
         var _loc3_:Point = new Point(param2.stageX,param2.stageY);
         param1.convertPointFromGlobalToLocalSpace(_loc3_);
         var _loc4_:BitmapData = var_141.getDrawBufferForRenderable(param1);
         if(!param1.validateLocalPointIntersection(_loc3_,_loc4_))
         {
            return null;
         }
         if(param1.testParamFlag(WindowParam.const_439))
         {
            if(param1.parent != null)
            {
               return passMouseEvent(WindowController(param1.parent),param2);
            }
         }
         var _loc5_:Boolean = true;
         switch(param2.type)
         {
            case MouseEvent.MOUSE_DOWN:
               var_659 = param1;
               break;
            case MouseEvent.CLICK:
               if(var_659 != param1)
               {
                  _loc5_ = false;
               }
               else
               {
                  var_659 = null;
               }
               break;
            case MouseEvent.DOUBLE_CLICK:
               if(var_659 != param1)
               {
                  _loc5_ = false;
               }
               else
               {
                  var_659 = null;
               }
               break;
            case MouseEvent.MOUSE_WHEEL:
               if(!(param1 is IScrollableWindow) && !(param1 is IScrollbarWindow))
               {
                  return null;
               }
               break;
         }
         if(_loc5_)
         {
            if(!param1.update(param1,param2))
            {
               if(param1.parent)
               {
                  return passMouseEvent(WindowController(param1.parent),param2);
               }
            }
         }
         return param1;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return var_97.findChildByName(param1);
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return var_2243;
      }
   }
}
