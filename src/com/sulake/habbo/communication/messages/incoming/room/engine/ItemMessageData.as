package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_92:Number = 0;
      
      private var _data:String = "";
      
      private var var_1473:int = 0;
      
      private var var_47:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2077:Boolean = false;
      
      private var var_2350:String = "";
      
      private var _id:int = 0;
      
      private var var_189:Boolean = false;
      
      private var var_231:String = "";
      
      private var var_2076:int = 0;
      
      private var var_2078:int = 0;
      
      private var var_1911:int = 0;
      
      private var var_1908:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2077 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_189)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2077;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_189)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_231;
      }
      
      public function get state() : int
      {
         return var_47;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_189)
         {
            var_1911 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_189)
         {
            var_2076 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_189)
         {
            var_2078 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_189)
         {
            var_231 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_189)
         {
            var_1908 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_189)
         {
            var_47 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1911;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_189)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2076;
      }
      
      public function get wallY() : Number
      {
         return var_2078;
      }
      
      public function get localY() : Number
      {
         return var_1908;
      }
      
      public function setReadOnly() : void
      {
         var_189 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_92;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_189)
         {
            var_92 = param1;
         }
      }
   }
}
