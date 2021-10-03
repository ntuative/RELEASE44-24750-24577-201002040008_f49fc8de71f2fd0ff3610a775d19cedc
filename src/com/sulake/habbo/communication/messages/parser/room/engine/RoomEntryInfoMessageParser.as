package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1828:int;
      
      private var var_383:Boolean;
      
      private var var_1829:Boolean;
      
      private var var_801:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1829 = param1.readBoolean();
         if(var_1829)
         {
            var_1828 = param1.readInteger();
            var_383 = param1.readBoolean();
         }
         else
         {
            var_801 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_801 != null)
         {
            var_801.dispose();
            var_801 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1828;
      }
      
      public function get owner() : Boolean
      {
         return var_383;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1829;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_801;
      }
   }
}
