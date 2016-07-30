package io.github.gummywormz.hagglerVNE.event;

import flixel.FlxG;

/**
 * Event that plays a sound
 * @author Paul Alves
 */
class SoundEvent extends Event
{

	var _sound : Dynamic;
	
	/**
	 * Creates a new event
	 * @param	when When this event happens
	 * @param	blocking Whether this event blocks dialogue
	 * @param	sound The sound to play
	 */
	public function new(when:Int, blocking:Bool,sound) 
	{
		super(when, blocking);
		_sound = sound;
	}
	
	/**
	 * Sets the sound to play
	 * @param	snd The sound to play
	 */
	public function setSound(snd : Dynamic)
	{
		_sound = snd;
	}
	
	/**
	 * Returns the sound to play
	 * @return the sound to play
	 */
	public function getSound() { return _sound; }
	
	/**
	 * Plays this sound
	 */
	override public function exec()
	{
		FlxG.sound.play(_sound);
	}
	
}