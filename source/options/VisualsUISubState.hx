package options;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

using StringTools;

class VisualsUISubState extends BaseOptionsMenu
{
	public function new()
	{
		title = LanguageData.visualsUi[ClientPrefs.langNo];
		rpcTitle = 'Visuals & UI Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option(LanguageData.noteSplashes[ClientPrefs.langNo],
			LanguageData.noteSplashesDesc[ClientPrefs.langNo],
			'noteSplashes',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option(LanguageData.hideHud[ClientPrefs.langNo],
			LanguageData.hideHudDesc[ClientPrefs.langNo],
			'hideHud',
			'bool',
			false);
		addOption(option);
		
		var option:Option = new Option(LanguageData.timeBarType[ClientPrefs.langNo],
			LanguageData.timeBarTypeDesc[ClientPrefs.langNo],
			'timeBarType',
			'string',
			LanguageData.timeBarTypeList[ClientPrefs.langNo][ClientPrefs.timeBarTypeCurSelected],
			LanguageData.timeBarTypeList[ClientPrefs.langNo]);
		addOption(option);
		option.onChange = changeTimeBarType;

		var option:Option = new Option(LanguageData.flashing[ClientPrefs.langNo],
			LanguageData.flashingDesc[ClientPrefs.langNo],
			'flashing',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option(LanguageData.camZooms[ClientPrefs.langNo],
			LanguageData.camZoomsDesc[ClientPrefs.langNo],
			'camZooms',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option(LanguageData.scoreZoom[ClientPrefs.langNo],
			LanguageData.scoreZoomDesc[ClientPrefs.langNo],
			'scoreZoom',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option(LanguageData.healthBarAlpha[ClientPrefs.langNo],
			LanguageData.healthBarAlphaDesc[ClientPrefs.langNo],
			'healthBarAlpha',
			'percent',
			1);
		option.scrollSpeed = 1.6;
		option.minValue = 0.0;
		option.maxValue = 1;
		option.changeValue = 0.1;
		option.decimals = 1;
		addOption(option);

		#if !mobile
		var option:Option = new Option(LanguageData.showFPS[ClientPrefs.langNo],
			LanguageData.showFPSDesc[ClientPrefs.langNo],
			'showFPS',
			'bool',
			true);
		addOption(option);
		option.onChange = onChangeFPSCounter;
		#end

		var option:Option = new Option(LanguageData.pauseSong[ClientPrefs.langNo],
			LanguageData.pauseSongDesc[ClientPrefs.langNo],
			'pauseMusic',
			'string',
			'Tea Time',
			['None', 'Breakfast', 'Tea Time']);
		addOption(option);
		option.onChange = onChangePauseMusic;
		
		#if CHECK_FOR_UPDATES
		var option:Option = new Option(LanguageData.checkForUpdates[ClientPrefs.langNo],
			LanguageData.checkForUpdatesDesc[ClientPrefs.langNo],
			'checkForUpdates',
			'bool',
			true);
		addOption(option);
		#end

		super();
	}

	function changeTimeBarType()
	{
		var lol:Int = 0;
		if(controls.UI_LEFT_P) {
			lol = -1;
		}
		if (controls.UI_RIGHT_P) {
			lol = 1;
		}
		ClientPrefs.timeBarTypeCurSelected += lol;
		if (ClientPrefs.timeBarTypeCurSelected >= LanguageData.timeBarTypeList[ClientPrefs.langNo].length) 
		{
			ClientPrefs.timeBarTypeCurSelected = 0;
		}
		if (ClientPrefs.timeBarTypeCurSelected < 0)
		{
			ClientPrefs.timeBarTypeCurSelected = LanguageData.timeBarTypeList[ClientPrefs.langNo].length - 1;
		}

		ClientPrefs.timeBarType = LanguageData.timeBarTypeList[ClientPrefs.langNo][ClientPrefs.timeBarTypeCurSelected];
	}

	var changedMusic:Bool = false;
	function onChangePauseMusic()
	{
		if(ClientPrefs.pauseMusic == 'None')
			FlxG.sound.music.volume = 0;
		else
			FlxG.sound.playMusic(Paths.music(Paths.formatToSongPath(ClientPrefs.pauseMusic)));

		changedMusic = true;
	}

	override function destroy()
	{
		if(changedMusic) FlxG.sound.playMusic(Paths.music('freakyMenu'));
		super.destroy();
	}

	#if !mobile
	function onChangeFPSCounter()
	{
		if(Main.fpsVar != null)
			Main.fpsVar.visible = ClientPrefs.showFPS;
	}
	#end
}