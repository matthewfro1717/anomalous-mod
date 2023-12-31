trailEnabledDad = false;
trailEnabledBF = false;
timerStartedDad = false;
timerStartedBF = false;
trailLength = 5;
trailDelay = 0.04;
local nameTagLol = {'healthBar','healthBarBG','iconP1','iconP2','scoreTxt','timeBarBG','timeBar','timeTxt'}
function onEvent(name, value1, value2)
	if name == "trail" then
		if not (value1 == nil or value1 == '') and tonumber(value1) > 0 then
			if not timerStartedDad then
				runTimer('timerTrailDad', trailDelay, 0);
				timerStartedDad = true;
			end
			trailEnabledDad = true;
			curTrailDad = 0;
		else
			trailEnabledDad = false;
		end

		if not (value2 == nil or value2 == '') and tonumber(value2) > 0 then
			if not timerStartedBF then
				runTimer('timerTrailBF', trailDelay, 0);
				timerStartedBF = true;
			end
			trailEnabledBF = true;
			curTrailBF = 0;
		else
			trailEnabledBF = false;
		end
	end
	if name == 'Cinema' then
		doTweenAlpha('br','healthBarBG',0,1,'quadOut')
		doTweenAlpha('brr','healthBar',0,1,'quadOut')
		doTweenAlpha('brrr','iconP1',0,1,'quadOut')
		doTweenAlpha('brrrr','iconP2',0,1,'quadOut')
		doTweenAlpha('brrrrr','scoreTxt',0,1,'quadOut')
		setProperty('timeTxt.visible',false)
		setProperty('timeBarBG.visible',false)
		setProperty('timeBar.visible',false)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'timerTrailDad' then
		createTrailFrame('Dad');
	end

	if tag == 'timerTrailBF' then
		createTrailFrame('BF');
	end
end

curTrailDad = 0;
curTrailBF = 0;
function createTrailFrame(tag)
	num = 0;
	color = -1;
	image = '';
	frame = 'BF idle dance';
	x = 0;
	y = 0;
	scaleX = 0;
	scaleY = 0;
	offsetX = 0;
	offsetY = 0;

	if tag == 'BF' then
		num = curTrailBF;
		curTrailBF = curTrailBF + 1;
		if trailEnabledBF then
			image = getProperty('boyfriend.imageFile')
			frame = getProperty('boyfriend.animation.frameName');
			x = getProperty('boyfriend.x');
			flipX = getProperty('boyfriend.flip.x');
			y = getProperty('boyfriend.y');
			scaleX = getProperty('boyfriend.scale.x'); 
			scaleY = getProperty('boyfriend.scale.y'); 
			offsetX = getProperty('boyfriend.offset.x');
			offsetY = getProperty('boyfriend.offset.y');
		end
	else
		num = curTrailDad;
		curTrailDad = curTrailDad + 1;
		if trailEnabledDad then
			image = getProperty('dad.imageFile')
			frame = getProperty('dad.animation.frameName');
			flipX = getProperty('dad.flip.x');
			x = getProperty('dad.x');
			y = getProperty('dad.y');
			scaleX = getProperty('dad.scale.x');
			scaleY = getProperty('dad.scale.y');
			offsetX = getProperty('dad.offset.x');
			offsetY = getProperty('dad.offset.y');
		end
	end

	if num - trailLength + 1 >= 0 then
		for i = (num - trailLength + 1), (num - 1) do
			setProperty('psychicTrail'..tag..i..'.alpha', getProperty('psychicTrail'..tag..i..'.alpha') - (0.6 / (trailLength - 1)));
		end
	end
	removeLuaSprite('psychicTrail'..tag..(num - trailLength));
	if not (image == '') then
		trailTag = 'psychicTrail'..tag..num;
		makeAnimatedLuaSprite(trailTag, image, x, y);
		setProperty(trailTag..'.offset.x', offsetX);
		setProperty(trailTag..'.offset.y', offsetY);
		setProperty(trailTag..'.scale.x', scaleX);
		setProperty(trailTag..'.scale.y', scaleY);
		setProperty(trailTag..'.flip.x', flipX);
		setProperty(trailTag..'.alpha', 0.6);
		setBlendMode(trailTag, 'normal');
		addAnimationByPrefix(trailTag, 'stuff', frame, 0, false);
		addLuaSprite(trailTag, false);
	end
end