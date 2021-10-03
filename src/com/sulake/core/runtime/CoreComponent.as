package com.sulake.core.runtime
{
   import com.sulake.core.Core;
   import com.sulake.core.assets.AssetLibraryCollection;
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.core.utils.LibraryLoader;
   import com.sulake.core.utils.LibraryLoaderEvent;
   import com.sulake.core.utils.profiler.ProfilerViewer;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   
   public final class CoreComponent extends ComponentContext implements ICore
   {
      
      private static const const_130:uint = 3;
      
      private static const const_1107:String = "library";
      
      public static const const_1264:int = 6;
      
      private static const const_1111:String = "library";
      
      public static const const_1123:int = 99;
      
      private static const const_1108:String = "library";
      
      private static const const_1112:String = "zip-libraries";
      
      public static const const_1309:int = 7;
      
      public static const const_946:int = 1;
      
      public static const const_1225:int = 10;
      
      public static const const_1202:int = 2;
      
      private static const const_1110:String = "library";
      
      private static const const_1113:String = "asset-libraries";
      
      public static const const_1145:int = 5;
      
      public static const const_1255:int = 20;
      
      public static const const_708:int = 30;
      
      public static const const_672:int = 4;
      
      public static const const_1283:int = 3;
      
      private static const const_1106:String = "service-libraries";
      
      private static const const_1109:String = "component-libraries";
       
      
      private var var_589:Number = 0;
      
      private var var_115:ICoreConfigStatusListener;
      
      private var var_275:uint;
      
      private var var_277:Array;
      
      private var var_276:uint;
      
      private var var_127:DisplayObjectContainer;
      
      private var var_877:Profiler;
      
      private var var_274:Array;
      
      private var var_237:Array;
      
      private var var_502:Array;
      
      private var var_590:Array;
      
      private var var_273:Array;
      
      private var var_706:ProfilerViewer;
      
      public function CoreComponent(param1:DisplayObjectContainer, param2:uint)
      {
         super(this,Component.COMPONENT_FLAG_CONTEXT,new AssetLibraryCollection("_core_assets"));
         var_1341 = (param2 & 0) != 0;
         var_502 = new Array();
         var_590 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < CoreComponent.const_130)
         {
            var_502.push(new Array());
            var_590.push(0);
            _loc3_++;
         }
         var_275 = getTimer();
         attachComponent(this,[new IIDCore()]);
         var_127 = param1;
         switch(param2 & 0)
         {
            case Core.const_1337:
               debug("Core; using simple frame update handler");
               var_127.addEventListener(Event.ENTER_FRAME,simpleFrameUpdateHandler);
               break;
            case Core.const_792:
               debug("Core; using complex frame update handler");
               var_127.addEventListener(Event.ENTER_FRAME,complexFrameUpdateHandler);
               break;
            case Core.const_1159:
               debug("Core; using profiler frame update handler");
               var_127.addEventListener(Event.ENTER_FRAME,profilerFrameUpdateHandler);
               var_877 = new Profiler(this);
               attachComponent(var_877,[new IIDProfiler()]);
               var_706 = new ProfilerViewer();
               var_127.addChild(var_706);
               break;
            case Core.CORE_SETUP_DEBUG:
               debug("Core; using debug frame update handler");
               var_127.addEventListener(Event.ENTER_FRAME,debugFrameUpdateHandler);
         }
      }
      
      override public function removeUpdateReceiver(param1:ICoreUpdateReceiver) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         while(_loc4_ < CoreComponent.const_130)
         {
            _loc3_ = var_502[_loc4_] as Array;
            _loc2_ = _loc3_.indexOf(param1);
            if(_loc2_ > -1)
            {
               _loc3_[_loc2_] = null;
               return;
            }
            _loc4_++;
         }
      }
      
      public function getLastErrorMessage() : String
      {
         return var_900;
      }
      
      override public function error(param1:String, param2:Boolean, param3:int = -1, param4:Error = null) : void
      {
         if(param2)
         {
            if(param4 != null)
            {
               ErrorReportStorage.setParameter("error_data",String(param4.getStackTrace()));
            }
            ErrorReportStorage.setParameter("error_cat",String(param3));
            ErrorReportStorage.setParameter("error_desc",param1);
         }
         super.error(param1,param2,param3);
         if(param2)
         {
            dispose();
         }
      }
      
      private function debugFrameUpdateHandler(param1:Event) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = 0;
         var _loc8_:int = 0;
         var _loc2_:uint = getTimer();
         var _loc3_:uint = _loc2_ - var_275;
         var_275 = _loc2_;
         _loc4_ = 0;
         while(_loc4_ < CoreComponent.const_130)
         {
            var_590[_loc4_] = 0;
            _loc5_ = var_502[_loc4_];
            _loc8_ = 0;
            _loc7_ = uint(_loc5_.length);
            while(_loc8_ != _loc7_)
            {
               _loc6_ = ICoreUpdateReceiver(_loc5_[_loc8_]);
               if(_loc6_ == null || _loc6_.disposed)
               {
                  _loc5_.splice(_loc8_,1);
                  _loc7_--;
               }
               else
               {
                  _loc6_.update(_loc3_);
                  _loc8_++;
               }
            }
            _loc4_++;
         }
      }
      
      public function initialize() : void
      {
         _events.dispatchEvent(new Event(Component.COMPONENT_EVENT_RUNNING));
         Logger.log(toXMLString());
      }
      
      private function updateConfigStatusListener() : void
      {
         var _loc1_:* = NaN;
         if(var_115)
         {
            _loc1_ = NaN;
            if(var_589 > 0)
            {
               _loc1_ += var_589 + var_237.length - 1;
            }
            else
            {
               _loc1_ += var_237.length;
            }
            var_115.percent = (Number(var_276) - _loc1_) / Number(var_276);
         }
      }
      
      private function profilerFrameUpdateHandler(param1:Event) : void
      {
         var criticality:uint = 0;
         var receivers:Array = null;
         var receiver:ICoreUpdateReceiver = null;
         var length:uint = 0;
         var index:uint = 0;
         var event:Event = param1;
         var msCurrentTime:uint = getTimer();
         var msSinceLastUpdate:uint = msCurrentTime - var_275;
         var_275 = msCurrentTime;
         var_877.start();
         criticality = 0;
         while(criticality < CoreComponent.const_130)
         {
            var_590[criticality] = 0;
            receivers = var_502[criticality];
            index = 0;
            length = receivers.length;
            while(index != length)
            {
               receiver = ICoreUpdateReceiver(receivers[index]);
               if(receiver == null || receiver.disposed)
               {
                  receivers.splice(index,1);
                  length--;
               }
               else
               {
                  try
                  {
                     var_877.update(receiver,msSinceLastUpdate);
                  }
                  catch(e:Error)
                  {
                     error("Error in update receiver \"" + getQualifiedClassName(receiver) + "\": " + e.message,true,e.errorID,e);
                     return;
                  }
                  index++;
               }
            }
            criticality++;
         }
         var_877.stop();
         var_706.refresh(var_877);
      }
      
      private function complexFrameUpdateHandler(param1:Event) : void
      {
         var criticality:uint = 0;
         var receivers:Array = null;
         var receiver:ICoreUpdateReceiver = null;
         var length:uint = 0;
         var index:uint = 0;
         var skip:Boolean = false;
         var t:uint = 0;
         var event:Event = param1;
         var msCurrentTime:uint = getTimer();
         var msSinceLastUpdate:uint = msCurrentTime - var_275;
         var maxTimePerFrame:uint = 1000 / DisplayObject(var_127).stage.frameRate;
         var_275 = msCurrentTime;
         criticality = 0;
         while(criticality < CoreComponent.const_130)
         {
            t = getTimer();
            skip = false;
            if(t - msCurrentTime > maxTimePerFrame)
            {
               if(var_590[criticality] < criticality)
               {
                  ++0;
                  skip = true;
               }
            }
            if(!skip)
            {
               var_590[criticality] = 0;
               receivers = var_502[criticality];
               index = 0;
               length = receivers.length;
               while(index != length)
               {
                  receiver = ICoreUpdateReceiver(receivers[index]);
                  if(receiver == null || receiver.disposed)
                  {
                     receivers.splice(index,1);
                     length--;
                  }
                  else
                  {
                     try
                     {
                        receiver.update(msSinceLastUpdate);
                     }
                     catch(e:Error)
                     {
                        trace(e.getStackTrace());
                        error("Error in update receiver \"" + getQualifiedClassName(receiver) + "\": " + e.message,true,e.errorID,e);
                        return;
                     }
                     index++;
                  }
               }
            }
            criticality++;
         }
      }
      
      private function simpleFrameUpdateHandler(param1:Event) : void
      {
         var criticality:uint = 0;
         var receivers:Array = null;
         var receiver:ICoreUpdateReceiver = null;
         var length:uint = 0;
         var index:uint = 0;
         var event:Event = param1;
         var msCurrentTime:uint = getTimer();
         var msSinceLastUpdate:uint = msCurrentTime - var_275;
         var_275 = msCurrentTime;
         criticality = 0;
         while(criticality < CoreComponent.const_130)
         {
            var_590[criticality] = 0;
            receivers = var_502[criticality];
            index = 0;
            length = receivers.length;
            while(index != length)
            {
               receiver = ICoreUpdateReceiver(receivers[index]);
               if(receiver == null || receiver.disposed)
               {
                  receivers.splice(index,1);
                  length--;
               }
               else
               {
                  try
                  {
                     receiver.update(msSinceLastUpdate);
                  }
                  catch(e:Error)
                  {
                     trace(e.getStackTrace());
                     error("Error in update receiver \"" + getQualifiedClassName(receiver) + "\": " + e.message,true,e.errorID,e);
                     return;
                  }
                  index++;
               }
            }
            criticality++;
         }
      }
      
      public function loadExternalConfigDocument(param1:URLRequest, param2:ICoreConfigStatusListener = null) : void
      {
         if(var_115)
         {
            if(var_115 != param2)
            {
               var_115.dispose();
            }
         }
         if(param2)
         {
            var_115 = param2;
         }
         var _loc3_:AssetLoaderStruct = _assets.loadAssetFromFile("config.xml",param1);
         debug("Loading config document \"" + _loc3_.assetLoader.url + "\"");
         _loc3_.addEventListener(AssetLoaderEvent.const_31,configLoadedHandler);
         _loc3_.addEventListener(AssetLoaderEvent.const_43,configLoadedHandler);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         if(!disposed)
         {
            debug("Disposing core");
            var_127.removeEventListener(Event.ENTER_FRAME,simpleFrameUpdateHandler);
            var_127.removeEventListener(Event.ENTER_FRAME,complexFrameUpdateHandler);
            var_127.removeEventListener(Event.ENTER_FRAME,profilerFrameUpdateHandler);
            var_127 = null;
            _loc3_ = 0;
            while(_loc3_ < CoreComponent.const_130)
            {
               _loc2_ = var_502[_loc3_] as Array;
               _loc1_ = uint(_loc2_.length);
               while(_loc1_-- > 0)
               {
                  _loc2_.pop();
               }
               _loc3_++;
            }
            if(var_237 != null)
            {
               _loc1_ = 0;
               while(_loc1_-- > 0)
               {
                  var_237.pop();
               }
            }
            if(var_273 != null)
            {
               _loc1_ = 0;
               while(_loc1_-- > 0)
               {
                  var_273.pop();
               }
            }
            if(var_277 != null)
            {
               _loc1_ = 0;
               while(_loc1_-- > 0)
               {
                  var_277.pop();
               }
            }
            if(var_274 != null)
            {
               _loc1_ = 0;
               while(_loc1_-- > 0)
               {
                  var_274.pop();
               }
            }
            if(var_706 != null)
            {
               var_706.dispose();
               var_706 = null;
            }
            if(var_115)
            {
               var_115.dispose();
               var_115 = null;
            }
            super.dispose();
         }
      }
      
      public function readConfigDocument(param1:XML, param2:ICoreConfigStatusListener = null) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(var_115)
         {
            if(var_115 != param2)
            {
               var_115.dispose();
            }
         }
         if(param2)
         {
            var_115 = param2;
         }
         debug("Parsing config document");
         if(var_237 == null)
         {
            var_237 = new Array();
         }
         _loc3_ = param1.child(const_1112)[0];
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.child(const_1107);
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = _loc5_.attribute("url").toString();
               var_237.push(_loc6_);
               ++var_276;
            }
         }
         if(var_273 == null)
         {
            var_273 = new Array();
         }
         _loc3_ = param1.child(const_1113)[0];
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.child(const_1111);
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = _loc5_.attribute("url").toString();
               var_273.push(_loc6_);
               ++var_276;
            }
         }
         if(var_277 == null)
         {
            var_277 = new Array();
         }
         _loc3_ = param1.child(const_1106)[0];
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.child(const_1110);
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = _loc5_.attribute("url").toString();
               var_277.push(_loc6_);
               ++var_276;
            }
         }
         if(var_274 == null)
         {
            var_274 = new Array();
         }
         _loc3_ = param1.child(const_1109)[0];
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.child(const_1108);
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = _loc5_.attribute("url").toString();
               var_274.push(_loc6_);
               ++var_276;
            }
         }
         if(var_115)
         {
            var_115.percent = 0;
         }
         updateLoadingProcess();
      }
      
      private function updateLoadingProcess(param1:LibraryLoaderEvent = null) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param1 != null)
         {
            if(param1.type == LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE || param1.type == LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR)
            {
               _loc2_ = param1.target as LibraryLoader;
               _loc2_.removeEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,updateLoadingProcess);
               _loc2_.removeEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,errorInLoadingProcess);
               _loc2_.removeEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,updateArchiveLoadingItemProgress);
               _loc3_ = _loc2_.url;
               debug("Loading library \"" + _loc3_ + "\" " + (param1.type == LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE ? "ready" : "failed\n" + _loc2_.getLastErrorMessage()));
               if(false)
               {
                  if(var_237[0] == _loc3_)
                  {
                     var_589 = 0;
                     var_237.splice(0,1);
                  }
               }
               if(false)
               {
                  if(var_273[0] == _loc3_)
                  {
                     var_273.splice(0,1);
                  }
               }
               if(false)
               {
                  if(var_277[0] == _loc3_)
                  {
                     var_277.splice(0,1);
                  }
               }
               if(false)
               {
                  if(var_274[0] == _loc3_)
                  {
                     var_274.splice(0,1);
                  }
               }
            }
         }
         if(false)
         {
            _loc3_ = "null";
            _loc2_ = _assets.loadFromArchive(new URLRequest(_loc3_),null);
            if(_loc2_.ready)
            {
               var_237.splice(0,1);
               updateLoadingProcess();
            }
            else
            {
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,updateLoadingProcess);
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,errorInLoadingProcess);
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,updateArchiveLoadingItemProgress);
               debug("Loading zip library " + _loc3_);
            }
            updateConfigStatusListener();
            return;
         }
         if(false)
         {
            _loc3_ = "null";
            _loc4_ = new LoaderContext(false,new ApplicationDomain());
            _loc2_ = _assets.loadFromFile(new URLRequest(_loc3_),true,_loc4_);
            if(_loc2_.ready)
            {
               var_273.splice(0,1);
               updateLoadingProcess();
            }
            else
            {
               var_589 = 1;
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,updateLoadingProcess);
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,errorInLoadingProcess);
               debug("Loading asset library " + _loc3_);
            }
            updateConfigStatusListener();
            return;
         }
         if(false)
         {
            _loc3_ = "null";
            _loc2_ = loadFromFile(new URLRequest(_loc3_),new LoaderContext(false,ApplicationDomain.currentDomain,null));
            if(_loc2_.ready)
            {
               var_277.splice(0,1);
               updateLoadingProcess();
            }
            else
            {
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,updateLoadingProcess);
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,errorInLoadingProcess);
               debug("Loading service library " + _loc3_);
            }
            updateConfigStatusListener();
            return;
         }
         if(false)
         {
            _loc3_ = "null";
            _loc2_ = loadFromFile(new URLRequest(_loc3_),new LoaderContext(false,ApplicationDomain.currentDomain,null));
            if(_loc2_.ready)
            {
               var_274.splice(0,1);
               updateLoadingProcess();
            }
            else
            {
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,updateLoadingProcess);
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,errorInLoadingProcess);
               debug("Loading component library " + _loc3_);
            }
            updateConfigStatusListener();
            return;
         }
         if(var_115)
         {
            var_115.complete();
         }
         debug("All libraries loaded, Core is now running");
      }
      
      private function errorInLoadingProcess(param1:LibraryLoaderEvent = null) : void
      {
         var _loc2_:LibraryLoader = LibraryLoader(param1.target);
         error("Failed to download library \"" + _loc2_.url + "\" HTTP status " + param1.status + ": " + _loc2_.getLastErrorMessage(),true,const_1202);
         updateLoadingProcess(param1);
      }
      
      private function updateArchiveLoadingItemProgress(param1:LibraryLoaderEvent) : void
      {
         var _loc2_:LibraryLoader = param1.target as LibraryLoader;
         var_589 = 1 - _loc2_.bytesLoaded / _loc2_.bytesTotal;
         if(var_589 > 0)
         {
            updateConfigStatusListener();
         }
      }
      
      public function getLastDebugMessage() : String
      {
         return var_2233;
      }
      
      override public function registerUpdateReceiver(param1:ICoreUpdateReceiver, param2:uint) : void
      {
         removeUpdateReceiver(param1);
         param2 = param2 >= CoreComponent.const_130 ? 4294967295 : uint(param2);
         var _loc3_:Array = var_502[param2] as Array;
         _loc3_.push(param1);
      }
      
      private function configLoadedHandler(param1:AssetLoaderEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         _loc2_ = param1.target as AssetLoaderStruct;
         _loc2_.removeEventListener(AssetLoaderEvent.const_31,configLoadedHandler);
         _loc2_.removeEventListener(AssetLoaderEvent.const_43,configLoadedHandler);
         if(param1.type == AssetLoaderEvent.const_31)
         {
            debug("Config document \"" + _loc2_.assetLoader.url + "\" loaded");
            _loc3_ = _assets.getAssetByName(_loc2_.assetName) as XmlAsset;
            _loc4_ = _loc3_.content as XML;
            readConfigDocument(_loc4_,var_115);
         }
         else
         {
            error("Failed to download external configuration document " + _loc2_.assetLoader.url + "!",true,const_946);
            _events.dispatchEvent(new Event(Component.COMPONENT_EVENT_ERROR));
         }
      }
      
      public function get root() : DisplayObjectContainer
      {
         return var_127;
      }
   }
}
