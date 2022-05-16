--[[
    Made with help from the Sirius discord server, aka the same people who made Orion.
    
    Libraries used:
    Kiriot22's ESP Library
    BoredStuff2's (i think) Notification Lib
    Orion UI Lib from the Sirius discord server.

    Made by me (github link https://github.com/fheahdythdr)
    If you do end up using this, please atleast change something. It's open source, so you don't have to, but it'd be nice if you either learn something from this or add compatability patches.
]]--

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiriot22/ESP-Lib/main/ESP.lua"))()
local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

cg = game.PlaceId

subgames = {
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
	9196535285,
	9590705492,
	8539953031,
	9595282079,
	9606387886,
	9627727722
}

hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

if table.find(subgames, cg) then
    
local Window = OrionLib:MakeWindow({Name = "A Wanderer's Utilities", HidePremium = false, SaveConfig = true, ConfigFolder = "shitty backrooms esp"})

local Tab = Window:MakeTab({
    Name = "Game Teleports",
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
    Name = "Teleport to Mr Kitty's House",
    Callback = function()
        game:GetService("TeleportService"):Teleport(9627727722, LocalPlayer)
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

Tab:AddButton({
    Name = "Teleport to Level 434",
    Callback = function()
        game:GetService("TeleportService"):Teleport(9590705492, LocalPlayer)
    end
})

Tab:AddButton({
    Name = "Teleport to The Leanrooms",
    Callback = function()
        game:GetService("TeleportService"):Teleport(9606387886, LocalPlayer)
    end
})
    
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddBind({
    Name = "Toggle UI",
    Default = Enum.KeyCode.RightShift,
    Hold = false,
    Save = true,
    Flag = "UIToggle",
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
        Save = true,
	Flag = "PlayerESP",
	Callback = function(Value)
    ESP.Players = Value
	end    
})

Tab:AddToggle({
	Name = "Exit ESP",
	Default = false,
	Save = true,
	Flag = "ExitESP",
	Callback = function(Value)
    	ESP.EX_ESP = Value
	end    
})
	
Tab:AddToggle({
	Name = "Entity ESP",
	Default = false,
	Save = true,
        Flag = "EntityESP",
	Callback = function(Value)
    	ESP.ENT_ESP = Value
	end    
})
	
Tab:AddToggle({
	Name = "Other ESP",
	Default = false,
	Save = true,
	Flag = "OtherESP",
	Callback = function(Value)
    	ESP.MISC_ESP = Value
	end    
})
	
Tab:AddLabel("Original script creator: fheahdythdr.")
Tab:AddLabel("Discord username and tag is chad gaming#7914")

--[[
	
Tab:AddLabel("Script modified by: _________")
Tab:AddLabel("Discord username and tag is _________")
use this if you want to add credits for yourself after modifying.
	
]]--


Lib.prompt('INFO', "Default Orion hide keybind is RIGHT SHIFT.", 15)

local alreadyexisting = {
    Color = Color3.new(255, 0, 0),
    Name = "ENTITY",
    RenderInNil = true,
    IsEnabled = "ENT_ESP"
}

local EXIT = {
    Color = Color3.new(0, 0, 255),
    Name = "EXIT",
    IsEnabled = "EX_ESP"
}

local cnpc = {
    Color = Color3.new(0, 125, 255),
    Name = "COMBINE",
    IsEnabled = "ENT_ESP"
}

local g_man = {
    Color = Color3.new(0, 255, 0),
    Name = "GMAN",
    IsEnabled = "ENT_ESP"
}

if game.PlaceId == 8926741973 then

		
Tab:AddButton({
    Name = "Refresh ESP (while true do loop)",
    Callback = function()
        while true do
    wait(0.25)
    ESP:Add(workspace.ENTITY_1, alreadyexisting)
    ESP:Add(workspace.ENTITY_DANCE, alreadyexisting)
    end
 
    end
})

Lib.prompt('INFO', "You should see 2 entities.", 15)


ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "ENTITY_1",
    CustomName = "ENTITY",
    IsEnabled = "ENT_ESP"
})

ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "ENTITY_DANCE",
    CustomName = "ENTITY",
    IsEnabled = "ENT_ESP"
})

ESP:AddObjectListener(workspace, {
    Color = Color3.new(0, 255, 255),
    Type = "MeshPart",
    Name = "door01_left_Body",
    CustomName = "Door",
    IsEnabled = "EX_ESP"
})
ESP:AddObjectListener(workspace, {
    Color = Color3.new(100, 255, 0),
    Type = "Model",
    Name = "de_train_securityguard",
    CustomName = "Security Guard",
    IsEnabled = "MISC_ESP"
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
		
end

if game.PlaceId == 9204234205 then
    
ESP:Add(workspace.ENTITY_1, alreadyexisting)
ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "ENTITY_1",
    CustomName = "ENTITY",
    IsEnabled = "ENT_ESP"
})

ESP:Add(workspace.EXIT, EXIT)
ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 255),
    Type = "Part",
    Name = "EXIT",
    CustomName = "EXIT",
    IsEnabled = "EX_ESP"
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

Lib.prompt('INFO', "You should see 1 entity.", 10)

Tab:AddButton({
    Name = "Refresh ESP (while true do loop)",
    Callback = function()		
while true do
wait(0.25)
ESP:Add(workspace.ENTITY_1, alreadyexisting)
end
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

end
		
if game.PlaceId == 9359358716 then
    
Lib.prompt('WARNING', "Entity ESP is slightly buggy, re-add in Misc if you can't see the entities.", 15)
Lib.prompt('INFO', "You should see 2 entities.", 10)

ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "ENTITY_1",
    CustomName = "ENTITY",
    IsEnabled = "ENT_ESP"
})

ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "ENTITY_2",
    CustomName = "ENTITY",
    IsEnabled = "ENT_ESP"
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

end
		
if game.PlaceId == 9223234446 then
    
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

end
		
if game.PlaceId == 9195387779 then
    
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
		
end

if game.PlaceId == 9289542174 then
    
ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Part",
    Name = "Part",
    CustomName = "EXIT",
    IsEnabled = "EX_ESP"
})

    ESP:Add(workspace.Part, EXIT)

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

end		
		
if game.PlaceId == 9280914973 then

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

end	
	
if game.PlaceId == 9361563014 then
   
local tcfr = game:GetService("Workspace")["tile/tilefloor013a"].CFrame
  
Tab:AddButton({
    Name = "Exit Level",
    Callback = function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = tcfr
    end
})

end
		
if game.PlaceId == 9326578533 then
    
local dcfr = game:GetService("Workspace")["tools/toolswhite"].CFrame

Tab:AddButton({
    Name = "Exit Level",
    Callback = function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = dcfr
    end
})

end
		
if game.PlaceId == 8539953031 then
    
Lib.prompt('INFO', "There is no way to teleport back to Rural Area here.", 15)

ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "Backrooms Partygoer",
    CustomName = "PARTYGOER",
    IsEnabled = "ENT_ESP"
})

end
		
if game.PlaceId == 9364689381 then
game:GetService("CoreGui").Orion.Enabled = false
Lib.prompt('INFO', "Orion has been hidden since this game forces first person.", 15)

ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "CombineNPC",
    CustomName = "COMBINE",
    IsEnabled = "ENT_ESP"
})

ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "Gman",
    CustomName = "GMAN",
    IsEnabled = "ENT_ESP"
})

ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Part",
    Name = "Portal",
    CustomName = "Portal",
    IsEnabled = "EX_ESP"
})

ESP:Add(workspace.NonHostileCombineNPC, cnpc)
ESP:Add(workspace.Gman, g_man)

end
		
if game.PlaceId == 9590705492 then

Tab:AddButton({
    Name = "Exit Level",
    Callback = function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.609375, -37.8332214, -62.0799789)
    end
})

Lib.prompt('INFO', "No entities are here.", 10)
		
end
		
if game.PlaceId == 9595282079 then

ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Part",
    Name = "Part",
    CustomName = "EXIT",
    IsEnabled = "EX_ESP"
})

ESP:Add(workspace.Part, EXIT)

Tab:AddButton({
    Name = "Exit Level",
    Callback = function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-155.5, 4.00000381, 118.636024)
    end
})
		
end
		
if game.PlaceId == 9606387886 then
	
ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "ENTITY_DANCE",
    CustomName = "Entity",
    IsEnabled = "ENT_ESP"
})

Tab:AddButton({
    Name = "Refresh ESP (while true do loop)",
    Callback = function()
    while true do
    wait(0.25)
    ESP:Add(workspace.ENTITY_DANCE, alreadyexisting)
    ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "ENTITY_DANCE",
    CustomName = "Entity",
    IsEnabled = "ENT_ESP"
})
end
end
})

ESP:Add(workspace.ENTITY_DANCE, alreadyexisting)
ESP:Add(workspace.Part, EXIT)
		
end

if game.PlaceId == 9627727722 then
		
ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 255, 0255),
    Type = "Part",
    Name = "Mr. Kitty",
    CustomName = "Mr Kitty",
    IsEnabled = "ENT_ESP"
})
		
ESP:AddObjectListener(workspace, {
    Color = Color3.new(0, 255, 255),
    Type = "MeshPart",
    Name = "door01_left_Body",
    CustomName = "Exit",
    IsEnabled = "EX_ESP"
})

local gromitmug = {
	Name = "Gromit Mug",
	Color = Color3.new(0, 0, 255)
}
		
local plushie = {
	Name = "Plushie",
	Color = Color3.new(0, 0, 255)
}
		
ESP:Add(workspace.GromitMug, gromitmug)
ESP:Add(workspace.Plushie, plushie)

Tab:AddButton({
    Name = "Exit Level",
    Callback = function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48.6000328, 6.88333511, -84.4833221)
		wait(0.1)
		fireproximityprompt(game:GetService("Workspace")["door01_left_Body"].ProximityPrompt)
    end
})
		
end
ESP:Toggle(true)

local Tab = Window:MakeTab({
    Name = "Other Scripts",
    Icon = "rbxassetid://5822168115",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Infinite-Store/Infinite-Store/main/main.lua"))()
    end
})

Tab:AddButton({
    Name = "Fate's Admin",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
    end
})

Tab:AddButton({
    Name = "Mollermethod",
    Callback = function()
        			loadstring(game:HttpGet 'https://mthd.ml') {
				bracket_toggle = Enum.KeyCode.LeftBracket;
				debug = false;
				volume = 5;
				bracket_external = false;
			theme = {
				accent = "#ff4539";
				background = "#1c1c1c";
				foreground = "#f0f6fc";
			};
		}
end
})

Tab:AddLabel("Mollermethod's keybind is Left Bracket, aka [")

Tab:AddButton({
    Name = "Rejoin Game",
    Callback = function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,game.JobId)
    end
})
	
Tab:AddButton({
    Name = "Join our Discord!",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/fheahdythdr/legendary-train/main/discord%20invite.lua"))()
    end
})
	
Tab:AddButton({
    Name = "Another Backrooms Script (made by _nil on scriptblox)",
    Callback = function()
   loadstring(game:HttpGet("https://rawscripts.net/raw/The-Backrooms-(K.-Pixels)-GUI-2121"))()
    end
})

local Tab = Window:MakeTab({
    Name = "Modifying",
    Icon = "rbxassetid://4498590361",
    PremiumOnly = false
})

Tab:AddParagraph("How to modify this script","Hello there! First off, use Dark Dex (linked below) to find CFrames of exits and names of entities, then modify accordingly.")

Tab:AddButton({
    Name = "Dark Dex",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/legendary-train/main/dark%20dex.lua"))()
    end
})
	
local Tab = Window:MakeTab({
    Name = "Other Backrooms Scripts",
    Icon = "",
    PremiumOnly = false
})
	
Tab:AddButton({
    Name = "Unnamed GUI",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/The-Backrooms-(K.-Pixels)-GUI-2121"))()
    end
})
	
Tab:AddButton({
    Name = "Set Clipboard to Source of Unnamed GUI",
    Callback = function()
        setclipboard("https://scriptblox.com/script/The-Backrooms-(K.-Pixels)-GUI-2121")
    end
})

OrionLib:Init()
end

local label

for i,v in pairs(game:GetService("CoreGui").Orion:GetDescendants()) do
    if v:IsA("TextLabel") and v.Text == "Standard" then
        label = v
    end
end

label.Text = "Wanderer"
