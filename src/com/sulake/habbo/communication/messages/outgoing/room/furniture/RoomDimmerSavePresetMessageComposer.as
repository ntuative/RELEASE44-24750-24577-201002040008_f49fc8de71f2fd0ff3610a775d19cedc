package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1603:int;
      
      private var var_1605:int;
      
      private var var_1602:Boolean;
      
      private var var_1604:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1606:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1605 = param1;
         var_1603 = param2;
         var_1604 = param3;
         var_1606 = param4;
         var_1602 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1605,var_1603,var_1604,var_1606,int(var_1602)];
      }
      
      public function dispose() : void
      {
      }
   }
}
