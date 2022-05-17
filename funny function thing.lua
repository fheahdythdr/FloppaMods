cg = game.PlaceId

function hget(filepath)
    return loadstring("https://raw.githubusercontent.com/fheahdythdr/floppamod-getmodule/main/"..filepath)
end

function  tload(tab, item, loader)
    if table.find(tab, item) then
        return hget(loader)
    else
        return print("wrong game lol")
    end
end
