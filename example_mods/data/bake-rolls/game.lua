function onCreate()
    setProperty('skipCountdown', true)
    setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
end

function onCreatePost()
    triggerEvent('Opponent Notes Right Side', 'among us is', 'not funny')

    setProperty('scoreTxt.visible', false)

    setProperty('healthBar.visible', false)
    setProperty('healthBarBG.visible', false)

    setProperty('iconP1.visible', false)
    setProperty('iconP2.visible', false)
end

function onUpdate()
    if curStep == 478 then
        triggerEvent('Play Animation', 'super', 'Dad')
        triggerEvent('Play Animation', 'wut', 'BF')
        triggerEvent('Change Character', 'BF', 'wezass')
    end
end

function onSongStart()
    setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1)
end

function noteMiss(id, noteData, noteType, isSustainNote)
	setProperty('health', 0);
end

function onEvent(name,a,b)
    if name == 'Opponent Notes Right Side' then
        setPropertyFromGroup('playerStrums', 0, 'x', defaultOpponentStrumX0)
        setPropertyFromGroup('playerStrums', 1, 'x', defaultOpponentStrumX1)
        setPropertyFromGroup('playerStrums', 2, 'x', defaultOpponentStrumX2)
        setPropertyFromGroup('playerStrums', 3, 'x', defaultOpponentStrumX3)

        setPropertyFromGroup('opponentStrums', 0, 'x', defaultPlayerStrumX0)
        setPropertyFromGroup('opponentStrums', 1, 'x', defaultPlayerStrumX1)
        setPropertyFromGroup('opponentStrums', 2, 'x', defaultPlayerStrumX2)
        setPropertyFromGroup('opponentStrums', 3, 'x', defaultPlayerStrumX3)
        setPropertyFromGroup('opponentStrums', 4, 'x', defaultPlayerStrumX4)
    end
end