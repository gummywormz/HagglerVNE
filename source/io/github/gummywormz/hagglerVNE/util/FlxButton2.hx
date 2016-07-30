package io.github.gummywormz.hagglerVNE.util;

import flixel.ui.FlxButton;
import flixel.FlxG;
import flash.events.MouseEvent;
import openfl.display.BitmapData;

import flixel.math.FlxPoint;

/**
 * Adds an id to the buttons for dynamic button shenanigans
 * Solution based on http://forums.flixel.org/index.php?topic=2975.0
 * @author Paul Alves
 */

class FlxButton2 extends FlxButton
{
	
	//TODO: Hovering is broken??
	
	var _id : Int;
	var _function : Int->Void;

	/**
	 * Creates a new FlxButton object with a gray background
	 * and a callback function on the UI thread.
	 * 
	 * @param	X				The X position of the button.
	 * @param	Y				The Y position of the button.
	 * @param	Text			The text that you want to appear on the button.
	 * @param	OnClick			The function to call whenever the button is clicked. Must take a single int as the parameter
	 * @param   id              The ID of the button.
	 */
	public function new(X:Float = 0, Y:Float = 0, ?Text:String, OnClick:Int->Void,id:Int)
	{
		super(X, Y, Text,dummy);
		_id = id;
		_function = OnClick;
	}
	
	/**
	 * Gets the button's id
	 * @return the button's id
	 */
	public function getId()
	{
		return _id;
	}

	/**
	 * Sets the button's id
	 * @param	id The id to set
	 */
	public function setId(id : Int)
	{
		_id = id;
	}
	
	/**
	 * Does nothing. Used as a hack to satisfy super class requirements.
	 */
	public function dummy() { }

	/**
	 * Destroys this button
	 */
	public override function destroy()
	{
		super.destroy();
		_id = -1;
		_function = null;
	}

	/**
	 * Executes the function specified in the constructor
	 * @param	event Does nothing as far as I know (security workaround?).
	 */
	override function onUpEventListener(event:MouseEvent)
		{
			if(!exists || !visible || !active || !FlxG.mouse.justReleased || (_function == null)) return;
			if (overlapsPoint(new FlxPoint(FlxG.mouse.x, FlxG.mouse.y))) 
			{
				_function(_id);
			}
		}


}