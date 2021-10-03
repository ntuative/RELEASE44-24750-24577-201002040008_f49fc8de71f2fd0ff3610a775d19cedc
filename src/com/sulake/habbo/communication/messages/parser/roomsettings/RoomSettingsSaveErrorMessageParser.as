package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1447:int = 9;
      
      public static const const_1458:int = 4;
      
      public static const const_1444:int = 1;
      
      public static const const_1142:int = 10;
      
      public static const const_1492:int = 2;
      
      public static const const_1252:int = 7;
      
      public static const const_1207:int = 11;
      
      public static const const_1587:int = 3;
      
      public static const const_1350:int = 8;
      
      public static const const_1212:int = 5;
      
      public static const const_1512:int = 6;
      
      public static const const_1303:int = 12;
       
      
      private var var_1771:String;
      
      private var _roomId:int;
      
      private var var_1095:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1771;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1095 = param1.readInteger();
         var_1771 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1095;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
