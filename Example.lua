loadstring(game:HttpGet('https://raw.githubusercontent.com/Ricooogzz14/Cyrus-UI/refs/heads/main/UI.lua'))()

--/ CREATE WINDOW
local Window = CyrusUI.CreateWindow({
    Title = "Example Hub"
})

--/ SET THEME
CyrusUI.SetTheme("Purple")

Theme Name       | Type
-----------------|----------------
Cyan             | Basic
Purple           | Basic
Green            | Basic
Orange           | Basic
Red              | Basic
White            | Basic
Blue             | Basic
Pink             | Basic
Lime             | Basic
Gold             | Basic
NeonBlue         | Effects
NeonGreen        | Effects
NeonPink         | Effects
NeonPurple       | Effects
NeonOrange       | Effects
Midnight         | Advanced
Obsidian         | Advanced
Shadow           | Advanced
Void             | Advanced
Stealth          | Advanced
PastelBlue       | Basic
PastelPink       | Basic
PastelGreen      | Basic
PastelPurple     | Basic
PastelOrange     | Basic
Ocean            | Basic
Forest           | Basic
Sunset           | Basic
Rose             | Basic
Ice              | Basic
Cyber            | Advanced
Matrix           | Advanced
Terminal         | Advanced
Circuit          | Advanced
TechPurple       | Advanced
Rainbow          | Effects
Galaxy           | Effects
Fire             | Effects
Electric         | Effects
Plasma           | Effects
Crimson          | Basic
Emerald          | Basic
Sapphire         | Basic
Amethyst         | Basic
Amber            | Basic
NeonRainbow      | Effects
Aurora           | Effects
Firestorm        | Effects
Frostbite        | Effects
SolarFlare       | Effects

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
    Name = "Tab"
})

--/ CREATE SECTION
Tab.CreateSection({
    Name = "Section"
})

--/ CREATE A BUTTON
Tab.CreateButton({
    Name = "Button",
    Callback = function()
        print("hello")
    end
})

--/ CREATE A TOGGLE
Tab.CreateToggle({
    Name = "Toggle",
    Default = false,
    Callback = function(state)
        print("God Mode:", state)
    end
})

--/ CREATE A SLIDER
Tab.CreateSlider({
    Name = "Slider",
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
    Name = "Dropdown",
    Options = {"A", "B", "C"},
    Default = "A",
    Callback = function(option)
        print("Selected Team:", option)
    end
})

--/ CREATE A TEXTBOX
Tab.CreateTextBox({
    Name = "TextBox",
    Placeholder = "Enter name",
    Default = "",
    Callback = function(text, enterPressed)
        print("Text entered:", text)
    end
})

--/ CREATE A LABEL
Tab.CreateLabel({
    Text = "This is a Label"
})
