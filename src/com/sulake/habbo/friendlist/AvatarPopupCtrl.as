package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   
   public class AvatarPopupCtrl extends PopupCtrl
   {
       
      
      private var var_1151:String;
      
      private var var_1384:String;
      
      private var var_1152:String;
      
      private var var_1716:String;
      
      private var var_632:Boolean;
      
      private var var_1715:String;
      
      public function AvatarPopupCtrl(param1:HabboFriendList)
      {
         super(param1,5,-5,"avatar_popup");
      }
      
      public function setData(param1:Boolean, param2:String, param3:String, param4:String, param5:String, param6:String = "") : void
      {
         var_632 = param1;
         var_1384 = param2;
         var_1716 = param3;
         var_1715 = param4;
         var_1151 = param5;
         var_1152 = param6;
      }
      
      override public function refreshContent(param1:IWindowContainer) : void
      {
         Util.hideChildren(param1);
         if(var_1152 != "")
         {
            friendList.refreshText(param1,"name_text_online",var_632,var_1152);
         }
         else
         {
            friendList.refreshText(param1,"name_text_online",var_632,var_1384);
         }
         friendList.refreshText(param1,"name_text_offline",!var_632,var_1384);
         friendList.refreshText(param1,"motto_text",var_632,var_1716);
         friendList.refreshButton(param1,"offline",!var_632,null,0);
         if(var_632)
         {
            refreshFigure(param1,var_1715);
            param1.findChildByName("online_text").visible = true;
         }
         else
         {
            param1.findChildByName("last_access_text").visible = true;
            friendList.registerParameter("friendlist.avatarpopup.lastaccess","last_access",var_1151 == null ? "" : var_1151);
         }
         param1.height = Util.getLowestPoint(param1) + 10;
      }
      
      private function refreshFigure(param1:IWindowContainer, param2:String) : void
      {
         var _loc3_:IBitmapWrapperWindow = param1.getChildByName(HabboFriendList.const_173) as IBitmapWrapperWindow;
         if(param2 == null || param2 == "")
         {
            _loc3_.visible = false;
         }
         else
         {
            _loc3_.bitmap = friendList.getAvatarFaceBitmap(param2);
            _loc3_.width = _loc3_.bitmap.width;
            _loc3_.height = _loc3_.bitmap.height;
            _loc3_.visible = true;
         }
      }
   }
}
