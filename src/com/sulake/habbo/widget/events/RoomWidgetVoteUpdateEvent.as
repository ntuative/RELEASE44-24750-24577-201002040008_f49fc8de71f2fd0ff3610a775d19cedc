package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_123:String = "RWPUE_VOTE_RESULT";
      
      public static const const_112:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1121:int;
      
      private var var_975:String;
      
      private var var_683:Array;
      
      private var var_932:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_975 = param2;
         var_932 = param3;
         var_683 = param4;
         if(var_683 == null)
         {
            var_683 = [];
         }
         var_1121 = param5;
      }
      
      public function get votes() : Array
      {
         return var_683.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1121;
      }
      
      public function get question() : String
      {
         return var_975;
      }
      
      public function get choices() : Array
      {
         return var_932.slice();
      }
   }
}
