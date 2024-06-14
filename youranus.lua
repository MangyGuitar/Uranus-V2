local Players = game:GetService("Players")
local running = false 

local function disableRagdoll(character)
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    end
end

local function AutoFarm()
    while running do
        local player = Players.LocalPlayer
        local character = player.Character

        if character and player.leaderstats.Wins.Value < 10 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Spawn World"].Rewards.Wins.CFrame
            print("Farming in the first area")
        elseif character and player.leaderstats.Wins.Value < 25 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Beach World"].Rewards.Wins.CFrame
            print("Farming in the second area")
        elseif character and player.leaderstats.Wins.Value < 50 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Arctic"].Rewards.Wins.CFrame
            print("Farming in the third area")
        elseif character and player.leaderstats.Wins.Value < 100 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Volcano"].Rewards.Wins.CFrame
            print("Farming in the fourth area")
        elseif character and player.leaderstats.Wins.Value < 250 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Junggle"].Rewards.Wins.CFrame
            print("Farming in the fifth area")
        elseif character and player.leaderstats.Wins.Value < 500 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Dessert"].Rewards.Wins.CFrame
            print("Farming in the sixth area")
        elseif character and player.leaderstats.Wins.Value < 750 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Cotton Candy"].Rewards.Wins.CFrame
            print("Farming in the seventh area")
        elseif character and player.leaderstats.Wins.Value < 1000 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Ocean"].Rewards.Wins.CFrame
            print("Farming in the eighth area")
        elseif character and player.leaderstats.Wins.Value < 1500 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Heaven"].Rewards.Wins.CFrame
            print("Farming in the ninth area")
        elseif character and player.leaderstats.Wins.Value < 2500 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Snow"].Rewards.Wins.CFrame
            print("Farming in the tenth area")
        elseif character and player.leaderstats.Wins.Value < 4000 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Dark"].Rewards.Wins.CFrame
            print("Farming in the eleventh area")
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Dark"].Rewards.Wins.CFrame
            print("Farming in the eleventh area")
        end

        wait(0.25)
    end
end

local function AutoFarm2()
    while running do

        local player = game.Players.LocalPlayer
        local character = player.Character

        if character and player.leaderstats.Wins.Value > -1 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Race.Won.CFrame
            print("This game is made with feet XD")
        end

        wait(0.25)
    end
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Uranus REMASTER v2 Real 0% Fake",
    LoadingTitle = "Hi",
    LoadingSubtitle = "by Uranus",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,  -- Create a custom folder for your hub/game
        FileName = "Big Hub"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",  -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
        RememberJoins = true  -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false,  -- Set this to true to use our key system
    KeySettings = {
        Title = "Untitled",
        Subtitle = "Key System",
        Note = "No method of obtaining the key is provided",
        FileName = "Key",  -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
        SaveKey = true,  -- The user's key will be saved, but if you change the key, they will be unable to use your script
        GrabKeyFromSite = false,  -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = {"Hello"}  -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
})

local Tab = Window:CreateTab("AutoFarm", 4483362458)
local Section = Tab:CreateSection("AutoFarm")
local ragdoll = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Local Ragdoll")

local Button = Tab:CreateButton({
    Name = "Remove ragdoll (RECOMMEND)",
    Callback = function()
        Players.PlayerAdded:Connect(function(player)
            player.CharacterAdded:Connect(disableRagdoll)
        end)
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "AutoFarm",
    CurrentValue = false,
    Flag = "Toggle1",  -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        running = Value 
        if running then
            AutoFarm()
        end
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "AutoFarm 2 (Farm race)",
    CurrentValue = false,
    Flag = "Toggle1",  -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        running = Value 
        if running then
            Rayfield:Notify({
               Title = "Warning!",
               Content = "If it doesn't work, it is because there are not enough players on the server",
               Duration = 6.5,
               Image = 4483362458,
               Actions = { 
                   Ignore = {
                       Name = "Okay!",
                       Callback = function()
                           print("Okay!")
                       end
                   },
            },
            })
            AutoFarm2()
        end
    end,
})

local Tab = Window:CreateTab("Misc", 4483362458)
local Section = Tab:CreateSection("Misc")

local Button = Tab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "BTOOLS (NOT FE)",
   Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/r4HckYg0"))()
   end,
})
