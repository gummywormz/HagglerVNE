package io.github.gummywormz.hagglerVNE.event;

/**
 * A custom event (unused)
 * @author Paul Alves
 */
class CustomEvent extends Event
{

var _func : Void -> Void;

/**
 * Creates a new event
 * @param	when When the event happens
 * @param	blocking Whether this event blocks dialogue
 * @param	func The function to execute
 */
public function new (when : Int, blocking : Bool, func : Void->Void)
{
    super(when,blocking);
    _func = func;
}

/**
 * Executes this event
 */
override public function exec()
{
    _func();
}

}