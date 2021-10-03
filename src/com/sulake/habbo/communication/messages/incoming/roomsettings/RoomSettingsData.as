package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_425:int = 0;
      
      public static const const_108:int = 2;
      
      public static const const_165:int = 1;
      
      public static const const_571:Array = ["open","closed","password"];
       
      
      private var var_1662:int;
      
      private var var_1664:int;
      
      private var var_1800:int;
      
      private var var_1665:Array;
      
      private var var_1661:Boolean;
      
      private var var_1663:Boolean;
      
      private var var_1140:int;
      
      private var var_1799:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_606:Array;
      
      private var var_1085:String;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_1664;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1663 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1661 = param1;
      }
      
      public function get description() : String
      {
         return var_1085;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1661;
      }
      
      public function get maximumVisitors() : int
      {
         return var_1662;
      }
      
      public function set description(param1:String) : void
      {
         var_1085 = param1;
      }
      
      public function get categoryId() : int
      {
         return var_1140;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1662 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get controllerCount() : int
      {
         return var_1799;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1665;
      }
      
      public function get tags() : Array
      {
         return var_606;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1663;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1664 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_1799 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_606 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1665 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1140 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_1800 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_1800;
      }
   }
}
