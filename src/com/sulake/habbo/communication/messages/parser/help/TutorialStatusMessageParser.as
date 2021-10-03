package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_979:Boolean;
      
      private var var_981:Boolean;
      
      private var var_980:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_979;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_981;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_980 = param1.readBoolean();
         var_981 = param1.readBoolean();
         var_979 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_980;
      }
      
      public function flush() : Boolean
      {
         var_980 = false;
         var_981 = false;
         var_979 = false;
         return true;
      }
   }
}
