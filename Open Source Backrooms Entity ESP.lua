--credits to Kiriot22 for the esp lib.

local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()

Lib.prompt('WARNING', "Entity ESP is slightly buggy, re-execute script if you can't see the entities.", 15)
Lib.prompt('INFO', "You should see 2 entities.", 10)


local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiriot22/ESP-Lib/main/ESP.lua"))()

local alreadyexisting = {
    Color = Color3.new(255, 0, 0),
    Name = "ENTITY"
}

if game.PlaceId == 8926741973 then

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

ESP:Add(workspace.ENTITY_1, alreadyexisting)
ESP:Add(workspace.ENTITY_DANCE, alreadyexisting)

elseif game.PlaceId == 9204234205 then
    
ESP:Add(workspace.ENTITY_1, options)
ESP:AddObjectListener(workspace, {
    Color = Color3.new(255, 0, 0),
    Type = "Model",
    Name = "ENTITY_1",
    CustomName = "ENTITY"
})

end
ESP.Players = false
ESP:Toggle(true)
