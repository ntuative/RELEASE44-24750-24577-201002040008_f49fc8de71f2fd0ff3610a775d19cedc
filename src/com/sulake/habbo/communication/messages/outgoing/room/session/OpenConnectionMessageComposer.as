package com.sulake.habbo.communication.messages.outgoing.room.session
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenConnectionMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int;
      
      private var var_2003:int;
      
      private var var_2002:Boolean;
      
      public function OpenConnectionMessageComposer(param1:Boolean, param2:int, param3:int = 0)
      {
         super();
         _roomId = param2;
         var_2002 = param1;
         var_2003 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [int(var_2002),_roomId,var_2003];
      }
      
      public function dispose() : void
      {
      }
   }
}
