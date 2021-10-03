package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1056:int = 1;
      
      private static const const_1059:int = 3;
      
      private static const const_1057:int = 2;
      
      private static const const_1055:int = 15;
       
      
      private var var_802:int;
      
      private var var_236:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_236 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1057)
         {
            var_236 = new Array();
            var_236.push(const_1056);
            var_802 = const_1055;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_802 > 0)
         {
            --var_802;
         }
         if(var_802 == 0)
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
