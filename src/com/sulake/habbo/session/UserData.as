package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_532:String = "";
      
      private var var_1588:String = "";
      
      private var var_1586:int = 0;
      
      private var var_1589:int = 0;
      
      private var _type:int = 0;
      
      private var var_1585:String = "";
      
      private var var_1320:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1587:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1586 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1585 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_532 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_1320 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1586;
      }
      
      public function set webID(param1:int) : void
      {
         var_1587 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1585;
      }
      
      public function set custom(param1:String) : void
      {
         var_1588 = param1;
      }
      
      public function get figure() : String
      {
         return var_532;
      }
      
      public function get sex() : String
      {
         return var_1320;
      }
      
      public function get custom() : String
      {
         return var_1588;
      }
      
      public function get webID() : int
      {
         return var_1587;
      }
      
      public function set xp(param1:int) : void
      {
         var_1589 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1589;
      }
   }
}
