-- // SKIP TO LINE 137 TO ADD  CUSTOM NAMES



local OutlineTransparency = 0 -- // 0 to 1
local FillTransparency = 0.5 -- // 0 to 1

local playersAdded = {}
local PlayersWithNameOrDisplay = {}
local CustomNames = {}
local UIS = game:GetService('UserInputService')
local HttpService = game:GetService'HttpService'
local plr = game:GetService'Players'.LocalPlayer
local plrw = plr.Character
local plrh = plrw:FindFirstChild('Humanoid')
local plrhrp = plrw:FindFirstChild('HumanoidRootPart')
local RunService = game:GetService('RunService')
local notif = loadstring(game:HttpGet('https://raw.githubusercontent.com/fheahdythdr/ui-libs-ui-lib-backups/main/function%20things/notifs.lua'))()
local SendNotif = notif:Init()
plr.CharacterAdded:Connect(function(nchar)
    plrh = nchar:WaitForChild('HumanoidRootPart')
    plrw = nchar
    plrh = plrw.Humanoid
end)
local Transparencies = {
    Outline = 0,
    Fill = 0.4
}

local playerSelected, allPlayersSelected, customSelected

if isfile("Xylite Utilities\\Chams\\PlayersWithNameOrDisplay.json") then
    PlayersWithNameOrDisplay = HttpService:JSONDecode(readfile("Xylite Utilities\\Chams\\PlayersWithNameOrDisplay.json"))
else
    writefile("Xylite Utilities\\Chams\\PlayersWithNameOrDisplay.json", HttpService:JSONEncode(PlayersWithNameOrDisplay))
end
if isfile("Xylite Utilities\\Chams\\Transparencies.json") then
    Transparencies = HttpService:JSONDecode(readfile("Xylite Utilities\\Chams\\Transparencies.json"))
else
    Transparencies.Outline = OutlineTransparency
    Transparencies.Fill = FillTransparency
    writefile("Xylite Utilities\\Chams\\Transparencies.json", HttpService:JSONEncode(Transparencies))
end
if isfile("Xylite Utilities\\Chams\\CustomNames.json") then
    CustomNames = HttpService:JSONDecode(readfile("Xylite Utilities\\Chams\\CustomNames.json"))
end
if not isfolder("Xylite Utilities") then
    makefolder("Xylite Utilities")
end
if not isfolder("Xylite Utilities\\Chams") then
    makefolder("Xylite Utilities\\Chams")
end

for i, Player in next, game:GetService("Players"):GetPlayers() do
    if Player:IsFriendsWith(game:GetService"Players".LocalPlayer.UserId) then
        table.insert(playersAdded, Player.Name)
    end
end
local bruh = Instance.new("ScreenGui")
bruh.Parent = game:GetService("CoreGui")
bruh.Name = "Highlights"
local plrs = game:GetService'Players'
local function ApplyModel(model)
    if bruh:FindFirstChild(model.Name) then bruh:FindFirstChild(model.Name):Destroy() end
    local highlight = Instance.new("Highlight")
    highlight.Parent = bruh
    highlight.Adornee = model.Character
    highlight.Name = model.Name
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.FillTransparency = Transparencies.Fill
    highlight.OutlineTransparency = Transparencies.Outline
    if table.find(playersAdded, model.Name) then
        highlight.OutlineColor = Color3.new(0, 255, 0)
        highlight.FillColor = Color3.new(0, 200, 0)
    end
    for i,v in pairs(PlayersWithNameOrDisplay) do
        if (model.Name:find(v) or plrs:FindFirstChild(model.Name).DisplayName:find(v)) and not table.find(playersAdded, model.Name) then
            highlight.OutlineColor = Color3.new(0, 0, 255)
            highlight.FillColor = Color3.new(0, 0, 200)
        end
    end
    for i,v in pairs(CustomNames) do
        if (model.Name:find(v) or plrs:FindFirstChild(model.Name).DisplayName:find(v)) and not (table.find(playersAdded, model.Name) or table.find(PlayersWithNameOrDisplay, model.Name)) then
            highlight.OutlineColor = Color3.new(0, 100, 255)
            highlight.FillColor = Color3.new(0, 100, 200)
        end
    end
end
local function ApplyPlayer(model)
    if bruh:FindFirstChild(model.Name) then bruh:FindFirstChild(model.Name):Destroy() end
    local highlight = Instance.new("Highlight")
    highlight.Parent = bruh
    highlight.Adornee = model
    highlight.Name = model.Name
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.FillTransparency = Transparencies.Fill
    highlight.OutlineTransparency = Transparencies.Outline
    if table.find(playersAdded, model.Name) then
        highlight.OutlineColor = Color3.new(0, 255, 0)
        highlight.FillColor = Color3.new(0, 200, 0)
    end
    for i,v in pairs(PlayersWithNameOrDisplay) do
        if (model.Name:find(v) or plrs:FindFirstChild(model.Name).DisplayName:find(v)) and not table.find(playersAdded, model.Name) then
            highlight.OutlineColor = Color3.new(0, 0, 255)
            highlight.FillColor = Color3.new(0, 0, 200)
        end
    end
    for i,v in pairs(CustomNames) do
        if (model.Name:find(v) or plrs:FindFirstChild(model.Name).DisplayName:find(v)) and not (table.find(playersAdded, model.Name) or table.find(PlayersWithNameOrDisplay, model.Name)) then
            highlight.OutlineColor = Color3.new(0, 100, 255)
            highlight.FillColor = Color3.new(0, 100, 200)
        end
    end
end
local function FindName(name)
    for _, v in next, game.Players:GetPlayers() do
        local subbedname = string.sub(v.Name:lower(), 1, string.len(name:lower()))
        local subbeddisplayname = string.sub(v.DisplayName:lower(), 1, string.len(name:lower()))
        if (subbedname or subbeddisplayname == name) then
            return v
        end
    end
end
local function InsertName(name)
    if not CustomNames[name] then
        table.insert(CustomNames, name)
    end
    writefile("Xylite Utilities\\Chams\\CustomNames.json", HttpService:JSONEncode(CustomNames))
end

-- // ADD CUSTOM NAMES
-- // USAGE:
-- // InsertName(string : name)
-- // EXAMPLE:
-- // InsertName("Load_Bot")

InsertName("Load_Bot")

-- // SCRIPT

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/ui-libraries-vozoid/main/venus/source.lua", true))()

local main = library:Load({Name = "Xylite Utilities", Theme = "Dark", SizeX = 550, SizeY = 550, ColorOverrides = {
    MainFrame = Color3.fromRGB(82, 10, 124),
    TabBackground = Color3.fromRGB(68, 21, 122),
    TabToggleDisabled = Color3.fromRGB(55, 2, 136),
    ButtonMouseOver = Color3.fromRGB(151, 54, 180),
    ToggleEnabled = Color3.fromRGB(181, 84, 210),
    ToggleEnabledMouseOver = Color3.fromRGB(151, 54, 180),
    SliderMouseOver = Color3.fromRGB(130, 94, 185),
    SliderFill = Color3.fromRGB(74, 25, 148),
    SliderFillSliding = Color3.fromRGB(104, 55, 178),
    DropdownMouseOver = Color3.fromRGB(90, 68, 124),
    DropdownContent = Color3.fromRGB(70, 48, 104)
}})

local tab = main:Tab("chams")
local sec = tab:Section({Name = "players", column = 1})
local customsec = tab:Section({Name = "custom names", column = 2})
--local tab2 = main:Tab("general")
--local gensec = tab2:Section({Name = "general scripts", column = 1})

local cdrop = customsec:Dropdown({Default = "NONE", Content = CustomNames, Callback = function(val)
    customSelected = val
end})

customsec:Button({Name = "remove player", Callback = function()
    table.remove(CustomNames, table.find(CustomNames, customSelected))
    if bruh:FindFirstChild(customSelected) then
        bruh:FindFirstChild(customSelected):Destroy()
    end
    writefile("Xylite Utilities\\Chams\\CustomNames.json", HttpService:JSONEncode(CustomNames))
    plrdrop:Refresh(CustomNames)
    for i,v in pairs(plrs:GetPlayers()) do
        if v.Name == customSelected then
            ApplyModel(v)
        end
    end
end})

local plrdrop=sec:Dropdown({Default = "NONE", Content = PlayersWithNameOrDisplay, Callback = function(val)
    playerSelected = val
end})

sec:Button({Name = "remove player", Callback = function()
    table.remove(PlayersWithNameOrDisplay, table.find(PlayersWithNameOrDisplay, playerSelected))
    if bruh:FindFirstChild(playerSelected) then
        bruh:FindFirstChild(playerSelected):Destroy()
    end
    writefile("Xylite Utilities\\Chams\\PlayersWithNameOrDisplay.json", HttpService:JSONEncode(PlayersWithNameOrDisplay))
    plrdrop:Refresh(PlayersWithNameOrDisplay)
    for i,v in pairs(plrs:GetPlayers()) do
        if v.Name == playerSelected then
            ApplyModel(v)
        end
    end
end})

sec:Label("add player")

local bruh2 = sec:Dropdown({Default = "NONE", Content = {}, Callback = function(val)
    allPlayersSelected = val
end})

sec:Button({Name = "add selected player", Callback = function()
    table.insert(PlayersWithNameOrDisplay, allPlayersSelected)
    writefile("Xylite Utilities\\Chams\\PlayersWithNameOrDisplay.json", HttpService:JSONEncode(PlayersWithNameOrDisplay))
    for i,v in pairs(plrs:GetPlayers()) do
        if v.Name == allPlayersSelected then
            ApplyModel(v)
        end
    end
    bruh2:Set("NONE")
    plrdrop:Refresh(PlayersWithNameOrDisplay)
end})

sec:Label("transparency values (0-1)")

sec:Box({Name = "outline", Callback = function(box)
    box = tonumber(box)
    for i,v in pairs(bruh:GetChildren()) do
        v.OutlineTransparency = box
    end
    Transparencies.Outline = box
end})
sec:Box({Name = "fill", Callback = function(box)
    box = tonumber(box)
    for i,v in pairs(bruh:GetChildren()) do
        v.FillTransparency = box
    end
    Transparencies.Fill = box
end})

sec:Button({Name = "save values", Callback = function()
    writefile("Xylite Utilities\\Chams\\Transparencies.json", HttpService:JSONEncode(Transparencies))
end})

task.spawn(function()
    local ae = {}
        
    for i,v in pairs(plrs:GetPlayers()) do
        table.insert(ae, v.Name)
    end
    bruh2:Refresh(ae)
end)

plrs.PlayerAdded:Connect(function()
    local players = plrs:GetPlayers()
    local PlayerList = {}

    for i,v in pairs(players) do
        table.insert(PlayerList,v.Name)
    end
    bruh2:Refresh(PlayerList)
    bruh2:Set("NONE")
end)

plrs.PlayerRemoving:Connect(function()
    wait(1)
    local players = plrs:GetPlayers()
    local PlayerList = {}

    for i,v in pairs(players) do
        table.insert(PlayerList,v.Name)
    end
    bruh2:Refresh(PlayerList)
    bruh2:Set("NONE")
end)

game:GetService("Players").PlayerAdded:Connect(function(player)
    if player:IsFriendsWith(game:GetService"Players".LocalPlayer.UserId) then
        table.insert(playersAdded, player.Name)
    end
end)

for _, Player in next, game:GetService("Players"):GetPlayers() do
       ApplyModel(Player) wait()
end

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    v.CharacterAdded:Connect(function(character)
        ApplyPlayer(character)
    end)
end

game:GetService("Players").PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        ApplyPlayer(character)
    end)
end)

game:GetService("Players").PlayerRemoving:Connect(function(player)
    bruh:FindFirstChild(player.Name):Destroy()
end)
