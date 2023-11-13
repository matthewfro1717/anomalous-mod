    function onCreate()
        makeLuaText("message", "Song by MoldyGH, chart by Blokbrine", 500, 30, 50)
        setTextAlignment("message", "left")
        addLuaText("message")
     
        makeLuaText("engineText", "Rano - Blokked Engine (OS 1.5.1)", 500, 30, 30)
        setTextAlignment("engineText", "left")
        addLuaText("engineText")
     
        if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
            setProperty('message.y', 680)
            setProperty('engineText.y', 660)
        end
     end