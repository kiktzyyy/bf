spawn(function()
	while wait(0.2) do
		if _G.BuyAllSword then
			pcall(function()
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Cutlass");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Katana");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Pipe");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Bisento");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane");
			end);
		end;
	end;
end);
spawn(function()
	while wait(0.2) do
		if _G.BuyAllAib then
			pcall(function()
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("KenTalk", "Buy");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
			end);
		end;
	end;
end);
