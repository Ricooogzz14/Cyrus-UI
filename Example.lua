local UseKeySystem = false --/ SET TRUE TO ENABLE KEY SYSTEM / SCROLL DOWN TO EDIT
loadstring(game:HttpGet("https://raw.githubusercontent.com/Ricooogzz14/Cyrus-UI/refs/heads/main/UI.lua"))()

local Window

--/ SET A THEME
local function CreateUI()
	CyrusUI.SetTheme("Purple")

--/ CREATE WINDOW
Window = CyrusUI.CreateWindow({
	Title = "Cyrus UI",
})

CyrusUI.Notify({
    Title = "Hello",
    Content = "This is a Notification",
    Duration = 5,
    Type = "Info",
    ButtonText = "OK",
    Callback = function()
        print("Notification closed!")
    end
})

--/ CREATE A TAB
local Tab = Window.CreateTab({
	Name = "Tab"
})

--/ CREATE A SECTION
Tab.CreateSection({
	Name = "Section"
})

--/ CREATE A BUTTON
Tab.CreateButton({
	Name = "Button",
	Callback = function()
		-- Code
	end
})

--/ CREATE A TOGGLE
Tab.CreateToggle({
	Name = "Toggle",
	Default = false,
	Callback = function(state)
		-- Code
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
		-- Code
	end
})

--/ CREATE A DROPDOWN
Tab.CreateDropdown({
	Name = "Dropdown",
	Options = {"A","B","C"},
	Default = "A",
	Callback = function(option)
		-- Code
	end
})

--/ CREATE A TEXTBOX
	Tab.CreateTextBox({
		Name = "TextBox",
		Placeholder = "Enter name",
		Default = "",
		Callback = function(text)
		-- Code
		end
	})
end

--/ USE A LABEL
Tab.CreateLabel({
	Text = "This is a Label"
})
end

--/ USE KEY SYSTEM
if UseKeySystem then
	local KeySystem = CyrusUI.CreateKeySystem({
		Key = "key",
		OnSuccess = function()
			CreateUI()
		end,
		OnFail = function()
			game.Players.LocalPlayer:Kick("Key authentication failed.")
		end,
		AllowAttempts = 3,
		SaveKey = true,
		Title = "Authentication",
		Prompt = "Enter your key:",
		ButtonText = "Submit"
	})
	KeySystem:Show()
else
	CreateUI()
end

-- /Themes           |
    -----------------|
-- ┌─────────────┬─────────────┬─────────────┬─────────────┬─────────────┐
-- │ Cyan        │ Purple      │ Green       │ Orange      │ Red         │
-- ├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
-- │ White       │ Blue        │ Pink        │ Lime        │ Gold        │
-- ├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
-- │ NeonBlue    │ NeonGreen   │ NeonPink    │ NeonPurple  │ NeonOrange  │
-- ├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
-- │ Midnight    │ Obsidian    │ Shadow      │ Void        │ Stealth     │
-- ├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
-- │ PastelBlue  │ PastelPink  │ PastelGreen │ PastelPurple│ PastelOrange│
-- ├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
-- │ Ocean       │ Forest      │ Sunset      │ Rose        │ Ice         │
-- ├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
-- │ Cyber       │ Matrix      │ Terminal    │ Circuit     │ TechPurple  │
-- ├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
-- │ Rainbow     │ Galaxy      │ Fire        │ Electric    │ Plasma      │
-- ├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
-- │ Crimson     │ Emerald     │ Sapphire    │ Amethyst    │ Amber       │
-- ├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
-- │ NeonRainbow │ Aurora      │ Firestorm   │ Frostbite   │ SolarFlare  │
-- └─────────────┴─────────────┴─────────────┴─────────────┴─────────────┘
