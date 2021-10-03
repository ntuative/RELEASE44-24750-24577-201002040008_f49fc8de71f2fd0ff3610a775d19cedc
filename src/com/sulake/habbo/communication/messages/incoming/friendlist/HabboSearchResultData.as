package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2266:Boolean;
      
      private var var_2265:int;
      
      private var var_2263:Boolean;
      
      private var var_1384:String;
      
      private var var_1152:String;
      
      private var var_1617:int;
      
      private var var_1716:String;
      
      private var var_2264:String;
      
      private var var_1715:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1617 = param1.readInteger();
         this.var_1384 = param1.readString();
         this.var_1716 = param1.readString();
         this.var_2266 = param1.readBoolean();
         this.var_2263 = param1.readBoolean();
         param1.readString();
         this.var_2265 = param1.readInteger();
         this.var_1715 = param1.readString();
         this.var_2264 = param1.readString();
         this.var_1152 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1152;
      }
      
      public function get avatarName() : String
      {
         return this.var_1384;
      }
      
      public function get avatarId() : int
      {
         return this.var_1617;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2266;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2264;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1715;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2263;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1716;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2265;
      }
   }
}
