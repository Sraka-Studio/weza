package;

/**
 * Class full of different `Array<String>` variable types made to storage hardcoded texts in different languages.
 * 
 * Variable from this class can be referenced by this way: `LanguageData.exampleText[number]`,
 * whilst `number` being an Integer that decides about the language of the text that should be displayed.
 * 1. 0 is Polish
 * 2. 1 is English
 * 
 * Code by [teotm4](https://github.com/teotm).
 */
class LanguageData
{
	// NIE WSTAWIAĆ POLSKICH ZNAKÓW W STRINGI, BO MOŻE TO SCRASHOWAĆ GRĘ

	// Variables where Polish and English have been swapped purposefully.
	public static var languageInformationText:Array<String> = [
		"
		
		Hi there!
		Just in case you did not realize yet: this is a Polish FNF Mod and the language by default is set to Polish.
		If you wish to play it in English, please select by pressing left/right
		You can change your language later in options menu.
		You have been informed!\n\n\n",
		"
        


		Hej um poprostu wybierz jezyk ok?"
	];

	public static var listForLangSelectList:Array<Array<String>> = [
		[
			"Polish",
			"English",
		],
		[
			"Polski",
			"Angielski"
		]
	];

	public static var currentlySelectedLangText:Array<String> = [
		"Selected language: ",
		"Wybrany jezyk: "
	];

	// Credits
	public static var creditsDesc:Array<Array<String>> = [
		// Vs Weza Team
		[
			'Wlasciciel, Kompozytor, Artysta i Animator',
			'Mod Owner, Artist and Animator'
		],
		[
			'Programista',
			'Coder'
		],
		[
			'Kompozytor i Charter',
			'Composer and Charter'
		],
		[
			'Chromatyczna skala',
			'Chromatic Scale'
		],
		// Psych Engine Team
		[
			'Glowny Programista Psych Engine\'a',
			'Main Programmer of Psych Engine'
		],
		[
			'Glowna Artystka/Animatorka Psych Engine\'a',
			'Main Artist/Animator of Psych Engine'
		],
		[
			'Dodatkowa Programistka Psych Engine\'a',
			'Additional Programmer of Psych Engine'
		],
		// Former Engine Members
		[
			'Byly Programista Psych Engine\'a',
			'Ex-Programmer of Psych Engine'
		],
		// Engine Contributors
		[
			'Kompozytor Tea Time w Psych Enginie\nZrobil Dzwieki Dialogow',
			'Composer of Psych and Tea Time\nMade the Dialogue Sounds',
		],
		[
			'Dodal Crash Handler i Bazowy Kod na\nforme dzwiekowa Chart Editora',
			'Crash Handler and Base code for\nChart Editor\'s Waveform'
		],
		[
			'Zrobil biblioteke umozliwiajaca puszczanie filmow (hxCodec)\n\"Wielkie W i Propsy dla typa!\" - teotm',
			'Video Loader Library (hxCodec)'
		],
		[
			'Naprawil kilka fajnych rzeczy w Chart Editorze\ni kilka innych rzeczy',
			'Fixed some cool stuff on Chart Editor\nand other PRs'
		],
		[
			'Animacje Splashow Note\'ow',
			'Note Splash Animations'
		],
		[
			'Kilka przerobek w LUA JIT',
			'LUA JIT Fork and some Lua reworks'
		],
		[
			'Obsluga Sprite\'ow Atlasowych\n(spritemap.json)',
			'Sprite Atlas Support'
		],
		// Funkin' Crew
		[
			"Programista Friday Night Funkin'",
			"Programmer of Friday Night Funkin'"
		],
		[
			"Animator Friday Night Funkin'",
			"Animator of Friday Night Funkin'"
		],
		[
			"Artysta Friday Night Funkin'",
			"Artist of Friday Night Funkin'"
		],
		[
			"Kompozytor Friday Night Funkin'",
			"Composer of Friday Night Funkin'"
		]
	];

    // Freeplay
	public static var leText1:Array<String> = [
	    "Nacisnij SPACJE zeby posluchac piosenke / Nacisnij CTRL zeby przejsc do zmieniania opcji w rozgrywce / Nacisnij RESET zeby zresetowac wynik",
		"Press SPACE to listen to the Song / Press CTRL to open the Gameplay Changers Menu / Press RESET to Reset your Score and Accuracy."
	];

	public static var leText2:Array<String> = [
	    "Nacisnij CTRL zeby przejsc do zmieniania opcji w rozgrywce / Nacisnij RESET zeby zresetowac wynik",
		"Press CTRL to open the Gameplay Changers Menu / Press RESET to Reset your Score and Accuracy."
	];

	public static var leText3:Array<String> = [
		"NAJLEPSZY WYNIK: ",
		"PERSONAL BEST: "
	];

	// StoryMode
	public static var weekScore:Array<String> = [
		"WYNIK:",
		"WEEK SCORE:"
	];

    // Reset Score
	public static var reset:Array<String> = [
		"Zresetowac wynik",
		"Reset the score of"
	];

	public static var yes:Array<String> = [
		"Tak",
		"Yes"
	];

	public static var no:Array<String> = [
		"Nie",
		"No"
	];

    // Gameplay Changers
	public static var scrolltype:Array<String> = [
		"Typ Przewijania",
		"Scroll Type"
	];

	public static var scrollspeed:Array<String> = [
		"Predkosc Przewijania",
		"Scroll Speed"
	];

	public static var healthgain:Array<String> = [
		"Przyrost Zdrowia",
		"Health Gain Multiplier"
	];

	public static var healthloss:Array<String> = [
		"Utrata Zdrowia",
		"Health Loss Multiplier"
	];

	public static var instakill:Array<String> = [
		"Tryb Hardkor", // goofy ahh nazwa jak prawie kazda
		"Instakill on Miss"
	];

	public static var practice:Array<String> = [
		"Tryb Praktyczny",
		"Practice Mode"
	];

	public static var botplay:Array<String> = [
		"Botplay", // nie wiedzialem jak to nazwac bruh
		"Botplay"
	];

	public static var scrolltypeList:Array<Array<String>> = [
		[
			"mnozny",
			"staly"
		],
		[
			"multiplicative",
			"constant"
		]
	];

	public static var multiplicative:Array<String> = [
		"mnozny",
		"multiplicative"
	];

	public static var constant:Array<String> = [
		"staly",
		"constant"
	];

    //Pause Screen
	public static var resume:Array<String> = [
		"Graj Dalej",
		"Resume"
	];

	public static var restartSong:Array<String> = [
		"Zrestartuj Piosenke",
		"Restart Song"
	];

	public static var changeDiff:Array<String> = [
		"Zmien Trudnosc",
		"Change Difficulty"
	];

	public static var exitMenu:Array<String> = [
		"Przejdz Do Menu",
		"Exit to menu"
	];

	public static var practiceMode:Array<String> = [
		"Wlacz Tryb Praktyczny",
		"Toggle Practice Mode"
	];

	public static var leaveChartingMode:Array<String> = [
		"Wyjdz z Trybu Charting",
		"Leave Charting Mode"
	];

	public static var skipTime:Array<String> = [
		"Pomin Czas",
		"Skip Time"
	];

	public static var endSong:Array<String> = [
		"Zakoncz Piosenke",
		"End Song"
	];

	public static var botplayMode:Array<String> = [
		"Wlacz Botplay",
		"Toggle Botplay"
	];

	public static var blueballedTxt:Array<String> = [
		"Niebieskie Pileczki: ",
		"Blueballed: "
	];

	public static var practiceModeTxt:Array<String> = [
		"TRYB PRAKTYCZNY",
		"PRACTICE MODE"
	];

	public static var chartingModeTxt:Array<String> = [
		"TRYB CHARTING",
		"CHARTING MODE"
	];

	public static var back:Array<String> = [
		"WROC",
		"BACK"
	];

	// PlayState
	public static var scoreInfo:Array<Array<String>> = [
		[
			'Wynik',
			'Pudla',
			'Ocena'
		],
		[
			'Score',
			'Misses',
			'Rating'
		]
	];

	public static var ratingStuff:Array<Array<Dynamic>> = [
		[
			['Ssiesz w to!', 0.2], //From 0% to 19%
			['Kupa', 0.4], //From 20% to 39%
			['Zle', 0.5], //From 40% to 49%
			['Bruh', 0.6], //From 50% to 59%
			['E tam', 0.69], //From 60% to 68%
			['Ladnie', 0.7], //69%
			['Dobrze', 0.8], //From 70% to 79%
			['Wspaniale', 0.9], //From 80% to 89%
			['Chore!', 1], //From 90% to 99%
			['Perfekcyjnie!!', 1] //The value on this one isn't used actually, since Perfect is always "1"
		],
		[
			['You Suck!', 0.2], //From 0% to 19%
			['Shit', 0.4], //From 20% to 39%
			['Bad', 0.5], //From 40% to 49%
			['Bruh', 0.6], //From 50% to 59%
			['Meh', 0.69], //From 60% to 68%
			['Nice', 0.7], //69%
			['Good', 0.8], //From 70% to 79%
			['Great', 0.9], //From 80% to 89%
			['Sick!', 1], //From 90% to 99%
			['Perfect!!', 1] //The value on this one isn't used actually, since Perfect is always "1"
		]
	];

    // Options Menu
	public static var visualsUi:Array<String> = [
		"Visuale i UI",
		"Visuals and UI"
	];

	public static var gameplay:Array<String> = [
		"Ustawienia Rozgrywki",
		"Gameplay Settings"
	];

	public static var graphics:Array<String> = [
		"Grafika",
		"Graphics"
	];

	public static var hsbText:Array<String> = [
		"Odcien   Nasycenie  Jasnosc",
		"Hue    Saturation  Brightness"
	];

	public static var ratingGoffy:Array<String> = [
		'Offset Ratingu:',
		'Rating Offset:'
	];

	public static var numbersGoffy:Array<String> = [
		'Offset Numerow:',
		'Numbers Offset:'
	];

	public static var textGoffy:Array<String> = [
		'Biezace Przesuniecie: ',
		'Current offset: '
	];

	public static var textus1:Array<String> = [
		'< Offset Komba (Nacisnij Akceptuj aby Przelaczyc) >',
		'< Combo Offset (Press Accept to Switch) >'
	];

	public static var textus2:Array<String> = [
		'< Opoznienie Bitu (Nacisnij Akceptuj aby Przelaczyc) >',
		'< Note/Beat Delay (Press Accept to Switch) >'
	];

	public static var beatHit:Array<String> = [
		'Poczuj Bit!',
		'Beat Hit!'
	];

	public static var notes:Array<String> = [
		"STRZALKI",
		"NOTES"
	];

	public static var left:Array<String> = [
		"Lewo",
		"Left"
	];

	public static var down:Array<String> = [
		"Dol",
		"Down"
	];

	public static var up:Array<String> = [
		"Gora",
		"Up"
	];

	public static var right:Array<String> = [
		"Prawo",
		"Right"
	];

	public static var accept:Array<String> = [
		"Akcept",
		"Accept"
	];

	public static var backC:Array<String> = [
		"Wroc",
		"Back"
	];

	public static var pause:Array<String> = [
		"Pauza",
		"Pause"
	];

	public static var volume:Array<String> = [
		"GLOSNOSC",
		"VOLUME"
	];

	public static var mute:Array<String> = [
		"Wycisz", // nie wiem jak to nazwac
		"Mute"
	];

	public static var key1:Array<String> = [
		"Klawisz1",
		"Key 1"
	];

	public static var key2:Array<String> = [
		"Klawisz2",
		"Key 2"
	];

	public static var defaultKey:Array<String> = [
		"Zresetuj Klawisze",
		"Reset to Default Keys"
	];

	// Options
	public static var options:Array<Array<String>> = [
		["Kolory Strzalek", 'Kontrolki', 'Opoznienie i Kombo', 'Grafika', 'Visuale i UI', 'Rozgrywka'],
		['Note Colors', 'Controls', 'Adjust Delay and Combo', 'Graphics', 'Visuals and UI', 'Gameplay']
	];

	public static var lowQuality:Array<String> = [
		'Slaba Jakosc',
		'Low Quality'
	];

	public static var lowQualityDesc:Array<String> = [
		'Zaznaczenie po prostu optymalizuje dzialanie gry o.',
		'If checked, disables some background details,\ndecreases loading times and improves performance.',
	];

	public static var globalAntialiasing:Array<String> = [
		'Antyaliasing',
		'Anti-Aliasing'
	];
	public static var globalAntialiasingDesc:Array<String> = [
		'Odznaczenie powoduje zwiekszenie wydajnosci gry, lecz w zamian obrazy sa ostrzejsze.',
		'If unchecked, disables anti-aliasing, increases performance\nat the cost of sharper visuals.',
	];

	public static var framerate:Array<String> = [
		'Klatki na Sekunde',
		'Framerate'
	];

	public static var framerateDesc:Array<String> = [
		"Latwo sie domyslic, co nie?",
		"Pretty self explanatory, isn't it?"
	];

	public static var noteSplashes:Array<String> = [
		"Splashowanie Note'ow",
		'Note Splashes'
	];

	public static var noteSplashesDesc:Array<String> = [
		"Jezeli opcja ta jest odznaczona, trafienie \"Sick!\" podczas piosenki, nie bedzie wyswietlalo kawalkow z trafionego Note'a",
		"If unchecked, hitting \"Sick!\" notes won't show particles."
	];

	public static var hideHud:Array<String> = [
		'Ukryj HUD',
		'Hide HUD'
	];

	public static var hideHudDesc:Array<String> = [
		'Zaznaczenie ukrywa wiekszosc elementow w HUDzie.',
		'If checked, hides most HUD elements.'
	];

	public static var timeBarType:Array<String> = [
		'Pasek Czasu:',
		'Time Bar:'
	];

	public static var timeBarTypeDesc:Array<String> = [
		'Co powinien Pasek Czasowy wyswietlac?',
		'What should the Time Bar display?'
	];

	public static var timeBarTypeList:Array<Array<String>> = [
		[
			'Pozostaly Czas',
			'Czas uplyniety',
			'Nazwa Piosenki',
			'Wylaczony'
		],
		[
			'Time Left', // Default
			'Time Elapsed',
			'Song Name',
			'Disabled'
		]
	];

	public static var flashing:Array<String> = [
		'Migajace Swiatla', // ok nie chce mi sie tlumaczyc tego fr
		'Flashing Lights'
	];

	public static var flashingDesc:Array<String> = [
		'Odznacz jesli jestes wrazliwy na miganie swiatel',
		"Uncheck this if you're sensitive to flashing lights!"
	];

	public static var camZooms:Array<String> = [
		'Zoomowanie Kamery',
		'Camera Zooms'
	];

	public static var camZoomsDesc:Array<String> = [
		'Odznaczenie powoduje, ze kamera nie bedzie sie zoomowac w jakis momentach',
		"If unchecked, the camera won't zoom in on a beat hit."
	];

	public static var scoreZoom:Array<String> = [
		'nwm co to tak naprawde robi', 
		'Score Text Zoom on Hit'
	];

	public static var scoreZoomDesc:Array<String> = [
		'nie wiem co to robi. po angielskiemu jest to wyjasnione',
		'If unchecked, disables the Score text zooming\neverytime you hit a note.'
	];

	public static var healthBarAlpha:Array<String> = [
		'Alfa Pasku Zycia', 
		'Health Bar Transparency'
	];

	public static var healthBarAlphaDesc:Array<String> = [
		'Jak bardzo przezroczyste powinne byc pasek zycia i ikony.',
		'How much transparent should the health bar and icons be.'
	];

	public static var showFPS:Array<String> = [
		'Licznik FPS', 
		'FPS Counter'
	];

	public static var showFPSDesc:Array<String> = [
		'Odznaczenie powoduje ukrycie licznika FPSow',
		'If unchecked, hides FPS Counter.'
	];

	public static var checkForUpdates:Array<String> = [
		"Sprawdzaj update'y", 
		'Check for Updates'
	];

	public static var checkForUpdatesDesc:Array<String> = [
		'Zaznacz ta opcje jezeli chcesz aby sprawdzano czy mod ma jakis update podczas odpalania',
		'On Release builds, turn this on to check for updates when you start the game.'
	];

	public static var pauseSong:Array<String> = [
		"Piosenka w Pauzie", 
		'Pause Screen Song'
	];

	public static var pauseSongDesc:Array<String> = [
		'Jaka piosenke wolisz na ekranie pauzy?',
		'What song do you prefer for the Pause Screen?'
	];

	public static var controllerMode:Array<String> = [
		'Gra Kontrolerem',
		'Controller Mode'
	];

	public static var controllerModeDesc:Array<String> = [
		'Zaznacz jezeli masz zamiar grac kontrolerem,\n a nie klawiatura',
		'Check this if you want to play with\na controller instead of using your Keyboard.'
	];

	public static var downScroll:Array<String> = [
		'Downscroll', // Jeżeli ktoś ma zajebiste tłumaczenie na to, to proszę zgłaszać (nie znajdzie się takie)
		'Downscroll'
	];

	public static var downScrollDesc:Array<String> = [
		"Zaznacz jezeli chcesz aby note'y lecialy w dol, a nie w gore, proste.",
		'If checked, notes go Down instead of Up, simple enough.'
	];

	public static var middleScroll:Array<String> = [
		'Middlescroll', // Jeżeli ktoś ma zajebiste tłumaczenie na to, to proszę zgłaszać (nie znajdzie się takie)
		'Middlescroll'
	];

	public static var middleScrollDesc:Array<String> = [
		"Zaznaczajac, pozycja twoich note'ow jest wysrodkowana",
		'If checked, your notes get centered.'
	];

	public static var opponentStrums:Array<String> = [
		'Strzalki wroga',
		'Opponent Notes'
	];

	public static var opponentStrumsDesc:Array<String> = [
		"Odznaczajac, note'y twojego przeciwnika sa ukryte",
		'If unchecked, opponent notes get hidden.'
	];

	public static var ghostTapping:Array<String> = [
		'Falszywe Klikanie', // okropne tłumaczenie
		'Ghost Tapping'
	];

	public static var ghostTappingDesc:Array<String> = [
		"Zaznaczajac, nie bedziesz dostawac Missow przez klikanie note'ow kiedy nie ma nic do klikania.\nNie, nie mielismy lepszego tlumaczenia.",
		"If checked, you won't get misses from pressing keys\nwhile there are no notes able to be hit."
	];

	public static var noReset:Array<String> = [
		'Wylacz dzialanie Resetu',
		'Disable Reset Button'
	];

	public static var noResetDesc:Array<String> = [
		'Zaznaczajac, dzialanie Resetu jest uniemozliwione.',
		"If checked, pressing Reset won't do anything."
	];

	public static var hitsoundVolume:Array<String> = [
		'Glosnosc Hitsoundow',
		'Hitsound Volume'
	];

	public static var hitsoundVolumeDesc:Array<String> = [
		"Note'y wydaja smieszny dzwiek \"Klik!\" podczas klikania.",
		"Funny notes does \"Tick!\" when you hit them."
	];

	public static var ratingOffset:Array<String> = [
		'Offset Ratingow',
		'Rating Offset'
	];

	public static var ratingOffsetDesc:Array<String> = [
		"Zmien jak pozno/wczesnie musisz trafic aby otrzymac \"Sick!\"\nIm wieksza wartosc tym trzeba kliknac pozniej",
		"Changes how late/early you have to hit for a \"Sick!\"\nHigher values mean you have to hit later."
	];

	public static var sickWindow:Array<String> = [
		'Czas trafienia Sick!',
		'Sick! Hit Window'
	];

	public static var sickWindowDesc:Array<String> = [
		"Zmienia ilosc czasu ktory masz aby trafic \"Sick!\" w milisekundach.",
		"Changes the amount of time you have\nfor hitting a \"Sick!\" in milliseconds."
	];

	public static var goodWindow:Array<String> = [
		'Czas trafienia Good',
		'Good Hit Window'
	];

	public static var goodWindowDesc:Array<String> = [
		"Zmienia ilosc czasu ktory masz aby trafic \"Good\" w milisekundach.",
		"Changes the amount of time you have\nfor hitting a \"Good\" in milliseconds."
	];

	public static var badWindow:Array<String> = [
		'Czas trafienia Bad',
		'Bad Hit Window'
	];

	public static var badWindowDesc:Array<String> = [
		"Zmienia ilosc czasu ktory masz aby trafic \"Bad\" w milisekundach.",
		"Changes the amount of time you have\nfor hitting a \"Bad\" in milliseconds."
	];

	public static var safeFrames:Array<String> = [
		'nie wiem',
		'Safe Frames'
	];

	public static var safeFramesDesc:Array<String> = [
		'co to tak bardzo robi',
		'Changes how many frames you have for\nhitting a note earlier or late.'
	];

	public static var language:Array<String> = [
		'Jezyk Gry:',
		'Game Language:'
	];

	public static var languageDesc:Array<String> = [
		'Wybierz swoj jezyk',
		'Select your language'
	];

	public static var languageList:Array<Array<String>> = [
		["Polski", "Angielski"], // WARNING!!! DO NOT MESS WITH THIS VARIABLE UNTIL YOU ADD YOUR LANGUAGE
		["Polish", "English"]
	];
}