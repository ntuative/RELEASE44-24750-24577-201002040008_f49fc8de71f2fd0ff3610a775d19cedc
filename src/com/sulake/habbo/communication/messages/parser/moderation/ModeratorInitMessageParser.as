package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1973:Boolean;
      
      private var var_1482:Array;
      
      private var var_1974:Boolean;
      
      private var var_1969:Boolean;
      
      private var var_1972:Boolean;
      
      private var var_162:Array;
      
      private var var_1967:Boolean;
      
      private var var_1971:Boolean;
      
      private var var_1483:Array;
      
      private var var_1970:Boolean;
      
      private var var_1968:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1968;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1973;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1974;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1967;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1971;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1482;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_162 = [];
         var_1482 = [];
         _roomMessageTemplates = [];
         var_1483 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_162.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1482.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1483.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1967 = param1.readBoolean();
         var_1972 = param1.readBoolean();
         var_1974 = param1.readBoolean();
         var_1969 = param1.readBoolean();
         var_1968 = param1.readBoolean();
         var_1971 = param1.readBoolean();
         var_1973 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1970 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1969;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1483;
      }
      
      public function get issues() : Array
      {
         return var_162;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1970;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1972;
      }
   }
}
