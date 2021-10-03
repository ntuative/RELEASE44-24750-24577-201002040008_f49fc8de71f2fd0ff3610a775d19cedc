package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1778:int;
      
      private var var_1777:String;
      
      private var var_1488:IActionDefinition;
      
      private var var_1776:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1774:String;
      
      private var var_1775:String;
      
      private var var_1703:Boolean;
      
      private var var_1779:ColorTransform;
      
      private var var_1704:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1777 = param1;
         var_1774 = param2;
         var_1778 = param3;
         _color = param4;
         _frames = param5;
         var_1488 = param6;
         var_1703 = param7;
         var_1704 = param8;
         var_1775 = param9;
         var_1776 = param10;
         var_1779 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1703;
      }
      
      public function get partType() : String
      {
         return var_1774;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1704;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1776;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1778;
      }
      
      public function get flippedPartType() : String
      {
         return var_1775;
      }
      
      public function get bodyPartId() : String
      {
         return var_1777;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1488;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1779;
      }
   }
}
