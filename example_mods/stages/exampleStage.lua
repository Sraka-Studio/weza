function onCreate()
	-- background shit
	makeLuaSprite('e', 'e', -1350, -1000);
	setScrollFactor('e', 0.9, 0.9);
	
	makeLuaSprite('b', 'b', -1350, -200);
	setScrollFactor('b', 0.9, 0.9)

	addLuaSprite('e', false);
	addLuaSprite('b', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end