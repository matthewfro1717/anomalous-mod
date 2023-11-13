function onUpdate(elapsed)

if dadName == '3djokebambi' then

for i=0,4,1 do

setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets_3D')

setPropertyFromGroup('opponentStrums', i, 'antialiasing', false)

end

for i = 0, getProperty('unspawnNotes.length')-1 do

if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then

setPropertyFromGroup('unspawnNotes', i, 'antialiasing', false)

setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note_assets_3D');

end

end

end

end