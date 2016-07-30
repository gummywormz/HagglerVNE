package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
using flixel.util.FlxSpriteUtil;
import flixel.util.FlxDestroyUtil;

import io.github.gummywormz.hagglerVNE.event.ChoicesEvent;
import io.github.gummywormz.hagglerVNE.event.SoundEvent;
import io.github.gummywormz.hagglerVNE.util.Choices;
import io.github.gummywormz.hagglerVNE.util.Dialogue;


/**
 * Sample state
 */
class PlayState extends FlxState
{
	
	static inline var DELAY = 40; //how many frames to wait after something / dialogue
	var _count = 39; //internal delay counter. do not modify
	var _convo = 0; //conversation number always start at 0
	var _dialog : Dialogue; //current dialogue box so we can destroy it later
	var _bg : FlxSprite; // background
	var _dc : DialogueController;
	var _ec : EventController;
	var _waitingChoices = false; //if we are waiting on choices or another blocking event
	var _md : FlxSprite; //stores a sprite
	var _md2 : FlxSprite; //stores a sprite
	var _forked = false; //if the dialogue forked or not
	var _choices : Choices; //stores choices so we can destroy it later
	
	override public function create():Void
	{
		super.create();
		FlxG.camera.fade(FlxColor.BLACK, .33, true);
		_bg = new FlxSprite(0, 0, AssetPaths.bg1__png);
		add(_bg);
		_dc = new DialogueController(1);
		_ec = new EventController(1);
		
		_dialog = _dc.next();
		if(_dialog != null)
		{
			_dialog.show(this);
			_convo++;
			_count = DELAY;
		}
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if ( _count > 0 ) //count down the delay
		{
			_count--;
		}
		else
		{
			if (_waitingChoices)
				{
					var id = _choices.getClicked();//This is called every frame. The choices go in order from 0 on.
					//-1 if nothing is selected
					if (id == 0)
					{
						_dc = new DialogueController(2);
						_forked = true;
						_waitingChoices = false;
						_choices.destroy();
						_convo = 0; //reset the conversation since we are loading a new set
						_dialog = _dc.next();//go to next dialogue
						if(_dialog != null)
						{
							_dialog.show(this);
							_convo++;
							_count = DELAY;
						}
					}
					else if (id == 1)
					{
						_dc = new DialogueController(3);
						_waitingChoices = false;
						_choices.destroy();
						_convo = 0; //reset the conversation since we are loading a new set
						_dialog = _dc.next();
						if(_dialog != null)
						{
							_dialog.show(this);
							_convo++;
							_count = DELAY;
						}
					}
					return;
				}
			var k = FlxG.keys.anyPressed(["ENTER"]);//key to move forward

			if(k)
			{
				
				
				checkGfx();
				var ev = _ec.next(_convo);

				

				if(Std.is(ev,SoundEvent)) //if the event is a sound event, execute it
				{
					ev.exec();
					_dialog.destroy();
					if(ev.getBlocking()){_count = 120;}
				}
				
				else if (Std.is(ev, ChoicesEvent))
				{
					_choices = ev.getResult();
					
					_dialog.destroy();
					_choices.show(this);
					_waitingChoices = true;
				}
				
				else{
				if(_dialog != null)
				{
					_dialog.destroy();
				}
				_dialog = _dc.next();
				if(_dialog != null)
				{
					_dialog.show(this);
					_convo++;
					_count = DELAY;
				}else
				{
					//FlxG.sound.music.stop();
					FlxG.camera.fade(FlxColor.BLACK, 1, false, function() { FlxG.switchState(new PlayState()); } );
				}
				}

			}
		}
		
	}
	
	/**
	 * Method for updating graphics and such
	 */
	private function checkGfx()
	{
		if (_convo == 1)
		{
			_md2 = new FlxSprite((FlxG.width / 3.0) -128, FlxG.height / 3.0, AssetPaths.char__png);
			add(_md2);
		}
		
		if (_convo == 2 )
		{
			_md = new FlxSprite((FlxG.width / 3.0) + 128, FlxG.height / 3.0, AssetPaths.char2__png);
			add(_md);
		}
		
	}
}
