

function RenderElement(element, place)
	if place == nil then
		error("Error : `Place` is required.", 1)
	elseif typeof(place) ~= "Instance" then
		error("Error : Place must be a Instance", 1)
	else
		local Success, result = pcall(function()
			element["Parent"] = place
		end)
		if not Success then
			error("Error : "..result.." ", 1)
		else
			return result
		end
	end
end


return RenderElement
