package com.sulake.habbo.help.cfh.data
{
   public class CallForHelpData
   {
       
      
      private var var_1641:int;
      
      private var var_1097:String = "";
      
      private var var_920:int;
      
      public function CallForHelpData()
      {
         super();
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1097 = param1;
      }
      
      public function get topicIndex() : int
      {
         return var_1641;
      }
      
      public function set topicIndex(param1:int) : void
      {
         var_1641 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1097;
      }
      
      public function flush() : void
      {
         var_920 = 0;
         var_1097 = "";
      }
      
      public function get userSelected() : Boolean
      {
         return var_920 > 0;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_920 = param1;
      }
      
      public function getTopicKey(param1:int) : String
      {
         return (!!userSelected ? "help.cfh.topicwithharasser." : "help.cfh.topic.") + param1;
      }
      
      public function get reportedUserId() : int
      {
         return var_920;
      }
   }
}
