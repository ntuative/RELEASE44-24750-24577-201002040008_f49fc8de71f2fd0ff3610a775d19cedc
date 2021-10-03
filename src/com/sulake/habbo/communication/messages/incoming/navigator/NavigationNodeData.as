package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1298:int;
      
      private var var_1389:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1298 = param1;
         var_1389 = param2;
         Logger.log("READ NODE: " + var_1298 + ", " + var_1389);
      }
      
      public function get nodeName() : String
      {
         return var_1389;
      }
      
      public function get nodeId() : int
      {
         return var_1298;
      }
   }
}
