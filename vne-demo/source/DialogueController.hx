import flixel.util.FlxColor;
import flixel.FlxSprite;
import io.github.gummywormz.hagglerVNE.util.Dialogue;


/**
 * Sample dialogue controller. 
 * Edit this file to add your own dialogue.
 * Also see the EventController as these two are tied together
 * @author Paul Alves
 */
class DialogueController
{
	var _diaList : List<Dialogue>;

	//Forks in dialogue are handled by having different cases here and resetting _convo
	//such that case 11 is day 1 choice 1 etc etc
	public function new(day : Int)
	{
		//leave this part alone
		_diaList = new List<Dialogue>();
		
		/**
		 * This is where you add your dialogue. 
		 * The idea is the parameter you pass in gives you a different dialogue set.
		 * This can be used to separate different chapters, and choice paths. 
		 * You should have separate controllers per chapter so it's not in 1 giant class
		 */
		switch (day)
		{
			case 1://You can add a graphic here too.
					_diaList.add(new Dialogue(0, 370, 900, 270, FlxColor.GRAY, FlxColor.WHITE, gM1(), "Welcome to the Haggler Visual Novel Engine!"/*,new FlxSprite(0,380,AssetPaths.dialogue__png)*/));
					_diaList.add(new Dialogue(0, 370, 900, 270, FlxColor.GRAY, FlxColor.WHITE, gM1(), "You can make your own visual novels in haxeflixel."));
					_diaList.add(new Dialogue(0, 370, 900, 270, FlxColor.GRAY, FlxColor.WHITE, gM2(), "You can add choices."));
					
			case 2:
				_diaList.add(new Dialogue(0, 370, 900, 270, FlxColor.GRAY, FlxColor.WHITE, gM2(), "Like the first one you picked"));
				_diaList.add(new Dialogue(0, 370, 900, 270, FlxColor.GRAY, FlxColor.WHITE, gM2(), "Or sounds like this one"));
				_diaList.add(new Dialogue(0, 370, 900, 270, FlxColor.GRAY, FlxColor.WHITE, gM1(), "The rest of the engine is tied to the HaxeFlixel engine,\nso you can do whatever else you want!"));
				
			case 3:
				_diaList.add(new Dialogue(0, 370, 900, 270, FlxColor.GRAY, FlxColor.WHITE, gM2(), "Like the second one you picked"));
				_diaList.add(new Dialogue(0, 370, 900, 270, FlxColor.GRAY, FlxColor.WHITE, gM2(), "Or sounds like this one"));
				_diaList.add(new Dialogue(0, 370, 900, 270, FlxColor.GRAY, FlxColor.WHITE, gM1(), "The rest of the engine is tied to the HaxeFlixel engine,\nso you can do whatever else you want!"));
				}

	}

	/**
	 * Generates the first character's mug shot
	 * You should make one for each mug shot for simplicity
	 */
	private function gM1()
	{
		return new FlxSprite(32,400,AssetPaths.mug_char1__png);
	}
	
	/**
	 * Generates the second character's mug shot
	 * You should make one for each mug shot for simplicity
	 */
	private function gM2()
	{
		return new FlxSprite(32,400,AssetPaths.mug_char2__png);
	}

	/**
	 * Gets the next available dialogue
	 * @return the next dialogue, or null if there is none left.
	 */
	public function next()
	{
		return _diaList.pop();
	}

}