package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1182:Sound = null;
      
      private var var_462:SoundChannel = null;
      
      private var var_981:Number;
      
      private var _complete:Boolean;
      
      public function HabboSound(param1:Sound)
      {
         super();
         this.var_1182 = param1;
         this.var_1182.addEventListener(Event.COMPLETE,this.onComplete);
         this.var_981 = 1;
         this._complete = false;
      }
      
      public function play(param1:Number = 0.0) : Boolean
      {
         this._complete = false;
         this.var_462 = this.var_1182.play(0);
         this.volume = this.var_981;
         return true;
      }
      
      public function stop() : Boolean
      {
         this.var_462.stop();
         return true;
      }
      
      public function get volume() : Number
      {
         return this.var_981;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_981 = param1;
         if(this.var_462 != null)
         {
            this.var_462.soundTransform = new SoundTransform(this.var_981);
         }
      }
      
      public function get position() : Number
      {
         return this.var_462.position;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get length() : Number
      {
         return this.var_1182.length;
      }
      
      public function get ready() : Boolean
      {
         return !this.var_1182.isBuffering;
      }
      
      public function get finished() : Boolean
      {
         return !this._complete;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return 0;
      }
      
      public function set fadeOutSeconds(param1:Number) : void
      {
      }
      
      public function get fadeInSeconds() : Number
      {
         return 0;
      }
      
      public function set fadeInSeconds(param1:Number) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this._complete = true;
      }
   }
}
