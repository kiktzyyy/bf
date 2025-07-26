spawn(function()
	while task.wait(0.2) do
		if _G.Settings.Main["Auto Farm Sword Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Quest" then
			pcall(function()
				CheckQuest();
				if not string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
					topos(CFrameQuest);
					if (CFrameQuest.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end;
				elseif string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if game.Workspace.Enemies:FindFirstChild(Mon) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								if v.Name == Mon then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Mastery Sword"]);
										Attack();
										topos(v.HumanoidRootPart.CFrame * Pos);
										AutoHaki();
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.Transparency = 1;
										v.Humanoid.JumpPower = 0;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
									until not _G.Settings.Main["Auto Farm Sword Mastery"] or (not v.Parent) or v.Humanoid.Health == 0 or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "Quest";
								end;
							end;
						end;
					else
						topos(CFrameMon);
						UnEquipWeapon(_G.Settings.Main["Selected Mastery Sword"]);
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Sword Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "No Quest" then
			pcall(function()
				CheckQuest();
				topos(CFrameMon);
				if game.Workspace.Enemies:FindFirstChild(Mon) then
					for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								EquipWeapon(_G.Settings.Main["Selected Mastery Sword"]);
								Attack();
								topos(v.HumanoidRootPart.CFrame * Pos);
								AutoHaki();
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								v.HumanoidRootPart.Transparency = 1;
								v.Humanoid.JumpPower = 0;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.CanCollide = false;
								PosMon = v.HumanoidRootPart.CFrame;
								MonFarm = v.Name;
							until not _G.Settings.Main["Auto Farm Sword Mastery"] or (not v.Parent) or v.Humanoid.Health == 0 or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "No Quest";
						end;
					end;
				else
					UnEquipWeapon(_G.Settings.Main["Selected Mastery Sword"]);
					topos(CFrameMon);
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Sword Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Bones" then
			pcall(function()
				topos(QuestBonePos);
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Reborn Skeleton") or (game:GetService("Workspace")).Enemies:FindFirstChild("Living Zombie") or (game:GetService("Workspace")).Enemies:FindFirstChild("Demonic Soul") or (game:GetService("Workspace")).Enemies:FindFirstChild("Posessed Mummy") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									EquipWeapon(_G.Settings.Main["Selected Mastery Sword"]);
									Attack();
									topos(v.HumanoidRootPart.CFrame * Pos);
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
								until not _G.Settings.Main["Auto Farm Sword Mastery"] or v.Humanoid.Health <= 0 or (not v.Parent) or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "Bones";
							end;
						elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Demonic Soul") then
							topos(v.HumanoidRootPart.CFrame * Pos);
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Sword Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Cakeprince" then
			pcall(function()
				local PosCake = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375);
				topos(PosCake);
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Cookie Crafter") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Guard") or (game:GetService("Workspace")).Enemies:FindFirstChild("Baking Staff") or (game:GetService("Workspace")).Enemies:FindFirstChild("Head Baker") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									EquipWeapon(_G.Settings.Main["Selected Mastery Sword"]);
									Attack();
									topos(v.HumanoidRootPart.CFrame * Pos);
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
								until not _G.Settings.Main["Auto Farm Sword Mastery"] or v.Humanoid.Health <= 0 or (not v.Parent) or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "Cakeprince";
							end;
						elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Baking Staff") then
							topos(v.HumanoidRootPart.CFrame * Pos);
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Sword Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Nearest" then
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (v:FindFirstChild("HumanoidRootPart")).Position).Magnitude <= 2000 then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								EquipWeapon(_G.Settings.Main["Selected Mastery Sword"]);
								Attack();
								topos(v.HumanoidRootPart.CFrame * Pos);
								AutoHaki();
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								v.HumanoidRootPart.Transparency = 1;
								v.Humanoid.JumpPower = 0;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.CanCollide = false;
								PosMon = v.HumanoidRootPart.CFrame;
								MonFarm = v.Name;
							until not _G.Settings.Main["Auto Farm Sword Mastery"] or (not v.Parent) or v.Humanoid.Health == 0 or not _G.Settings.Main["Selected Mastery Mode"] == "Nearest";
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Sword Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Boss" then
			if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				CheckBossQuest();
				topos(CFrameQBoss);
				if (CFrameQBoss.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss);
				end;
			elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				pcall(function()
					CheckBossQuest();
					if (game:GetService("Workspace")).Enemies:FindFirstChild(SelectBoss) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == selectBoss and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									EquipWeapon(_G.Settings.Main["Selected Mastery Sword"]);
									Attack();
									topos(v.HumanoidRootPart.CFrame * Pos);
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
								until not _G.Settings.Main["Auto Farm Sword Mastery"] or not _G.Settings.Main["Selected Mastery Mode"] == "Boss" or (not v.Parent) or v.Humanoid.Health == 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name));
							end;
						end;
					end;
				end);
			end;
		end;
	end;
end);
spawn(function()
	while task.wait(0.2) do
		if _G.Settings.Main["Auto Farm Fruit Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Quest" then
			pcall(function()
				CheckQuest();
				if not string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
					topos(CFrameQuest);
					if (CFrameQuest.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end;
				elseif string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if game.Workspace.Enemies:FindFirstChild(Mon) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								if v.Name == Mon then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
											EquipWeapon((game:GetService("Players")).LocalPlayer.Data.DevilFruit.Value);
											topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
											Skillaimbot = true;
											UseSkill = true;
										else
											UseSkill = false;
											Skillaimbot = false;
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											NormalAttack();
											topos(v.HumanoidRootPart.CFrame * Pos);
										end;
										AutoHaki();
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.Transparency = 1;
										v.Humanoid.JumpPower = 0;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										AimBotSkillPosition = v.HumanoidRootPart.Position;
										Skillaimbot = true;
									until not _G.Settings.Main["Auto Farm Fruit Mastery"] or (not v.Parent) or v.Humanoid.Health == 0 or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "Quest";
									UseSkill = false;
									Skillaimbot = false;
								end;
							end;
						end;
					else
						UseSkill = false;
						topos(CFrameMon);
						UnEquipWeapon(SelectWeapon);
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Fruit Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "No Quest" then
			pcall(function()
				CheckQuest();
				topos(CFrameMon);
				if game.Workspace.Enemies:FindFirstChild(Mon) then
					for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
									EquipWeapon((game:GetService("Players")).LocalPlayer.Data.DevilFruit.Value);
									UseSkill = true;
									Skillaimbot = true;
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
								else
									UseSkill = false;
									Skillaimbot = false;
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									NormalAttack();
									topos(v.HumanoidRootPart.CFrame * Pos);
								end;
								AutoHaki();
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								v.HumanoidRootPart.Transparency = 1;
								v.Humanoid.JumpPower = 0;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.CanCollide = false;
								PosMon = v.HumanoidRootPart.CFrame;
								MonFarm = v.Name;
								AimBotSkillPosition = v.HumanoidRootPart.Position;
							until not _G.Settings.Main["Auto Farm Fruit Mastery"] or (not v.Parent) or v.Humanoid.Health == 0 or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "No Quest";
							UseSkill = false;
							Skillaimbot = false;
						end;
					end;
				else
					UseSkill = false;
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
					topos(CFrameMon);
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Fruit Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Bones" then
			pcall(function()
				topos(QuestBonePos);
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Reborn Skeleton") or (game:GetService("Workspace")).Enemies:FindFirstChild("Living Zombie") or (game:GetService("Workspace")).Enemies:FindFirstChild("Demonic Soul") or (game:GetService("Workspace")).Enemies:FindFirstChild("Posessed Mummy") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
										EquipWeapon((game:GetService("Players")).LocalPlayer.Data.DevilFruit.Value);
										UseSkill = true;
										Skillaimbot = true;
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
									else
										UseSkill = false;
										Skillaimbot = false;
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										NormalAttack();
										topos(v.HumanoidRootPart.CFrame * Pos);
									end;
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									AimBotSkillPosition = v.HumanoidRootPart.Position;
								until not _G.Settings.Main["Auto Farm Fruit Mastery"] or v.Humanoid.Health <= 0 or (not v.Parent) or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "Bones";
								UseSkill = false;
								Skillaimbot = false;
							end;
						elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Demonic Soul") then
							topos(v.HumanoidRootPart.CFrame * Pos);
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Fruit Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Cakeprince" then
			pcall(function()
				local PosCake = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375);
				topos(PosCake);
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Cookie Crafter") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Guard") or (game:GetService("Workspace")).Enemies:FindFirstChild("Baking Staff") or (game:GetService("Workspace")).Enemies:FindFirstChild("Head Baker") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
										EquipWeapon((game:GetService("Players")).LocalPlayer.Data.DevilFruit.Value);
										UseSkill = true;
										Skillaimbot = true;
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
									else
										UseSkill = false;
										Skillaimbot = false;
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										NormalAttack();
										topos(v.HumanoidRootPart.CFrame * Pos);
									end;
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									AimBotSkillPosition = v.HumanoidRootPart.Position;
								until not _G.Settings.Main["Auto Farm Fruit Mastery"] or v.Humanoid.Health <= 0 or (not v.Parent) or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "Cakeprince";
								UseSkill = false;
								Skillaimbot = false;
							end;
						elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Baking Staff") then
							topos(v.HumanoidRootPart.CFrame * Pos);
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Fruit Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Nearest" then
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (v:FindFirstChild("HumanoidRootPart")).Position).Magnitude <= 2000 then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
									EquipWeapon((game:GetService("Players")).LocalPlayer.Data.DevilFruit.Value);
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
									Skillaimbot = true;
									UseSkill = true;
								else
									Skillaimbot = false;
									UseSkill = false;
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									NormalAttack();
									topos(v.HumanoidRootPart.CFrame * Pos);
								end;
								AutoHaki();
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								v.HumanoidRootPart.Transparency = 1;
								v.Humanoid.JumpPower = 0;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.CanCollide = false;
								PosMon = v.HumanoidRootPart.CFrame;
								MonFarm = v.Name;
								AimBotSkillPosition = v.HumanoidRootPart.Position;
							until not _G.Settings.Main["Auto Farm Fruit Mastery"] or (not v.Parent) or v.Humanoid.Health == 0 or not _G.Settings.Main["Selected Mastery Mode"] == "Nearest";
							UseSkill = false;
							Skillaimbot = false;
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Fruit Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Boss" then
			if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				CheckBossQuest();
				topos(CFrameQBoss);
				if (CFrameQBoss.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss);
				end;
			elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				pcall(function()
					CheckBossQuest();
					if (game:GetService("Workspace")).Enemies:FindFirstChild(SelectBoss) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == selectBoss and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
										EquipWeapon((game:GetService("Players")).LocalPlayer.Data.DevilFruit.Value);
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
										Skillaimbot = true;
										UseSkill = true;
									else
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										UseSkill = false;
										Skillaimbot = false;
										NormalAttack();
										topos(v.HumanoidRootPart.CFrame * Pos);
									end;
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									AimBotSkillPosition = v.HumanoidRootPart.Position;
								until not _G.Settings.Main["Auto Farm Fruit Mastery"] or not _G.Settings.Main["Selected Mastery Mode"] == "Boss" or (not v.Parent) or v.Humanoid.Health == 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name));
								UseSkill = false;
								Skillaimbot = false;
							end;
						end;
					else
						UseSkill = false;
						Skillaimbot = false;
					end;
				end);
			end;
		end;
	end;
end);
spawn(function()
	while task.wait(0.2) do
		if _G.Settings.Main["Auto Farm Gun Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Quest" then
			pcall(function()
				CheckQuest();
				if not string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
					topos(CFrameQuest);
					if (CFrameQuest.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end;
				elseif string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if game.Workspace.Enemies:FindFirstChild(Mon) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								if v.Name == Mon then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
											EquipWeapon(SelectWeaponGun);
											local ShootPosition = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, (-15), 0);
											((game:GetService("Players")).LocalPlayer.Character.Humanoid:FindFirstChild("")):InvokeServer("TAP", Vector3.new(ShootPosition.Position));
											topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
											UseGunSkill = true;
											Skillaimbot = true;
										else
											UseGunSkill = false;
											Skillaimbot = false;
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(v.HumanoidRootPart.CFrame * Pos);
										end;
										AutoHaki();
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.Transparency = 1;
										v.Humanoid.JumpPower = 0;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										NormalAttack();
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										AimBotSkillPosition = v.HumanoidRootPart.Position;
									until not _G.Settings.Main["Auto Farm Gun Mastery"] or (not v.Parent) or v.Humanoid.Health <= 0 or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "Quest";
									UseGunSkill = false;
									Skillaimbot = false;
								end;
							end;
						end;
					else
						UseGunSkill = false;
						Skillaimbot = false;
						topos(CFrameMon);
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Gun Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "No Quest" then
			pcall(function()
				CheckQuest();
				topos(CFrameMon);
				if game.Workspace.Enemies:FindFirstChild(Mon) then
					for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
									local ShootPosition = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, (-15), 0);
									((game:GetService("Players")).LocalPlayer.Character.Humanoid:FindFirstChild("")):InvokeServer("TAP", Vector3.new(ShootPosition.Position));
									EquipWeapon(SelectWeaponGun);
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
									UseGunSkill = true;
									Skillaimbot = true;
								else
									Skillaimbot = false;
									UseGunSkill = false;
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									topos(v.HumanoidRootPart.CFrame * Pos);
								end;
								AutoHaki();
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								v.HumanoidRootPart.Transparency = 1;
								v.Humanoid.JumpPower = 0;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.CanCollide = false;
								PosMon = v.HumanoidRootPart.CFrame;
								MonFarm = v.Name;
								NormalAttack();
								AimBotSkillPosition = v.HumanoidRootPart.Position;
							until not _G.Settings.Main["Auto Farm Gun Mastery"] or (not v.Parent) or v.Humanoid.Health <= 0 or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "No Quest";
						end;
					end;
				else
					UseGunSkill = false;
					Skillaimbot = false;
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
					topos(CFrameMon);
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Gun Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Bones" then
			pcall(function()
				topos(QuestBonePos);
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Reborn Skeleton") or (game:GetService("Workspace")).Enemies:FindFirstChild("Living Zombie") or (game:GetService("Workspace")).Enemies:FindFirstChild("Demonic Soul") or (game:GetService("Workspace")).Enemies:FindFirstChild("Posessed Mummy") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
										EquipWeapon(SelectWeaponGun);
										local ShootPosition = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, (-15), 0);
										((game:GetService("Players")).LocalPlayer.Character.Humanoid:FindFirstChild("")):InvokeServer("TAP", Vector3.new(ShootPosition.Position));
										UseGunSkill = true;
										Skillaimbot = true;
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
									else
										UseGunSkill = false;
										Skillaimbot = false;
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
									end;
									AutoHaki();
									NormalAttack();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									AimBotSkillPosition = v.HumanoidRootPart.Position;
								until not _G.Settings.Main["Auto Farm Gun Mastery"] or not _G.Settings.Main["Selected Mastery Mode"] == "Bones" or v.Humanoid.Health <= 0 or (not v.Parent);
								UseGunSkill = false;
								Skillaimbot = false;
							elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Demonic Soul") then
								topos(v.HumanoidRootPart.CFrame * Pos);
							end;
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Gun Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Cakeprince" then
			pcall(function()
				local PosCake = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375);
				topos(PosCake);
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Cookie Crafter") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Guard") or (game:GetService("Workspace")).Enemies:FindFirstChild("Baking Staff") or (game:GetService("Workspace")).Enemies:FindFirstChild("Head Baker") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
										EquipWeapon(SelectWeaponGun);
										local ShootPosition = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, (-15), 0);
										((game:GetService("Players")).LocalPlayer.Character.Humanoid:FindFirstChild("")):InvokeServer("TAP", Vector3.new(ShootPosition.Position));
										UseGunSkill = true;
										Skillaimbot = true;
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
									else
										UseGunSkill = false;
										Skillaimbot = false;
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
									end;
									AutoHaki();
									NormalAttack();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									AimBotSkillPosition = v.HumanoidRootPart.Position;
								until not _G.Settings.Main["Auto Farm Gun Mastery"] or not _G.Settings.Main["Selected Mastery Mode"] == "Cakeprince" or v.Humanoid.Health <= 0 or (not v.Parent);
								UseGunSkill = false;
								Skillaimbot = false;
							elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Cake Guard") then
								topos(v.HumanoidRootPart.CFrame * Pos);
							end;
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Gun Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Nearest" then
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (v:FindFirstChild("HumanoidRootPart")).Position).Magnitude <= 2000 then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
									EquipWeapon(SelectWeaponGun);
									local ShootPosition = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, (-15), 0);
									((game:GetService("Players")).LocalPlayer.Character.Humanoid:FindFirstChild("")):InvokeServer("TAP", Vector3.new(ShootPosition.Position));
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
									UseGunSkill = true;
									Skillaimbot = true;
								else
									UseGunSkill = false;
									Skillaimbot = false;
									AutoHaki();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									topos(v.HumanoidRootPart.CFrame * Pos);
								end;
								AutoHaki();
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								v.HumanoidRootPart.Transparency = 1;
								v.Humanoid.JumpPower = 0;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.CanCollide = false;
								PosMon = v.HumanoidRootPart.CFrame;
								MonFarm = v.Name;
								NormalAttack();
								AimBotSkillPosition = v.HumanoidRootPart.Position;
							until not _G.Settings.Main["Auto Farm Gun Mastery"] or (not v.Parent) or v.Humanoid.Health <= 0 or not _G.Settings.Main["Selected Mastery Mode"] == "Nearest";
							UseGunSkill = false;
							Skillaimbot = false;
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Gun Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Boss" then
			if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				CheckBossQuest();
				topos(CFrameQBoss);
				if (CFrameQBoss.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss);
				end;
			elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				pcall(function()
					CheckBossQuest();
					if (game:GetService("Workspace")).Enemies:FindFirstChild(SelectBoss) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == selectBoss and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
										EquipWeapon(SelectWeaponGun);
										local ShootPosition = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, (-15), 0);
										((game:GetService("Players")).LocalPlayer.Character.Humanoid:FindFirstChild("")):InvokeServer("TAP", Vector3.new(ShootPosition.Position));
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
										UseGunSkill = true;
										Skillaimbot = true;
									else
										UseGunSkill = false;
										Skillaimbot = false;
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
									end;
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									NormalAttack();
									AimBotSkillPosition = v.HumanoidRootPart.Position;
								until not _G.Settings.Main["Auto Farm Gun Mastery"] or not _G.Settings.Main["Selected Mastery Mode"] == "Boss" or (not v.Parent) or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name));
								Skillaimbot = false;
							end;
						end;
					else
						UseGunSkill = false;
						Skillaimbot = false;
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild(SelectBoss)).HumanoidRootPart.CFrame * Pos);
					end;
				end);
			end;
		end;
	end;
end);
if World1 then
	tableMon = {
		"Bandit",
		"Monkey",
		"Gorilla",
		"Pirate",
		"Brute",
		"Desert Bandit",
		"Desert Officer",
		"Snow Bandit",
		"Snowman",
		"Chief Petty Officer",
		"Sky Bandit",
		"Dark Master",
		"Toga Warrior",
		"Gladiator",
		"Military Soldier",
		"Military Spy",
		"Fishman Warrior",
		"Fishman Commando",
		"God's Guard",
		"Shanda",
		"Royal Squad",
		"Royal Soldier",
		"Galley Pirate",
		"Galley Captain"
	};
elseif World2 then
	tableMon = {
		"Raider",
		"Mercenary",
		"Swan Pirate",
		"Factory Staff",
		"Marine Lieutenant",
		"Marine Captain",
		"Zombie",
		"Vampire",
		"Snow Trooper",
		"Winter Warrior",
		"Lab Subordinate",
		"Horned Warrior",
		"Magma Ninja",
		"Lava Pirate",
		"Ship Deckhand",
		"Ship Engineer",
		"Ship Steward",
		"Ship Officer",
		"Arctic Warrior",
		"Snow Lurker",
		"Sea Soldier",
		"Water Fighter"
	};
elseif World3 then
	tableMon = {
		"Pirate Millionaire",
		"Dragon Crew Warrior",
		"Dragon Crew Archer",
		"Female Islander",
		"Giant Islander",
		"Marine Commodore",
		"Marine Rear Admiral",
		"Fishman Raider",
		"Fishman Captain",
		"Forest Pirate",
		"Mythological Pirate",
		"Jungle Pirate",
		"Musketeer Pirate",
		"Reborn Skeleton",
		"Living Zombie",
		"Demonic Soul",
		"Posessed Mummy",
		"Peanut Scout",
		"Peanut President",
		"Ice Cream Chef",
		"Ice Cream Commander",
		"Cookie Crafter",
		"Cake Guard",
		"Baking Staff",
		"Head Baker",
		"Cocoa Warrior",
		"Chocolate Bar Battler",
		"Sweet Thief",
		"Candy Rebel",
		"Candy Pirate",
		"Snow Demon",
		"Isle Outlaw",
		"Island Boy",
		"Sun-kissed Warrior",
		"Isle Champion"
	};
end;
