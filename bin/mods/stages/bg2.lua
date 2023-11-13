--created with Super_Hugo's Stage Editor v1.6.3

function onCreate()

	makeLuaSprite('obj2', 'starsa', -633, -932)
	setObjectOrder('obj2', 1)
	scaleObject('obj2', 1.8, 1.8)
	addLuaSprite('obj2', true)
	
	makeLuaSprite('obj3', 'earth', 399, 282)
	setObjectOrder('obj3', 2)
	scaleObject('obj3', 3, 3)
	addLuaSprite('obj3', true)
	
	makeLuaSprite('obj4', 'fgstars', -1797, -678)
	setObjectOrder('obj4', 6)
	scaleObject('obj4', 3, 3)
	addLuaSprite('obj4', true)
	
	makeLuaSprite('obj6', 'crystalplatform', 813, 772)
	setObjectOrder('obj6', 3)
	scaleObject('obj6', 0.5, 0.5)
	addLuaSprite('obj6', true)

end