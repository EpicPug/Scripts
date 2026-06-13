--!strict

--!strict

const Workspace = game:GetService("Workspace")

const function handleInstance(instance: Instance)
	if instance:IsA("PostEffect") or instance:IsA("Light") then
		instance.Enabled = false
	end
end

if not game:IsLoaded() then
	game.Loaded:Wait()
end

Workspace.ChildAdded:Connect(handleInstance)

for _, instance in game:QueryDescendants("PostEffect, Light") do
	handleInstance(instance)
end
