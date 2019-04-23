package io.github.gummywormz.hagglerVNE.util ;

import flixel.text.FlxText;
/**
   A class that wraps the FlxTextFormat method calls.
**/
class FlxTextFormatWrapper
{
	/**
	   The starting character for the formatting, 0 indexed,
	**/
	public var startChar : Int;
	/**
	   The ending character for the formatting
	**/
	public var endChar : Int;
	/**
	   The format itself
	**/
	public var format : FlxTextFormat;
}