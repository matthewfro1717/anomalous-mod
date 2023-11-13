function onUpdate(elapsed)

if dadName == 'L' then --replace the name for your character name

for i=0,4,1 do

setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets_3D')

setPropertyFromGroup('opponentStrums', i, 'antialiasing', false)

end

for i = 0, getProperty('unspawnNotes.length')-1 do

if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then

setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_3D'); --Change texture

setPropertyFromGroup('unspawnNotes', i, 'antialiasing', false)

end

end

end

end

if dadName == 'Bin' then --replace the name for your character name

for i=0,4,1 do

setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets_3D')

setPropertyFromGroup('opponentStrums', i, 'antialiasing', false)

end

for i = 0, getProperty('unspawnNotes.length')-1 do

if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then

setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_3D'); --Change texture

setPropertyFromGroup('unspawnNotes', i, 'antialiasing', false)

end

end

end