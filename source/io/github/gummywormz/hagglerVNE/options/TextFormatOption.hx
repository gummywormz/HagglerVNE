package io.github.gummywormz.hagglerVNE.options ;
import flixel.text.FlxText.FlxTextAlign;
import flixel.text.FlxText.FlxTextBorderStyle;
import flixel.util.FlxColor;

/**
   Class to format the text of a dialogue box.
   See flixel.text.flxtext.setformat for more info
**/
class TextFormatOption
{
	//setFormat(?Font:String, Size:Int = 8, Color:FlxColor = FlxColor.WHITE, ?Alignment:FlxTextAlign, ?BorderStyle:FlxTextBorderStyle, BorderColor:FlxColor = FlxColor.TRANSPARENT, EmbeddedFont:Bool = true)
	var font(get, set) : String;
	var size(get, set) : Int;
	var textColor(get, set) : FlxColor;
	var align(get, set) : FlxTextAlign;
	var borderStyle(get, set) : FlxTextBorderStyle;
	var borderColor(get, set) :FlxColor;
	var embedded(get, set) : Bool;

	public function new(?Font:String, Size:Int = 8, Color:FlxColor = FlxColor.WHITE, ?Alignment:FlxTextAlign, ?BorderStyle:FlxTextBorderStyle, BorderColor:FlxColor = FlxColor.TRANSPARENT, EmbeddedFont:Bool = true)
	{
		font = Font;
		size = Size;
		textColor = Color;
		align = Alignment;
		borderStyle = BorderStyle;
		borderColor = BorderColor;
		embedded = EmbeddedFont;
	}
	
	function get_embedded():Bool 
	{
		return embedded;
	}
	
	function set_embedded(value:Bool):Bool 
	{
		return embedded = value;
	}
	
	function get_borderColor(): 
	{
		return borderColor;
	}
	

	
	function get_borderStyle():FlxTextBorderStyle 
	{
		return borderStyle;
	}
	
	function set_borderStyle(value:FlxTextBorderStyle):FlxTextBorderStyle 
	{
		return borderStyle = value;
	}
	
	function get_align():FlxTextAlign 
	{
		return align;
	}
	
	function set_align(value:FlxTextAlign):FlxTextAlign 
	{
		return align = value;
	}
	
	function get_borderColor():FlxColor 
	{
		return borderColor;
	}
	
	function set_borderColor(value:FlxColor):FlxColor 
	{
		return borderColor = value;
	}
	
	function get_textColor():FlxColor 
	{
		return textColor;
	}
	
	function set_textColor(value:FlxColor):FlxColor 
	{
		return textColor = value;
	}
	
	function get_size():Int 
	{
		return size;
	}
	
	function set_size(value:Int):Int 
	{
		return size = value;
	}
	
	function get_font():String 
	{
		return font;
	}
	
	function set_font(value:String):String 
	{
		return font = value;
	}

}