task.spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.Settings.Main["Select Weapon"] == "Melee" then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Main["Selected Weapon"] = v.Name;
						end;
					end;
				end;
			elseif _G.Settings.Main["Select Weapon"] == "Sword" then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Main["Selected Weapon"] = v.Name;
						end;
					end;
				end;
			elseif _G.Settings.Main["Select Weapon"] == "Gun" then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Gun" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Main["Selected Weapon"] = v.Name;
						end;
					end;
				end;
			elseif _G.Settings.Main["Select Weapon"] == "Fruit" then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Main["Selected Weapon"] = v.Name;
						end;
					end;
				end;
			end;
		end);
	end;
end);
