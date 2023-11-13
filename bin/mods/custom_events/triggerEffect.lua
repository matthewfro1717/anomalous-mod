function mysplit (inputstr, sep)
    if sep == nil then
        sep = "%s";
    end
    local t={};
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        table.insert(t, str);
    end
    return t;
end

function onEvent(name, value1, value2)
local tabledos=mysplit(value2,",");
        tabledos[1] = tonumber(tabledos[1]);
        tabledos[2] = tonumber(tabledos[2]);
        tabledos[3] = tonumber(tabledos[3]);
        tabledos[4] = tonumber(tabledos[4]);

	if name == 'triggerEffect' then
	             if value1 == 'C' then
			clearEffects('v2')
            end

	             if value1 == '1, game' then
			addChromaticAbberationEffect('CamGame', tabledos[1]);
	end
	             if value1 == '1, hud' then
			addChromaticAbberationEffect('CamHUD', tabledos[1]);
	end
	             if value1 == '1, other' then
			addChromaticAbberationEffect('CamOther', tabledos[1]);
	end
	             if value1 == '1, dad' then
			addChromaticAbberationEffect('dad', tabledos[1]);
	end
	             if value1 == '1, bf' then
			addChromaticAbberationEffect('boyfriend', tabledos[1]);
	end
	             if value1 == '1, gf' then
			addChromaticAbberationEffect('gf', tabledos[1]);
	end

	             if value1 == '2, game' then
			addScanlineEffect('CamGame', false);
	end
	             if value1 == '2, hud' then
			addScanlineEffect('CamHUD', false);
	end
	             if value1 == '2, other' then
			addScanlineEffect('CamOther', false);
	end
	             if value1 == '2, dad' then
			addScanlineEffect('dad', false);
	end
	             if value1 == '2, bf' then
			addScanlineEffect('boyfriend', false);
	end
	             if value1 == '2, gf' then
			addScanlineEffect('gf', false);
	end

	             if value1 == '3, game' then
			addGrainEffect('CamGame', tabledos[1], tabledos[2], false);
            end
	             if value1 == '3, hud' then
			addGrainEffect('CamHUD', tabledos[1], tabledos[2], false);
            end
	             if value1 == '3, other' then
			addGrainEffect('CamOther', tabledos[1], tabledos[2], false);
            end
	             if value1 == '3, dad' then
			addGrainEffect('dad', tabledos[1], tabledos[2], false);
            end
	             if value1 == '3, bf' then
			addGrainEffect('boyfriend', tabledos[1], tabledos[2], false);
            end
	             if value1 == '3, gf' then
			addGrainEffect('gf', tabledos[1], tabledos[2], false);
            end

	             if value1 == '4, game' then
			addTiltshiftEffect('CamGame', tabledos[1], tabledos[2]);
            end
	             if value1 == '4, hud' then
			addTiltshiftEffect('CamHUD', tabledos[1], tabledos[2]);
            end
	             if value1 == '4, other' then
			addTiltshiftEffect('CamOther', tabledos[1], tabledos[2]);
            end
	             if value1 == '4, dad' then
			addTiltshiftEffect('dad', tabledos[1], tabledos[2]);
            end
	             if value1 == '4, bf' then
			addTiltshiftEffect('boyfriend', tabledos[1], tabledos[2]);
            end
	             if value1 == '4, gf' then
			addTiltshiftEffect('gf', tabledos[1], tabledos[2]);
            end

	             if value1 == '5, game' then
			addVCREffect('CamGame', tabledos[1], true, true, true);
	end
	             if value1 == '5, hud' then
			addVCREffect('CamHUD', tabledos[1], true, true, true);
	end
	             if value1 == '5, other' then
			addVCREffect('CamOther', tabledos[1], true, true, true);
	end
	             if value1 == '5, dad' then
			addVCREffect('dad', tabledos[1], true, true, true);
	end
	             if value1 == '5, bf' then
			addVCREffect('boyfriend', tabledos[1], true, true, true);
	end
	             if value1 == '5, gf' then
			addVCREffect('gf', tabledos[1], true, true, true);
	end

	             if value1 == '6, game' then
			addGlitchEffect('CamGame', tabledos[1], tabledos[2], tabledos[3]);
	end
	             if value1 == '6, hud' then
			addGlitchEffect('CamHUD', tabledos[1], tabledos[2], tabledos[3]);
	end
	             if value1 == '6, other' then
			addGlitchEffect('CamOther', tabledos[1], tabledos[2], tabledos[3]);
	end
	             if value1 == '6, dad' then
			addGlitchEffect('dad', tabledos[1], tabledos[2], tabledos[3]);
	end
	             if value1 == '6, bf' then
			addGlitchEffect('boyfriend', tabledos[1], tabledos[2], tabledos[3]);
	end
	             if value1 == '6, gf' then
			addGlitchEffect('gf', tabledos[1], tabledos[2], tabledos[3]);
	end

	             if value1 == '7, game' then
			addPulseEffect('CamGame', tabledos[1], tabledos[2], tabledos[3]);
	end
	             if value1 == '7, hud' then
			addPulseEffect('CamHUD', tabledos[1], tabledos[2], tabledos[3]);
	end
	             if value1 == '7, other' then
			addPulseEffect('CamOther', tabledos[1], tabledos[2], tabledos[3]);
	end
	             if value1 == '7, dad' then
			addPulseEffect('dad', tabledos[1], tabledos[2], tabledos[3]);
	end
	             if value1 == '7, bf' then
			addPulseEffect('boyfriend', tabledos[1], tabledos[2], tabledos[3]);
	end
	             if value1 == '7, gf' then
			addPulseEffect('gf', tabledos[1], tabledos[2], tabledos[3]);
	end

	             if value1 == '8, game' then
			addDistortionEffect('CamGame', tabledos[1], tabledos[2], tabledos[3]);
	end
	             if value1 == '8, hud' then
			addDistortionEffect('CamHUD', tabledos[1], tabledos[2], tabledos[3]);
	end
	             if value1 == '8, other' then
			addDistortionEffect('CamOther', tabledos[1], tabledos[2], tabledos[3]);
	end
	             if value1 == '8, dad' then
			addDistortionEffect('dad', tabledos[1], tabledos[2], tabledos[3]);
	end
	             if value1 == '8, bf' then
			addDistortionEffect('boyfriend', tabledos[1], tabledos[2], tabledos[3]);
	end
	             if value1 == '8, gf' then
			addDistortionEffect('gf', tabledos[1], tabledos[2], tabledos[3]);
	end

	             if value1 == '9, game' then
			addInvertEffect('CamGame', false);
	end
	             if value1 == '9, hud' then
			addInvertEffect('CamHUD', false);
	end
	             if value1 == '9, other' then
			addInvertEffect('CamOther', false);
	end
	             if value1 == '9, dad' then
			addInvertEffect('dad', false);
	end
	             if value1 == '9, bf' then
			addInvertEffect('boyfriend', false);
	end
	             if value1 == '9, gf' then
			addInvertEffect('gf', false);
	end

	             if value1 == '10, game' then
			addGreyscaleEffect(CamGame);
	end
	             if value1 == '10, hud' then
			addGreyscaleEffect(CamHUD);
	end
	             if value1 == '10, other' then
			addGreyscaleEffect(Other);
            end
	             if value1 == '10, dad' then
			addGreyscaleEffect(dad);
	end
	             if value1 == '10, bf' then
			addGreyscaleEffect(boyfriend);
	end
	             if value1 == '10, gf' then
			addGreyscaleEffect(gf);
            end

	             if value1 == '11, game' then
			add3DEffect('CamGame', tabledos[1], tabledos[2], tabledos[3], tabledos[4]);
	end
	             if value1 == '11, hud' then
			add3DEffect('CamHUD', tabledos[1], tabledos[2], tabledos[3], tabledos[4]);
	end
	             if value1 == '11, other' then
			add3DEffect('CamOther', tabledos[1], tabledos[2], tabledos[3], tabledos[4]);
	end
	             if value1 == '11, dad' then
			add3DEffect('dad', tabledos[1], tabledos[2], tabledos[3], tabledos[4]);
	end
	             if value1 == '11, bf' then
			add3DEffect('boyfriend', tabledos[1], tabledos[2], tabledos[3], tabledos[4]);
	end
	             if value1 == '11, gf' then
			add3DEffect('gf', tabledos[1], tabledos[2], tabledos[3], tabledos[4]);
	end

	             if value1 == '12, game' then
			addBloomEffect('CamGame', tabledos[1], tabledos[2]);
	end
	             if value1 == '12, hud' then
			addBloomEffect('CamHUD', tabledos[1], tabledos[2]);
	end
	             if value1 == '12, other' then
			addBloomEffect('CamOther', tabledos[1], tabledos[2]);
	end
	             if value1 == '12, dad' then
			addBloomEffect('dad', tabledos[1], tabledos[2]);
	end
	             if value1 == '12, bf' then
			addBloomEffect('boyfriend', tabledos[1], tabledos[2]);
	end
	             if value1 == '12, gf' then
			addBloomEffect('gf', tabledos[1], tabledos[2]);
	end
end
end