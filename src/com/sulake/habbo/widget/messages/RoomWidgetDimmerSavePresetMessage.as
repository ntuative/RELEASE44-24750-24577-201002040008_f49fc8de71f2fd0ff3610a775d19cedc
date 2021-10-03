package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_620:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1603:int;
      
      private var var_1605:int;
      
      private var var_1646:Boolean;
      
      private var var_1008:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_620);
         var_1605 = param1;
         var_1603 = param2;
         _color = param3;
         var_1008 = param4;
         var_1646 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1603;
      }
      
      public function get presetNumber() : int
      {
         return var_1605;
      }
      
      public function get brightness() : int
      {
         return var_1008;
      }
      
      public function get apply() : Boolean
      {
         return var_1646;
      }
   }
}
