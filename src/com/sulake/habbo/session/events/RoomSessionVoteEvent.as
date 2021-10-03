package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_123:String = "RSPE_VOTE_RESULT";
      
      public static const const_112:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1121:int = 0;
      
      private var var_975:String = "";
      
      private var var_683:Array;
      
      private var var_932:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_932 = [];
         var_683 = [];
         super(param1,param2,param7,param8);
         var_975 = param3;
         var_932 = param4;
         var_683 = param5;
         if(var_683 == null)
         {
            var_683 = [];
         }
         var_1121 = param6;
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
