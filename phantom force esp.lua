local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiriot22/ESP-Lib/main/ESP.lua"))()

local Window = OrionLib:MakeWindow({Name = "phantom force esp", HidePremium = false, SaveConfig = true, ConfigFolder = "shitty pf esp"})

local Tab = Window:MakeTab({
    Name = "ESP",
    Icon = "",
    PremiumOnly = false
})
Tab:AddToggle({
    Name = "Toggle Names",
    Default = false,
    Save = true,
    Flag = "Names",
    Callback = function(Value)
    ESP.Names = Value
    end    
})

Tab:AddToggle({
    Name = "Toggle Tracers",
    Default = false,
    Save = true,
    Flag = "Tracers",
    Callback = function(Value)
    ESP.Tracers = Value
    end    
})

Tab:AddToggle({
    Name = "Toggle ESP",
    Default = false,
    Save = true,
    Flag = "ESP",
    Callback = function(Value)
    ESP:Toggle(Value)
    end    
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

local plr = game:GetService("Players").LocalPlayer

if plr.Team.Name == "Ghosts" then
        ESP.BlueToggle = true
        ESP.OrangeToggle = false
    else
        ESP.BlueToggle = false
        ESP.OrangeToggle = true
end

plr:GetPropertyChangedSignal("Team"):Connect(function()
    if plr.Team.Name == "Ghosts" then  --prisj helped me with this from infinite yield discord
        ESP.BlueToggle = true
        ESP.OrangeToggle = false
    else
        ESP.BlueToggle = false
        ESP.OrangeToggle = true
end
end)

ESP:AddObjectListener(workspace.Players["Bright blue"], {
    CustomName = "Player",
    Name = "Player",
    Color = Color3.fromRGB(0, 0, 255),
    IsEnabled = "BlueToggle"
})

ESP:AddObjectListener(workspace.Players["Bright orange"], {
    CustomName = "Player",
    Name = "Player",
    Color = Color3.fromRGB(255, 125, 0),
    IsEnabled = "OrangeToggle"
})

OrionLib:Init()
