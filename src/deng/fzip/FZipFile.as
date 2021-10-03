package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_702:int = 8;
      
      public static const const_1574:int = 10;
      
      public static const const_1242:int = 6;
      
      private static var var_1036:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1316:int = 0;
      
      public static const const_1552:int = 1;
      
      public static const const_1478:int = 2;
      
      public static const const_1421:int = 3;
      
      public static const const_1555:int = 4;
      
      public static const const_1484:int = 5;
      
      public static const const_1503:int = 9;
      
      public static const const_1422:int = 7;
       
      
      private var var_183:uint = 0;
      
      private var var_1037:uint = 0;
      
      private var var_703:Date;
      
      private var var_2113:int = -1;
      
      private var parseFunc:Function;
      
      private var var_501:Boolean = false;
      
      private var var_2300:int = -1;
      
      private var var_1280:uint = 0;
      
      private var var_2111:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_875:uint;
      
      private var var_35:ByteArray;
      
      private var var_704:uint;
      
      private var var_1517:Boolean = false;
      
      private var var_2301:int = -1;
      
      private var var_1516:String = "2.0";
      
      private var var_184:Boolean = false;
      
      private var var_2112:Boolean = false;
      
      private var var_353:String;
      
      private var var_588:uint = 0;
      
      private var var_1281:int = 0;
      
      private var var_417:String = "";
      
      private var var_705:int = 8;
      
      private var var_1515:Boolean = false;
      
      public function FZipFile(param1:String = "utf-8")
      {
         parseFunc = parseFileHead;
         super();
         var_353 = param1;
         _extraFields = new Dictionary();
         var_35 = new ByteArray();
         var_35.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_588;
      }
      
      public function set filename(param1:String) : void
      {
         var_417 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_184 && false)
         {
            var_35.position = 0;
            if(var_1036)
            {
               var_35.uncompress.apply(var_35,["deflate"]);
            }
            else
            {
               var_35.uncompress();
            }
            var_35.position = 0;
            var_184 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_417;
      }
      
      public function get date() : Date
      {
         return var_703;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && parseFunc(param1))
         {
         }
         return parseFunc === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1515)
         {
            parseFunc = parseFileIdle;
            throw new Error("Data descriptors are not supported.");
         }
         if(var_183 == 0)
         {
            parseFunc = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_183)
            {
               return false;
            }
            parseContent(param1);
            parseFunc = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1516;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_184)
         {
            uncompress();
         }
         var_35.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_35.readUTFBytes(var_35.bytesAvailable);
         }
         else
         {
            _loc3_ = var_35.readMultiByte(var_35.bytesAvailable,param2);
         }
         var_35.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_705 === const_702 && !var_1517)
         {
            if(var_1036)
            {
               param1.readBytes(var_35,0,var_183);
            }
            else
            {
               if(!var_501)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               var_35.writeByte(120);
               _loc2_ = uint(~var_2113 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_35.writeByte(_loc2_);
               param1.readBytes(var_35,2,var_183);
               var_35.position = var_35.length;
               var_35.writeUnsignedInt(var_875);
            }
            var_184 = true;
         }
         else
         {
            if(var_705 != const_1316)
            {
               throw new Error("Compression method " + var_705 + " is not supported.");
            }
            param1.readBytes(var_35,0,var_183);
            var_184 = false;
         }
         var_35.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_1037 + var_1280 > 0)
            {
               parseFunc = parseFileHeadExt;
            }
            else
            {
               parseFunc = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_35.length = 0;
         var_35.position = 0;
         var_184 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_35.writeUTFBytes(param1);
            }
            else
            {
               var_35.writeMultiByte(param1,param2);
            }
            var_704 = ChecksumUtil.CRC32(var_35);
            var_501 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_703 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1281 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1281 << 8 | 20);
         param1.writeShort(var_353 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_702);
         var _loc5_:Date = var_703 != null ? var_703 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_704);
         param1.writeUnsignedInt(var_183);
         param1.writeUnsignedInt(var_588);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_353 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_417);
         }
         else
         {
            _loc8_.writeMultiByte(var_417,var_353);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_501)
            {
               _loc16_ = var_184;
               if(_loc16_)
               {
                  uncompress();
               }
               var_875 = ChecksumUtil.Adler32(var_35,0,var_35.length);
               var_501 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_875);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_353 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_2111);
            }
            else
            {
               _loc8_.writeMultiByte(var_2111,var_353);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_183 > 0)
         {
            if(var_1036)
            {
               _loc13_ = 0;
               param1.writeBytes(var_35,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_35,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_183;
      }
      
      protected function compress() : void
      {
         if(!var_184)
         {
            if(false)
            {
               var_35.position = 0;
               var_588 = var_35.length;
               if(var_1036)
               {
                  var_35.compress.apply(var_35,["deflate"]);
                  var_183 = var_35.length;
               }
               else
               {
                  var_35.compress();
                  var_183 = -6;
               }
               var_35.position = 0;
               var_184 = true;
            }
            else
            {
               var_183 = 0;
               var_588 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_1037 + var_1280)
         {
            parseHeadExt(param1);
            parseFunc = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_353 == "utf-8")
         {
            var_417 = param1.readUTFBytes(var_1037);
         }
         else
         {
            var_417 = param1.readMultiByte(var_1037,var_353);
         }
         var _loc2_:uint = var_1280;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               throw new Error("Parse error in file " + var_417 + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_875 = param1.readUnsignedInt();
               var_501 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1281 = _loc2_ >> 8;
         var_1516 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_705 = param1.readUnsignedShort();
         var_1517 = (_loc3_ & 1) !== 0;
         var_1515 = (_loc3_ & 8) !== 0;
         var_2112 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_353 = "utf-8";
         }
         if(var_705 === const_1242)
         {
            var_2301 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2300 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_705 === const_702)
         {
            var_2113 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_703 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_704 = param1.readUnsignedInt();
         var_183 = param1.readUnsignedInt();
         var_588 = param1.readUnsignedInt();
         var_1037 = param1.readUnsignedShort();
         var_1280 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_35,0,param1.length);
            var_704 = ChecksumUtil.CRC32(var_35);
            var_501 = false;
         }
         else
         {
            var_35.length = 0;
            var_35.position = 0;
            var_184 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_417 + "\n  date:" + var_703 + "\n  sizeCompressed:" + var_183 + "\n  sizeUncompressed:" + var_588 + "\n  versionHost:" + var_1281 + "\n  versionNumber:" + var_1516 + "\n  compressionMethod:" + var_705 + "\n  encrypted:" + var_1517 + "\n  hasDataDescriptor:" + var_1515 + "\n  hasCompressedPatchedData:" + var_2112 + "\n  filenameEncoding:" + var_353 + "\n  crc32:" + var_704.toString(16) + "\n  adler32:" + var_875.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_184)
         {
            uncompress();
         }
         return var_35;
      }
   }
}
