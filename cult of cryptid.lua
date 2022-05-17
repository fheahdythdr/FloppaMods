if identifyexecutor() == "ScriptWare" then
	syn.queue_on_teleport = queue_on_teleport
end

workspace = game:GetService("Workspace")
hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
pid = game.PlaceId

function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end

loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/FloppaMods/main/funny%20function%20thing.lua"))()

local firething = {
    [1] = "PlacedLog",
    [2] = getNil("Log", "Tool"),
    [3] = getNil("HoldingLogs", "Animation")
}


local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "cult of the cryptids script but i smoked meth", HidePremium = false, SaveConfig = true, ConfigFolder = "funni coc esp"})

local Tab2 = Window:MakeTab({
    Name = "Main",
    Icon = "",
    PremiumOnly = false
})

local Tab1 = Window:MakeTab({
    Name = "Misc",
    Icon = "",
    PremiumOnly = false
})

if pid == 5202597474 then

cservice = game:GetService("ReplicatedStorage").Events.CollectableService

if workspace.CollectablesPart1.Active:FindFirstChild("Fuel"):FindFirstChild("Fuel1") then

args1 = {
    [1] = "FoundItemPart1",
    [2] = workspace.CollectablesPart1.Active.Fuel.Fuel1.Fuel
}

end

if workspace.CollectablesPart1.Active:FindFirstChild("CrowbarHammer") then

args2 = {
    [1] = "FoundItemPart1",
    [2] = workspace.CollectablesPart1.Active.CrowbarHammer.CrowbarHammer
}

end

if workspace.CollectablesPart1.Active:FindFirstChild("Keys") then

args3 = {
    [1] = "FoundItemPart1",
    [2] = workspace.CollectablesPart1.Active.Keys.Keys
}

end

if workspace.CollectablesPart1.Active:FindFirstChild("Tire"):FindFirstChild("Tire1") then

args4 = {
    [1] = "FoundItemPart1",
    [2] = workspace.CollectablesPart1.Active.Tire.Tire1.Tire
}

end

if workspace.CollectablesPart1.Active:FindFirstChild("ToolKit") then

args5 = {
    [1] = "FoundItemPart1",
    [2] = workspace.CollectablesPart1.Active.ToolKit.ToolKit
}

end

end

if pid == 6996352354 then

wto = workspace.Totems
gservice = game:GetService("ReplicatedStorage").Remotes.RemoteEvents.GameService
tservice = game:GetService("ReplicatedStorage").Remotes.RemoteEvents.ToolService

arg1 = {
    [1] = "PlacementFireStarter",
    [2] = "Clothing"
}
    
arg2 = {
    [1] = "PlacementFireStarter",
    [2] = "Vacuum"
}

arg3 = {
    [1] = "PlacementFireStarter",
    [2] = "HandSanitizer"
}

arg4 = {
    [1] = "PlacementFireStarter",
    [2] = "Lighter"
}

arg5 = {
    [1] = "MasterDoorOpen"
}

end

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiriot22/ESP-Lib/main/ESP.lua"))()

Tab1:AddBind({
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

local Tab = Window:MakeTab({
    Name = "Teleports",
    Icon = "",
    PremiumOnly = false
})

Tab:AddLabel("Non-Backrooms Teleports")

Tab:AddButton({
    Name = "Teleport to Lobby",
    Callback = function()
        game:GetService("TeleportService"):Teleport(5082331079, LocalPlayer)
    end
})

Tab:AddButton({
    Name = "Teleport to Chapter 1 (Exploiter/Private Lobby)",
    Callback = function()
        game:GetService("TeleportService"):Teleport(5202597474, LocalPlayer)
    end
})

Tab:AddButton({
    Name = "Teleport to Chapter 2 (Exploiter/Private Lobby, Origin)",
    Callback = function()
        game:GetService("TeleportService"):Teleport(6996352354, LocalPlayer)
    end
})

Tab1:AddToggle({
    Name = "Toggle Player ESP",
    Default = false,
    Save = true,
    Flag = "esp",
    Callback = function(Value)
        ESP.Players = Value
    end
})

Tab2:AddButton({
    Name = "Fullbright",
    Callback = function()
        game:GetService("Lighting").Brightness = 2
        game:GetService("Lighting").ClockTime = 14
        game:GetService("Lighting").FogEnd = 100000
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
    end
})

ESP:Toggle(true)

Lib.prompt('INFO', "Default Orion hide keybind is RIGHT SHIFT.", 15)

if pid == 5082331079 then
    
Lib.prompt('INFO', "This is the lobby, there's no esp here.", 15)
	
end

hget("tablefortload")

tload(chapter1, cg, "cotc_1")
tload(chapter2, cg, "cotc_2")

local Tab = Window:MakeTab({
    Name = "Utilities",
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

local Tab = Window:MakeTab({
    Name = "Modifying",
    Icon = "rbxassetid://4498590361",
    PremiumOnly = false
})

Tab:AddParagraph("How to modify this script","Dark Dex and SimpleSpy are your best utilities for this, just find things you wanna add (ex. silent aim) and then modify according things.")

Tab:AddButton({
    Name = "Dark Dex",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/legendary-train/main/dark%20dex.lua"))()
    end
})

Tab:AddButton({
    Name = "SimpleSpy",
    Callback = function()
        loadstring(game:HttpGetAsync("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
    end
})
OrionLib:Init()
