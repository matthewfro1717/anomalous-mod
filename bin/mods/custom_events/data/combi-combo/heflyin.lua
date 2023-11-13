function onCreatePost()
	oridad = getProperty('dad.y')
end



function onUpdate(elapsed)	
if not mustHitSection and getProperty('isCameraOnForcedPos') == false then
    cameraSetTarget("dad")
end
songPos = getSongPosition()
currentBeat = (songPos/5000)*(curBpm/99)
if not inGameOver then
setProperty('dad.y', oridad - 120*math.cos((currentBeat+12*12)*math.pi))
end
end




