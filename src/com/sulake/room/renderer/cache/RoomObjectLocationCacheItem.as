package com.sulake.room.renderer.cache
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectLocationCacheItem
   {
       
      
      private var var_1957:int = -1;
      
      private var var_1122:int = -1;
      
      private var var_677:Vector3d = null;
      
      public function RoomObjectLocationCacheItem()
      {
         super();
         var_677 = new Vector3d();
      }
      
      public function get objectUpdateId() : int
      {
         return var_1957;
      }
      
      public function set objectUpdateId(param1:int) : void
      {
         var_1957 = param1;
      }
      
      public function set screenLoc(param1:IVector3d) : void
      {
         var_677.assign(param1);
         var_677.x = Math.round(var_677.x);
         var_677.y = Math.round(var_677.y);
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         var_1122 = param1;
      }
      
      public function get screenLoc() : IVector3d
      {
         return var_677;
      }
      
      public function get geometryUpdateId() : int
      {
         return var_1122;
      }
   }
}
