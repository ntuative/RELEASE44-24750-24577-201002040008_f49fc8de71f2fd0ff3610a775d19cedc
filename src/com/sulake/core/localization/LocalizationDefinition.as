package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1362:String;
      
      private var var_898:String;
      
      private var var_1361:String;
      
      private var var_1363:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1363 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1362 = _loc5_[0];
         var_1361 = _loc5_[1];
         _name = param2;
         var_898 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1362;
      }
      
      public function get languageCode() : String
      {
         return var_1363;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_898;
      }
      
      public function get encoding() : String
      {
         return var_1361;
      }
      
      public function get id() : String
      {
         return var_1363 + "_" + var_1362 + "." + var_1361;
      }
   }
}
