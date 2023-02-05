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

class GameplaySettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = LanguageData.gameplay[ClientPrefs.langNo];
		rpcTitle = 'Gameplay Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option(LanguageData.controllerMode[ClientPrefs.langNo],
			LanguageData.controllerModeDesc[ClientPrefs.langNo],
			'controllerMode',
			'bool',
			false);
		addOption(option);

		//I'd suggest using "Downscroll" as an example for making your own option since it is the simplest here
		var option:Option = new Option(LanguageData.downScroll[ClientPrefs.langNo], //Name
			LanguageData.downScrollDesc[ClientPrefs.langNo], //Description
			'downScroll', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);

		var option:Option = new Option(LanguageData.middleScroll[ClientPrefs.langNo],
			LanguageData.middleScrollDesc[ClientPrefs.langNo],
			'middleScroll',
			'bool',
			false);
		addOption(option);

		var option:Option = new Option(LanguageData.opponentStrums[ClientPrefs.langNo],
			LanguageData.opponentStrumsDesc[ClientPrefs.langNo],
			'opponentStrums',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option(LanguageData.ghostTapping[ClientPrefs.langNo],
			LanguageData.ghostTappingDesc[ClientPrefs.langNo],
			'ghostTapping',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option(LanguageData.noReset[ClientPrefs.langNo],
			LanguageData.noResetDesc[ClientPrefs.langNo],
			'noReset',
			'bool',
			false);
		addOption(option);

		var option:Option = new Option(LanguageData.hitsoundVolume[ClientPrefs.langNo],
			LanguageData.hitsoundVolumeDesc[ClientPrefs.langNo],
			'hitsoundVolume',
			'percent',
			0);
		addOption(option);
		option.scrollSpeed = 1.6;
		option.minValue = 0.0;
		option.maxValue = 1;
		option.changeValue = 0.1;
		option.decimals = 1;
		option.onChange = onChangeHitsoundVolume;

		var option:Option = new Option(LanguageData.ratingOffset[ClientPrefs.langNo],
			LanguageData.ratingOffsetDesc[ClientPrefs.langNo],
			'ratingOffset',
			'int',
			0);
		option.displayFormat = '%vms';
		option.scrollSpeed = 20;
		option.minValue = -30;
		option.maxValue = 30;
		addOption(option);

		var option:Option = new Option(LanguageData.sickWindow[ClientPrefs.langNo],
			LanguageData.sickWindowDesc[ClientPrefs.langNo],
			'sickWindow',
			'int',
			45);
		option.displayFormat = '%vms';
		option.scrollSpeed = 15;
		option.minValue = 15;
		option.maxValue = 45;
		addOption(option);

		var option:Option = new Option(LanguageData.goodWindow[ClientPrefs.langNo],
			LanguageData.goodWindowDesc[ClientPrefs.langNo],
			'goodWindow',
			'int',
			90);
		option.displayFormat = '%vms';
		option.scrollSpeed = 30;
		option.minValue = 15;
		option.maxValue = 90;
		addOption(option);

		var option:Option = new Option(LanguageData.badWindow[ClientPrefs.langNo],
			LanguageData.badWindowDesc[ClientPrefs.langNo],
			'badWindow',
			'int',
			135);
		option.displayFormat = '%vms';
		option.scrollSpeed = 60;
		option.minValue = 15;
		option.maxValue = 135;
		addOption(option);

		var option:Option = new Option(LanguageData.safeFrames[ClientPrefs.langNo],
			LanguageData.safeFramesDesc[ClientPrefs.langNo],
			'safeFrames',
			'float',
			10);
		option.scrollSpeed = 5;
		option.minValue = 2;
		option.maxValue = 10;
		option.changeValue = 0.1;
		addOption(option);

		var option:Option = new Option(LanguageData.language[ClientPrefs.langNo],
			LanguageData.languageDesc[ClientPrefs.langNo],
			'language',
			'string',
			LanguageData.languageList[ClientPrefs.langNo][ClientPrefs.langCurSelected],
			LanguageData.languageList[ClientPrefs.langNo]);
		addOption(option);
		option.onChange = changeLangNoInt;
		
		super();
	}

	function onChangeHitsoundVolume()
	{
		FlxG.sound.play(Paths.sound('hitsound'), ClientPrefs.hitsoundVolume);
	}

	// WORK IN PROGRESS
	function changeLangNoInt()
	{
		var lol:Int = 0;
		if(controls.UI_LEFT_P) {
			lol = -1;
		}
		if (controls.UI_RIGHT_P) {
			lol = 1;
		}
		ClientPrefs.langCurSelected += lol;
		if (ClientPrefs.langCurSelected >= LanguageData.languageList[ClientPrefs.langNo].length) 
		{
			ClientPrefs.langCurSelected = 0;
		}
		if (ClientPrefs.langCurSelected < 0)
		{
			ClientPrefs.langCurSelected = LanguageData.languageList[ClientPrefs.langNo].length - 1;
		}

		ClientPrefs.langNo = ClientPrefs.langCurSelected;
		// Put all String ClientPrefs variables here.
		ClientPrefs.language = LanguageData.languageList[ClientPrefs.langNo][ClientPrefs.langCurSelected];
		ClientPrefs.timeBarType = LanguageData.timeBarTypeList[ClientPrefs.langNo][ClientPrefs.timeBarTypeCurSelected];
	}
}