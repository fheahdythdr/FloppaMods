--[[

    Made with help from the Sirius discord server, aka the same people who made Orion.
    
    Libraries used:
    Kiriot22's ESP Library
    BoredStuff2's (i think) Notification Lib
    Akali Notif Lib (Can't find original creator.)
    Orion UI Lib from the Sirius discord server.

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
    9289542174
}

if table.find(subgames, cg) and syn then
	
game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started then
        syn.queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/fheahdythdr/FloppaMods/main/Open%20Source%20Backrooms%20Entity%20ESP.lua'))()")
    end
end)
end

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
    
local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddBind({
    Name = "Toggle Ui",
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

Lib.prompt('INFO', "Default Orion hide keybind is RIGHT SHIFT.", 15)

local alreadyexisting = {
    Color = Color3.new(255, 0, 0),
    Name = "ENTITY",
    RenderInNil = true
}

local EXIT = {
    Color = Color3.new(0, 0, 255),
    Name = "EXIT"
}

local cnpc = {
    Color = Color3.new(0, 125, 255),
    Name = "COMBINE"
}

local g_man = {
    Color = Color3.new(0, 255, 0),
    Name = "GMAN"
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
    CustomName = "Door"
})

Tab:AddButton({
    Name = "Exit Level (only works when esp loads first door)",
    Callback = function()
	firetouchinterest(game:GetService("Players").LocalPlayer, game:GetService("Workspace")["door01_left_Body"].TouchInterest, 0)
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
    Color = Color3.new(255, 0, 0),
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

Lib.prompt('WARNING', "Entity ESP is slightly buggy, re-add in Settings if you can't see the entities.", 15)
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
    
Lib.prompt('WARNING', "Entity ESP is slightly buggy, re-add in Settings if you can't see the entities.", 15)
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

Notify({
    Description = " INFO ";
    Title = " No exit ESP could be made. Avoid entities and walk around until you find the exit.";
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
OrionLib:Init()
