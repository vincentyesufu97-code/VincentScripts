-- MENU PRINCIPALE RIDOTTO
local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 300, 0, 250)
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

-- BARRA SUPERIORE
local topBar = Instance.new("Frame", main)
topBar.Size = UDim2.new(1, 0, 0, 30)
topBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Instance.new("UICorner", topBar).CornerRadius = UDim.new(0, 12)

local title = Instance.new("TextLabel", topBar)
title.Size = UDim2.new(0.65, 0, 1, 0)
title.Position = UDim2.new(0, 10, 0, 0)
title.Text = "Vincent Hub"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.BackgroundTransparency = 1

-- PULSANTE "-"
local minimize = Instance.new("TextButton", topBar)
minimize.Size = UDim2.new(0, 30, 0, 30)
minimize.Position = UDim2.new(0.75, 0, 0, 0)
minimize.Text = "-"
minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
minimize.Font = Enum.Font.GothamBold
minimize.TextSize = 22
minimize.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Instance.new("UICorner", minimize).CornerRadius = UDim.new(0, 8)

-- PULSANTE "X"
local closeBtn = Instance.new("TextButton", topBar)
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(0.85, 0, 0, 0)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.fromRGB(255, 80, 80)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 22
closeBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 8)

-- MINIMIZZAZIONE
local minimized = false
minimize.MouseButton1Click:Connect(function()
    minimized = not minimized
    if minimized then
        main.Size = UDim2.new(0, 300, 0, 30)
    else
        main.Size = UDim2.new(0, 300, 0, 250)
    end
end)

closeBtn.MouseButton1Click:Connect(function()
    main.Visible = false
end)

-- SIDEBAR RIDOTTA
local sidebar = Instance.new("Frame", main)
sidebar.Size = UDim2.new(0, 100, 1, -30)
sidebar.Position = UDim2.new(0, 0, 0, 30)
sidebar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Instance.new("UICorner", sidebar).CornerRadius = UDim.new(0, 12)

local sidebarGlow = Instance.new("UIStroke", sidebar)
sidebarGlow.Color = Color3.fromRGB(255, 255, 255)
sidebarGlow.Thickness = 2

local hubTitle = Instance.new("TextLabel", sidebar)
hubTitle.Size = UDim2.new(1, 0, 0, 40)
hubTitle.Position = UDim2.new(0, 0, 0, 10)
hubTitle.Text = "Vincent Hub"
hubTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
hubTitle.Font = Enum.Font.GothamBold
hubTitle.TextSize = 20
hubTitle.BackgroundTransparency = 1

local hubSub = Instance.new("TextLabel", sidebar)
hubSub.Size = UDim2.new(1, 0, 0, 30)
hubSub.Position = UDim2.new(0, 0, 0, 45)
hubSub.Text = "Features"
hubSub.TextColor3 = Color3.fromRGB(200, 200, 200)
hubSub.Font = Enum.Font.Gotham
hubSub.TextSize = 16
hubSub.BackgroundTransparency = 1

local featuresBtn = Instance.new("TextButton", sidebar)
featuresBtn.Size = UDim2.new(1, -20, 0, 40)
featuresBtn.Position = UDim2.new(0, 10, 0, 85)
featuresBtn.Text = "Open"
featuresBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
featuresBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
featuresBtn.Font = Enum.Font.GothamBold
featuresBtn.TextSize = 18
Instance.new("UICorner", featuresBtn).CornerRadius = UDim.new(0, 10)

-- PAGINA FEATURES RIDOTTA
local page = Instance.new("Frame", main)
page.Size = UDim2.new(1, -100, 1, -30)
page.Position = UDim2.new(0, 100, 0, 30)
page.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Instance.new("UICorner", page).CornerRadius = UDim.new(0, 12)

local pageGlow = Instance.new("UIStroke", page)
pageGlow.Color = Color3.fromRGB(255, 255, 255)
pageGlow.Thickness = 2

featuresBtn.MouseButton1Click:Connect(function()
    page.Visible = true
end)