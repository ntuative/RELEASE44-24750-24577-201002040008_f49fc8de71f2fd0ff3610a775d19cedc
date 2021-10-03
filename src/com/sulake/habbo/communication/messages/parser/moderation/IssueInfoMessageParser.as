package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import flash.utils.getTimer;
   
   public class IssueInfoMessageParser implements IMessageParser
   {
       
      
      private var var_67:IssueMessageData;
      
      public function IssueInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_67 = new IssueMessageData();
         var_67.issueId = param1.readInteger();
         var_67.state = param1.readInteger();
         var_67.categoryId = param1.readInteger();
         var_67.reportedCategoryId = param1.readInteger();
         var_67.timeStamp = getTimer() - param1.readInteger();
         var_67.priority = param1.readInteger();
         var_67.reporterUserId = param1.readInteger();
         var_67.reporterUserName = param1.readString();
         var_67.reportedUserId = param1.readInteger();
         var_67.reportedUserName = param1.readString();
         var_67.pickerUserId = param1.readInteger();
         var_67.pickerUserName = param1.readString();
         var_67.message = param1.readString();
         var_67.chatRecordId = param1.readInteger();
         var_67.roomName = param1.readString();
         var_67.roomType = param1.readInteger();
         if(false)
         {
            var_67.roomResources = param1.readString();
            var_67.unitPort = param1.readInteger();
            var_67.worldId = param1.readInteger();
         }
         if(false)
         {
            var_67.flatType = param1.readString();
            var_67.flatId = param1.readInteger();
            var_67.flatOwnerName = param1.readString();
         }
         return true;
      }
      
      public function get issueData() : IssueMessageData
      {
         return var_67;
      }
      
      public function flush() : Boolean
      {
         var_67 = null;
         return true;
      }
   }
}
