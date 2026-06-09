--!strict

if getgenv().isAntiSitEnabled then
	return
end

getgenv().isAntiSitEnabled = true

if not game:IsLoaded() then
	game.Loaded:Wait()
end

const Players = game:GetService("Players")

const player = Players.LocalPlayer :: Player
local seatedConnection: RBXScriptConnection? = nil

const function onCharacterAdded(character: Model)
	if seatedConnection then
		seatedConnection:Disconnect()
		seatedConnection = nil
	end

	local humanoid = character:WaitForChild("Humanoid") :: Humanoid

	seatedConnection = humanoid.Seated:Connect(function(isSitting: boolean)
		if not isSitting then
			return
		end

		humanoid.Sit = false
		humanoid.Jump = true
	end)
end

player.CharacterAdded:Connect(onCharacterAdded)

const character = player.Character

if character then
	onCharacterAdded(character)
end
