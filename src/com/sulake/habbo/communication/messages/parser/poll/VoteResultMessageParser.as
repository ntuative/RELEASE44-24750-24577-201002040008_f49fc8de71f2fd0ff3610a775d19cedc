package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1121:int;
      
      private var var_975:String;
      
      private var var_683:Array;
      
      private var var_932:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_683.slice();
      }
      
      public function flush() : Boolean
      {
         var_975 = "";
         var_932 = [];
         var_683 = [];
         var_1121 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1121;
      }
      
      public function get question() : String
      {
         return var_975;
      }
      
      public function get choices() : Array
      {
         return var_932.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_975 = param1.readString();
         var_932 = [];
         var_683 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_932.push(param1.readString());
            var_683.push(param1.readInteger());
            _loc3_++;
         }
         var_1121 = param1.readInteger();
         return true;
      }
   }
}
