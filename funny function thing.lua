--when the github slow

cg = game.PlaceId
hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
workspace = game:GetService("Workspace")

function hget(filepath)
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/floppamod-getmodule/main/"..filepath))()
end

function tablech(table, item, valuen)
    if table.find(table, item) then
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

function ccfrs(cframe, savename)
    if hrp then
        savename = hrp.CFrame
        hrp.CFrame = cframe.CFrame
    end
    return print(savename)
end

function rtop(savename)
    if savename then
        hrp.CFrame = savename or CFrame.new(savename)
    end
end

function valch(value, func)
    if value == true then
        return func
    else
        return print(""..value "is not true.")
end
end
