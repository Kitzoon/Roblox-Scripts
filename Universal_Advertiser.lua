-- // UNIVERSAL ADVERTISE SCRIPT \\
-- // PUT IN YOUR EXPLOITS AUTO EXEC FOLDER \\
-- // MADE BY NOLIX \\
-- // YOUTUBER BITCHES IF YOU USE MY SCRIPT WITHOUT CREDIT YOUR GETTING YO ASS BEAT \\
-- // https://wearedevs.net/profile?uid=75495 \\


-- waits for the game to load
if not game:IsLoaded() then
    game.Loaded:Wait()
end

settings {
    toggle = true
    advertiseMessage = "your message here"
}

-- checks if the script is enabled
if not settings.toggle then return end

function advertiseCode()
    -- if the player isnt in arsenal
    if game.PlaceId ~= 286090429 then
        -- spams whatever message you want 6 times
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(settings.advertiseMessage, "All")
        task.wait()
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(settings.advertiseMessage, "All")
        task.wait()
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(settings.advertiseMessage, "All")
        task.wait()
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(settings.advertiseMessage, "All")
        task.wait()
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(settings.advertiseMessage, "All")
        task.wait()
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(settings.advertiseMessage, "All") 
    else
        -- arsenal uses a custom "PlayerChatted" remote, if your in arsenal it would run the playerchatted remote instead
        -- arsenal also has a cooldown for how much times you can chat, the wait() hopefully fixes that
        game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer("Trolling42", settings.advertiseMessage, false, false, true)
        task.wait(2)
        game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer("Trolling42", settings.advertiseMessage, false, false, true)
        task.wait(2)
        game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer("Trolling42", settings.advertiseMessage, false, false, true)
        task.wait(2)
        game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer("Trolling42", settings.advertiseMessage, false, false, true)
        task.wait(2)
        game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer("Trolling42", settings.advertiseMessage, false, false, true)
        task.wait(2)
        game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer("Trolling42", settings.advertiseMessage, false, false, true)
    end
end

advertiseCode()

-- waits 3 seconds, to make sure all the messages finished
task.wait(3)
game:GetService("TeleportService"):Teleport(game.PlaceId)
