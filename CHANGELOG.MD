# Change log:

## 1.2.0:
Added the ability to specify FlxTextFormats on dialogue boxes. This allows for finer control of text such as changing only a certain word a different color.

Added DialogueOption. This allows you to specify common Dialogue constructor parameters such as location or size. This can be set globally, but you still need to manually call Dialogue.fromGDialogueOption. 

## 1.1.0:
Add the ability to format text in dialogue boxes either individually or globally.
Made IDs for choices use bind instead of overriding FlxButton

## 1.0.1:
Fixed a bug preventing the creation of CustomEvents
