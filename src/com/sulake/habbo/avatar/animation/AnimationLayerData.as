package com.sulake.habbo.avatar.animation
{
   import com.sulake.habbo.avatar.AvatarStructure;
   import com.sulake.habbo.avatar.actions.ActiveActionData;
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.actions.IActiveActionData;
   
   public class AnimationLayerData implements IAnimationLayerData
   {
      
      public static const const_635:String = "bodypart";
      
      public static const const_358:String = "fx";
       
      
      private var _id:String;
      
      private var _dx:int;
      
      private var var_1488:IActiveActionData;
      
      private var _type:String;
      
      private var var_2019:int;
      
      private var var_442:int;
      
      private var var_1020:String;
      
      private var var_1124:int;
      
      private var var_1291:int;
      
      private var var_1292:int;
      
      public function AnimationLayerData(param1:AvatarStructure, param2:XML, param3:String, param4:int, param5:IActionDefinition)
      {
         super();
         var_442 = param4;
         _id = String(param2.@id);
         var_2019 = parseInt(param2.@frame);
         _dx = parseInt(param2.@dx);
         var_1292 = parseInt(param2.@dy);
         var_1291 = parseInt(param2.@dz);
         var_1124 = parseInt(param2.@dd);
         _type = param3;
         var_1020 = String(param2.@base);
         var _loc6_:String = "";
         if(var_1020 != "")
         {
            _loc6_ = String(baseAsInt());
         }
         if(param5 != null)
         {
            var_1488 = new ActiveActionData(param5.state,_loc6_);
            var_1488.definition = param5;
         }
      }
      
      public function get animationFrame() : int
      {
         return var_2019;
      }
      
      public function baseAsInt() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < var_1020.length)
         {
            _loc1_ += var_1020.charCodeAt(_loc2_);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function get frameCounter() : int
      {
         return var_442;
      }
      
      public function get base() : String
      {
         return var_1020;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get dx() : int
      {
         return _dx;
      }
      
      public function get dz() : int
      {
         return var_1291;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get dy() : int
      {
         return var_1292;
      }
      
      public function get action() : IActiveActionData
      {
         return var_1488;
      }
      
      public function get directionOffset() : int
      {
         return var_1124;
      }
   }
}
