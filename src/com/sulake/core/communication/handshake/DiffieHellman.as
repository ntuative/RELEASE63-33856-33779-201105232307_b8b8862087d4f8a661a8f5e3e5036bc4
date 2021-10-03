package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_885:BigInteger;
      
      private var var_2334:BigInteger;
      
      private var var_1725:BigInteger;
      
      private var var_2333:BigInteger;
      
      private var var_1431:BigInteger;
      
      private var var_1726:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1431 = param1;
         this.var_1726 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1431.toString() + ",generator: " + this.var_1726.toString() + ",secret: " + param1);
         this.var_885 = new BigInteger();
         this.var_885.fromRadix(param1,param2);
         this.var_2334 = this.var_1726.modPow(this.var_885,this.var_1431);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1725 = new BigInteger();
         this.var_1725.fromRadix(param1,param2);
         this.var_2333 = this.var_1725.modPow(this.var_885,this.var_1431);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2334.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2333.toRadix(param1);
      }
   }
}
