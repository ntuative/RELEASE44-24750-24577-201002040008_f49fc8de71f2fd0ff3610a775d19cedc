package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1740:Date;
      
      private var var_1150:Boolean = false;
      
      private var _type:int;
      
      private var var_364:BitmapData;
      
      private var var_281:Boolean = false;
      
      private var var_1219:int;
      
      private var var_540:int = 1;
      
      private var var_951:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_364;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_540;
         if(var_540 < 0)
         {
            var_540 = 0;
         }
         var_951 = var_1219;
         var_281 = false;
         var_1150 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_951 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_281;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_364 = param1;
      }
      
      public function get duration() : int
      {
         return var_1219;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1150;
      }
      
      public function get effectsInInventory() : int
      {
         return var_540;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_364;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_281)
         {
            var_1740 = new Date();
         }
         var_281 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_540 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_281)
         {
            _loc1_ = var_951 - (new Date().valueOf() - var_1740.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_951;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1150 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1219 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
