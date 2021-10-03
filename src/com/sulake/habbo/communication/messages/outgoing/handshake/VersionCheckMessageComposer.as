package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1854:String;
      
      private var var_1158:String;
      
      private var var_1855:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1855 = param1;
         var_1158 = param2;
         var_1854 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1855,var_1158,var_1854];
      }
      
      public function dispose() : void
      {
      }
   }
}
