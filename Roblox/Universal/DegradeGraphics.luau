--!strict

const Lighting = game:GetService("Lighting")
const Workspace = game:GetService("Workspace")

const SMOOTH_PLASTIC_MATERIAL_ENUM = Enum.Material.SmoothPlastic

const function handleInstance(instance: Instance)
	if instance:IsA("PostEffect") or instance:IsA("Light") then
		instance.Enabled = false
	elseif instance:IsA("BasePart") then
		instance.Material = SMOOTH_PLASTIC_MATERIAL_ENUM
	end
end

if not game:IsLoaded() then
	game.Loaded:Wait()
end

Lighting.GlobalShadows = false

Workspace.ChildAdded:Connect(handleInstance)

for _, instance in game:QueryDescendants("PostEffect, Light, BasePart") do
	handleInstance(instance)
end
