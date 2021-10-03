package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_123:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1801:int;
      
      private var var_382:int;
      
      private var var_713:RoomData;
      
      private var var_1629:int;
      
      private var _ownerName:String;
      
      private var var_1802:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_382 = param1.readInteger();
         var_1801 = param1.readInteger();
         var_1802 = param1.readBoolean();
         var_1629 = param1.readInteger();
         _ownerName = param1.readString();
         var_123 = new RoomData(param1);
         var_713 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1801;
      }
      
      public function get event() : RoomData
      {
         return var_713;
      }
      
      public function get room() : RoomData
      {
         return var_123;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_123 != null)
         {
            var_123.dispose();
            var_123 = null;
         }
         if(var_713 != null)
         {
            var_713.dispose();
            var_713 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_382;
      }
      
      public function get ownerId() : int
      {
         return var_1629;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_1802;
      }
   }
}
