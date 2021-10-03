package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_532:String;
      
      private var var_2261:String;
      
      private var var_2260:int;
      
      private var var_2259:int;
      
      private var var_1320:String;
      
      private var var_1152:String;
      
      private var _name:String;
      
      private var var_444:int;
      
      private var var_763:int;
      
      private var var_2262:int;
      
      private var _respectTotal:int;
      
      private var var_2258:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2259;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1152;
      }
      
      public function get customData() : String
      {
         return this.var_2261;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_444;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2260;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2258;
      }
      
      public function get figure() : String
      {
         return this.var_532;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_1320;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_532 = param1.readString();
         this.var_1320 = param1.readString();
         this.var_2261 = param1.readString();
         this.var_1152 = param1.readString();
         this.var_2262 = param1.readInteger();
         this.var_2258 = param1.readString();
         this.var_2260 = param1.readInteger();
         this.var_2259 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_763 = param1.readInteger();
         this.var_444 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2262;
      }
      
      public function get respectLeft() : int
      {
         return this.var_763;
      }
   }
}
