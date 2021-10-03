package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1615:int;
      
      private var var_2107:int = 0;
      
      private var var_2110:String;
      
      private var var_2108:int;
      
      private var var_2109:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1615 = param1;
         var_2108 = param2;
         var_2109 = param3;
         var_2110 = param4;
      }
      
      public function get length() : int
      {
         return var_2108;
      }
      
      public function get name() : String
      {
         return var_2109;
      }
      
      public function get creator() : String
      {
         return var_2110;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_2107;
      }
      
      public function get id() : int
      {
         return var_1615;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_2107 = param1;
      }
   }
}
