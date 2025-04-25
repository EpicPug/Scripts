if not game:IsLoaded() then
	repeat
		task.wait(0.5)
	until game:IsLoaded()
end

local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("Pug's Auto Farm") then
	return
end

local DA_HOOD_ID = 2788229376
if game.PlaceId ~= DA_HOOD_ID then
	return
end
