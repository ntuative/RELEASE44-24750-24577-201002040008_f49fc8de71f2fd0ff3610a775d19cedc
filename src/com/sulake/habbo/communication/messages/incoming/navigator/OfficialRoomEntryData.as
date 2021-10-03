package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1368:int = 4;
      
      public static const const_545:int = 3;
      
      public static const const_615:int = 2;
      
      public static const const_961:int = 1;
       
      
      private var var_2035:String;
      
      private var _disposed:Boolean;
      
      private var var_1801:int;
      
      private var var_2036:Boolean;
      
      private var var_782:String;
      
      private var var_852:PublicRoomData;
      
      private var var_2034:int;
      
      private var _index:int;
      
      private var var_2032:String;
      
      private var _type:int;
      
      private var var_1787:String;
      
      private var var_851:GuestRoomData;
      
      private var var_2033:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2035 = param1.readString();
         var_2033 = param1.readString();
         var_2036 = param1.readInteger() == 1;
         var_2032 = param1.readString();
         var_782 = param1.readString();
         var_2034 = param1.readInteger();
         var_1801 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_961)
         {
            var_1787 = param1.readString();
         }
         else if(_type == const_545)
         {
            var_852 = new PublicRoomData(param1);
         }
         else if(_type == const_615)
         {
            var_851 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2034;
      }
      
      public function get popupCaption() : String
      {
         return var_2035;
      }
      
      public function get userCount() : int
      {
         return var_1801;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2036;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_961)
         {
            return 0;
         }
         if(this.type == const_615)
         {
            return this.var_851.maxUserCount;
         }
         if(this.type == const_545)
         {
            return this.var_852.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2033;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_851 != null)
         {
            this.var_851.dispose();
            this.var_851 = null;
         }
         if(this.var_852 != null)
         {
            this.var_852.dispose();
            this.var_852 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_851;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2032;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_852;
      }
      
      public function get picRef() : String
      {
         return var_782;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1787;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
