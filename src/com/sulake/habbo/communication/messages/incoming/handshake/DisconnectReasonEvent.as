package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1263:String = "DisconnectReasonPeerConnectionLost";
      
      public static const const_856:String = "DisconnectReasonTimeout";
      
      public static const const_503:String = "DisconnectReasonDisconnected";
      
      public static const const_295:String = "DisconnectReasonBanned";
      
      public static const const_976:String = "DisconnectReasonLoggedOut";
      
      public static const const_913:String = "DisconnectReasonConcurrentLogin";
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : String
      {
         var _loc1_:int = (this.var_21 as DisconnectReasonParser).reason;
         switch(_loc1_)
         {
            case -1:
               return const_503;
            case 0:
               return const_503;
            case 1:
               return const_976;
            case 1009:
            case 2:
               return const_913;
            case 3:
               return const_856;
            case 4:
               return const_1263;
            default:
               return const_503;
         }
      }
   }
}
