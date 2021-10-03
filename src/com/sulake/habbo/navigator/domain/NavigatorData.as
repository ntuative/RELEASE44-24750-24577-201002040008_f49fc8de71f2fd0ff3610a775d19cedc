package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1409:int = 10;
       
      
      private var var_1506:NavigatorSettingsMessageParser;
      
      private var var_1276:int;
      
      private var var_2098:Boolean;
      
      private var var_2094:int;
      
      private var var_872:Dictionary;
      
      private var var_2299:int;
      
      private var var_2097:int;
      
      private var var_1617:int;
      
      private var var_345:Array;
      
      private var var_2095:int;
      
      private var var_587:PublicRoomShortData;
      
      private var var_416:RoomEventData;
      
      private var var_146:MsgWithRequestId;
      
      private var var_2096:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2093:Boolean;
      
      private var var_208:GuestRoomData;
      
      private var var_702:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_345 = new Array();
         var_872 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2094;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2093;
      }
      
      public function startLoading() : void
      {
         this.var_702 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2093 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_416 != null)
         {
            var_416.dispose();
         }
         var_416 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_146 != null && var_146 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_146 != null && var_146 as GuestRoomSearchResultData != null;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_146 = param1;
         var_702 = false;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_146 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_208;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_587 = null;
         var_208 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_587 = param1.publicSpace;
            var_416 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(var_416 != null)
         {
            var_416.dispose();
            var_416 = null;
         }
         if(var_587 != null)
         {
            var_587.dispose();
            var_587 = null;
         }
         if(var_208 != null)
         {
            var_208.dispose();
            var_208 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1506;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_146 = param1;
         var_702 = false;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function getCategoryByIndex(param1:int) : FlatCategory
      {
         if(var_345.length > param1)
         {
            return var_345[param1] as FlatCategory;
         }
         return null;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2299 = param1.limit;
         this.var_1276 = param1.favouriteRoomIds.length;
         this.var_872 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_872[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_146 as PopularRoomTagsData;
      }
      
      public function get categories() : Array
      {
         return var_345;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_587;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1617 = param1;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2098;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_146 = param1;
         var_702 = false;
      }
      
      public function getCategoryIndexById(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < var_345.length)
         {
            if((var_345[_loc2_] as FlatCategory).nodeId == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_208 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_702;
      }
      
      public function set categories(param1:Array) : void
      {
         var_345 = param1;
      }
      
      public function get currentRoomRating() : int
      {
         return var_2097;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2095;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1506 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_146 == null)
         {
            return;
         }
         var_146.dispose();
         var_146 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_416;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_872[param1] = !!param2 ? "yes" : null;
         var_1276 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_146 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1617;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_146 != null && var_146 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2098 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2097 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2096 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_208 != null)
         {
            var_208.dispose();
         }
         var_208 = param1;
      }
      
      public function getCategoryById(param1:int) : FlatCategory
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_345)
         {
            if(_loc2_.nodeId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_208 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1506.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1276 >= var_2299;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2095 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2096;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_208 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2094 = param1;
      }
   }
}
