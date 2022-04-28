--credits to Kiriot22 for the esp lib.

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiriot22/ESP-Lib/main/ESP.lua"))()

local entity1exists = false
local entity2exists = false


local alreadyexisting = {
    Name = "ENTITY",
    Color = Color3.new(255, 0, 0),
}


local entity1 = game:GetService("Workspace"):FindFirstChild("ENTITY_1")

if not entity1 then entity1exists = false
    else
entity1exists = true
end
local entity2 = game:GetService("Workspace"):FindFirstChild("ENTITY_DANCE")

if not entity2 then entity2exists = false
    else
entity1exists = true
end

if game.PlaceId == 8926741973 then

if entity1exists == true then
ESP:Add(workspace.ENTITY_1, alreadyexisting)
else
ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "ENTITY_1",
    CustomName = "ENTITY"
})
end

if entity2exists == true then
ESP:Add(workspace.ENTITY_DANCE, alreadyexisting)
else
ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "ENTITY_DANCE",
    CustomName = "ENTITY"
})
end

ESP:AddObjectListener(workspace, {
    Color = Color3.new(0, 255, 255),
    Type = "MeshPart",
    Name = "door01_left_Body",
    CustomName = "Door"
})

elseif game.PlaceId == 9204234205 then
    
ESP:Add(workspace.ENTITY_1, options)
ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "ENTITY_1",
    CustomName = "ENTITY"
})

end
ESP:Toggle(true)
