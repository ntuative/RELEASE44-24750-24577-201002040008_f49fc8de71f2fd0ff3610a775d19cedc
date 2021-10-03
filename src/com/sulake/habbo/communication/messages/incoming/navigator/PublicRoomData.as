package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1720:int;
      
      private var var_1721:String;
      
      private var var_1669:int;
      
      private var _disposed:Boolean;
      
      private var var_1719:int;
      
      private var var_1722:String;
      
      private var var_1298:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1722 = param1.readString();
         var_1720 = param1.readInteger();
         var_1669 = param1.readInteger();
         var_1721 = param1.readString();
         var_1719 = param1.readInteger();
         var_1298 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1719;
      }
      
      public function get worldId() : int
      {
         return var_1669;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1722;
      }
      
      public function get unitPort() : int
      {
         return var_1720;
      }
      
      public function get castLibs() : String
      {
         return var_1721;
      }
      
      public function get nodeId() : int
      {
         return var_1298;
      }
   }
}
