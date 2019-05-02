package io.github.gummywormz.hagglerVNE.options ;

/**
   This class holds global options used by default by the game engine
   This is used primarily to cover very common options like the default text color.
**/
class GlobalOptions
{
	/**
	   The default TextFormatOption. This gets applied to all dialogues by default unless one is manually added to the dialogue.
	**/
	public static var textFormat : TextFormatOption;
	/**
	   Global dialogue option. Referenced by Dialogue.fromGDialogueOption. Does not apply on its own.
	**/
	public static var dialogueOption : DialogueOption;
	
}