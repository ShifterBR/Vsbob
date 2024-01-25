package;

import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState

//import flixel.*; removido por falta de necessidade lol
//goodEnding does't exist
//add melhor em funcao unica, var melhor se for usar mais coisas

/**
 * ...
 * i took this code from pompom im sorry
 */
class CantRunState extends FlxState
{
	override public function create():Void 
	{
		super.create();

		FlxG.sound.playMusic(Paths.music("youcantrun"), 1, false);
		
		add(new FlxSprite(0, 0, Paths.image('bob/cantruncantrunfartplss', 'shared')));
		
		FlxG.camera.fade(FlxColor.BLACK, 0.8, true);
	
		new FlxTimer().start(24, endIt);
		
	}
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
		
	}
	
	
	public function endIt(e:FlxTimer=null){
		trace("ENDING");
		FlxG.switchState(new PlayState());
	}
	
}
