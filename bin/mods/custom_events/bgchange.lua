function onEvent(name, value1, value2)
   if name == 'bgchange' then
    makeLuaSprite(value2, value1);
    addLuaSprite(value2, false);
    
    addGlitchEffect(value1, 1)
    
    end
end