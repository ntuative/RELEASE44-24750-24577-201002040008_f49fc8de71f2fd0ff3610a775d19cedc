package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetCommandsUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_149:String = "RSPIUE_ENABLED_PET_COMMANDS";
       
      
      private var var_1133:int;
      
      private var var_1732:Array;
      
      public function RoomSessionPetCommandsUpdateEvent(param1:IRoomSession, param2:int, param3:Array, param4:Boolean = false, param5:Boolean = false)
      {
         super(RoomSessionPetCommandsUpdateEvent.const_149,param1,param4,param5);
         var_1133 = param2;
         var_1732 = param3;
      }
      
      public function get enabledCommands() : Array
      {
         return var_1732;
      }
      
      public function get petId() : int
      {
         return var_1133;
      }
   }
}
