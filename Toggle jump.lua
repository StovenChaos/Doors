--[[ loadstring(game:HttpGet('https://raw.githubusercontent.com/StovenChaos/Doors/main/Toggle%20jump.lua'))()
this basically toggle the attribute where if you can jump or not ]]
local c = game.Players.LocalPlayer.Character if c:GetAttribute("CanJump") then c:SetAttribute("CanJump", false) else c:SetAttribute("CanJump", true) end