package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_619:int = 2;
      
      public static const const_942:int = 6;
      
      public static const const_714:int = 1;
      
      public static const const_622:int = 3;
      
      public static const const_783:int = 4;
      
      public static const const_709:int = 5;
       
      
      private var var_1807:String;
      
      private var var_927:int;
      
      private var var_1701:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_927 = param2;
         var_1701 = param3;
         var_1807 = param4;
      }
      
      public function get time() : String
      {
         return var_1807;
      }
      
      public function get senderId() : int
      {
         return var_927;
      }
      
      public function get messageText() : String
      {
         return var_1701;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
