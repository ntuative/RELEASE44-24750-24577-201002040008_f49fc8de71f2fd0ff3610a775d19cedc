package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_892:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_892 = new Array();
         var_892.push(param1.length);
         var_892 = var_892.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_892;
      }
   }
}
