package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_920:int;
      
      private var var_2208:int;
      
      private var var_1547:int;
      
      private var var_123:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1547 = param1.readInteger();
         var_2208 = param1.readInteger();
         var_920 = param1.readInteger();
         var_123 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1547);
      }
      
      public function get reportedUserId() : int
      {
         return var_920;
      }
      
      public function get callerUserId() : int
      {
         return var_2208;
      }
      
      public function get callId() : int
      {
         return var_1547;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_123;
      }
   }
}
