package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1628:int;
      
      private var var_532:String;
      
      private var var_1633:int;
      
      private var var_1635:int;
      
      private var var_1631:int;
      
      private var var_1689:int;
      
      private var _nutrition:int;
      
      private var var_1133:int;
      
      private var var_1688:int;
      
      private var var_1686:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1629:int;
      
      private var var_1687:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1633;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1689;
      }
      
      public function flush() : Boolean
      {
         var_1133 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_1688;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1686;
      }
      
      public function get maxNutrition() : int
      {
         return var_1687;
      }
      
      public function get figure() : String
      {
         return var_532;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1635;
      }
      
      public function get petId() : int
      {
         return var_1133;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1133 = param1.readInteger();
         _name = param1.readString();
         var_1633 = param1.readInteger();
         var_1688 = param1.readInteger();
         var_1631 = param1.readInteger();
         var_1686 = param1.readInteger();
         _energy = param1.readInteger();
         var_1689 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_1687 = param1.readInteger();
         var_532 = param1.readString();
         var_1635 = param1.readInteger();
         var_1629 = param1.readInteger();
         var_1628 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1631;
      }
      
      public function get ownerId() : int
      {
         return var_1629;
      }
      
      public function get age() : int
      {
         return var_1628;
      }
   }
}
