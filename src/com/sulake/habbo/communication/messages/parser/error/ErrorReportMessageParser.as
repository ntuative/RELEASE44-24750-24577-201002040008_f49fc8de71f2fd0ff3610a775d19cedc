package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1094:int;
      
      private var var_1095:int;
      
      private var var_1096:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1094;
      }
      
      public function flush() : Boolean
      {
         var_1095 = 0;
         var_1094 = 0;
         var_1096 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1095;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1094 = param1.readInteger();
         var_1095 = param1.readInteger();
         var_1096 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1096;
      }
   }
}
