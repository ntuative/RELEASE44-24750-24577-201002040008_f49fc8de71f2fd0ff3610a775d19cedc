package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1058:int = 31;
      
      private static const const_1059:int = 32;
      
      private static const const_490:int = 30;
      
      private static const const_755:int = 20;
      
      private static const const_489:int = 10;
       
      
      private var var_533:Boolean = false;
      
      private var var_236:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_236 = new Array();
         super();
         super.setAnimation(const_490);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_533 = true;
            var_236 = new Array();
            var_236.push(const_1058);
            var_236.push(const_1059);
            return;
         }
         if(param1 > 0 && param1 <= const_489)
         {
            if(var_533)
            {
               var_533 = false;
               var_236 = new Array();
               if(_direction == 2)
               {
                  var_236.push(const_755 + 5 - param1);
                  var_236.push(const_489 + 5 - param1);
               }
               else
               {
                  var_236.push(const_755 + param1);
                  var_236.push(const_489 + param1);
               }
               var_236.push(const_490);
               return;
            }
            super.setAnimation(const_490);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
         {
            if(false)
            {
               super.setAnimation(var_236.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
