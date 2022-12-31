# Basic Render
A basic ui render for roblox.

# Installtion

Download rbxm > place it in ReplicatedStorage.

# Simple frame render

```

local Basic = require(game.ReplicatedStorage.BasicRender)
local Player = game:GetService("Players").LocalPlayer

local ScreenGui = Basic.buildElement("ScreenGui", {
	Name = "Test",
	IgnoreGuiInset = true
})

local background = Basic.buildElement("Frame", {
	Name = "BackGround",
	BackgroundColor3 = Color3.new(1, 1, 1),
	Position = UDim2.new(0.5, 0, 0.5, 0),
	Size = UDim2.new(1, 0, 1, 0),
	AnchorPoint = Vector2.new(0.5, 0.5)
})

local Text = Basic.buildElement("TextLabel",{
	Name = "Text",
	Text = "Hello, world",
	Position = UDim2.new(0.5, 0, 0.5, 0),
	Size = UDim2.new(0.6, 0, 0.4, 0),
	AnchorPoint = Vector2.new(0.5, 0.5),
	Font = Enum.Font.Gotham,
	BackgroundTransparency = 1,
	TextScaled = true
})


Basic.render(ScreenGui, Player:WaitForChild("PlayerGui"))
Basic.render(background, ScreenGui) 
Basic.render(Text, background)

wait(1)

Basic.animate(Text, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0.5, {Position=UDim2.new(0.2, 0, 0.3, 0)})


```

# Features
Drawing/rendering

Animations

