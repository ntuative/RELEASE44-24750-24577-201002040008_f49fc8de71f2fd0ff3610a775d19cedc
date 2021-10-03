package com.sulake.habbo.friendlist.domain
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendRequestData;
   
   public class FriendRequest implements IDisposable
   {
      
      public static const const_277:int = 2;
      
      public static const const_147:int = 1;
      
      public static const const_955:int = 4;
      
      public static const const_318:int = 3;
       
      
      private var var_2021:int;
      
      private var _view:IWindowContainer;
      
      private var var_2020:String;
      
      private var var_47:int = 1;
      
      private var _disposed:Boolean;
      
      private var var_1190:int;
      
      public function FriendRequest(param1:FriendRequestData)
      {
         super();
         var_1190 = param1.requestId;
         var_2020 = param1.requesterName;
         var_2021 = param1.requesterUserId;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get requesterName() : String
      {
         return var_2020;
      }
      
      public function get requesterUserId() : int
      {
         return var_2021;
      }
      
      public function get requestId() : int
      {
         return var_1190;
      }
      
      public function get state() : int
      {
         return var_47;
      }
      
      public function get view() : IWindowContainer
      {
         return _view;
      }
      
      public function set view(param1:IWindowContainer) : void
      {
         _view = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_47 = param1;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(view != null)
         {
            view.destroy();
            view = null;
         }
      }
   }
}
