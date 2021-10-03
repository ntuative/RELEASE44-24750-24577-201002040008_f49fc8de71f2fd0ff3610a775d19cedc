package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1175:String = "F";
      
      public static const const_811:String = "M";
       
      
      private var var_93:Number = 0;
      
      private var var_532:String = "";
      
      private var var_1590:int = 0;
      
      private var var_1588:String = "";
      
      private var var_1586:int = 0;
      
      private var var_1589:int = 0;
      
      private var var_1585:String = "";
      
      private var var_1320:String = "";
      
      private var _id:int = 0;
      
      private var var_189:Boolean = false;
      
      private var var_231:int = 0;
      
      private var var_1591:String = "";
      
      private var _name:String = "";
      
      private var var_1587:int = 0;
      
      private var _y:Number = 0;
      
      private var var_92:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_92;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_231;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_189)
         {
            var_231 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_189)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1590;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_189)
         {
            var_1586 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1591;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_189)
         {
            var_1585 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_189)
         {
            var_1591 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_189)
         {
            var_1589 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_189)
         {
            var_532 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_189)
         {
            var_1590 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_189)
         {
            var_1320 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1586;
      }
      
      public function get groupID() : String
      {
         return var_1585;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_189)
         {
            var_1587 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_189)
         {
            var_1588 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_189 = true;
      }
      
      public function get sex() : String
      {
         return var_1320;
      }
      
      public function get figure() : String
      {
         return var_532;
      }
      
      public function get webID() : int
      {
         return var_1587;
      }
      
      public function get custom() : String
      {
         return var_1588;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_189)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_189)
         {
            var_92 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_189)
         {
            var_93 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_93;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1589;
      }
   }
}
