function onUpdatePost()
	notesLenght = getProperty("notes.length")
	for i = 0,notesLenght,1 do
		thisnotesy = getPropertyFromGroup("notes",i,"y")
		setPropertyFromGroup("notes",i,"angle",(360/(thisnotesy/16-31.25))+22.5)
	end
end