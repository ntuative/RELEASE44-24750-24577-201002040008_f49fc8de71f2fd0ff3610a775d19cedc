package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1868:Number = 0;
      
      private var var_1850:Number = 0;
      
      private var var_1849:Number = 0;
      
      private var var_1867:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1850 = param1;
         var_1849 = param2;
         var_1868 = param3;
         var_1867 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1850;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1868;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1849;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1867;
      }
   }
}
