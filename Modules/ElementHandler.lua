local function hasProperty(object, prop)
	local success  = pcall(function() 
		local t = object[prop] 
	end)
	if success then
		return true
	else
		return false
	end
end


function BuildElement(element, props)
	if props == nil then
		props = {
			Name = "Basic",
		}
	elseif type(props) ~= "table" then
		error("Property must be in a table!", 1)
	else
		local Success, result = pcall(function()
			local CreateElement = Instance.new(element)
			CreateElement.Parent = script.Parent.Holder
			if table.find(props,"Size") then
				for i, prop in props do
					CreateElement[i] = prop
				end

				return CreateElement
			else
				if hasProperty(CreateElement, "Size") then
					CreateElement.Size = UDim2.new(0.04, 0, 0.04, 0)
				end
				
				for i, prop in props do
					CreateElement[i] = prop
				end

				return CreateElement
			end

		end)
		if not Success then
			error("Error : "..result.." ", 1)
		else
			print(typeof(result))
			return result
		end
	end
end


return BuildElement
