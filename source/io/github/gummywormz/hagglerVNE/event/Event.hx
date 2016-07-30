package io.github.gummywormz.hagglerVNE.event;

/**
 * Base class for an event
 * @author Paul Alves
 */
class Event
{

	var _when : Int;
	var _blocking : Bool;
	
	/**
	 * Creates a new event
	 * @param	when When to activate the event
	 * @param	blocking Whether the event will block dialogue or not.
	 */
	public function new(when : Int, blocking : Bool) 
	{
		_when = when;
		_blocking = blocking;
	}
	
	/**
	 * Gets whether the event blocks dialogue
	 */
	public function getBlocking() { return _blocking; }
	
	/**
	 * Gets when the event activates
	 */
	public function getWhen() { return _when; }
	
	/**
	 * Sets whether the event blocks dialogue
	 * @param	b True or False
	 */
	public function setBlocking(b : Bool) { _blocking = b; }
	
	/**
	 * Sets when the event activates
	 * @param	w when the event activates
	 */
	public function setWhen(w : Int) { _when = w; }

	/**
	 * Executes the event. Only applies to SoundEvents and CustomEvents
	 */
	public function exec() { }
	
	/**
	 * Returns a result. Only applies to ChoicesEvents
	 * @return null in this case
	 */
	public function getResult() : Dynamic { return null; }
	
}