function opponentNoteHit(id, direction, noteType, isSustainNote)
cameraShake(game, 0.02, 0.03)
end
    function onUpdate()
setProperty("botplayTxt.text","EXTRANCE")
setProperty('iconP2.antialiasing',false)
setProperty('iconP1.antialiasing',false)
    end
 function onCreatePost()
        makeLuaText("message", "Song by Natsitu, chart by Blokbrine", 500, 30, 50)
        setTextAlignment("message", "left")
        addLuaText("message")
  setTextFont('message', 'COMIC.TTF')
     
        makeLuaText("engineText", "Extrance - Blokked Engine (OS 1.5.1)", 500, 30, 30)
        setTextAlignment("engineText", "left")
        addLuaText("engineText")
  setTextFont('engineTxt', 'COMIC.TTF')
     
        if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
            setProperty('message.y', 680)
            setProperty('engineText.y', 660)
        end
     end