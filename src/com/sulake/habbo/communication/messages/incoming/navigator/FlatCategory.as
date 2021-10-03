package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class FlatCategory
   {
       
      
      private var var_1298:int;
      
      private var var_1389:String;
      
      public function FlatCategory()
      {
         super();
      }
      
      public function set nodeName(param1:String) : void
      {
         var_1389 = param1;
      }
      
      public function get nodeName() : String
      {
         return var_1389;
      }
      
      public function set nodeId(param1:int) : void
      {
         var_1298 = param1;
      }
      
      public function get nodeId() : int
      {
         return var_1298;
      }
   }
}
