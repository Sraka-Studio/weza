function onEndSong()
	if not allowEnd and isStoryMode then
		setProperty('inCutscene', true);
		startDialogue('dialogue-end', 'freakyMenu');
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end