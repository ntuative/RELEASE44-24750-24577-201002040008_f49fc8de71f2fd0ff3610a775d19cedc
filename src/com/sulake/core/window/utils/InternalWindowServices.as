package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_127:DisplayObject;
      
      private var var_2298:uint;
      
      private var var_861:IWindowToolTipAgentService;
      
      private var var_858:IWindowMouseScalingService;
      
      private var var_408:IWindowContext;
      
      private var var_857:IWindowFocusManagerService;
      
      private var var_859:IWindowMouseListenerService;
      
      private var var_860:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2298 = 0;
         var_127 = param2;
         var_408 = param1;
         var_860 = new WindowMouseDragger(param2);
         var_858 = new WindowMouseScaler(param2);
         var_859 = new WindowMouseListener(param2);
         var_857 = new FocusManager(param2);
         var_861 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_858;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_857;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_861;
      }
      
      public function dispose() : void
      {
         if(var_860 != null)
         {
            var_860.dispose();
            var_860 = null;
         }
         if(var_858 != null)
         {
            var_858.dispose();
            var_858 = null;
         }
         if(var_859 != null)
         {
            var_859.dispose();
            var_859 = null;
         }
         if(var_857 != null)
         {
            var_857.dispose();
            var_857 = null;
         }
         if(var_861 != null)
         {
            var_861.dispose();
            var_861 = null;
         }
         var_408 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_859;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_860;
      }
   }
}
