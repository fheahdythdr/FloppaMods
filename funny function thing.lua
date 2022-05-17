function hget(filepath)
    return loadstring("https://raw.githubusercontent.com/fheahdythdr/floppamod-getmodule/main/"..filepath)
end

function  tload(table, item, loader)
    if table.find(table, item) then
        return hget(loader)
    else
        return print("wrong game lol")
    end
end
