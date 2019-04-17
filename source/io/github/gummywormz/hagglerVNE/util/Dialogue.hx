
package io.github.gummywormz.hagglerVNE.util ;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

import io.github.gummywormz.hagglerVNE.options.TextFormatOption;
import io.github.gummywormz.hagglerVNE.options.GlobalOptions;

/**
 * Character dialogue boxes
 * @author Paul Alves
 */
class Dialogue extends FlxSprite
{

	var _bgColor : Int;
	var _textColor : Int;
	var _width : Int;
	var _height : Int;
	var _mug : FlxSprite;
	var _x : Float;
	var _y : Float;
	var _graphic : FlxSprite;

	var _curText : FlxText;
	var _showMug = true;
	var _msg : String;
	var _format : TextFormatOption;

	/**
	 * @param X The x position of the dialogue
	 * @param Y The Y position of the dialogue
	 * @param w The width of the dialogue box
	 * @param h The height of the dialogue box
	 * @param bcolor The background of the dialogue box (use FlxColor)
	 * @param tcolor The text color of the dialogue box (use FlxColor)
	 * @param mug The mug shot to use of the dialogue box (optional)
	 * @param graphic The graphic to use instead of colors
	 */
	public function new(X:Float=0, Y:Float=0, w:Int, h:Int, bcolor : Int, tcolor : Int, ?mug : FlxSprite, ?msg : String,?graphic : FlxSprite) 
    {
        super(X, Y);
        _x = X;
        _y = Y;
        _bgColor = bcolor;
        _textColor = tcolor;

        _mug = mug;

        _width = w;
        _height = h;
        _msg = msg;
		_graphic = graphic;
        //makeGraphic(w,h,bcolor);
    }

	/**
	 * Shows this text
	 * @param f The state to show the dialogue on
	 * @param text The text to display (if not specified the text from setText will be used)
	 */

    public function show(f : FlxState, ?text : String)
    {
		if (_graphic != null)
		{
			f.add(_graphic);
		}
		else{
    	makeGraphic(_width,_height,_bgColor);
    	f.add(this);}
    	if(_mug != null)
    	{
    		f.add(_mug);
    	}

    	var t;
    	if(text == null)
    	{
    		t = _msg;
    	}
    	else{t = text;}

    	_curText = new FlxText(_x + 92, _y + 32, 0.0, t, 12);
		
	
		if (_format != null)
		{
			_curText = applyFormat(_curText, _format);
		}
		else if (GlobalOptions.textFormat != null)
		{
			_curText = applyFormat(_curText,GlobalOptions.textFormat);
		}
		_curText.color = _textColor;
    	f.add(_curText);
    }
	
	/**
	 * Removes the dialogue box
	 */
    public override function destroy()
    {
    	super.destroy();
    	if(_mug != null)
    	{
    		_mug.destroy();
    	}

    	if(_curText != null)
    	{
    		_curText.destroy();
    	}
		
		if(_graphic != null)
		{
			_graphic.destroy();
		}
    }

	/**
	 * Hides the mug shot
	 */
    public function hideMugShot()
    {
    	_showMug = false;
    }

	/**
	 * Shows the mugshot
	 */
    public function showMugShot()
    {
    	_showMug = true;
    }

	/**
	 * Toggles the mugshot
	 * @return The current state of the mugshot showing as a boolean
	 */
    public function toggleMugShot()
    {
    	return _showMug = !_showMug;
    }

	/**
	 * Sets the text to display in this dialogue box. Useful for managing conversations
	 * @param	t The test to display.
	 */
    public function setText(t : String)
    {
    	_msg = t;
    }
	
	/**
	 * Use a graphic instead of colors
	 * @param	g The graphic to use. Pass null to switch back to colors.
	 */
	public function setGraphic(g : FlxSprite)
	{
		_graphic = g;
	}
	
	/**
	   Sets the TextFormat of the text to be displayed.
	   @param	t TextFormatOption
	**/
	public function setTextFormat(t : TextFormatOption)
	{
		_format = t;
	}
	
	function applyFormat(t : FlxText, o:TextFormatOption) : FlxText
	{
		return t.setFormat(o.get_font(),o.get_size(),o.get_textColor(),o.get_align(),o.get_borderStyle(),o.get_borderColor(),o.get_embedded());
	}

}