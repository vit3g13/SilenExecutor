
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LoadstringGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 500, 0, 220)
Frame.Position = UDim2.new(0.25, 0, 0.25, 0)
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 10)


local Title = Instance.new("TextLabel")
Title.Text = "Silent executor"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 24
Title.TextColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, -50, 0, 40)
Title.Position = UDim2.new(0, 10, 0, 5)
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Frame


local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 40, 0, 30)
CloseButton.Position = UDim2.new(1, -45, 0, 5)
CloseButton.Text = "X"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner", CloseButton)
CloseCorner.CornerRadius = UDim.new(0, 6)

CloseButton.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)


local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0, 480, 0, 60)
TextBox.Position = UDim2.new(0, 10, 0, 50)
TextBox.PlaceholderText = "Paste  you scripts here"
TextBox.Text = ""
TextBox.TextSize = 16
TextBox.ClearTextOnFocus = false
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.Parent = Frame

local UICorner2 = Instance.new("UICorner", TextBox)
UICorner2.CornerRadius = UDim.new(0, 6)


local LoadButton = Instance.new("TextButton")
LoadButton.Size = UDim2.new(0, 480, 0, 50)
LoadButton.Position = UDim2.new(0, 10, 0, 120)
LoadButton.Text = "Execute"
LoadButton.Font = Enum.Font.GothamBold
LoadButton.TextSize = 18
LoadButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
LoadButton.TextColor3 = Color3.new(1, 1, 1)
LoadButton.Parent = Frame

local UICorner3 = Instance.new("UICorner", LoadButton)
UICorner3.CornerRadius = UDim.new(0, 6)


LoadButton.MouseButton1Click:Connect(function()
    local success, err = pcall(function()
        loadstring(TextBox.Text)()
    end)
    if not success then
        warn("Error (Reson script): " .. err)
    end
end)

