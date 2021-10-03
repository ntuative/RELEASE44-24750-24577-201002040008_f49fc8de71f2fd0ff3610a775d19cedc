package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1048:PetData;
      
      private var var_1540:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1540 = param1.readBoolean();
         var_1048 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1540 + ", " + var_1048.id + ", " + var_1048.name + ", " + pet.figure + ", " + var_1048.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1540;
      }
      
      public function get pet() : PetData
      {
         return var_1048;
      }
   }
}
