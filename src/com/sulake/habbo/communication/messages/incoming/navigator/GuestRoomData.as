package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1801:int;
      
      private var var_1880:String;
      
      private var var_1882:int;
      
      private var var_1881:int;
      
      private var var_713:Boolean;
      
      private var var_1663:Boolean;
      
      private var var_382:int;
      
      private var var_1085:String;
      
      private var var_1664:int;
      
      private var var_1140:int;
      
      private var _ownerName:String;
      
      private var var_686:String;
      
      private var var_1877:int;
      
      private var var_1878:RoomThumbnailData;
      
      private var var_1879:Boolean;
      
      private var var_606:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_606 = new Array();
         super();
         var_382 = param1.readInteger();
         var_713 = param1.readBoolean();
         var_686 = param1.readString();
         _ownerName = param1.readString();
         var_1664 = param1.readInteger();
         var_1801 = param1.readInteger();
         var_1877 = param1.readInteger();
         var_1085 = param1.readString();
         var_1882 = param1.readInteger();
         var_1879 = param1.readBoolean();
         var_1881 = param1.readInteger();
         var_1140 = param1.readInteger();
         var_1880 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_606.push(_loc4_);
            _loc3_++;
         }
         var_1878 = new RoomThumbnailData(param1);
         var_1663 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1877;
      }
      
      public function get roomName() : String
      {
         return var_686;
      }
      
      public function get userCount() : int
      {
         return var_1801;
      }
      
      public function get score() : int
      {
         return var_1881;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1880;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1879;
      }
      
      public function get tags() : Array
      {
         return var_606;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1663;
      }
      
      public function get event() : Boolean
      {
         return var_713;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_606 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1140;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1882;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1878;
      }
      
      public function get doorMode() : int
      {
         return var_1664;
      }
      
      public function get flatId() : int
      {
         return var_382;
      }
      
      public function get description() : String
      {
         return var_1085;
      }
   }
}
