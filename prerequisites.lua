--only used for when im making a script, dont mind
--if you do use this then just redo the import function to lead to your desired destination instead of my repo
--testing vscode github repo explorer, no new functions yet
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

function SendAkaliNotification(titlestring, infostring, timetowait)
    local AkaliNotif = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/batusz/uilibrarys/main/AkaliNotifLib"))();
    local Notify = AkaliNotif.Notify;
    Notify({
    Description = infostring;
    Title = titlestring;
    Duration = timetowait;
    });
end

