local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiriot22/ESP-Lib/main/ESP.lua"))()

local Window = OrionLib:MakeWindow({Name = "phantom force esp", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
    Name = "ESP",
    Icon = "",
    PremiumOnly = false
})

Tab:AddToggle({
    Name = "Toggle Blue ESP",
    Default = false,
    Callback = function(Value)
    ESP.BlueToggle = Value
    end    
})

Tab:AddToggle({
    Name = "Toggle Orange ESP",
    Default = false,
    Callback = function(Value)
    ESP.OrangeToggle = Value
    end    
})

Tab:AddToggle({
    Name = "Toggle Names",
    Default = false,
    Callback = function(Value)
    ESP.Names = Value
    end    
})

Tab:AddToggle({
    Name = "Toggle Tracers",
    Default = false,
    Callback = function(Value)
    ESP.Tracers = Value
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

ESP:Toggle(true)
OrionLib:Init()
