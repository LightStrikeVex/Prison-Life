local Teams = game:GetService("Teams")
local TeamEvent = workspace.Remote.TeamEvent

local ItemHandler = workspace.Remote.ItemHandler
local ITEMPICKUP = workspace.Prison_ITEMS.clothes["Riot Police"].ITEMPICKUP

local Player = game.Players.LocalPlayer
local Character = player.Character or player.CharacterAdded:Wait()

character.Humanoid.HealthChanged:Connect(function(health)
    if health < character.Humanoid.MaxHealth then
        TeamEvent:FireServer(Teams.Neutral)
        TeamEvent:FireServer(Teams.Guards)
        ItemHandler:InvokeServer(ITEMPICKUP)
        TeamEvent:FireServer(Teams.Inmates)
    end
end)
