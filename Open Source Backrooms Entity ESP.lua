--[[
    Made with help from the Sirius discord server, aka the same people who made Orion.
    
    Libraries used:
    Kiriot22's ESP Library
    BoredStuff2's (i think) Notification Lib
    Orion UI Lib from the Sirius discord server.

    Made by me (github link https://github.com/fheahdythdr)
    I think I'm clear to push this update, did some testing in Development branch and it was fine.
    The destinations for these are here: https://github.com/fheahdythdr/floppamod-getmodule
]]--

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "Welcome!",
	Content = "Hello Wanderer, welcome to A Wanderer's Utilities.",
	Image = "",
	Time = 7.5
})
wait(2)
OrionLib:MakeNotification({
	Name = "Getting Script..",
	Content = "Please, be patient while we get the correct level's script for you.",
	Image = "",
	Time = 8
})
wait(4)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/FloppaMods/main/prerequisites.lua"))()

import("tablefortload")

tload(poolrooms, cg, "Backrooms_Level_Poolrooms")
tload(pipedreams, cg, "Backrooms_Level_PipeDreams")
tload(aboffice, cg, "Backrooms_Abandoned_Office")
tload(maproom, cg, "Backrooms_Level_Maprooms")
tload(level0, cg, "Backrooms_Level_0")
tload(ruralarea, cg, "Backrooms_Rural_Area")
tload(level166, cg, "Backrooms_Level_166")
tload(mrkitty, cg, "Backrooms_MrKittys_House")
tload(archive, cg, "Backrooms_The_Archive")
tload(theend, cg, "Backrooms_The_End")
tload(hotel, cg, "Backrooms_The_Hotel")
tload(hl, cg, "Backrooms_Level_HL")
tload(hc, cg, "Backrooms_Hazard_Course")
tload(prl2, cg, "Backrooms_Poolrooms_2")
tload(lexc, cg, "Backrooms_Level_!")
tload(l434, cg, "Backrooms_Level_434")
tload(lean, cg, "Backrooms_Level_Leanrooms")
tload(level1, cg, "Backrooms_Level_1")

local label

for i,v in pairs(game:GetService("CoreGui").Orion:GetDescendants()) do
    if v:IsA("TextLabel") and v.Text == "Standard" then
        label = v
    end
end

label.Text = "Wanderer"
