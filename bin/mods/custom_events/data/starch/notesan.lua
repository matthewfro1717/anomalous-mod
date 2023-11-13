function onUpdate(elapsed)

if dadName == 'inmbis' then

for i=0,4,1 do

setPropertyFromGroup('opponentStrums', i, 'antialiasing', false)

end

for i = 0, getProperty('unspawnNotes.length')-1 do

if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then

setPropertyFromGroup('unspawnNotes', i, 'antialiasing', false)

end

end

end

end
