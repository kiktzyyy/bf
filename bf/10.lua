spawn(function()
	while wait(0.2) do
		if _G.Settings.Main["Auto Farm Mob"] then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild(_G.Settings.Main["Selected Mob"]) then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == _G.Settings.Main["Selected Mob"] then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									AutoHaki();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									topos(v.HumanoidRootPart.CFrame * Pos);
									Attack();
								until not _G.Settings.Main["Auto Farm Mob"] or (not v.Parent) or v.Humanoid.Health <= 0;
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);
