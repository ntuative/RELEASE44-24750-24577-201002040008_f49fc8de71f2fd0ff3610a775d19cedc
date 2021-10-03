package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_121:String = "RWPUW_CONTENT";
      
      public static const const_107:String = "RWPUW_OFFER";
      
      public static const const_60:String = "RWPUW_ERROR";
       
      
      private var var_1057:Array = null;
      
      private var var_1314:String = "";
      
      private var var_1200:String;
      
      private var var_1315:String = "";
      
      private var var_1058:int = 0;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         _id = param1;
         super(param2,param3,param4);
      }
      
      public function get questionArray() : Array
      {
         return var_1057;
      }
      
      public function get startMessage() : String
      {
         return var_1314;
      }
      
      public function get summary() : String
      {
         return var_1200;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1314 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1058 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1200 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1058;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1315 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1315;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1057 = param1;
      }
   }
}
