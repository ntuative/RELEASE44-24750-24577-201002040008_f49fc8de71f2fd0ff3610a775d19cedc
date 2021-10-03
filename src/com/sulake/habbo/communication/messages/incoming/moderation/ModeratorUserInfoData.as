package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2227:int;
      
      private var var_2228:int;
      
      private var var_2226:int;
      
      private var _userName:String;
      
      private var var_2231:int;
      
      private var var_2229:int;
      
      private var var_2230:int;
      
      private var _userId:int;
      
      private var var_632:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2229 = param1.readInteger();
         var_2231 = param1.readInteger();
         var_632 = param1.readBoolean();
         var_2226 = param1.readInteger();
         var_2228 = param1.readInteger();
         var_2227 = param1.readInteger();
         var_2230 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2230;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_632;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2231;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2228;
      }
      
      public function get cautionCount() : int
      {
         return var_2227;
      }
      
      public function get cfhCount() : int
      {
         return var_2226;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2229;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
