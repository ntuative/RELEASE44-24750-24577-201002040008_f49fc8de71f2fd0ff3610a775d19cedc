package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   
   public class UserInfoFrameCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_827:UserInfoCtrl;
      
      private var _disposed:Boolean;
      
      private var _userId:int;
      
      private var var_62:IFrameWindow;
      
      private var var_58:ModerationManager;
      
      public function UserInfoFrameCtrl(param1:ModerationManager, param2:int)
      {
         super();
         var_58 = param1;
         _userId = param2;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_62 != null)
         {
            var_62.destroy();
            var_62 = null;
         }
         if(var_827 != null)
         {
            var_827.dispose();
            var_827 = null;
         }
         var_58 = null;
      }
      
      public function getId() : String
      {
         return "" + _userId;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1216;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      public function show() : void
      {
         var_62 = IFrameWindow(var_58.getXmlWindow("user_info_frame"));
         var_62.caption = "User Info";
         var _loc1_:IWindow = var_62.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_827 = new UserInfoCtrl(var_62,var_58,"",true);
         var_827.load(var_62.content,_userId);
         var_62.visible = true;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_62;
      }
   }
}
