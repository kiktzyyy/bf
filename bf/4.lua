spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Main["Auto Farm Fast"] and World1 then
					if game.Players.LocalPlayer.Data.Level.Value >= 10 then
						_G.Settings.Main["Auto Farm"] = false;
						_G.Settings.Main["Auto Farm Fast"] = true;
					end;
				end;
			end;
		end);
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Main["Auto Farm Fast"] and World1 then
				pcall(function()
					if game.Players.LocalPlayer.Data.Level.Value >= 10 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047));
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Shanda" then
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
									until not _G.Settings.Main["Auto Farm Fast"] or (not v.Parent) or v.Humanoid.Health <= 0;
									topos(CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531));
									UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Main["Auto Farm Fast"] and World1 then
					if game.Players.LocalPlayer.Data.Level.Value >= 75 then
						_G.Settings.Main["Auto Farm"] = true;
						_G.Settings.Main["Auto Farm Fast"] = false;
					end;
				end;
			end;
		end);
	end);
