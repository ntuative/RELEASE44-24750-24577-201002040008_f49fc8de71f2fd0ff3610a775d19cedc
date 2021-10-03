package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_1004:int = 0;
      
      private var _data:String = "";
      
      private var var_1473:int = -1;
      
      private var var_47:int = 0;
      
      private var _type:int = 0;
      
      private var var_1005:int = 0;
      
      private var var_2350:String = "";
      
      private var var_1611:int = 0;
      
      private var _id:int = 0;
      
      private var var_189:Boolean = false;
      
      private var var_231:int = 0;
      
      private var var_2062:String = null;
      
      private var var_93:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_92:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_189)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_189)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_231;
      }
      
      public function get extra() : int
      {
         return var_1473;
      }
      
      public function get state() : int
      {
         return var_47;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_189)
         {
            var_231 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_189)
         {
            var_93 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_189)
         {
            var_1473 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_92;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_189)
         {
            var_47 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1611;
      }
      
      public function get staticClass() : String
      {
         return var_2062;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_189)
         {
            var_1611 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_189)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_189)
         {
            var_2062 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_189 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_189)
         {
            var_1004 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_189)
         {
            var_1005 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_189)
         {
            var_92 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1004;
      }
      
      public function get x() : Number
      {
         return var_93;
      }
      
      public function get sizeY() : int
      {
         return var_1005;
      }
   }
}
