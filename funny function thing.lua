--when the github slow

cg = game.PlaceId

hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

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

function ccfrs(cframe, genv)
    if hrp then
        genv = hrp.CFrame
        hrp.CFrame = cframe or CFrame.new(cframe) or cframe.CFrame
    end
    return print(genv)
end

function rtop(genv)
    if genv then
        hrp.CFrame = genv or CFrame.new(genv)
    end
end

function valch(value, func)
    if value == true then
        return func
    else
        return print(""..value "is not true.")
end
end
