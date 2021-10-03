package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_916:Boolean;
      
      private var var_1309:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_916 = param1.readInteger() > 0;
         var_1309 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_916;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1309;
      }
      
      public function flush() : Boolean
      {
         var_916 = false;
         var_1309 = false;
         return true;
      }
   }
}
