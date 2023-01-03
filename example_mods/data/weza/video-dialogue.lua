local allowCountdown = false;
local playDialogue = false;

function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then
		startVideo('weza');
		allowCountdown = true;
		playDialogue = true;
		return Function_Stop;
	elseif playDialogue then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		playDialogue = false;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then
		startDialogue('dialogue', 'freakyMenu');
	end
end