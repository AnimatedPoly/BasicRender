local TweenService = game:GetService("TweenService")

local function AnimateHandler(Element : Instance, EasingStyle : Enum.EasingStyle, EasingDirection : Enum.EasingDirection, Time: number, props)
	if props == nil then
		error("Error : You must have props", 1)
	elseif type(props) ~= "table" then
		error("Property must be in a table!", 1)
	else
		local Success, result = pcall(function()
			local TweenInfos = TweenInfo.new(Time, EasingStyle, EasingDirection)
			
			local Tween  = TweenService:Create(Element, TweenInfos, props)
			
			Tween:Play()
		end)
		if not Success then
			error("Error : "..result.." ", 1)
		else
			
		end
	end
end


return AnimateHandler
