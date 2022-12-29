# Basic Render
*A basic ui render for roblox.

# Installtion

Download rbxm > place it in ReplicatedStorage.

# Simple frame render

```

local Basic = require(game.ReplicatedStorage.BasicRender)
local Player = game:GetService("Players").LocalPlayer

-- Building Ui Elements

local ScreenGui = Basic.BuildElement("ScreenGui", {
	Name = "Basic",
	IgnoreGuiInset = true
})


local background = Basic.BuildElement("Frame", {
	Name = "BackGround",
	BackgroundColor3 = Color3.new(1, 1, 1),
	Position = UDim2.new(0.5, 0, 0.5, 0),
	Size = UDim2.new(1, 0, 1, 0),
	AnchorPoint = Vector2.new(0.5, 0.5)
})

-- render the UI 
Basic.render(ScreenGui, Player:WaitForChild("PlayerGui"))
Basic.render(background, ScreenGui) -- Sets "ScreenGui" as parent

```

# Features
Drawing/rendering

(More soon)
