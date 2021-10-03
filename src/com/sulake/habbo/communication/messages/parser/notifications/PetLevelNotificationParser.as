package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_532:String;
      
      private var var_1633:int;
      
      private var var_2049:String;
      
      private var var_934:int;
      
      private var var_1133:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1133;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1133 = param1.readInteger();
         var_2049 = param1.readString();
         var_1633 = param1.readInteger();
         var_532 = param1.readString();
         var_934 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2049;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_532;
      }
      
      public function get petType() : int
      {
         return var_934;
      }
      
      public function get level() : int
      {
         return var_1633;
      }
   }
}
