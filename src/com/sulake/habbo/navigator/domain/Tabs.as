package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_551:int = 6;
      
      public static const const_199:int = 5;
      
      public static const const_670:int = 2;
      
      public static const const_292:int = 9;
      
      public static const const_297:int = 4;
      
      public static const const_237:int = 2;
      
      public static const const_516:int = 4;
      
      public static const const_203:int = 8;
      
      public static const const_616:int = 7;
      
      public static const const_241:int = 3;
      
      public static const const_312:int = 1;
      
      public static const const_208:int = 5;
      
      public static const const_346:int = 12;
      
      public static const const_281:int = 1;
      
      public static const const_607:int = 11;
      
      public static const const_579:int = 3;
      
      public static const const_1582:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_401:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_401 = new Array();
         var_401.push(new Tab(_navigator,const_312,const_346,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_431));
         var_401.push(new Tab(_navigator,const_237,const_281,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_431));
         var_401.push(new Tab(_navigator,const_297,const_607,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_896));
         var_401.push(new Tab(_navigator,const_241,const_199,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_431));
         var_401.push(new Tab(_navigator,const_208,const_203,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_569));
         setSelectedTab(const_312);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_401)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_401)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_401)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_297;
      }
      
      public function get tabs() : Array
      {
         return var_401;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
