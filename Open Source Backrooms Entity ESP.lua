--[[

    Made with help from the Sirius discord server, aka the same people who made Orion.
    
    Libraries used:
    Kiriot22's ESP Library
    BoredStuff2's (i think) Notification Lib
    Akali Notif Lib (Can't find original creator.)
    Orion UI Lib from the Sirius discord server.


    Made by me (github link https://github.com/fheahdythdr)
    If you do end up using this, please atleast change something. It's open source, so you don't have to, but it'd be nice if you either learn something from this or add compatability patches.

]]--

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/batusz/uilibrarys/main/AkaliNotifLib"))();
local Notify = AkaliNotif.Notify;
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiriot22/ESP-Lib/main/ESP.lua"))()
local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local cg = game.PlaceId

local subgames = {
	8926741973,
	9204234205,
	9193428368,
	9359358716,
	9195387779,
	9185104864,
	9361563014,
	9223234446,
	9236784419,
	9280914973,
	9364689381,
	9431811877,
	9289542174,
	9326578533,
	9196535285
}

if table.find(subgames, cg) then
    
local Window = OrionLib:MakeWindow({Name = "The Backrooms (K. Pixels)", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "",
    PremiumOnly = false
})

Tab:AddButton({
	Name = "Teleport to Poolrooms",
	Callback = function()
		game:GetService("TeleportService"):Teleport(9195387779, LocalPlayer)
	end
})

Tab:AddButton({
    Name = "Teleport to Pipe Dreams",
    Callback = function()
        game:GetService("TeleportService"):Teleport(9359358716, LocalPlayer)
    end
})

Tab:AddButton({
    Name = "Teleport to Abandoned Office",
    Callback = function()
        game:GetService("TeleportService"):Teleport(9193428368, LocalPlayer)
    end
})

Tab:AddButton({
    Name = "Teleport to The Maprooms",
    Callback = function()
        game:GetService("TeleportService"):Teleport(9204234205, LocalPlayer)
    end
})

Tab:AddButton({
    Name = "Teleport to The Backrooms",
    Callback = function()
        game:GetService("TeleportService"):Teleport(8926741973, LocalPlayer)
    end
})

Tab:AddButton({
    Name = "Teleport to Rural Area",
    Callback = function()
        game:GetService("TeleportService"):Teleport(9185104864, LocalPlayer)
    end
})

Tab:AddButton({
    Name = "Teleport to Level 166",
    Callback = function()
        game:GetService("TeleportService"):Teleport(9361563014, LocalPlayer)
    end
})

Tab:AddButton({
    Name = "Teleport to The Archive",
    Callback = function()
        game:GetService("TeleportService"):Teleport(9223234446, LocalPlayer)
    end
})

Tab:AddButton({
    Name = "Teleport to The End",
    Callback = function()
        game:GetService("TeleportService"):Teleport(9236784419, LocalPlayer)
    end
})

Tab:AddButton({
    Name = "Teleport to The Hotel",
    Callback = function()
        game:GetService("TeleportService"):Teleport(9280914973, LocalPlayer)
    end
})

Tab:AddButton({
    Name = "Teleport to Level_Half_Life",
    Callback = function()
        game:GetService("TeleportService"):Teleport(9364689381, LocalPlayer)
    end
})

Tab:AddButton({
    Name = "Teleport to Hazard Course",
    Callback = function()
        game:GetService("TeleportService"):Teleport(9431811877, LocalPlayer)
    end
})

Tab:AddButton({
    Name = "Teleport to Poolrooms: Level 2",
    Callback = function()
        game:GetService("TeleportService"):Teleport(9289542174, LocalPlayer)
    end
})

Tab:AddButton({
    Name = "Teleport to Level !",
    Callback = function()
        game:GetService("TeleportService"):Teleport(9326578533, LocalPlayer)
    end
})
    
local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddBind({
    Name = "Toggle UI",
    Default = Enum.KeyCode.RightShift,
    Hold = false,
    Callback = function()
        if game:GetService("CoreGui").Orion.Enabled == true then
        game:GetService("CoreGui").Orion.Enabled = false
        else
        game:GetService("CoreGui").Orion.Enabled = true
        end
    end    
})

Tab:AddToggle({
	Name = "Toggle Player ESP",
	Default = false,
	Callback = function(Value)
    ESP.Players = Value
	end    
})

Tab:AddToggle({
	Name = "Entity/Exit ESP",
	Default = false,
	Callback = function(Value)
    ESP.EE_ESP = Value
	end    
})


Lib.prompt('INFO', "Default Orion hide keybind is RIGHT SHIFT.", 15)

local alreadyexisting = {
    Color = Color3.new(255, 0, 0),
    Name = "ENTITY",
    RenderInNil = true,
    IsEnabled = "EE_ESP"
}

local EXIT = {
    Color = Color3.new(0, 0, 255),
    Name = "EXIT",
    IsEnabled = "EE_ESP"
}

local cnpc = {
    Color = Color3.new(0, 125, 255),
    Name = "COMBINE",
    IsEnabled = "EE_ESP"
}

local g_man = {
    Color = Color3.new(0, 255, 0),
    Name = "GMAN",
    IsEnabled = "EE_ESP"
}

if game.PlaceId == 8926741973 then

Tab:AddButton({
    Name = "Refresh ESP",
    Callback = function()
    ESP:Add(workspace.ENTITY_1, alreadyexisting)
    ESP:Add(workspace.ENTITY_DANCE, alreadyexisting)
    end
})
 
Lib.prompt('WARNING', "Entity ESP is slightly buggy, re-add in Settings if you can't see the entities.", 15)
Lib.prompt('INFO', "You should see 2 entities.", 15)


ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "ENTITY_1",
    CustomName = "ENTITY"
})

ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "ENTITY_DANCE",
    CustomName = "ENTITY"
})

ESP:AddObjectListener(workspace, {
    Color = Color3.new(0, 255, 255),
    Type = "MeshPart",
    Name = "door01_left_Body",
    CustomName = "Door",
    IsEnabled = "EE_ESP"
})
ESP:AddObjectListener(workspace, {
    Color = Color3.new(100, 255, 0),
    Type = "Model",
    Name = "de_train_securityguard",
    CustomName = "Security Guard"
})

local dcfr = CFrame.new(103.583336, -48.875, 672.625)
local sdump = CFrame.new(605.394348, -18.0952225, 248.928467)
local desg = CFrame.new(-136.011383, 0.889741182, -605.963318)
local nlvl = CFrame.new(385.718597, -22.6462479, 258.561096)
local iarea = CFrame.new(-330.13913, 5.25512266, -209.538269)

Tab:AddButton({
    Name = "Exit Level",
    Callback = function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = dcfr
	wait(0.1)
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = dcfr
    end
})

Tab:AddButton({
	Name = "Teleport to Spamton's Dumpster",
	Callback = function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = sdump
	wait(0.1)
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = sdump
	end
})

Tab:AddButton({
	Name = "Teleport to Security Guard",
	Callback = function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = desg
	wait(0.1)
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = desg
	end
})

Tab:AddButton({
	Name = "Teleport to Next Level",
	Callback = function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = nlvl
	wait(0.1)
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = nlvl
	end
})
Tab:AddButton({
	Name = 'Get "The Iconic Area" Badge',
	Callback = function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = iarea
	wait(0.1)
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = iarea
	end
})

ESP:Add(workspace.ENTITY_1, alreadyexisting)
ESP:Add(workspace.ENTITY_DANCE, alreadyexisting)

elseif game.PlaceId == 9204234205 then
    
ESP:Add(workspace.ENTITY_1, alreadyexisting)
ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "ENTITY_1",
    CustomName = "ENTITY"
})

ESP:Add(workspace.EXIT, EXIT)
ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 255),
    Type = "Part",
    Name = "EXIT",
    CustomName = "EXIT"
})

Tab:AddButton({
    Name = "Exit Level",
    Callback = function()
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.ClassName == "TouchTransmitter" and v.Parent ~= "HumanoidRootPart" and v.Name == "TouchInterest" then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
        end
        end
    end
})

Lib.prompt('WARNING', "Entity ESP is slightly buggy, re-add in Misc if you can't see the entities.", 15)
Lib.prompt('INFO', "You should see 1 entity.", 10)

Tab:AddButton({
    Name = "Refresh ESP",
    Callback = function()
    ESP:Add(workspace.ENTITY_1, alreadyexisting)
    end
})

elseif game.PlaceId == 9193428368 then

Lib.prompt('INFO', "No esp could be made here.", 10)
Lib.prompt('INFO', "The elevator next to spawn is the exit.", 10)

Tab:AddButton({
    Name = "Exit Level",
    Callback = function()
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.ClassName == "TouchTransmitter" and v.Parent ~= "HumanoidRootPart" and v.Name == "TouchInterest" then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
        end
        end
    end
})


elseif game.PlaceId == 9359358716 then
    
Lib.prompt('WARNING', "Entity ESP is slightly buggy, re-add in Misc if you can't see the entities.", 15)
Lib.prompt('INFO', "You should see 2 entities.", 10)

ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "ENTITY_1",
    CustomName = "ENTITY"
})

ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "ENTITY_2",
    CustomName = "ENTITY"
})

ESP:Add(workspace.ENTITY_1, alreadyexisting)
ESP:Add(workspace.ENTITY_2, alreadyexisting)

Tab:AddButton({
    Name = "Refresh ESP",
    Callback = function()
    ESP:Add(workspace.ENTITY_1, alreadyexisting)
    ESP:Add(workspace.ENTITY_2, alreadyexisting)
    end
})

local cdcfr = CFrame.new(475, 3.5999999, 618.5)

Tab:AddButton({
    Name = "Exit Level",
    Callback = function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = cdcfr
    wait(0.1)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = cdcfr
    end
})

Notify({
    Title = " INFO ";
    Description = " No exit ESP could be made. Avoid entities and walk around until you find the exit.";
    Duration = 15;
    });

elseif game.PlaceId == 9223234446 then
    
Lib.prompt('INFO', "No esp could be made here, since there's no entities.", 15.5)

Lib.prompt('INFO', "Exit is behind where you spawn.", 10)

Tab:AddButton({
    Name = "Exit Level",
    Callback = function()
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.ClassName == "TouchTransmitter" and v.Parent ~= "HumanoidRootPart" and v.Name == "TouchInterest" then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
        end
        end
    end
})

elseif game.PlaceId == 9195387779 then
    
Lib.prompt('INFO', "No esp could be made here, since there's no entities.", 15)

Lib.prompt('INFO', "Exit ESP could not be made, since it has a weird name in Dex.", 15)

Tab:AddButton({
    Name = "Exit Level",
    Callback = function()
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.ClassName == "TouchTransmitter" and v.Parent ~= "HumanoidRootPart" and v.Name == "TouchInterest" then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
        end
        end
    end
})

elseif game.PlaceId == 9289542174 then
    
ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Part",
    Name = "Part",
    CustomName = "EXIT"
})

Tab:AddButton({
    Name = "Refresh ESP",
    Callback = function()
    ESP:Add(workspace.Part, EXIT)
    end
})

Tab:AddButton({
    Name = "Exit Level",
    Callback = function()
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.ClassName == "TouchTransmitter" and v.Parent ~= "HumanoidRootPart" and v.Name == "TouchInterest" then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
        end
        end
    end
})

elseif game.PlaceId == 9280914973 then

ESP:Add(workspace.EXIT, EXIT)

Tab:AddButton({
    Name = "Exit Level",
    Callback = function()
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.ClassName == "TouchTransmitter" and v.Parent ~= "HumanoidRootPart" and v.Name == "TouchInterest" then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
        end
        end
    end
})

elseif game.PlaceId == 9361563014 then
   
local tcfr = game:GetService("Workspace")["tile/tilefloor013a"].CFrame
  
Tab:AddButton({
    Name = "Exit Level",
    Callback = function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = tcfr
    end
})

elseif game.PlaceId == 9326578533 then
    
local dcfr = game:GetService("Workspace")["tools/toolswhite"].CFrame

Tab:AddButton({
    Name = "Exit Level",
    Callback = function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = dcfr
    end
})

elseif game.PlaceId == 8539953031 then
    
Lib.prompt('INFO', "There is no way to teleport back to Rural Area here.", 15)

ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "Backrooms Partygoer",
    CustomName = "PARTYGOER"
})

elseif game.PlaceId == 3227921645 then
    
Lib.prompt('INFO', "This is a Backrooms game made by a different person, however I have still made Entity/Exit ESP for it.", 15)
Lib.prompt('INFO', 'Loading ESP for "The True Backrooms" by Kord_K', 15)

ESP:Add(workspace.ExitTriggers.SpeakerPlaceTrigger, EXIT)
ESP:Add(workspace.ExitTriggers.TeleTrigger2, EXIT)
ESP:Add(workspace.ExitTriggers.ExitTrigger, EXIT)
ESP:Add(workspace.ExitTriggers.TeleTrigger3, EXIT)
ESP:Add(workspace.ExitTriggers.AlternateExitTrigger, EXIT)
ESP:Add(workspace.ExitTriggers.TeleTrigger1, EXIT)

Lib.prompt('INFO', "I will not be making ESP for any sub-game here, as my goal was to make ESP for StopPlaying_MyGames' The Backrooms game.", 20)

elseif game.PlaceId == 9364689381 then
game:GetService("CoreGui").Orion.Enabled = false
Lib.prompt('INFO', "Orion has been hidden since this game forces first person.", 15)

ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "CombineNPC",
    CustomName = "COMBINE"
})

ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "Gman",
    CustomName = "GMAN"
})

ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Part",
    Name = "Portal",
    CustomName = "Portal"
})

ESP:Add(workspace.NonHostileCombineNPC, cnpc)
ESP:Add(workspace.Gman, g_man)

end end
ESP:Toggle(true)
