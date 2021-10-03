package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2086:int = 0;
      
      public static const const_1753:int = 1;
      
      public static const const_1805:int = 2;
      
      public static const const_2113:int = 3;
      
      public static const const_2024:int = 4;
      
      public static const const_2000:int = 5;
      
      public static const const_1717:int = 10;
      
      public static const const_2150:int = 11;
      
      public static const const_2022:int = 12;
      
      public static const const_2015:int = 13;
      
      public static const const_2009:int = 16;
      
      public static const const_2166:int = 17;
      
      public static const const_2157:int = 18;
      
      public static const const_2141:int = 19;
      
      public static const const_1985:int = 20;
      
      public static const const_2080:int = 22;
      
      public static const const_2068:int = 23;
      
      public static const const_1998:int = 24;
      
      public static const const_2036:int = 25;
      
      public static const const_2192:int = 26;
      
      public static const const_2154:int = 27;
      
      public static const const_2072:int = 28;
      
      public static const const_2019:int = 29;
      
      public static const const_2097:int = 100;
      
      public static const const_2043:int = 101;
      
      public static const const_2144:int = 102;
      
      public static const const_2076:int = 103;
      
      public static const const_2194:int = 104;
      
      public static const const_2089:int = 105;
      
      public static const const_2125:int = 106;
      
      public static const const_2118:int = 107;
      
      public static const const_2170:int = 108;
      
      public static const const_2191:int = 109;
      
      public static const const_2075:int = 110;
      
      public static const const_2181:int = 111;
      
      public static const const_2184:int = 112;
      
      public static const const_2167:int = 113;
      
      public static const const_2180:int = 114;
      
      public static const const_2139:int = 115;
      
      public static const const_2069:int = 116;
      
      public static const const_2100:int = 117;
      
      public static const const_2185:int = 118;
      
      public static const const_2047:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1753:
            case const_1717:
               return "banned";
            case const_1805:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
