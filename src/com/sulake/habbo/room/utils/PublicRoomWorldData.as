package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1655:Number = 1;
      
      private var var_195:Number = 1;
      
      private var var_2055:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_2055 = param1;
         var_195 = param2;
         var_1655 = param3;
      }
      
      public function get scale() : Number
      {
         return var_195;
      }
      
      public function get heightScale() : Number
      {
         return var_1655;
      }
   }
}
