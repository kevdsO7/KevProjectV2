-- [[ KEV PROJECT V2: VISUALS MODULE ]] --
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- ميزة الـ ESP (صناديق نيون)
local function CreateESP(plr)
    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.fromRGB(0, 255, 255)
    Box.Thickness = 2
    
    game:GetService("RunService").RenderStepped:Connect(function()
        if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            local rootPos, onScreen = workspace.CurrentCamera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
            if onScreen then
                Box.Size = Vector2.new(1000/rootPos.Z, 1500/rootPos.Z)
                Box.Position = Vector2.new(rootPos.X - Box.Size.X/2, rootPos.Y - Box.Size.Y/2)
                Box.Visible = true
            else
                Box.Visible = false
            end
        else
            Box.Visible = false
        end
    end)
end

for _, v in pairs(Players:GetPlayers()) do
    if v ~= LocalPlayer then CreateESP(v) end
end

print("Visuals Loaded!")
