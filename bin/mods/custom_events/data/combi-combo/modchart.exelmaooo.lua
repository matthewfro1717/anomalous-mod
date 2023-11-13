local defaultNotePos = {};

function onSongStart()
    for i = 0,7 do 
        x = getPropertyFromGroup('strumLineNotes', i, 'x')
 
        y = getPropertyFromGroup('strumLineNotes', i, 'y')
 
        table.insert(defaultNotePos, {x,y})

        setPropertyFromGroup('strumLineNotes', i, 'scale.x', 0.9)
        setPropertyFromGroup('strumLineNotes', i, 'scale.y', 0.5)
        setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] - 60)
    end
end

function onUpdate()
    setProperty('camHUD.x', mathlerp(getProperty('camHUD.x'), 0, 0.1))

    for i = 0,7 do
        setPropertyFromGroup('strumLineNotes', i, 'scale.x', mathlerp(getPropertyFromGroup('strumLineNotes', i, 'scale.x'), 0.7, 0.1))
        setPropertyFromGroup('strumLineNotes', i, 'scale.y', mathlerp(getPropertyFromGroup('strumLineNotes', i, 'scale.y'), 0.7, 0.1))
        setPropertyFromGroup('strumLineNotes', i, 'x', mathlerp(getPropertyFromGroup('strumLineNotes', i, 'x'), defaultNotePos[i + 1][1], 0.1))
        setPropertyFromGroup('strumLineNotes', i, 'y', mathlerp(getPropertyFromGroup('strumLineNotes', i, 'y'), defaultNotePos[i + 1][2], 0.1))
    end
end

function mathlerp(from,to,i)return from+(to-from)*i end

function onBeatHit()
    for i = 0,7 do
        setPropertyFromGroup('strumLineNotes', i, 'scale.x', 0.9)
        setPropertyFromGroup('strumLineNotes', i, 'scale.y', 0.5)
        if curBeat % 2 == 1 then
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + 60)
            setProperty('camHUD.x',20)
        elseif curBeat % 2 == 0 then
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] - 60)
            setProperty('camHUD.x',-20)
        end
    end
end