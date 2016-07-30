package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;

class MenuState extends FlxState
{
	
	var start : FlxButton;
	var title : FlxText;
	
	override public function create():Void
	{
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		start = new FlxButton(0,0,"New Game",startGame);
		
		add(start);
		start.screenCenter();
		title = new FlxText(start.getPosition().x - 250,start.getPosition().y - 50,0,"Haggler Visual Novel Engine Demo",28);
		add(title);
	}
	
	public function startGame()
	{
		FlxG.switchState(new PlayState());
	}
}
