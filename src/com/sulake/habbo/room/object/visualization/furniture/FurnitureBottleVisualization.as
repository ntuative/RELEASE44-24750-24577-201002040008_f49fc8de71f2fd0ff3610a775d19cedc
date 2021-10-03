package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1059:int = -1;
      
      private static const const_755:int = 20;
      
      private static const const_489:int = 9;
       
      
      private var var_533:Boolean = false;
      
      private var var_236:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_236 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_533 = true;
            var_236 = new Array();
            var_236.push(const_1059);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_533)
            {
               var_533 = false;
               var_236 = new Array();
               var_236.push(const_755);
               var_236.push(const_489 + param1);
               var_236.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
