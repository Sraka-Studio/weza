local allowCountdown = false
local seenSecondCutscene = false;

function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene and getPropertyFromClass('ClientPrefs', 'langNo') == 0 then
		setProperty('inCutscene', true);
		runTimer('startDialoguePL', 0.8);
		allowCountdown = true;
		return Function_Stop;
	elseif not allowCountdown and isStoryMode and not seenCutscene and getPropertyFromClass('ClientPrefs', 'langNo') == 1 then
		setProperty('inCutscene', true);
		runTimer('startDialogueENG', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onEndSong()
	if not seenSecondCutscene and isStoryMode and getPropertyFromClass('ClientPrefs', 'langNo') == 0 then
		setProperty('inCutscene', true);
		runTimer('startEndDialoguePL', 0.8);
		seenSecondCutscene = true;
		return Function_Stop;
	elseif not seenSecondCutscene and isStoryMode and getPropertyFromClass('ClientPrefs', 'langNo') == 1 then
		setProperty('inCutscene', true);
		runTimer('startEndDialogueENG', 0.8);
		seenSecondCutscene = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialoguePL' then
		startDialogue('dialogue-pl', 'freakyMenu');
	end
	if tag == 'startDialogueENG' then
		startDialogue('dialogue-eng', 'freakyMenu');
	end
	if tag == 'startEndDialoguePL' then
		startDialogue('dialogue-end-pl', 'freakyMenu');
	end
	if tag == 'startEndDialogueENG' then
		startDialogue('dialogue-end-eng', 'freakyMenu');
	end
end