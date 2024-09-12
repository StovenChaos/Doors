-- loadstring(game:HttpGet('https://raw.githubusercontent.com/StovenChaos/Doors/main/Old%20seek.lua'))()
for i, seek in pairs(workspace:GetChildren()) do
	if seek.Name == "SeekMovingNewClone" then
		wait(0.5)
		local SeekRig = seek.SeekRig
		local Figure = seek.Figure
  	  SeekRig.Head.Eye.Decal.Texture = "rbxassetid://0"
		for i,v in pairs(SeekRig:GetDescendants()) do
			if v:IsA("BasePart") then
				v.Transparency = 1
			end
			if v.Name == "StringCheese" then
				v:Destroy()
			end
		end
		Figure.Transparency = 0
		Figure.Attachment.ParticleEmitter.Enabled = true
	end
end