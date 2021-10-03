package com.sulake.habbo.avatar.structure.figure
{
   import flash.geom.ColorTransform;
   
   public class PartColor implements IPartColor
   {
       
      
      private var _id:int;
      
      private var var_1523:uint;
      
      private var _rgb:uint;
      
      private var _index:int;
      
      private var var_2212:int;
      
      private var var_1553:Number;
      
      private var _b:uint;
      
      private var var_1551:Number;
      
      private var var_1524:uint;
      
      private var _colorTransform:ColorTransform;
      
      private var var_1552:Number;
      
      private var var_1724:Boolean = false;
      
      public function PartColor(param1:XML)
      {
         super();
         _id = parseInt(param1.@id);
         _index = parseInt(param1.@index);
         var_2212 = parseInt(param1.@club);
         var_1724 = Boolean(parseInt(param1.@selectable));
         var _loc2_:String = param1.text();
         _rgb = parseInt(_loc2_,16);
         var_1523 = _rgb >> 16 & 255;
         var_1524 = _rgb >> 8 & 255;
         _b = _rgb >> 0 & 255;
         var_1552 = var_1523 / 255 * 1;
         var_1551 = var_1524 / 255 * 1;
         var_1553 = _b / 255 * 1;
         _colorTransform = new ColorTransform(var_1552,var_1551,var_1553);
      }
      
      public function get colorTransform() : ColorTransform
      {
         return _colorTransform;
      }
      
      public function get rgb() : uint
      {
         return _rgb;
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get blueMultiplier() : Number
      {
         return var_1553;
      }
      
      public function get r() : uint
      {
         return var_1523;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1724;
      }
      
      public function get b() : uint
      {
         return _b;
      }
      
      public function get greenMultiplier() : Number
      {
         return var_1551;
      }
      
      public function get g() : uint
      {
         return var_1524;
      }
      
      public function get redMultiplier() : Number
      {
         return var_1552;
      }
      
      public function get club() : int
      {
         return var_2212;
      }
   }
}
