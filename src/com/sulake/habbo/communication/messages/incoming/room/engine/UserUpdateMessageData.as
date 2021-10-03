package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_92:Number = 0;
      
      private var var_231:int = 0;
      
      private var var_2106:int = 0;
      
      private var var_2220:Number = 0;
      
      private var var_2219:Number = 0;
      
      private var var_2217:Number = 0;
      
      private var var_2218:Number = 0;
      
      private var var_2221:Boolean = false;
      
      private var var_93:Number = 0;
      
      private var _id:int = 0;
      
      private var var_194:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_194 = [];
         super();
         _id = param1;
         var_93 = param2;
         _y = param3;
         var_92 = param4;
         var_2218 = param5;
         var_231 = param6;
         var_2106 = param7;
         var_2220 = param8;
         var_2219 = param9;
         var_2217 = param10;
         var_2221 = param11;
         var_194 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_92;
      }
      
      public function get dir() : int
      {
         return var_231;
      }
      
      public function get localZ() : Number
      {
         return var_2218;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2221;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_2106;
      }
      
      public function get targetX() : Number
      {
         return var_2220;
      }
      
      public function get targetY() : Number
      {
         return var_2219;
      }
      
      public function get targetZ() : Number
      {
         return var_2217;
      }
      
      public function get x() : Number
      {
         return var_93;
      }
      
      public function get actions() : Array
      {
         return var_194.slice();
      }
   }
}
