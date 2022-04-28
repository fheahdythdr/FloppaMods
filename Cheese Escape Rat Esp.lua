-- yet again, thanks to kiriot22 for the esp lib.

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiriot22/ESP-Lib/main/ESP.lua"))()

local options = {
    Name = "Rat",
    Color = Color3.new(255, 0, 0),
}

local options2 = {
    Name = "Maze Rat",
    Color = Color3.new(255, 0, 255),
}

ESP:Add(workspace.Mouse, options)
ESP:Add(workspace.NewMouse, options2)
ESP:Toggle(true)
