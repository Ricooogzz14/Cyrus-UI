loadstring(game:HttpGet('https://raw.githubusercontent.com/Ricooogzz14/Cyrus-UI/refs/heads/main/UI.lua'))()

--/ CREATE WINDOW
local Window = CyrusUI.CreateWindow({
    Title = "Example Hub"
})

--/ CREATE A NOTIFICATION
CyrusUI.Notify({
    Title = "Hello",
    Content = "This is a notification",
    Duration = 5,
    Type = "Info",
    ButtonText = "OK"
})

--/ CREATE TAB
local Tab = Window.CreateTab({
    Name = "Main"
})

--/ CREATE SECTION
Tab.CreateSection({
    Name = "Player"
})

--/ CREATE A LABEL
Tab.CreateLabel({
    Text = "Player Controls"
})

--/ CREATE A BUTTON
Tab.CreateButton({
    Name = "Print Hello",
    Callback = function()
        print("hello")
    end
})

--/ CREATE A TOGGLE
Tab.CreateToggle({
    Name = "God Mode",
    Default = false,
    Callback = function(state)
        print("God Mode:", state)
    end
})

--/ CREATE A SLIDER
Tab.CreateSlider({
    Name = "WalkSpeed",
    Min = 0,
    Max = 200,
    Default = 16,
    Rounding = 0,
    Callback = function(v)
        local player = game.Players.LocalPlayer
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.WalkSpeed = v
        end
    end
})

--/ CREATE A DROPDOWN
Tab.CreateDropdown({
    Name = "Team",
    Options = {"Red", "Blue", "Green"},
    Default = "Red",
    Callback = function(option)
        print("Selected Team:", option)
    end
})

--/ CREATE A TEXTBOX
Tab.CreateTextBox({
    Name = "Username",
    Placeholder = "Enter name",
    Default = "",
    Callback = function(text, enterPressed)
        print("Text entered:", text)
    end
})
