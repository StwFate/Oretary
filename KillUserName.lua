--[[
Oretary Script Made By Mayx#4752
Kill Username
]]--

function getp(String) -- Credit to Timeless/xFunnieuss for helping find player's string
    local Found = nil
    local strl = String:lower()
    if strl == "all" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            Found = "all"
        end
    elseif strl == "others" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                Found = "others"
            end
        end   
	elseif strl == "me" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name == game.Players.LocalPlayer.Name then
                Found = "me"
            end
        end  
    else
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                Found = v
            end
        end    
    end
    return Found
end

local plr = game.Players.LocalPlayer; local char = plr.Character; local speaker = plr

function GetTool()
	local tool
	for _,v in pairs(speaker.Backpack:GetChildren()) do
		if v.Name ~= "FISTS" then
			if v:FindFirstChild("JokelCore_GunScriptLocal") then
			    tool = v
			end
		end
	end
	return tool
end

function tooldamage()
    for _,v in pairs(game:GetService("ReplicatedStorage")["Jokel_EngineV2"]["Jokel_Gun_Modules"]:GetChildren()) do
        if char:FindFirstChildOfClass("Tool") then
            local name = tostring(char:FindFirstChildOfClass("Tool"))
            if v.Name == name then
                local settings = v[name.."_Settings"]
                for _,v in pairs(require(settings)) do
                    return v.BaseDamage
                end
            end
        end
    end
end

function rhit(player,damage)
pcall(function()

local v = getp(tostring(player))

GetTool().Parent = game.Players.LocalPlayer.Character

local ohInstance1 = v.Character.Humanoid
local ohInstance2 = v.Character.Torso
local ohNumber3 = damage
local ohVector34 = Vector3.new((0.97350567579269), (-0.004636135417968), (-0.22861613333225))
local ohNumber5 = 1
local ohNumber6 = 0
local ohBoolean7 = false
local ohInstance8 = v.Character["Head"]
for i=1,6 do
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").JokelCore_GunScriptServer.Data___Success__Success:GetChildren()) do
v:FireServer(ohInstance1, ohInstance2, ohNumber3, ohVector34, ohNumber5, ohNumber6, ohBoolean7, ohInstance8)
end
end
end)
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Backpack
end

function hit(player,damage)
pcall(function()

local v = getp(tostring(player))

--GetTool().Parent = game.Players.LocalPlayer.Character

local ohInstance1 = v.Character.Humanoid
local ohInstance2 = v.Character.Torso
local ohNumber3 = damage
local ohVector34 = Vector3.new((0.97350567579269), (-0.004636135417968), (-0.22861613333225))
local ohNumber5 = 1
local ohNumber6 = 0
local ohBoolean7 = false
local ohInstance8 = v.Character["Head"]
for i=1,6 do
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").JokelCore_GunScriptServer.Data___Success__Success:GetChildren()) do
v:FireServer(ohInstance1, ohInstance2, ohNumber3, ohVector34, ohNumber5, ohNumber6, ohBoolean7, ohInstance8)
end
end
end)
--game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Backpack
end
