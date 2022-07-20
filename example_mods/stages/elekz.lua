function onCreate()
	makeLuaSprite('bg1', 'elekz/sciana', -1000, -1000);
	scaleObject('bg1', 2.5, 2.5);

	makeLuaSprite('bg2', 'elekz/podloga', -550, 550);
	scaleObject('bg2', 1.3, 1.3)

	makeLuaSprite('bg3', 'elekz/lampki', -100, -50);
	scaleObject('bg3', 1.3, 1.3)

	makeLuaSprite('bg4', 'elekz/lampa', 1150, 475);
	scaleObject('bg4', 1, 1)

	makeLuaSprite('bg5', 'elekz/pianinko', 500, 700);
	scaleObject('bg5', 1, 1)

	addLuaSprite('bg1', false);
	addLuaSprite('bg2', false);
	addLuaSprite('bg3', false);
	addLuaSprite('bg4', false);
	addLuaSprite('bg5', false);

	close(true);
end