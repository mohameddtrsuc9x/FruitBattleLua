

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Fruit BattleGround", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local auto_farm_fruit = false

local Tab = Window:MakeTab({
	Name = "Main"
})

Tab:AddToggle({
	Name = "Auto Farm",
	Default = false,
	Callback = function(Value)
	    auto_farm_fruit = Value
		while auto_farm_fruit do
		    workspace.Characters.Players.KOOPING19.HumanoidRootPart.CFrame = CFrame.new(-1015.59674, 696.932251, -918.231995, 0.724461973, -2.30750108e-09, 0.689314783, 7.3113732e-08, 1, -7.34941707e-08, -0.689314783, 1.03642108e-07, 0.724461973)
            wait(0.5)
            local current_slot_value = game:GetService("Players").LocalPlayer.MAIN_DATA.Slot.Value
            local current_slot_name = game:GetService("Players").LocalPlayer.MAIN_DATA.Slots:WaitForChild(current_slot_value).Value
            wait(0.5)
            for i, value in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if value:IsA("Tool") then
                    game:GetService("ReplicatedStorage"):WaitForChild("Replicator"):InvokeServer(unpack({
                    	tostring(current_slot_name),
                    	tostring(value),
                    	{}
                    }))
                end
            end
            wait(0.5)
	    end
	end    
})
