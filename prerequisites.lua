--only used for when im making a script, dont mind
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiriot22/ESP-Lib/main/ESP.lua"))()
local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
if useOrionLib == true then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
end

if useTotemLib == true then
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Xv3nm/TotemModestMenuLib/main/source')))()
end

cg = game.PlaceId
hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
workspace = game:GetService("Workspace")

function import(filepath)
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/floppamod-getmodule/main/"..filepath))()
end

function tload(tab, item, loader)
    if table.find(tab, item) then
        return import(loader)
    end
end

function tablech(tab, item, valuen)
    if table.find(tab, item) then
        valuen = true
    else
        valuen = false
return valuen
end
end

function valcht(value, func)
    if value == true then
        return func
    else
        return print(""..value "is not true.")
end
end

function valchf(value, func)
    if value == false then
        return func
    else
        return print(""..value "is not false.")
end
end
