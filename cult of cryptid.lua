function hget(filepath)
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/floppamod-getmodule/main/"..filepath))()
end

function  tload(tab, item, loader)
    if table.find(tab, item) then
        return hget(loader)
    else
        return print("wrong game lol")
    end
end

cg = game.PlaceId

hget("tablefortload")

tload(chapter1, cg, "cotc_1")
tload(chapter2, cg, "cotc_2")
