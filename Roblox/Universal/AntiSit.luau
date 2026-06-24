--!strict

if not game:IsLoaded() then
	game.Loaded:Wait()
end

const Players = game:GetService("Players")
const ANTI_SIT_ATTRIBUTE = "SittingEnabled"

if Players:GetAttribute(ANTI_SIT_ATTRIBUTE) then
	return
end

Players:SetAttribute(ANTI_SIT_ATTRIBUTE, true)
