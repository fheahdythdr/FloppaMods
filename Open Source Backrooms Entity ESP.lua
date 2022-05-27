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

local label

for i,v in pairs(game:GetService("CoreGui").Orion:GetDescendants()) do
    if v:IsA("TextLabel") and v.Text == "Standard" then
        label = v
    end
end

label.Text = "Wanderer"
