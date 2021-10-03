package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1446:BigInteger;
      
      private var var_999:BigInteger;
      
      private var var_1872:BigInteger;
      
      private var var_1445:BigInteger;
      
      private var var_1870:BigInteger;
      
      private var var_1871:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1446 = param1;
         var_1872 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1870.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1445 = new BigInteger();
         var_1445.fromRadix(param1,param2);
         var_1870 = var_1445.modPow(var_999,var_1446);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1871.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_999 = new BigInteger();
         var_999.fromRadix(param1,param2);
         var_1871 = var_1872.modPow(var_999,var_1446);
         return true;
      }
   }
}
