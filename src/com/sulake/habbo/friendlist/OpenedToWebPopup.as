package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindowContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class OpenedToWebPopup
   {
       
      
      private var var_172:Timer;
      
      private var _friendList:HabboFriendList;
      
      private var var_269:IWindowContainer;
      
      public function OpenedToWebPopup(param1:HabboFriendList)
      {
         super();
         _friendList = param1;
      }
      
      private function getOpenedToWebAlert() : IWindowContainer
      {
         var _loc1_:IWindowContainer = IWindowContainer(_friendList.getXmlWindow("opened_to_web_popup"));
         _friendList.refreshButton(_loc1_,"opened_to_web",true,null,0);
         return _loc1_;
      }
      
      public function show(param1:int, param2:int) : void
      {
         if(var_269 != null)
         {
            close(null);
         }
         var_269 = getOpenedToWebAlert();
         if(var_172 != null)
         {
            var_172.stop();
         }
         var_172 = new Timer(2000,1);
         var_172.addEventListener(TimerEvent.TIMER,close);
         var_172.start();
         var_269.x = param1;
         var_269.y = param2;
      }
      
      private function close(param1:Event) : void
      {
         var_269.destroy();
         var_269 = null;
      }
   }
}
