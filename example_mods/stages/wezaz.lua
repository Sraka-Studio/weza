function onCreate()
	makeLuaSprite('bg1', 'wezaz/sciana', -1000, -1000);
	scaleObject('bg1', 1.5, 1.5);

	makeLuaSprite('bg2', 'wezaz/stol', -550, 550);
	scaleObject('bg2', 1.3, 1.3)

	makeLuaSprite('bg3', 'wezaz/mikrofon', 550, 200);
	scaleObject('bg3', 1.3, 1.3)

	addLuaSprite('bg1', false);
	addLuaSprite('bg2', false);
	addLuaSprite('bg3', true);

	close(true);
end