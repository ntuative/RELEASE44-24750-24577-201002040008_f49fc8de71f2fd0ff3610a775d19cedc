package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_931:SoundChannel = null;
      
      private var var_752:Boolean;
      
      private var var_930:Sound = null;
      
      private var var_711:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_930 = param1;
         var_930.addEventListener(Event.COMPLETE,onComplete);
         var_711 = 1;
         var_752 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_752;
      }
      
      public function stop() : Boolean
      {
         var_931.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_752 = false;
         var_931 = var_930.play(0);
         this.volume = var_711;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_711;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_931.position;
      }
      
      public function get length() : Number
      {
         return var_930.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_711 = param1;
         if(var_931 != null)
         {
            var_931.soundTransform = new SoundTransform(var_711);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_752 = true;
      }
   }
}
