package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2024:int;
      
      private var var_1146:String;
      
      private var var_2027:int;
      
      private var var_2025:int;
      
      private var var_2023:int;
      
      private var var_2026:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1146;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2026;
      }
      
      public function get responseType() : int
      {
         return var_2025;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2027;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1146 = param1.readString();
         var_2027 = param1.readInteger();
         var_2024 = param1.readInteger();
         var_2023 = param1.readInteger();
         var_2025 = param1.readInteger();
         var_2026 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_2024;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2023;
      }
   }
}
