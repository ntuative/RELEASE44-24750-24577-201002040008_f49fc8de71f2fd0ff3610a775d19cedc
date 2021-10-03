package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1426:String;
      
      private var var_1712:int;
      
      private var var_1711:int;
      
      private var var_1713:int;
      
      private var var_1710:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1712 = param1.readInteger();
         var_1713 = param1.readInteger();
         var_1711 = param1.readInteger();
         var_1710 = param1.readString();
         var_1426 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1426;
      }
      
      public function get hour() : int
      {
         return var_1712;
      }
      
      public function get minute() : int
      {
         return var_1713;
      }
      
      public function get chatterName() : String
      {
         return var_1710;
      }
      
      public function get chatterId() : int
      {
         return var_1711;
      }
   }
}
