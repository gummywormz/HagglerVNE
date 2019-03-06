package io.github.gummywormz.hagglerVNE.util;
import flixel.FlxState;

import flixel.FlxG;
import flixel.ui.FlxButton;

using io.github.gummywormz.hagglerVNE.util.misc;

/**
 * Represents a collection of buttons that the user can pick from
 * @author Paul Alves
 */
class Choices
{
	var _texts : List<String>;
	var _btns : List<FlxButton>;
	var _idOfPressed = -1;

	/**
	 * Creates a new list of choices
	 */
	public function new()
	{
		_texts = new List<String>();
		_btns = new List<FlxButton>();
	}

	/**
	 * Adds the choice
	 * @param	text The message to put on the button
	 */
	public function addChoice(text : String)
	{
		_texts.add(text);
	}

	/**
	 * Shows the buttons on the screen
	 * @param	s The state to show the buttons on
	 */
	public function show(s : FlxState)
	{
		var counter = FlxG.height / 3.5;
		var counter2 = 0;

		for (t in _texts)
		{
			var btn = new FlxButton(FlxG.width / 2.0, counter, _texts.listGet(counter2));
			btn.ID = counter2;
			btn.onDown.callback = onClicked.bind(btn.ID);
			_btns.add(btn);
			s.add(btn);
			counter2++;
			counter+=30;
		}
	}

	private function onClicked(id:Int)
	{
		_idOfPressed = id;
	}

	/**
	 * Returns the id of the button selected. 
	 * This corresponds to the order of when the choices were added,
	 * starting with 0. For example, the first choice is id 0
	 * @return the id of the button selected, -1 if nothing was picked yet.
	 */
	public function getClicked()
	{
		return _idOfPressed;
	}
	
	/**
	 * Removes all choices / buttons
	 */
	public function destroy()
	{
		for (b in _btns)
		{
			b.destroy();
		}
	}

}