--!strict

const Workspace = game:GetService("Workspace")

const function handleInstance(instance: Instance)
	if instance:IsA("PostEffect") then
		instance.Enabled = false
	end
end

if not game:IsLoaded() then
	game.Loaded:Wait()
end

Workspace.ChildAdded:Connect(handleInstance)

for _, instance in Workspace:QueryDescendants("") do
	handleInstance(instance)
end
