--kurde dzieki teotm za pomoc

local allowCountdown = false;
local playDialogue = false;

function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then
		startVideo('weza');
		allowCountdown = true;
		playDialogue = true;
		return Function_Stop;
	elseif playDialogue and getPropertyFromClass('ClientPrefs', 'langNo') == 0 then
		setProperty('inCutscene', true);
		runTimer('startDialoguePL', 0.8);
		playDialogue = false;
		return Function_Stop;
	elseif playDialogue and getPropertyFromClass('ClientPrefs', 'langNo') == 1 then
		setProperty('inCutscene', true);
		runTimer('startDialogueENG', 0.8);
		playDialogue = false;
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
end