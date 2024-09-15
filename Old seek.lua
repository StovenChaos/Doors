-- loadstring(game:HttpGet('https://raw.githubusercontent.com/StovenChaos/Doors/main/Old%20seek.lua'))()
local findseek(seek)
	if seek.Name == "SeekMoving" or seek.Name == "SeekMovingNewClone" then
		task.wait(0.5)
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
	else
		return
	end
end
for i, seek in pairs(workspace:GetChildren()) do
	findseek(seek)
end
workspace.ChildAdded:Connect(function(seek)
	findseek(seek)
end
require(game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("old seek activated :\3", nil, 5);