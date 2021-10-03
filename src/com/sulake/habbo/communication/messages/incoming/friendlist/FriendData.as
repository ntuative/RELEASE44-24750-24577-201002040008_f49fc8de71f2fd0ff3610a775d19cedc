package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_532:String;
      
      private var var_1151:String;
      
      private var var_1153:String;
      
      private var var_1140:int;
      
      private var _gender:int;
      
      private var var_1152:String;
      
      private var _name:String;
      
      private var var_1149:Boolean;
      
      private var var_632:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this._gender = param1.readInteger();
         this.var_632 = param1.readBoolean();
         this.var_1149 = param1.readBoolean();
         this.var_532 = param1.readString();
         this.var_1140 = param1.readInteger();
         this.var_1153 = param1.readString();
         this.var_1151 = param1.readString();
         this.var_1152 = param1.readString();
      }
      
      public function get gender() : int
      {
         return _gender;
      }
      
      public function get realName() : String
      {
         return var_1152;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1153;
      }
      
      public function get categoryId() : int
      {
         return var_1140;
      }
      
      public function get online() : Boolean
      {
         return var_632;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1149;
      }
      
      public function get lastAccess() : String
      {
         return var_1151;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_532;
      }
   }
}
