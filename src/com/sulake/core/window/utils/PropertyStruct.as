package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_584:String = "Rectangle";
      
      public static const const_54:String = "Boolean";
      
      public static const const_719:String = "Number";
      
      public static const const_61:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_691:String = "Point";
      
      public static const const_908:String = "Array";
      
      public static const const_835:String = "uint";
      
      public static const const_455:String = "hex";
      
      public static const const_832:String = "Map";
       
      
      private var var_555:String;
      
      private var var_175:Object;
      
      private var var_2276:Boolean;
      
      private var _type:String;
      
      private var var_1827:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_555 = param1;
         var_175 = param2;
         _type = param3;
         var_1827 = param4;
         var_2276 = param3 == const_832 || param3 == const_908 || param3 == const_691 || param3 == const_584;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_455:
               return "0x" + uint(var_175).toString(16);
            case const_54:
               return Boolean(var_175) == true ? "true" : "HabboRoomWidgetLib_memenu_fx_pause";
            case const_691:
               return "Point(" + Point(var_175).x + ", " + Point(var_175).y + ")";
            case const_584:
               return "Rectangle(" + Rectangle(var_175).x + ", " + Rectangle(var_175).y + ", " + Rectangle(var_175).width + ", " + Rectangle(var_175).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_832:
               _loc3_ = var_175 as Map;
               _loc1_ = "<var key=\"" + var_555 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_908:
               _loc4_ = var_175 as Array;
               _loc1_ = "<var key=\"" + var_555 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_691:
               _loc5_ = var_175 as Point;
               _loc1_ = "<var key=\"" + var_555 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_61 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_61 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_584:
               _loc6_ = var_175 as Rectangle;
               _loc1_ = "<var key=\"" + var_555 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_61 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_61 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_61 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_61 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_455:
               _loc1_ = "<var key=\"" + var_555 + "\" value=\"" + "0x" + uint(var_175).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_555 + "\" value=\"" + var_175 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_175;
      }
      
      public function get valid() : Boolean
      {
         return var_1827;
      }
      
      public function get key() : String
      {
         return var_555;
      }
   }
}
