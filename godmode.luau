local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

character.Humanoid.HealthChanged:Connect(function(health)
    if health < character.Humanoid.MaxHealth then
        workspace.Remote.TeamEvent:FireServer("Bright blue")
        workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.clothes["Riot Police"].ITEMPICKUP)
        workspace.Remote.TeamEvent:FireServer("Bright orange")
    end
end)
