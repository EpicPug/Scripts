--!strict

if not game:IsLoaded() then
	game.Loaded:Wait()
end

const Players = game:GetService("Players")

const player = Players.LocalPlayer :: Player
const connections: { RBXScriptConnection } = {}
