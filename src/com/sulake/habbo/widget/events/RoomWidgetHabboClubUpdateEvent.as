package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_213:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2088:Boolean = false;
      
      private var var_2089:int = 0;
      
      private var var_2087:int = 0;
      
      private var var_2090:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_213,param5,param6);
         var_2090 = param1;
         var_2087 = param2;
         var_2089 = param3;
         var_2088 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_2089;
      }
      
      public function get periodsLeft() : int
      {
         return var_2087;
      }
      
      public function get daysLeft() : int
      {
         return var_2090;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2088;
      }
   }
}
