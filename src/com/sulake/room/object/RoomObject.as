package com.sulake.room.object
{
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   import com.sulake.room.object.logic.IRoomObjectMouseHandler;
   import com.sulake.room.object.visualization.IRoomObjectVisualization;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObject implements IRoomObjectController
   {
      
      private static var var_1178:int = 0;
       
      
      private var var_81:Vector3d;
      
      private var _updateID:int;
      
      private var _type:String = "";
      
      private var _visualization:IRoomObjectVisualization;
      
      private var _model:RoomObjectModel;
      
      private var var_385:IRoomObjectEventHandler;
      
      private var var_1419:Vector3d;
      
      private var var_1785:int = 0;
      
      private var _id:int;
      
      private var var_1420:Vector3d;
      
      private var var_231:Vector3d;
      
      private var var_454:Array;
      
      public function RoomObject(param1:int, param2:int)
      {
         super();
         _id = param1;
         var_81 = new Vector3d();
         var_231 = new Vector3d();
         var_1419 = new Vector3d();
         var_1420 = new Vector3d();
         var_454 = new Array(param2);
         var _loc3_:Number = param2 - 1;
         while(_loc3_ >= 0)
         {
            var_454[_loc3_] = 0;
            _loc3_--;
         }
         _model = new RoomObjectModel();
         _visualization = null;
         var_385 = null;
         _updateID = 0;
         var_1785 = var_1178++;
      }
      
      public function getInstanceId() : int
      {
         return var_1785;
      }
      
      public function getId() : int
      {
         return _id;
      }
      
      public function getUpdateID() : int
      {
         return _updateID;
      }
      
      public function dispose() : void
      {
         var_81 = null;
         var_231 = null;
         if(_model != null)
         {
            _model.dispose();
            _model = null;
         }
         var_454 = null;
         setVisualization(null);
         setEventHandler(null);
      }
      
      public function getType() : String
      {
         return _type;
      }
      
      public function getLocation() : IVector3d
      {
         var_1419.assign(var_81);
         return var_1419;
      }
      
      public function setLocation(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_81.x != param1.x || var_81.y != param1.y || var_81.z != param1.z)
         {
            var_81.x = param1.x;
            var_81.y = param1.y;
            var_81.z = param1.z;
            ++_updateID;
         }
      }
      
      public function setDirection(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_231.x != param1.x || var_231.y != param1.y || var_231.z != param1.z)
         {
            var_231.x = (param1.x % 360 + 360) % 360;
            var_231.y = (param1.y % 360 + 360) % 360;
            var_231.z = (param1.z % 360 + 360) % 360;
            ++_updateID;
         }
      }
      
      public function setType(param1:String) : void
      {
         _type = param1;
      }
      
      public function getEventHandler() : IRoomObjectEventHandler
      {
         return var_385;
      }
      
      public function getDirection() : IVector3d
      {
         var_1420.assign(var_231);
         return var_1420;
      }
      
      public function setState(param1:int, param2:int) : Boolean
      {
         if(param2 >= 0 && param2 < var_454.length)
         {
            if(var_454[param2] != param1)
            {
               var_454[param2] = param1;
               ++_updateID;
            }
            return true;
         }
         return false;
      }
      
      public function setEventHandler(param1:IRoomObjectEventHandler) : void
      {
         if(param1 == var_385)
         {
            return;
         }
         var _loc2_:IRoomObjectEventHandler = var_385;
         if(_loc2_ != null)
         {
            var_385 = null;
            _loc2_.object = null;
         }
         var_385 = param1;
         if(var_385 != null)
         {
            var_385.object = this;
         }
      }
      
      public function getState(param1:int) : int
      {
         if(param1 >= 0 && param1 < var_454.length)
         {
            return var_454[param1];
         }
         return -1;
      }
      
      public function setVisualization(param1:IRoomObjectVisualization) : void
      {
         if(param1 != _visualization)
         {
            if(_visualization != null)
            {
               _visualization.dispose();
            }
            _visualization = param1;
            if(_visualization != null)
            {
               _visualization.object = this;
            }
         }
      }
      
      public function getVisualization() : IRoomObjectVisualization
      {
         return _visualization;
      }
      
      public function getModel() : IRoomObjectModel
      {
         return _model;
      }
      
      public function getModelController() : IRoomObjectModelController
      {
         return _model;
      }
      
      public function getMouseHandler() : IRoomObjectMouseHandler
      {
         return getEventHandler();
      }
   }
}
