package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var var_81:Vector3d = null;
      
      private var _id:int = 0;
      
      private var var_231:Vector3d = null;
      
      private var var_1749:int = 0;
      
      private var var_1956:String = null;
      
      private var _category:int = 0;
      
      private var var_1955:String = "";
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         _id = param1;
         _category = param2;
         var_1955 = param3;
         var_81 = new Vector3d();
         var_81.assign(param4);
         var_231 = new Vector3d();
         var_231.assign(param5);
         var_1749 = param6;
         var_1956 = param7;
      }
      
      public function get loc() : Vector3d
      {
         return var_81;
      }
      
      public function get typeId() : int
      {
         return var_1749;
      }
      
      public function get dir() : Vector3d
      {
         return var_231;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get instanceData() : String
      {
         return var_1956;
      }
      
      public function get operation() : String
      {
         return var_1955;
      }
      
      public function dispose() : void
      {
         var_81 = null;
         var_231 = null;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
