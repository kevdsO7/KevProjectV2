-- [[ KEV PROJECT V2: TROLL MODULE ]] --
local LP = game:GetService("Players").LocalPlayer

-- ميزة السرعة الخارقة
LP.Character.Humanoid.WalkSpeed = 100

-- ميزة الطيران البسيط
local bv = Instance.new("BodyVelocity", LP.Character.HumanoidRootPart)
bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bv.Velocity = Vector3.new(0, 0.5, 0)

print("Troll Modules Loaded!")
