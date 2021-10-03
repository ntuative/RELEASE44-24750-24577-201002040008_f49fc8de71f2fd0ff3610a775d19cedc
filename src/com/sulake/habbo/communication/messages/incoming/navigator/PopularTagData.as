package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_1801:int;
      
      private var var_2191:String;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         var_2191 = param1.readString();
         var_1801 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return var_2191;
      }
      
      public function get userCount() : int
      {
         return var_1801;
      }
   }
}
