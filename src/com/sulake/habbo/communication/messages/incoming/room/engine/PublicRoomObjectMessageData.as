package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var var_1005:int = 0;
      
      private var var_92:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_189:Boolean = false;
      
      private var var_231:int = 0;
      
      private var _type:String = "";
      
      private var _name:String = "";
      
      private var var_93:Number = 0;
      
      private var var_1004:int = 0;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_189)
         {
            var_92 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return var_1005;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get dir() : int
      {
         return var_231;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         if(!var_189)
         {
            _name = param1;
         }
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_189)
         {
            var_231 = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_189)
         {
            _y = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_189 = true;
      }
      
      public function get z() : Number
      {
         return var_92;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_189)
         {
            var_1005 = param1;
         }
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_189)
         {
            var_1004 = param1;
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
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set type(param1:String) : void
      {
         if(!var_189)
         {
            _type = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1004;
      }
   }
}
