package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1533:int;
      
      private var var_1532:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1533;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1533 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1533 = this.var_1533;
         _loc1_.var_1532 = this.var_1532;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1532 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1532;
      }
   }
}
