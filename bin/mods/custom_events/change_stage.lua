function onEvent(name, value1, value2)
	if name == "change_stage" then
		--reset thing(for using the event multiple times)
		removeLuaSprite('black')
		jsonText = nil
		jsonSplitedPost= nil
		--make black bg(for reset stage)
		removeLuaSprite('black')
		makeLuaSprite('black', 'Gone', -300, -100);
		makeGraphic('black', 100, 100, '000000');
		addLuaSprite('black', false);
		scaleObject('black', 80, 50);
		--load stage script
		addLuaScript('stages/'..value1)
		jsonText = getTextFromFile('stages/'..value1..'.json')
		--remove "{" yes
		jsonSplitedPost = split(jsonText,"{")
		jsonSplited = jsonSplitedPost[1]
		--remove "}" lets fucking gooo
		jsonSplitedPost = split(jsonSplited,"}")
		jsonSplited = jsonSplitedPost[1]
		--get json text loool
		jsonSplitedPost = split(jsonSplited,"\n")
		table.remove(jsonSplitedPost, 1)
		jsonSplited = jsonSplitedPost
		--[[
			get bf,dad,gf deta lets fucking gooooo
		]]
		--remove "boyfriend": [ (and make pos table)
		bfposPost = split(jsonSplited[5],'"boyfriend" :')
		table.remove(bfposPost, 1)
		--remove other stuff lol
		bfposX = split(bfposPost[1],'],')
		bfposY = split(bfposPost[2],'],')

		--get bf y from json deta
		bfposYPost = split(bfposY[1],'[')
		--Because the number will be corrupted if you don't repeat it twice
		bfposY = split(bfposYPost[1],'[')

		bfposXPost = split(bfposX[1],'[')
		bfposX = split(bfposXPost[1],'[')
		
		setProperty('boyfriend.x',bfposX[1])
		setProperty('boyfriend.y',bfposY[1]+250)

		--remove "opponent": [ (and make pos table)
		dadposPost = split(jsonSplited[5],'"opponent" :')
		table.remove(dadposPost, 1)
		--remove other stuff lol
		dadposX = split(dadposPost[1],'],')
		dadposY = split(dadposPost[2],'],')

		--get dad y from json deta
		dadposYPost = split(dadposY[1],'[')
		--Because the number will be corrupted if you don't repeat it twice
		dadposY = split(dadposYPost[1],'[')

		dadposXPost = split(dadposX[1],'[')
		dadposX = split(dadposXPost[1],'[')

		setProperty('dad.x',dadposX[1])
		setProperty('dad.y',dadposY[1]+250)

		--remove "girlfriend": [ (and make pos table)
		gfposPost = split(jsonSplited[5],'"girlfriend" :')
		table.remove(gfposPost, 1)--remove extra space
		--remove other stuff lol
		gfposX = split(gfposPost[1],'],')
		gfposY = split(gfposPost[2],'],')

		--get gf y from json deta
		gfposYPost = split(gfposY[1],'[')
		--Because the number will be corrupted if you don't repeat it twice
		gfposY = split(gfposYPost[1],'[')

		gfposXPost = split(gfposX[1],'[')
		gfposX = split(gfposXPost[1],'[')

		setProperty('gf.x',gfposX[1])
		setProperty('gf.y',gfposY[1]+250)
	end
end
function split(str, ts)
	if ts == nil then return {} end
  
	local t = {} ; 
	i=1
	for s in string.gmatch(str, "([^"..ts.."]+)") do
	  t[i] = s
	  i = i + 1
	end
  
	return t
  end