package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_2210:UserRegistry;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_150:TutorialUI;
      
      private var var_1550:IHabboLocalizationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_68:HelpUI;
      
      private var var_1549:IHabboConfigurationManager;
      
      private var var_191:IHabboToolbar;
      
      private var var_586:IHabboCommunicationManager;
      
      private var var_888:FaqIndex;
      
      private var var_1954:String = "";
      
      private var var_1429:IncomingMessages;
      
      private var var_1312:CallForHelpData;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1312 = new CallForHelpData();
         var_2210 = new UserRegistry();
         super(param1,param2,param3);
         _assetLibrary = param3;
         var_888 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),onWindowManagerReady);
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return var_191;
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(var_68 != null)
         {
            var_68.tellUI(param1,param2);
         }
      }
      
      private function toggleHelpUI() : void
      {
         if(var_68 == null)
         {
            if(!createHelpUI())
            {
               return;
            }
         }
         var_68.toggleUI();
      }
      
      private function removeTutorialUI() : void
      {
         if(var_150 != null)
         {
            var_150.dispose();
            var_150 = null;
         }
      }
      
      public function get ownUserName() : String
      {
         return var_1954;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         var_1312.reportedUserId = param1;
         var_1312.reportedUserName = param2;
         var_68.showUI(HabboHelpViewEnum.const_293);
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return var_1550;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_91:
               if(var_68 != null)
               {
                  var_68.setRoomSessionStatus(true);
               }
               if(var_150 != null)
               {
                  var_150.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_99:
               if(var_68 != null)
               {
                  var_68.setRoomSessionStatus(false);
               }
               if(var_150 != null)
               {
                  var_150.setRoomSessionStatus(false);
               }
               userRegistry.unregisterRoom();
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(var_68 != null)
         {
            var_68.updateCallForGuideBotUI(true);
         }
      }
      
      public function get userRegistry() : UserRegistry
      {
         return var_2210;
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(var_68 != null)
         {
            var_68.showCallForHelpResult(param1);
         }
      }
      
      override public function dispose() : void
      {
         if(var_68 != null)
         {
            var_68.dispose();
            var_68 = null;
         }
         if(var_150 != null)
         {
            var_150.dispose();
            var_150 = null;
         }
         var_1429 = null;
         if(var_888 != null)
         {
            var_888.dispose();
            var_888 = null;
         }
         if(_windowManager)
         {
            _windowManager.release(new IIDHabboWindowManager());
            _windowManager = null;
         }
         super.dispose();
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(var_191 != null)
         {
            var_191.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_116,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function createTutorialUI() : Boolean
      {
         if(var_150 == null && _assetLibrary != null && _windowManager != null)
         {
            var_150 = new TutorialUI(this);
         }
         return var_150 != null;
      }
      
      private function createHelpUI() : Boolean
      {
         if(var_68 == null && _assetLibrary != null && _windowManager != null)
         {
            var_68 = new HelpUI(this,_assetLibrary,_windowManager,var_1550,var_191);
         }
         return var_68 != null;
      }
      
      public function set ownUserName(param1:String) : void
      {
         var_1954 = param1;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return var_1312;
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         _windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),onCommunicationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_1550 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),onConfigurationManagerReady);
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            removeTutorialUI();
            return;
         }
         if(var_150 == null)
         {
            if(!createTutorialUI())
            {
               return;
            }
         }
         var_150.update(param1,param2,param3);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_586 = IHabboCommunicationManager(param2);
         var_1429 = new IncomingMessages(this,var_586);
         queueInterface(new IIDHabboToolbar(),onToolbarReady);
      }
      
      public function showUI(param1:String = null) : void
      {
         if(var_68 != null)
         {
            var_68.showUI(param1);
         }
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(var_586 != null && param1 != null)
         {
            var_586.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return var_888;
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(var_68 != null)
         {
            var_68.updateCallForGuideBotUI(false);
         }
      }
      
      public function hideUI() : void
      {
         if(var_68 != null)
         {
            var_68.hideUI();
         }
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_191 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),onLocalizationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_1549 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),onRoomSessionManagerReady);
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return var_150;
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_82)
         {
            setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_62)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               toggleHelpUI();
               return;
            }
         }
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_91,onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_99,onRoomSessionEvent);
         var_191.events.addEventListener(HabboToolbarEvent.const_82,onHabboToolbarEvent);
         var_191.events.addEventListener(HabboToolbarEvent.const_62,onHabboToolbarEvent);
         createHelpUI();
         setHabboToolbarIcon();
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(var_68 != null)
         {
            var_68.showCallForHelpReply(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(var_1549 == null)
         {
            return param1;
         }
         return var_1549.getKey(param1,param2,param3);
      }
   }
}
