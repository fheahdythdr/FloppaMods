if identifyexecutor() == "ScriptWare" then
	syn.queue_on_teleport = queue_on_teleport
end

workspace = game:GetService("Workspace")
hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
pid = game.PlaceId

function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end

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

elseif pid == 5202597474 then
    
ESP:AddObjectListener(workspace.TotemServiceMain.Totems, {
    Color = Color3.fromRGB(255, 0, 255),
})

ESP:AddObjectListener(workspace.TotemServiceMain.RareTotems, {
    Color = Color3.fromRGB(255, 0, 255),
})

ESP:AddObjectListener(workspace.CollectablesPart1.Active, {
    Color = Color3.fromRGB(0, 255, 0)
})

ESP:AddObjectListener(workspace.CollectablesPart2.ActiveItems, {
    Color = Color3.fromRGB(0, 255, 0)
})

--esp

Tab1:AddButton({
    Name = "Cryptid ESP",
    Callback = function()
while true do
wait(0.5)
ESP:AddObjectListener(workspace.Cryptids, {
    Color = Color3.fromRGB(255, 0, 0)
})
end
Lib.prompt('INFO', "You might see the cryptids flashing, I had to use a while true do loop for it, don't mind it.", 17.5)
end
})

Tab1:AddButton({
    Name = "Houseguest ESP",
    Callback = function()
    while true do
        wait(0.5)
    ESP:AddObjectListener(workspace, {
        Color = Color3.fromRGB(255, 0, 0),
        Name = "NervousHouseguest",
        CustomName = "Nervous Houseguest"
    })
end
Lib.prompt('INFO', "Used another while true do loop for this one.", 15)
    end
})

--teleports section
Tab:AddLabel("Backrooms Teleports")

Tab:AddButton({
    Name = "Teleport to The Backrooms",
    Callback = function()
    hrp.CFrame = CFrame.new(-751.821838, 10.3196249, -5103.88135)
    wait(0.1)
    hrp.CFrame = CFrame.new(-751.821838, 10.3196249, -5103.88135)
    end
})

Tab:AddButton({
    Name = "Teleport to Pipe Dreams",
    Callback = function()
        game:GetService("TeleportService"):Teleport(9341597882, LocalPlayer)
    end
})

Tab:AddButton({
    Name = "Teleport to Poolrooms",
    Callback = function()
        if pid ~= 9341597882 then
	    Lib.prompt("info", "oi ur not in the right game, sending you over", 15)
	    wait(7.5)
            game:GetService("TeleportService"):Teleport(9341597882, LocalPlayer)
            if syn then
                syn.queue_on_teleport('wait(10) game:GetService("Players").LocalPlayer:WaitForChild("Character") end game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1614.55, 193.498, 15.7132)')
            end
        elseif pid == 9341597882 then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1614.55, 193.498, 15.7132)
        end
    end
})

--collection things

Tab2:AddButton({
    Name = "Collect all Totems",
    Callback = function()
        for i,v in pairs(workspace.TotemServiceMain.Totems:GetDescendants()) do
            if v:IsA("ClickDetector") then
                fireclickdetector(v)
            end
        end
        wait()
        for i,v in pairs(workspace.TotemServiceMain.RareTotems:GetDescendants()) do
            if v:IsA("ClickDetector") then
                fireclickdetector(v)
            end
        end
    end
})

Tab2:AddButton({
    Name = "Collect All Fuses, Wires and Lightbulbs",
    Callback = function()
        for i,v in pairs(workspace.CollectablesPart2.ActiveItems:GetDescendants()) do
            if v:IsA("ClickDetector") and v.Parent:IsA("Model") then
                fireclickdetector(v)
            end
        end
    end
})

Tab2:AddButton({
    Name = "Collect All Batteries",
    Callback = function()
        for i,v in pairs(workspace.Gameplay.Batteries:GetDescendants()) do
            if v:IsA("ClickDetector") and v.Parent:IsA("Model") then
                fireclickdetector(v)
            end
        end
    end
})

Tab2:AddButton({
    Name = "Finish Part 1",
    Callback = function()
    if workspace.CollectablesPart1.Active.Fuel.Fuel1.Fuel then
    cservice:FireServer(unpack(args1))
    end
    if workspace.CollectablesPart1.Active.CrowbarHammer.CrowbarHammer then
    cservice:FireServer(unpack(args2))
    end
    if workspace.CollectablesPart1.Active.Keys.Keys then
    cservice:FireServer(unpack(args3))
    end
    if workspace.CollectablesPart1.Active.Tire.Tire1.Tire then
    cservice:FireServer(unpack(args4))
    end
    if workspace.CollectablesPart1.Active.ToolKit.ToolKit then
    cservice:FireServer(unpack(args5))
    end
    wait(0.1)
    if workspace.Map.PreLoadedMap_1.FoundObjects then
    fireclickdetector(workspace.Map.PreLoadedMap_1.FoundObjects:WaitForChild("Sparkles"):WaitForChild("ClickDetector"))
    end
    end
})

Tab2:AddButton({
    Name = "Remove Trees",
    Callback = function()
        game:GetService("Workspace").Map.Trees:Destroy()
    end
})

Tab2:AddParagraph("Info", "You can only multiply up to 50, don't try changing value afterwards either else it'll break.")
Tab2:AddTextbox({
	Name = "Multiply Bullets Fired",
	Default = "1",
	TextDisappear = true,
	Callback = function(Value)
        local settings = {repeatamount = Value, exceptions = {"SayMessageRequest","GunService","CryptidService","AdminService","PartOne","ControlService","CollectableService","GameService","AudioService","GuiService","ShowMessage","LoadService","EndingService","ToolService","PetService","GivePets","SkinService","ApplySkin","BuyCrate","SpawnPets","RemovePet","TotemService","TotemGUIService","BecomeService"}}
        local mt = getrawmetatable(game)
        local old = mt.__namecall
        setreadonly(mt, false)
        mt.__namecall = function(uh, ...)
               local args = {...}
               local method = getnamecallmethod()
               for i,o in next, settings.exceptions do
                       if uh.Name == o then
                           return old(uh, ...)
                       end
               end
               if method == "FireServer" or method == "InvokeServer" then
                       for i = 1,settings.repeatamount do
                           old(uh, ...)
                       end
               end
               return old(uh, ...)
        end
        setreadonly(mt, true)
	end	  
})

elseif pid == 6996352354 then
 
ESP:AddObjectListener(workspace.Totems, {
    Color = Color3.fromRGB(255, 0, 255),
})

Tab2:AddButton({
    Name = "Add Objects to ESP (underground hideout)",
    Callback = function()
        
    ESP:AddObjectListener(workspace.Map.UndergroundHidout, {
    Color = Color3.fromRGB(255, 0, 0),
    Name = "CartoonCat",
    CustomName = "Cartoon Cat"
})

ESP:AddObjectListener(workspace.Map.UndergroundHidout.Doors, {
    Color = Color3.fromRGB(0, 0, 255),
    CustomName = "Door"
})
end
})

ESP:AddObjectListener(workspace.Cryptids, {
    Color = Color3.fromRGB(255, 0, 0),
})
  
Tab2:AddButton({
    Name = "Refresh cryptids ESP",
    Callback = function()
while true do
wait(0.1)
ESP:AddObjectListener(workspace.Cryptids, {
    Color = Color3.fromRGB(255, 0, 0),
})

end
end
}) 

Tab2:AddButton({
    Name = "Collect all Totems (takes a while)",
    Callback = function()
        getgenv().HRPOSITION = hrp.CFrame
        hrp.CFrame = workspace.Totems.Totem1.CFrame
        wait(1)
        fireclickdetector(workspace.Totems.Totem1.ClickDetector)
        wait(1)
        hrp.CFrame = workspace.Totems.Totem2.CFrame
        wait(1)
        fireclickdetector(workspace.Totems.Totem2.ClickDetector)
        wait(1)
        hrp.CFrame = workspace.Totems.Totem3.CFrame
        wait(1)
        fireclickdetector(workspace.Totems.Totem3.ClickDetector)
        wait(1)
        hrp.CFrame = workspace.Totems.Totem4.CFrame
        wait(1)
        fireclickdetector(workspace.Totems.Totem4.ClickDetector)
        wait(1)
        hrp.CFrame = wto.Totem5.CFrame
        wait(1)
        fireclickdetector(wto.Totem5.ClickDetector)
        wait(1)
        hrp.CFrame = wto.Totem6.CFrame
        wait(1)
        fireclickdetector(wto.Totem6.ClickDetector)
        wait(1)
        hrp.CFrame = wto.Totem7.CFrame
        wait(1)
        fireclickdetector(wto.Totem7.ClickDetector)
        wait(1)
        hrp.CFrame = wto.Totem8.CFrame
        wait(1)
        fireclickdetector(wto.Totem8.ClickDetector)
        wait(1)
        hrp.CFrame = wto.RareTotem1.CFrame
        wait(1)
        fireclickdetector(wto.RareTotem1.ClickDetector)
        wait(1)
        hrp.CFrame = workspace.Totems.RareTotem2.CFrame
        wait(1)
        fireclickdetector(workspace.Totems.RareTotem2.ClickDetector)
        wait(1)
        hrp.CFrame = workspace.Totems.RareTotem3.CFrame
        wait(1)
        fireclickdetector(workspace.Totems.RareTotem3.ClickDetector)
        wait(1)
        hrp.CFrame = workspace.Totems.RareTotem4.CFrame
        wait(1)
        fireclickdetector(workspace.Totems.RareTotem4.ClickDetector)
        wait(1)
        hrp.CFrame = wto.RareTotem5.CFrame
        wait(1)
        fireclickdetector(wto.RareTotem5.ClickDetector)
        wait(1)
        hrp.CFrame = wto.RareTotem6.CFrame
        wait(1)
        fireclickdetector(wto.RareTotem6.ClickDetector)
        wait(1)
        hrp.CFrame = getgenv().HRPOSITION
    end
})
	
Tab2:AddButton({
    Name = "Collect all Masks",
    Callback = function()
        for i,v in pairs(workspace.Masks:GetDescendants()) do
            if v:IsA("ClickDetector") then
                fireclickdetector(v)
            end
        end
    end
})

Tab2:AddButton({
    Name = "Finish Asylum",
    Callback = function()
        for i,v in pairs(workspace.Map.AsylumAssets:GetDescendants()) do
            if v:IsA("ClickDetector") then
                fireclickdetector(v)
            end
        end
        wait(0.1)
        gservice:FireServer(unpack(arg5))
        fireclickdetector(workspace.Map.AsylumAssets.SewerDoor.ClickDetector)
    end
})

Tab2:AddButton({
    Name = "Finish Part 1 (after exiting asylum)",
    Callback = function()
        gservice:FireServer(unpack(arg1))
        wait(0.1)
        gservice:FireServer(unpack(arg2))
        wait(0.1)
        gservice:FireServer(unpack(arg3))
        wait(0.1)
        gservice:FireServer(unpack(arg4))
    end
})

Tab2:AddButton({
    Name = "Light Campfire (after part 1)",
    Callback = function()
        tservice:FireServer(unpack(firething))
        wait(0.1)
        tservice:FireServer(unpack(firething))
        wait(0.1)
        tservice:FireServer(unpack(firething))
        wait(0.1)
        tservice:FireServer(unpack(firething))
        wait(0.1)
        tservice:FireServer(unpack(firething))
    end
})

Tab2:AddButton({
    Name = "Exit Maze (after campfire)",
    Callback = function()
        hrp.CFrame = CFrame.new(1641.8, -44.3, 234.651)
    end
})

Tab2:AddParagraph("Info", "You can only multiply up to 50, don't try changing value afterwards either else it'll break.")
Tab2:AddTextbox({
	Name = "Multiply Bullets Fired",
	Default = "1",
	TextDisappear = true,
	Callback = function(Value)
        local settings = {repeatamount = Value, exceptions = {"SayMessageRequest","GunService_EV","IndoorsService_EV","GameService","Footsteps","ControlService","ToolService","AudioService","CryptidService","EndingService","DialogService","GunService","CosmeticService","CollectableService","Message","TipService_EV","DialogService","ReviveService","LoadService","BecomeService_EV","SetLookAngles","NightVisionService",}}
        local mt = getrawmetatable(game)
        local old = mt.__namecall
        setreadonly(mt, false)
        mt.__namecall = function(uh, ...)
               local args = {...}
               local method = getnamecallmethod()
               for i,o in next, settings.exceptions do
                       if uh.Name == o then
                           return old(uh, ...)
                       end
               end
               if method == "FireServer" or method == "InvokeServer" then
                       for i = 1,settings.repeatamount do
                           old(uh, ...)
                       end
               end
               return old(uh, ...)
        end
        setreadonly(mt, true)
	end	  
})

end

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
