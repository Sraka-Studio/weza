package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.effects.FlxFlicker;
import lime.app.Application;
import flixel.addons.transition.FlxTransitionableState;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;

class FlashingState extends MusicBeatState
{
	var warnText:FlxText;

	public static var leftState:Bool = false;

	override function create()
	{
		super.create();

		var sciana:BGSprite = new BGSprite('weza/sciana', -300, -455);
		sciana.setGraphicSize(Std.int(sciana.width * 1.3));
		add(sciana);

		var podloga:BGSprite = new BGSprite('weza/podloga', -33, 74);
		podloga.setGraphicSize(Std.int(podloga.width * 1.3));
		add(podloga);

		var idk:BGSprite = new BGSprite('weza/idk', 100, -42);
		idk.setGraphicSize(Std.int(idk.width * 1.3));
		add(idk);

		warnText = new FlxText(0, 0, FlxG.width,
			"Siema Eniu!\n
			Ten mod zawiera w dialogach wulgaryzm!\n
			Kliknij ENTER jesli zrozumiales ta wazna wiadomosc.\n
			Baw sie dobrze!",
			32);
		warnText.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		warnText.screenCenter(Y);
		add(warnText);
	}

	override function update(elapsed:Float)
	{
		if(!leftState) {
			if (controls.ACCEPT) {
				leftState = true;

				FlxTransitionableState.skipNextTransIn = true;
				FlxTransitionableState.skipNextTransOut = true;
			
				FlxG.camera.flash(FlxColor.WHITE, 2);

		        var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		        add(bg);

				FlxG.sound.play(Paths.sound('confirmMenu'));
				FlxFlicker.flicker(warnText, 1, 0.1, false, true, function(flk:FlxFlicker) {
					new FlxTimer().start(0.5, function (tmr:FlxTimer) {
						MusicBeatState.switchState(new TitleState());
					});
				});
			}
		}
		super.update(elapsed);
	}
}
