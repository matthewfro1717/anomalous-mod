    function onCreate()
        makeLuaText("message", "Song by Jcundo, chart by Blokbrine", 500, 30, 50)
        setTextAlignment("message", "left")
        addLuaText("message")
  setTextFont('message', 'COMIC.TTF')
     
        makeLuaText("engineText", "Shuck - Blokked Engine (OS 1.5.1)", 500, 30, 30)
        setTextAlignment("engineText", "left")
        addLuaText("engineText")
  setTextFont('engineText', 'COMIC.TTF')
     
        if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
            setProperty('message.y', 680)
            setProperty('engineText.y', 660)
        end
     end