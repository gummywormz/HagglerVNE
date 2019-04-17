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
	@:isVar var font(get, set) : String;
	@:isVar var size(get, set) : Int;
	@:isVar var textColor(get, set) : FlxColor;
	@:isVar var align(get, set) : FlxTextAlign;
	@:isVar var borderStyle(get, set) : FlxTextBorderStyle;
	@:isVar var borderColor(get, set) :FlxColor;
	@:isVar var embedded(get, set) : Bool;

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
	
	public function get_embedded():Bool 
	{
		return embedded;
	}
	
	public function set_embedded(value:Bool):Bool 
	{
		return embedded = value;
	}
	

	
	public function get_borderStyle():FlxTextBorderStyle 
	{
		return borderStyle;
	}
	
	public function set_borderStyle(value:FlxTextBorderStyle):FlxTextBorderStyle 
	{
		return borderStyle = value;
	}
	
	public function get_align():FlxTextAlign 
	{
		return align;
	}
	
	public function set_align(value:FlxTextAlign):FlxTextAlign 
	{
		return align = value;
	}
	
	public function get_borderColor():FlxColor 
	{
		return borderColor;
	}
	
	public function set_borderColor(value:FlxColor):FlxColor 
	{
		return borderColor = value;
	}
	
	public function get_textColor():FlxColor 
	{
		return textColor;
	}
	
	public function set_textColor(value:FlxColor):FlxColor 
	{
		return textColor = value;
	}
	
	public function get_size():Int 
	{
		return size;
	}
	
	public function set_size(value:Int):Int 
	{
		return size = value;
	}
	
	public function get_font():String 
	{
		return font;
	}
	
	public function set_font(value:String):String 
	{
		return font = value;
	}

}