local UseKeySystem = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/Ricooogzz14/Cyrus-UI/refs/heads/main/UI.lua"))()

local Window

local function CreateUI()
	CyrusUI.KeyToUse = "key"
	CyrusUI.SetTheme("Purple")

Window = CyrusUI.CreateWindow({
	Title = "Cyrus UI",
})

local Tab = Window.CreateTab({
	Name = "Main"
})

Tab.CreateSection({
	Name = "Section"
})

Tab.CreateButton({
	Name = "Button",
	Callback = function()
		-- Code
	end
})

Tab.CreateToggle({
	Name = "Toggle",
	Default = false,
	Callback = function(state)
		-- Code
	end
})

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

Tab.CreateDropdown({
	Name = "Dropdown",
	Options = {"A","B","C"},
	Default = "A",
	Callback = function(option)
		-- Code
	end
})

Tab.CreateTextBox({
	Name = "TextBox",
	Placeholder = "Enter name",
	Default = "",
	Callback = function(text)
		-- Code
	end
})

	Tab.CreateLabel({
		Text = "This is a Label"
	})
end

if UseKeySystem then
	local KeySystem = CyrusUI.CreateKeySystem({
		Key = "secret123",
		OnSuccess = function()
			CreateUI()
		end,
		OnFail = function()
			print("Access denied!")
		end,
		AllowAttempts = 3,
		SaveKey = false,
		Title = "Authentication",
		Prompt = "Enter your key:",
		ButtonText = "Unlock"
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
