--[[
    
    i will ask this again
    why is github so slow to update

    i've had to update this 5 times so far, github still hasn't updated
    why can't it update faster man
    i wanna try out my script but it didn't work so i updated cframe.CFrame and the arguments to instance and instance.CFrame

]]--

cg = game.PlaceId
hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
workspace = game:GetService("Workspace")

function hget(filepath)
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/floppamod-getmodule/main/"..filepath))()
end

function tablech(tab, item, valuen)
    if table.find(tab, item) then
        valuen = true
    else
        valuen = false
return valuen
end
end

function tload(tab, item, loader)
    if table.find(tab, item) then
        return hget(loader)
    end
end

function valch(value, func)
    if value == true then
        return func
    else
        return print(""..value "is not true.")
end
end
