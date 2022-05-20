--[[ 

    oh hi

    it's you
    the guy who checks source code because they either want to skid it or learn from it
    this might look weird but it's so i can edit each part of the source easier
    here's the area for the loaded source files (the ones this one grabs)
    https://github.com/fheahdythdr/floppamod-getmodule

    the source files for cotc script
    lobby (dont know if needed) is https://github.com/fheahdythdr/floppamod-getmodule/blob/main/cotc_lobby
    chapter 1 is https://github.com/fheahdythdr/floppamod-getmodule/blob/main/cotc_1
    chapter 2 is https://github.com/fheahdythdr/floppamod-getmodule/blob/main/cotc_2

    yeah have fun
    i guess
    idk

]]--
function hget(filepath)
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/floppamod-getmodule/main/"..filepath))()
end

function tload(tab, item, loader)
    if table.find(tab, item) then
        return hget(loader)
    end
end

cg = game.PlaceId
hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

hget("tablefortload")

tload(cotclobby, cg, "cotc_lobby")
tload(chapter1, cg, "cotc_1")
tload(chapter2, cg, "cotc_2")
