package io.github.gummywormz.hagglerVNE.options ;
import flixel.FlxSprite;


/**
   A Class to set common dialogue options
**/
class DialogueOption
{
	public var x : Float;
	public var y : Float;
	
	public var width : Int;
	public var height : Int;
	public var bcolor : Int;
	public var format : TextFormatOption;
	public var graphic : FlxSprite;
	
	/**
	   Constructs a new dialogue option object
	   @param	pX X position of the dialogue box
	   @param	pY Y position of the dialogue box
	   @param	pWidth width of the dialogue box
	   @param	pHeight height of the dialogue box
	   @param	pbColor background color of the dialogue box
	   @param	pformat format of the dialogue box
	   @param   pGraphic A graphic to use for this dialogue box instead of a color
	**/
	public function new (pX:Float, pY:Float, pWidth:Int, pHeight:Int, pbColor : Int, ?pformat : TextFormatOption,?pGraphic:FlxSprite)
	{
		x = pX;
		y = pY;
		width = pWidth;
		height = pHeight;
		bcolor = pbColor;
		format = pformat;
		graphic = pGraphic;
	}
}