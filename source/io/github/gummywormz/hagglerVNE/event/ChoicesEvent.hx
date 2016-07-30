package io.github.gummywormz.hagglerVNE.event;

import io.github.gummywormz.hagglerVNE.util.Choices;

/**
 * An event that displays choices
 * @author Paul Alves
 */
class ChoicesEvent extends Event
{

	var _choices : Choices;
	
	/**
	 * Creates a new choices event
	 * @param	when When this event occurs
	 * @param	blocking Whether this event blocks dialogue (unused)
	 * @param	choices The choices to add
	 */
	public function new(when:Int, blocking:Bool,choices : Choices) 
	{
		super(when, blocking);
		_choices = choices;
	}
	
	/**
	 * Returns the choices object
	 * @return the choices object
	 */
	override public function getResult() { return _choices; }
	
}