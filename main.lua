local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "Fruit BattleGround",
    HidePremium = false,
    SaveConfig = false,
    ConfigFolder = "OrionTest"
})

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
            workspace.Characters.Players.KOOPING19.HumanoidRootPart.CFrame =
                CFrame.new(-1015.59674, 696.932251, -918.231995, 0.724461973, -2.30750108e-09, 0.689314783,
                    7.3113732e-08, 1, -7.34941707e-08, -0.689314783, 1.03642108e-07, 0.724461973)
            wait(0.5)
            local current_slot_value = game:GetService("Players").LocalPlayer.MAIN_DATA.Slot.Value
            local current_slot_name = game:GetService("Players").LocalPlayer.MAIN_DATA.Slots:WaitForChild(
                                          current_slot_value).Value
            wait(0.5)
            for i, value in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if value:IsA("Tool") then
					print(string.gsub(value, " ",""))
                    game:GetService("ReplicatedStorage"):WaitForChild("Replicator"):InvokeServer(unpack({tostring(
                        current_slot_name), string.gsub(tostring(value), " ",""), {
                        MouseRay = {
                            Normal = Vector3.yAxis,
                            Direction = vector.create(-233.08799743652344, -114.48482513427734, 12.775901794433594),
                            Origin = vector.create(608.1336669921875, 771.7188110351562, 362.4999084472656),
                            Instance = workspace:WaitForChild("Map"):WaitForChild("Model"):WaitForChild("Part"),
                            Distance = 94.16972351074219,
                            Material = Enum.Material.Foil,
                            Position = vector.create(523.7112426757812, 730.25341796875, 367.1272277832031)
                        }
                    }}))
                end
            end
            wait(0.5)
        end
    end
})
