function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.5 then
        setProperty('health', health- 0.0125);
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
cameraShake(game, 0.02, 0.03)
cameraSetTarget('dad')
characterPlayAnim('gf', 'scared', true)
end
function goodNoteHit(id, direction, noteType, isSustainNote)
cameraSetTarget('boyfriend')
end

    canFloat = false
    floatX = false --if you want your char to float left and right set this to true
    bfFloat = false -- if bf floats
    speedY = 1 --how fast it will go up and down
    speedX = 1 --how fast it will go left and right
    amplitudeY = 300 --how far up and down it will go in pixels
    amplitudeX = 100 --how far left and right  it will go in pixels
    ofs = 0 --how far up or down you want the character to be
    yy = 0 --dont change this
    xx = 0 --or this
    bf_xx = 0 --or this
    bf_yy = 0 --or this

function onCreatePost()
        yy = getProperty('dad.y')+ofs
        xx = getProperty('dad.x')
      bf_yy = getProperty('boyfriend.y')+ofs
        bf_xx = getProperty('boyfriend.x')
        canFloat = false
    end
    
    function onUpdate()
setProperty('iconP2.antialiasing',false)
        songPos = getSongPosition()
        local currentBeat = (songPos/5000)*(curBpm/60)
        if canFloat then
            if floatX then
                setProperty('dad.x', amplitudeX*math.cos(currentBeat*speedX)+xx)
          if bfFloat then
            setProperty('boyfriend.x', (amplitudeX*math.cos(currentBeat*speedX)+bf_xx)*-1)
          end
            end
        setProperty('dad.y', amplitudeY*math.sin(currentBeat*speedY)+yy)
        if bfFloat then
              setProperty('boyfriend.y', (amplitudeY*math.sin(currentBeat*speedY)+bf_yy)*-1)
        end
        end
    end
    function onStepHit()
        if curstep == 1000 then
            canFloat = false
        end
    end

    function onCreatePost()
        makeLuaText("message", "Sprites by LooshGaming, chart by Blokbrine", 500, 30, 50)
        setTextAlignment("message", "left")
        addLuaText("message")
     
        makeLuaText("engineText", "RED 3 - Blokked Engine (OS 1.5.1)", 500, 30, 30)
        setTextAlignment("engineText", "left")
        addLuaText("engineText")
     
        if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
            setProperty('message.y', 680)
            setProperty('engineText.y', 660)
        end
     end
    
    function onBeatHit()
        setGraphicSize('iconP1', angleshit*2)
	setGraphicSize('iconP2', angleshit*-8)
	setProperty('iconP1.angle',angleshit*2)
	setProperty('iconP1.angle',angleshit*2)
        setProperty('iconP2.antialiasing',false)
        setProperty('iconP1.antialiasing',true)
	setProperty('iconP2.angle',angleshit*-6)
	doTweenAngle('turn', 'iconP1', 0, stepCrochet*0.004, 'circOut')
	doTweenX('tuin', 'iconP1', -angleshit*8, crochet*0.001, 'linear')
	doTweenAngle('tt', 'iconP2', 1, stepCrochet*0.006, 'circOut')
	doTweenX('ttrn', 'iconP2', -angleshit*5, crochet*0.003, 'linear')
end