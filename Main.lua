-- [[ KEV PROJECT V2: UNIVERSAL LOADER ]] --
-- Signatures: KEV | COBRA | TRAVEX

local function FastLoad(fileName)
    local url = "https://raw.githubusercontent.com/kevdsO7/KevProjectV2/main/" .. fileName
    local success, err = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    if not success then warn("Failed to load: " .. fileName) end
end

-- تحميل كل شيء بلمحة بصر
FastLoad("Visuals.lua")
FastLoad("Troll.lua")

-- واجهة ترحيب بسيطة
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Kev Project V2";
    Text = "Success! All scripts are running.";
    Duration = 5;
})
