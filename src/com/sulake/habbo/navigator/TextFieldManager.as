package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var var_2305:Boolean;
      
      private var var_1544:int;
      
      private var var_2304:String = "";
      
      private var var_82:ITextFieldWindow;
      
      private var var_2306:uint;
      
      private var _orgTextBackgroundColor:uint;
      
      private var _navigator:HabboNavigator;
      
      private var var_1090:String = "";
      
      private var var_164:IWindowContainer;
      
      private var var_311:Boolean;
      
      private var var_1306:Function;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         _navigator = param1;
         var_82 = param2;
         var_1544 = param3;
         var_1306 = param4;
         if(param5 != null)
         {
            var_311 = true;
            var_1090 = param5;
            var_82.text = param5;
         }
         Util.setProcDirectly(var_82,onInputClick);
         var_82.addEventListener(WindowKeyboardEvent.const_151,checkEnterPress);
         var_82.addEventListener(WindowEvent.const_152,checkMaxLen);
         this.var_2305 = var_82.textBackground;
         this._orgTextBackgroundColor = var_82.textBackgroundColor;
         this.var_2306 = var_82.textColor;
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(var_1306 != null)
            {
               var_1306();
            }
         }
      }
      
      public function goBackToInitialState() : void
      {
         clearErrors();
         if(var_1090 != null)
         {
            var_82.text = var_1090;
            var_311 = true;
         }
         else
         {
            var_82.text = "";
            var_311 = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return var_82;
      }
      
      public function restoreBackground() : void
      {
         var_82.textBackground = this.var_2305;
         var_82.textBackgroundColor = this._orgTextBackgroundColor;
         var_82.textColor = this.var_2306;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_191)
         {
            return;
         }
         if(!var_311)
         {
            return;
         }
         var_82.text = var_2304;
         var_311 = false;
         this.restoreBackground();
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_164 != null)
         {
            var_164.visible = false;
         }
      }
      
      public function displayError(param1:String) : void
      {
         var_82.textBackground = true;
         var_82.textBackgroundColor = 4294021019;
         var_82.textColor = 4278190080;
         if(this.var_164 == null)
         {
            this.var_164 = IWindowContainer(_navigator.getXmlWindow("nav_error_popup"));
            _navigator.refreshButton(this.var_164,"popup_arrow_down",true,null,0);
            IWindowContainer(var_82.parent).addChild(this.var_164);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_164.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         var_164.findChildByName("border").width = _loc2_.width + 15;
         var_164.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         var_82.getLocalPosition(_loc3_);
         this.var_164.x = _loc3_.x;
         this.var_164.y = _loc3_.y - this.var_164.height + 3;
         var _loc4_:IWindow = var_164.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_164.width / 2 - _loc4_.width / 2;
         var_164.x += (0 - 0) / 2;
         this.var_164.visible = true;
      }
      
      public function getText() : String
      {
         if(var_311)
         {
            return var_2304;
         }
         return var_82.text;
      }
      
      private function isInputValid() : Boolean
      {
         return !var_311 && Util.trim(getText()).length > 2;
      }
      
      public function setText(param1:String) : void
      {
         var_311 = false;
         var_82.text = param1;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!isInputValid())
         {
            displayError(param1);
            return false;
         }
         restoreBackground();
         return true;
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = "null";
         if(_loc2_.length > var_1544)
         {
            var_82.text = _loc2_.substring(0,var_1544);
         }
      }
   }
}
