package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1906:Boolean = false;
      
      private var var_1907:Boolean = false;
      
      private var var_1886:String = "";
      
      private var _type:String = "";
      
      private var var_1909:Boolean = false;
      
      private var var_1911:Number = 0;
      
      private var var_1905:Number = 0;
      
      private var var_1913:Number = 0;
      
      private var var_1910:String = "";
      
      private var var_1908:Number = 0;
      
      private var var_1912:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1910 = param2;
         var_1886 = param3;
         var_1905 = param4;
         var_1913 = param5;
         var_1911 = param6;
         var_1908 = param7;
         var_1912 = param8;
         var_1907 = param9;
         var_1909 = param10;
         var_1906 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1912;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1906;
      }
      
      public function get localX() : Number
      {
         return var_1911;
      }
      
      public function get localY() : Number
      {
         return var_1908;
      }
      
      public function get canvasId() : String
      {
         return var_1910;
      }
      
      public function get altKey() : Boolean
      {
         return var_1907;
      }
      
      public function get spriteTag() : String
      {
         return var_1886;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1905;
      }
      
      public function get screenY() : Number
      {
         return var_1913;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1909;
      }
   }
}
