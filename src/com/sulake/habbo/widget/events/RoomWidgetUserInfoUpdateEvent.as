package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_210:String = "RWUIUE_PEER";
      
      public static const const_221:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1284:String = "BOT";
      
      public static const const_941:int = 2;
      
      public static const const_1122:int = 0;
      
      public static const const_782:int = 3;
       
      
      private var var_1153:String = "";
      
      private var var_1847:Boolean = false;
      
      private var var_1589:int = 0;
      
      private var var_1844:int = 0;
      
      private var var_1840:Boolean = false;
      
      private var var_1152:String = "";
      
      private var var_1848:Boolean = false;
      
      private var var_763:int = 0;
      
      private var var_1839:Boolean = true;
      
      private var var_954:int = 0;
      
      private var var_1845:Boolean = false;
      
      private var var_1214:Boolean = false;
      
      private var var_1841:Boolean = false;
      
      private var var_1842:int = 0;
      
      private var var_1846:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_258:Array;
      
      private var var_1212:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1587:int = 0;
      
      private var var_1838:Boolean = false;
      
      private var var_1837:int = 0;
      
      private var var_1843:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_258 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1844;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1844 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1847;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1839;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1839 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1848 = param1;
      }
      
      public function get motto() : String
      {
         return var_1153;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1845 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1214;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1153 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1838;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1843;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1214 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1846;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1842 = param1;
      }
      
      public function get badges() : Array
      {
         return var_258;
      }
      
      public function get amIController() : Boolean
      {
         return var_1840;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1840 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1838 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1837 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1843 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1152 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1848;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1845;
      }
      
      public function get carryItem() : int
      {
         return var_1842;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1212;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1212 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_763 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1837;
      }
      
      public function get realName() : String
      {
         return var_1152;
      }
      
      public function set webID(param1:int) : void
      {
         var_1587 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_258 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1841 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1846 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_763;
      }
      
      public function get webID() : int
      {
         return var_1587;
      }
      
      public function set groupId(param1:int) : void
      {
         var_954 = param1;
      }
      
      public function get xp() : int
      {
         return var_1589;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1847 = param1;
      }
      
      public function get groupId() : int
      {
         return var_954;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1841;
      }
      
      public function set xp(param1:int) : void
      {
         var_1589 = param1;
      }
   }
}
