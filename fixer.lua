local Vesty = Instance.new("TextLabel")
local loading = Instance.new("TextLabel")
local pleasewait = Instance.new("TextLabel")
local vestystroke = Instance.new("UIStroke")
local vestystroke2 = Instance.new("UIStroke")
local vestystroke3 = Instance.new("UIStroke")

local loadparent = game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Core["Process Pending GUI"]["Purchase Pending"].Frame


Vesty.Name = "Vesty"
Vesty.Parent = loadparent
Vesty.AnchorPoint = Vector2.new(0.5, 0.5)
Vesty.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Vesty.BackgroundTransparency = 1.000
Vesty.BorderColor3 = Color3.fromRGB(0, 0, 0)
Vesty.BorderSizePixel = 0
Vesty.Position = UDim2.new(0.5, 0, 0.5, 100)
Vesty.Size = UDim2.new(0, 311, 0, 50)
Vesty.Font = Enum.Font.FredokaOne
Vesty.Text = "Vesty Scripts v7"
Vesty.TextColor3 = Color3.fromRGB(255, 255, 255)
Vesty.TextSize = 24.000

vestystroke.Name = "UiStroke"
vestystroke.Parent = Vesty
vestystroke.Color = Color3.fromRGB(0, 0, 0)
vestystroke.Enabled = true
vestystroke.Thickness = 2
vestystroke.Transparency = 0

loading.Name = "loading"
loading.Parent = loadparent
loading.AnchorPoint = Vector2.new(0.5, 0.5)
loading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loading.BackgroundTransparency = 1.000
loading.BorderColor3 = Color3.fromRGB(0, 0, 0)
loading.BorderSizePixel = 0
loading.Position = UDim2.new(0.5, 0, 0.5, 145)
loading.Size = UDim2.new(0, 311, 0, 14)
loading.Font = Enum.Font.FredokaOne
loading.Text = "Loading Scripts.."
loading.TextColor3 = Color3.fromRGB(221, 221, 221)
loading.TextSize = 17.000

vestystroke2.Name = "UiStroke"
vestystroke2.Parent = loading
vestystroke2.Color = Color3.fromRGB(0, 0, 0)
vestystroke2.Enabled = true
vestystroke2.Thickness = 1
vestystroke2.Transparency = 0

pleasewait.Name = "pleasewait"
pleasewait.Parent = loadparent
pleasewait.AnchorPoint = Vector2.new(0.5, 0.5)
pleasewait.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pleasewait.BackgroundTransparency = 1.000
pleasewait.BorderColor3 = Color3.fromRGB(0, 0, 0)
pleasewait.BorderSizePixel = 0
pleasewait.Position = UDim2.new(0.5, 0, 0.5, 165)
pleasewait.Size = UDim2.new(0, 178, 0, 17)
pleasewait.Font = Enum.Font.FredokaOne
pleasewait.Text = "PLEASE WAIT!"
pleasewait.TextColor3 = Color3.fromRGB(172, 172, 172)
pleasewait.TextSize = 17.000

vestystroke3.Name = "UiStroke"
vestystroke3.Parent = pleasewait
vestystroke3.Color = Color3.fromRGB(0, 0, 0)
vestystroke3.Enabled = true
vestystroke3.Thickness = 1
vestystroke3.Transparency = 0
