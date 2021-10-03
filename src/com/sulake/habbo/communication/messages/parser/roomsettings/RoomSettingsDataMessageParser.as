package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.roomsettings.FlatControllerData;
   import com.sulake.habbo.communication.messages.incoming.roomsettings.RoomSettingsData;
   
   public class RoomSettingsDataMessageParser implements IMessageParser
   {
       
      
      private var var_133:RoomSettingsData;
      
      public function RoomSettingsDataMessageParser()
      {
         super();
      }
      
      public function get data() : RoomSettingsData
      {
         return var_133;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_133 = new RoomSettingsData();
         var_133.roomId = param1.readInteger();
         var_133.name = param1.readString();
         var_133.description = param1.readString();
         var_133.doorMode = param1.readInteger();
         var_133.categoryId = param1.readInteger();
         var_133.maximumVisitors = param1.readInteger();
         var_133.maximumVisitorsLimit = param1.readInteger();
         var_133.tags = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_133.tags.push(param1.readString());
            _loc3_++;
         }
         var_133.controllers = [];
         var _loc4_:int = param1.readInteger();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            var_133.controllers.push(new FlatControllerData(param1));
            _loc5_++;
         }
         var_133.controllerCount = param1.readInteger();
         var_133.allowPets = param1.readInteger() == 1;
         var_133.allowFoodConsume = param1.readInteger() == 1;
         return true;
      }
      
      public function flush() : Boolean
      {
         var_133 = null;
         return true;
      }
   }
}
