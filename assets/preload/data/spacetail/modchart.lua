function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " downscroll: " .. downscroll)
end


function update (elapsed) -- example https://twitter.com/KadeDeveloper/status/1382178179184422918
	local currentBeat = (songPos / 1000)*(bpm/60)
	for i=0,7 do
	if curStep >= 400 then
		setActorX(_G['defaultStrum'..i..'X'] + 8 * math.sin((currentBeat + i*3) * math.pi), i)
		setActorY(_G['defaultStrum'..i..'Y'] + 8 * math.sin((currentBeat + i*.75) * math.pi), i)
	end
	end
end

function beatHit (beat)
   -- do nothing
end

function stepHit (step)
   -- do nothing
end

function keyPressed (key)
   -- do nothing
end

print("Mod Chart script loaded :)")