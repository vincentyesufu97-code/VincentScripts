-- VINCENT HUB (SIDEBAR + FEATURES PAGE) LEGIT & CLEAN + BORDI BIANCHI
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")

player.CharacterAdded:Connect(function(newChar)
    char = newChar
    hum = newChar:WaitForChild("Humanoid")
end)

local gui = Instance.new("ScreenGui")
gui.Parent = game:GetService("CoreGui")

-- MINI MENU TONDO
local mini = Instance.new("TextButton", gui)
mini.Size = UDim2.new(0, 55, 0, 55)
mini.Position = UDim2.new(0, 20, 0, 20)
mini.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
mini.Text = "V"
mini.TextColor3 = Color3.fromRGB(255, 255, 255)
mini.Font = Enum.Font.GothamBlack
mini.TextSize = 28
mini.Active = true
mini.Draggable = true
Instance.new("UICorner", mini).CornerRadius = UDim.new(1, 0)

local miniGlow = Instance.new("UIStroke", mini)
miniGlow.Color = Color3.fromRGB(255, 255, 255)
miniGlow.Thickness = 2

-- MENU PRINCIPALE
local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 500, 0, 400)
main.Position = UDim2.new(0, 90, 0, 100)
main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
main.Visible = false
main.Active = true
main.Draggable = true
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 12)

local mainGlow = Instance.new("UIStroke", main)
mainGlow.Color = Color3.fromRGB(255, 255, 255)
mainGlow.Thickness = 2

mini.MouseButton1Click:Connect(function()
    main.Visible = not main.Visible
end)

-- SIDEBAR SINISTRA
local sidebar = Instance.new("Frame", main)
sidebar.Size = UDim2.new(0, 140, 1, 0)
sidebar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Instance.new("UICorner", sidebar).CornerRadius = UDim.new(0, 12)

local sidebarGlow = Instance.new("UIStroke", sidebar)
sidebarGlow.Color = Color3.fromRGB(255, 255, 255)
sidebarGlow.Thickness = 2

-- TITOLO SIDEBAR
local hubTitle = Instance.new("TextLabel", sidebar)
hubTitle.Size = UDim2.new(1, 0, 0, 40)
hubTitle.Position = UDim2.new(0, 0, 0, 10)
hubTitle.Text = "Vincent Hub"
hubTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
hubTitle.Font = Enum.Font.GothamBold
hubTitle.TextSize = 20
hubTitle.BackgroundTransparency = 1

-- SOTTO TITOLO
local hubSub = Instance.new("TextLabel", sidebar)
hubSub.Size = UDim2.new(1, 0, 0, 30)
hubSub.Position = UDim2.new(0, 0, 0, 45)
hubSub.Text = "Features"
hubSub.TextColor3 = Color3.fromRGB(200, 200, 200)
hubSub.Font = Enum.Font.Gotham
hubSub.TextSize = 16
hubSub.BackgroundTransparency = 1

-- PULSANTE FEATURES
local featuresBtn = Instance.new("TextButton", sidebar)
featuresBtn.Size = UDim2.new(1, -20, 0, 40)
featuresBtn.Position = UDim2.new(0, 10, 0, 85)
featuresBtn.Text = "Open"
featuresBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
featuresBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
featuresBtn.Font = Enum.Font.GothamBold
featuresBtn.TextSize = 18
Instance.new("UICorner", featuresBtn).CornerRadius = UDim.new(0, 10)

-- PAGINA FEATURES
local page = Instance.new("Frame", main)
page.Size = UDim2.new(1, -140, 1, 0)
page.Position = UDim2.new(0, 140, 0, 0)
page.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Instance.new("UICorner", page).CornerRadius = UDim.new(0, 12)

local pageGlow = Instance.new("UIStroke", page)
pageGlow.Color = Color3.fromRGB(255, 255, 255)
pageGlow.Thickness = 2

featuresBtn.MouseButton1Click:Connect(function()
    page.Visible = true
end)

-- TITOLO PAGINA
local titleMain = Instance.new("TextLabel", page)
titleMain.Size = UDim2.new(1, 0, 0, 40)
titleMain.Position = UDim2.new(0, 0, 0, 0)
titleMain.Text = "Vincent Hub"
titleMain.TextColor3 = Color3.fromRGB(255, 255, 255)
titleMain.Font = Enum.Font.GothamBold
titleMain.TextSize = 22
titleMain.BackgroundTransparency = 1

local titleSub = Instance.new("TextLabel", page)
titleSub.Size = UDim2.new(1, 0, 0, 30)
titleSub.Position = UDim2.new(0, 0, 0, 35)
titleSub.Text = "Features"
titleSub.TextColor3 = Color3.fromRGB(200, 200, 200)
titleSub.Font = Enum.Font.Gotham
titleSub.TextSize = 18
titleSub.BackgroundTransparency = 1

-- FUNZIONE INPUT + TOGGLE (textbar in mezzo)
local function makeInputToggle(name, posY)
    local frame = Instance.new("Frame", page)
    frame.Size = UDim2.new(1, -20, 0, 50)
    frame.Position = UDim2.new(0, 10, 0, posY)
    frame.BackgroundTransparency = 1

    local label = Instance.new("TextLabel", frame)
    label.Size = UDim2.new(0.3, 0, 1, 0)
    label.Text = name .. ":"
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Font = Enum.Font.GothamBold
    label.TextSize = 18
    label.BackgroundTransparency = 1

    local box = Instance.new("TextBox", frame)
    box.Size = UDim2.new(0.4, 0, 1, 0)
    box.Position = UDim2.new(0.3, 0, 0, 0)
    box.PlaceholderText = "0 - 1000"
    box.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    box.TextColor3 = Color3.fromRGB(255, 255, 255)
    box.Font = Enum.Font.Gotham
    box.TextSize = 16
    Instance.new("UICorner", box).CornerRadius = UDim.new(0, 8)

    local toggle = Instance.new("TextButton", frame)
    toggle.Size = UDim2.new(0.25, 0, 1, 0)
    toggle.Position = UDim2.new(0.72, 0, 0, 0)
    toggle.Text = "OFF"
    toggle.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggle.Font = Enum.Font.GothamBold
    toggle.TextSize = 18
    Instance.new("UICorner", toggle).CornerRadius = UDim.new(0, 10)

    return box, toggle
end

---------------------------------------------------------
-- FEATURES
---------------------------------------------------------

-- SPEED
local speedBox, speedToggle = makeInputToggle("Speed", 80)
local speedOn = false

speedToggle.MouseButton1Click:Connect(function()
    speedOn = not speedOn
    speedToggle.Text = speedOn and "ON" or "OFF"

    if speedOn then
        local val = tonumber(speedBox.Text)
        if val and val <= 1000 then hum.WalkSpeed = val end
    else
        hum.WalkSpeed = 16
    end
end)

speedBox.FocusLost:Connect(function()
    if speedOn then
        local val = tonumber(speedBox.Text)
        if val and val <= 1000 then hum.WalkSpeed = val end
    end
end)

-- JUMP
local jumpBox, jumpToggle = makeInputToggle("Jump", 140)
local jumpOn = false

jumpToggle.MouseButton1Click:Connect(function()
    jumpOn = not jumpOn
    jumpToggle.Text = jumpOn and "ON" or "OFF"

    if jumpOn then
        local val = tonumber(jumpBox.Text)
        if val and val <= 1000 then hum.JumpPower = val end
    else
        hum.JumpPower = 50
    end
end)

jumpBox.FocusLost:Connect(function()
    if jumpOn then
        local val = tonumber(jumpBox.Text)
        if val and val <= 1000 then hum.JumpPower = val end
    end
end)

-- NOCLIP
local noclipBox, noclipToggle = makeInputToggle("Noclip", 200)
local noclipOn = false

noclipToggle.MouseButton1Click:Connect(function()
    noclipOn = not noclipOn
    noclipToggle.Text = noclipOn and "ON" or "OFF"
end)

game:GetService("RunService").Stepped:Connect(function()
    if noclipOn and char then
        for _, v in pairs(char:GetDescendants()) do
            if v:IsA("BasePart") then v.CanCollide = false end
        end
    end
end)

-- ESP PLAYER
local espBox, espToggle = makeInputToggle("ESP Player", 260)
local espOn = false

espToggle.MouseButton1Click:Connect(function()
    espOn = not espOn
    espToggle.Text = espOn and "ON" or "OFF"

    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr ~= player and plr.Character then
            if espOn then
                local h = Instance.new("Highlight", plr.Character)
                h.FillColor = Color3.fromRGB(0, 140, 255)
                h.OutlineColor = Color3.fromRGB(255, 255, 255)

                local nameTag = Instance.new("BillboardGui", plr.Character)
                nameTag.Size = UDim2.new(0, 100, 0, 30)
                nameTag.Adornee = plr.Character:FindFirstChild("Head")
                nameTag.AlwaysOnTop = true

                local txt = Instance.new("TextLabel", nameTag)
                txt.Size = UDim2.new(1, 0, 1, 0)
                txt.BackgroundTransparency = 1
                txt.Text = plr.Name
                txt.TextColor3 = Color3.fromRGB(0, 140, 255)
                txt.Font = Enum.Font.GothamBold
                txt.TextSize = 18
            else
                for _, v in pairs(plr.Character:GetChildren()) do
                    if v:IsA("Highlight") or v:IsA("BillboardGui") then v:Destroy() end
                end
            end
        end
    end
end)

-- ANTI AFK
local afkBox, afkToggle = makeInputToggle("Anti-AFK", 320)
local afkOn = false
local vu = game:GetService("VirtualUser")

afkToggle.MouseButton1Click:Connect(function()
    afkOn = not afkOn
    afkToggle.Text = afkOn and "ON" or "OFF"
end)

player.Idled:Connect(function()
    if afkOn then
        vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        task.wait(1)
        vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    end
end)