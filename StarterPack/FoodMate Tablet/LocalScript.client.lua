local parent = script.Parent;

local players_service = game:GetService("Players");
local local_player = players_service.LocalPlayer;

local player_gui = local_player:WaitForChild("PlayerGui");

parent.Equipped:Connect(function()
	player_gui:WaitForChild('foodMate').Enabled = true
end)

parent.Unequipped:Connect(function()
	player_gui:WaitForChild('foodMate').Scripts.clickHandler.pageChange:Fire('closeMenu')
end)