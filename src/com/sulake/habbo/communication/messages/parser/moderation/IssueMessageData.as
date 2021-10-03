package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_147:int = 1;
      
      public static const const_1271:int = 3;
      
      public static const const_410:int = 2;
       
      
      private var var_2167:int;
      
      private var var_1720:int;
      
      private var var_2172:int;
      
      private var var_1669:int;
      
      private var var_47:int;
      
      private var var_382:int;
      
      private var var_1294:int;
      
      private var var_1608:int;
      
      private var var_920:int;
      
      private var _roomResources:String;
      
      private var var_2164:int;
      
      private var var_2166:int;
      
      private var var_2171:String;
      
      private var var_1782:String;
      
      private var var_2170:int = 0;
      
      private var var_1097:String;
      
      private var _message:String;
      
      private var var_2168:int;
      
      private var var_2169:String;
      
      private var var_1140:int;
      
      private var var_686:String;
      
      private var var_2165:String;
      
      private var var_1468:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_920 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2170 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2166;
      }
      
      public function set roomName(param1:String) : void
      {
         var_686 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2164 = param1;
      }
      
      public function get state() : int
      {
         return var_47;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_686;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1669 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_47 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1720;
      }
      
      public function get priority() : int
      {
         return var_2167 + var_2170;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1608 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1782;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1468) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1140;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2166 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1294;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2171 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2164;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1669;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2165 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1097 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1608;
      }
      
      public function set priority(param1:int) : void
      {
         var_2167 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1720 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2171;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2172 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1782 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_2168 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1097;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1294 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2172;
      }
      
      public function set flatId(param1:int) : void
      {
         var_382 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1140 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1468 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_2168;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2169 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1468;
      }
      
      public function get reportedUserId() : int
      {
         return var_920;
      }
      
      public function get flatId() : int
      {
         return var_382;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2165;
      }
      
      public function get reporterUserName() : String
      {
         return var_2169;
      }
   }
}
