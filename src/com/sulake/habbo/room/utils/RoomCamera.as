package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_341:Number = 0.5;
      
      private static const const_772:int = 3;
      
      private static const const_1105:Number = 1;
       
      
      private var var_2124:Boolean = false;
      
      private var var_2120:Boolean = false;
      
      private var var_1040:int = 0;
      
      private var var_272:Vector3d = null;
      
      private var var_2122:int = 0;
      
      private var var_2121:int = 0;
      
      private var var_2125:Boolean = false;
      
      private var var_2116:int = -2;
      
      private var var_2118:Boolean = false;
      
      private var var_2123:int = 0;
      
      private var var_2119:int = -1;
      
      private var var_418:Vector3d = null;
      
      private var var_2117:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2122;
      }
      
      public function get targetId() : int
      {
         return var_2119;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2123 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2122 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2124 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2119 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2120 = param1;
      }
      
      public function dispose() : void
      {
         var_418 = null;
         var_272 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_418 == null)
         {
            var_418 = new Vector3d();
         }
         var_418.assign(param1);
         var_1040 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2116;
      }
      
      public function get screenHt() : int
      {
         return var_2117;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2121 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_272;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2117 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2123;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2124;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2120;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_418 != null && var_272 != null)
         {
            ++var_1040;
            _loc2_ = Vector3d.dif(var_418,var_272);
            if(_loc2_.length <= const_341)
            {
               var_272 = var_418;
               var_418 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_341 * (const_772 + 1))
               {
                  _loc2_.mul(const_341);
               }
               else if(var_1040 <= const_772)
               {
                  _loc2_.mul(const_341);
               }
               else
               {
                  _loc2_.mul(const_1105);
               }
               var_272 = Vector3d.sum(var_272,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2125 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2121;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2118 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2116 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_272 != null)
         {
            return;
         }
         var_272 = new Vector3d();
         var_272.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2125;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2118;
      }
   }
}
