local executor = identifyexecutor and identifyexecutor() or "Unknown"
print("makerpasta")

local usosal = {
    ["Solara"] = true,
    ["Xeno"] = true,
    ["Luna"] = true,
    ["Delta"] = true
}

if usosal[executor] then
    local message = Instance.new("ScreenGui")
    message.Name = "ЛОХЛОХЛОХЛОЛХОХЛОХЛОХЛОХЛОХ"
    message.Parent = game:GetService("CoreGui")
    message.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    local frame = Instance.new("Frame")
    frame.Parent = message
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    frame.Size = UDim2.new(0, 400, 0, 200)
    frame.Position = UDim2.new(0.5, -200, 0.5, -100)
    frame.BackgroundTransparency = 0.1
    
    local label = Instance.new("TextLabel")
    label.Parent = frame
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(1, 0, 1, 0)
    label.Text = executor .. " is not supported!\nPlease use another executor."
    label.TextColor3 = Color3.fromRGB(255, 50, 50)
    label.TextSize = 20
    label.TextWrapped = true
    label.Font = Enum.Font.SourceSansBold
    
    wait(5)
    message:Destroy()
    return
end

local ScreenGui = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local backgroud = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local games = Instance.new("Frame")
local hypergavno = Instance.new("TextButton")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local vrotosernal = Instance.new("TextButton")
local ImageLabel_3 = Instance.new("ImageLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local bloxtrike = Instance.new("TextButton")
local ImageLabel_4 = Instance.new("ImageLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextLabel_7 = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local TextLabel_8 = Instance.new("TextLabel")
local status = Instance.new("Frame")
local label1 = Instance.new("TextLabel")
local label2 = Instance.new("TextLabel")
local label3 = Instance.new("TextLabel")
local label4 = Instance.new("TextLabel")
local label4_2 = Instance.new("TextLabel")
local femboyclub = Instance.new("TextLabel")

local loadingScreen = Instance.new("ScreenGui")
local loadingFrame = Instance.new("Frame")
local loadingImageLabel = Instance.new("ImageLabel")
local loadingDollar = Instance.new("TextLabel")
local loadingText = Instance.new("TextLabel")
local loadingSuccess = Instance.new("TextLabel")
local loadingName = Instance.new("TextLabel")

local floatingTexts = {}

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
ScreenGui.Enabled = false

loadingScreen.Name = "loadingScreen"
loadingScreen.Parent = game:GetService("CoreGui")
loadingScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
loadingScreen.ResetOnSpawn = false

loadingFrame.Parent = loadingScreen
loadingFrame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
loadingFrame.BorderColor3 = Color3.new(0.184314, 0.184314, 0.184314)
loadingFrame.BorderSizePixel = 2
loadingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
loadingFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
loadingFrame.Size = UDim2.new(0, 250, 0, 200)
loadingFrame.BackgroundTransparency = 0
loadingFrame.Visible = false

loadingImageLabel.Parent = loadingFrame
loadingImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
loadingImageLabel.BorderColor3 = Color3.new(0, 0, 0)
loadingImageLabel.BorderSizePixel = 0
loadingImageLabel.Size = UDim2.new(0, 250, 0, 2)
loadingImageLabel.Image = "rbxassetid://8508019876"
loadingImageLabel.BackgroundTransparency = 1
loadingImageLabel.Visible = false

loadingDollar.Name = "dollar"
loadingDollar.Parent = loadingFrame
loadingDollar.BackgroundColor3 = Color3.new(1, 1, 1)
loadingDollar.BackgroundTransparency = 1
loadingDollar.BorderColor3 = Color3.new(0, 0, 0)
loadingDollar.BorderSizePixel = 0
loadingDollar.Position = UDim2.new(0.291999996, 0, 0.435000002, 0)
loadingDollar.Size = UDim2.new(0, 105, 0, 26)
loadingDollar.Font = Enum.Font.SourceSans
loadingDollar.Text = "$$$"
loadingDollar.TextColor3 = Color3.new(1, 1, 1)
loadingDollar.TextSize = 28
loadingDollar.TextWrapped = true
loadingDollar.Visible = false

loadingText.Name = "loading.."
loadingText.Parent = loadingFrame
loadingText.BackgroundColor3 = Color3.new(1, 1, 1)
loadingText.BackgroundTransparency = 1
loadingText.BorderColor3 = Color3.new(0, 0, 0)
loadingText.BorderSizePixel = 0
loadingText.Position = UDim2.new(0.291999996, 0, 0.435000002, 0)
loadingText.Size = UDim2.new(0, 105, 0, 26)
loadingText.Visible = false
loadingText.Font = Enum.Font.SourceSans
loadingText.Text = "Loading .."
loadingText.TextColor3 = Color3.new(1, 1, 1)
loadingText.TextSize = 24
loadingText.TextWrapped = true

loadingSuccess.Name = "succefly"
loadingSuccess.Parent = loadingFrame
loadingSuccess.BackgroundColor3 = Color3.new(1, 1, 1)
loadingSuccess.BackgroundTransparency = 1
loadingSuccess.BorderColor3 = Color3.new(0, 0, 0)
loadingSuccess.BorderSizePixel = 0
loadingSuccess.Position = UDim2.new(0.1, 0, 0.435000002, 0)
loadingSuccess.Size = UDim2.new(0, 200, 0, 26)
loadingSuccess.Visible = false
loadingSuccess.Font = Enum.Font.SourceSans
loadingSuccess.Text = "Successfully Loaded Welcome"
loadingSuccess.TextColor3 = Color3.new(1, 1, 1)
loadingSuccess.TextSize = 20
loadingSuccess.TextWrapped = true
loadingSuccess.TextTransparency = 1

loadingName.Name = "name"
loadingName.Parent = loadingFrame
loadingName.BackgroundColor3 = Color3.new(1, 1, 1)
loadingName.BackgroundTransparency = 1
loadingName.BorderColor3 = Color3.new(0, 0, 0)
loadingName.BorderSizePixel = 0
loadingName.Position = UDim2.new(0.1, 0, 0.55, 0)
loadingName.Size = UDim2.new(0, 200, 0, 26)
loadingName.Font = Enum.Font.SourceSans
loadingName.Text = "Welcome back, " .. game.Players.LocalPlayer.Name
loadingName.TextColor3 = Color3.new(1, 1, 1)
loadingName.TextSize = 18
loadingName.TextWrapped = true
loadingName.Visible = false
loadingName.TextTransparency = 1

mainframe.Name = "mainframe"
mainframe.Parent = ScreenGui
mainframe.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
mainframe.BorderColor3 = Color3.new(0, 0, 0)
mainframe.BorderSizePixel = 2
mainframe.AnchorPoint = Vector2.new(0.5, 0.5)
mainframe.Position = UDim2.new(0.5, 0, 0.5, 0)
mainframe.Size = UDim2.new(0, 494, 0, 378)
mainframe.Visible = false

backgroud.Name = "backgroud"
backgroud.Parent = mainframe
backgroud.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
backgroud.BorderColor3 = Color3.new(0.333333, 0.333333, 0.333333)
backgroud.BorderSizePixel = 2
backgroud.Position = UDim2.new(0.0116515746, 0, 0.0163298678, 0)
backgroud.Size = UDim2.new(0, 485, 0, 368)

ImageLabel.Parent = backgroud
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(0, 485, 0, 2)
ImageLabel.Image = "rbxassetid://8508019876"

games.Name = "games"
games.Parent = backgroud
games.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
games.BorderColor3 = Color3.new(0.333333, 0.333333, 0.333333)
games.Position = UDim2.new(0.0494845361, 0, 0.0543478243, 0)
games.Size = UDim2.new(0, 239, 0, 139)

hypergavno.Name = "hypergavno"
hypergavno.Parent = games
hypergavno.BackgroundColor3 = Color3.new(1, 1, 1)
hypergavno.BackgroundTransparency = 1
hypergavno.BorderColor3 = Color3.new(0, 0, 0)
hypergavno.BorderSizePixel = 0
hypergavno.Position = UDim2.new(0.170833334, 0, 0.0526315793, 0)
hypergavno.Size = UDim2.new(0, 193, 0, 35)
hypergavno.Text = ""
hypergavno.Font = Enum.Font.SourceSans
hypergavno.TextColor3 = Color3.new(1, 1, 1)
hypergavno.TextSize = 14
hypergavno.AutoButtonColor = false

ImageLabel_2.Parent = hypergavno
ImageLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel_2.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(-0.212435231, 0, -0.00451136986, 0)
ImageLabel_2.Size = UDim2.new(0, 35, 0, 35)
ImageLabel_2.Image = "rbxassetid://114905802746217"

TextLabel.Parent = hypergavno
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.165803, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 157, 0, 15)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Hyper Realistic CSGO Guns"
TextLabel.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

TextLabel_2.Parent = hypergavno
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.165803, 0, 0.485714, 0)
TextLabel_2.Size = UDim2.new(0, 157, 0, 15)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Last Update : 12/20/2025 1:20"
TextLabel_2.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

vrotosernal.Name = "vrotosernal"
vrotosernal.Parent = games
vrotosernal.BackgroundColor3 = Color3.new(1, 1, 1)
vrotosernal.BackgroundTransparency = 1
vrotosernal.BorderColor3 = Color3.new(0, 0, 0)
vrotosernal.BorderSizePixel = 0
vrotosernal.Position = UDim2.new(0.170833319, 0, 0.361226678, 0)
vrotosernal.Size = UDim2.new(0, 193, 0, 36)
vrotosernal.Text = ""
vrotosernal.Font = Enum.Font.SourceSans
vrotosernal.TextColor3 = Color3.new(1, 1, 1)
vrotosernal.TextSize = 14
vrotosernal.AutoButtonColor = false

ImageLabel_3.Parent = vrotosernal
ImageLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel_3.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel_3.BorderSizePixel = 0
ImageLabel_3.Position = UDim2.new(-0.212435231, 0, -0.00300728926, 0)
ImageLabel_3.Size = UDim2.new(0, 35, 0, 35)
ImageLabel_3.Image = "rbxassetid://71433074542644"

TextLabel_3.Parent = vrotosernal
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.165803, 0, 0, 0)
TextLabel_3.Size = UDim2.new(0, 157, 0, 15)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Arsenal [ BETA ]"
TextLabel_3.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14
TextLabel_3.TextWrapped = true

TextLabel_4.Parent = vrotosernal
TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.165803, 0, 0.485714, 0)
TextLabel_4.Size = UDim2.new(0, 157, 0, 15)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Last Update : 2/1/2026 6:24"
TextLabel_4.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14
TextLabel_4.TextWrapped = true

bloxtrike.Name = "bloxtrike"
bloxtrike.Parent = games
bloxtrike.BackgroundColor3 = Color3.new(1, 1, 1)
bloxtrike.BackgroundTransparency = 1
bloxtrike.BorderColor3 = Color3.new(0, 0, 0)
bloxtrike.BorderSizePixel = 0
bloxtrike.Position = UDim2.new(0.170833319, 0, 0.676692367, 0)
bloxtrike.Size = UDim2.new(0, 193, 0, 34)
bloxtrike.Text = ""
bloxtrike.Font = Enum.Font.SourceSans
bloxtrike.TextColor3 = Color3.new(1, 1, 1)
bloxtrike.TextSize = 14
bloxtrike.AutoButtonColor = false

ImageLabel_4.Parent = bloxtrike
ImageLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel_4.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel_4.BorderSizePixel = 0
ImageLabel_4.Position = UDim2.new(-0.212435231, 0, -0.00300728926, 0)
ImageLabel_4.Size = UDim2.new(0, 35, 0, 35)
ImageLabel_4.Image = "rbxassetid://81259578885815"

TextLabel_5.Parent = bloxtrike
TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.165803, 0, 0, 0)
TextLabel_5.Size = UDim2.new(0, 157, 0, 15)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "BloxStrike"
TextLabel_5.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14
TextLabel_5.TextWrapped = true

TextLabel_6.Parent = bloxtrike
TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_6.BackgroundTransparency = 1
TextLabel_6.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.165803, 0, 0.485714, 0)
TextLabel_6.Size = UDim2.new(0, 157, 0, 15)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "Last Update : 1/2/2026 4:09"
TextLabel_6.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14
TextLabel_6.TextWrapped = true

Frame.Parent = backgroud
Frame.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Frame.BorderColor3 = Color3.new(0.333333, 0.333333, 0.333333)
Frame.Position = UDim2.new(0.579381466, 0, 0.0543478243, 0)
Frame.Size = UDim2.new(0, 188, 0, 139)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
TextButton.BorderColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0904255286, 0, 0.142857149, 0)
TextButton.Size = UDim2.new(0, 154, 0, 39)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Load"
TextButton.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
TextButton.TextSize = 14

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
TextButton_2.BorderColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.0904255286, 0, 0.578947365, 0)
TextButton_2.Size = UDim2.new(0, 154, 0, 39)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Exit"
TextButton_2.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
TextButton_2.TextSize = 14

TextLabel_7.Parent = Frame
TextLabel_7.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_7.BackgroundTransparency = 1
TextLabel_7.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.05319149, 0, -0.0827067643, 0)
TextLabel_7.Size = UDim2.new(0, 169, 0, 18)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "Options"
TextLabel_7.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14
TextLabel_7.TextWrapped = true

Frame_2.Parent = backgroud
Frame_2.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Frame_2.BorderColor3 = Color3.new(0.333333, 0.333333, 0.333333)
Frame_2.Position = UDim2.new(0.0494845361, 0, 0.505434811, 0)
Frame_2.Size = UDim2.new(0, 444, 0, 156)

TextLabel_8.Parent = Frame_2
TextLabel_8.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_8.BackgroundTransparency = 1
TextLabel_8.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.180180177, 0, -0.0827067643, 0)
TextLabel_8.Size = UDim2.new(0, 285, 0, 18)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "Status"
TextLabel_8.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14
TextLabel_8.TextWrapped = true

status.Name = "status"
status.Parent = backgroud
status.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
status.BorderColor3 = Color3.new(0.333333, 0.333333, 0.333333)
status.Position = UDim2.new(0.0804123729, 0, 0.540760875, 0)
status.Size = UDim2.new(0, 413, 0, 130)

label1.Name = "label1"
label1.Parent = status
label1.BackgroundColor3 = Color3.new(1, 1, 1)
label1.BackgroundTransparency = 1
label1.BorderColor3 = Color3.new(0, 0, 0)
label1.BorderSizePixel = 0
label1.Position = UDim2.new(0.027118, 0, 0.046154, 0)
label1.Size = UDim2.new(0, 400, 0, 18)
label1.Font = Enum.Font.SourceSans
label1.Text = "Connect"
label1.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
label1.TextScaled = true
label1.TextSize = 14
label1.TextWrapped = true

label2.Name = "label2"
label2.Parent = status
label2.BackgroundColor3 = Color3.new(1, 1, 1)
label2.BackgroundTransparency = 1
label2.BorderColor3 = Color3.new(0, 0, 0)
label2.BorderSizePixel = 0
label2.Position = UDim2.new(0.027118, 0, 0.2, 0)
label2.Size = UDim2.new(0, 400, 0, 18)
label2.Font = Enum.Font.SourceSans
label2.Text = "Welcome back, " .. game.Players.LocalPlayer.Name .. ""
label2.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
label2.TextScaled = true
label2.TextSize = 14
label2.TextWrapped = true

label3.Name = "label3"
label3.Parent = status
label3.BackgroundColor3 = Color3.new(1, 1, 1)
label3.BackgroundTransparency = 1
label3.BorderColor3 = Color3.new(0, 0, 0)
label3.BorderSizePixel = 0
label3.Position = UDim2.new(0.027118, 0, 0.353846, 0)
label3.Size = UDim2.new(0, 400, 0, 18)
label3.Font = Enum.Font.SourceSans
label3.Text = ""
label3.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
label3.TextScaled = true
label3.TextSize = 14
label3.TextWrapped = true

label4.Name = "label4"
label4.Parent = status
label4.BackgroundColor3 = Color3.new(1, 1, 1)
label4.BackgroundTransparency = 1
label4.BorderColor3 = Color3.new(0, 0, 0)
label4.BorderSizePixel = 0
label4.Position = UDim2.new(0.027118, 0, 0.507692, 0)
label4.Size = UDim2.new(0, 400, 0, 18)
label4.Font = Enum.Font.SourceSans
label4.Text = ""
label4.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
label4.TextScaled = true
label4.TextSize = 14
label4.TextWrapped = true

label4_2.Name = "label4"
label4_2.Parent = status
label4_2.BackgroundColor3 = Color3.new(1, 1, 1)
label4_2.BackgroundTransparency = 1
label4_2.BorderColor3 = Color3.new(0, 0, 0)
label4_2.BorderSizePixel = 0
label4_2.Position = UDim2.new(0.027118, 0, 0.661538, 0)
label4_2.Size = UDim2.new(0, 400, 0, 18)
label4_2.Font = Enum.Font.SourceSans
label4_2.Text = ""
label4_2.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
label4_2.TextScaled = true
label4_2.TextSize = 14
label4_2.TextWrapped = true

femboyclub.Name = "femboyclub"
femboyclub.Parent = ScreenGui
femboyclub.BackgroundColor3 = Color3.new(1, 1, 1)
femboyclub.BackgroundTransparency = 1
femboyclub.BorderColor3 = Color3.new(0, 0, 0)
femboyclub.BorderSizePixel = 0
femboyclub.AnchorPoint = Vector2.new(0.5, 0.5)
femboyclub.Position = UDim2.new(0.5, 0, 0.44, 0)
femboyclub.Size = UDim2.new(0, 220, 0, 44)
femboyclub.ZIndex = -1
femboyclub.Font = Enum.Font.SourceSans
femboyclub.Text = "$$ femboy.club $$"
femboyclub.TextColor3 = Color3.new(0, 0, 0)
femboyclub.TextScaled = true
femboyclub.TextSize = 14
femboyclub.TextWrapped = true

local originalColors = {
	hypergavnoName = TextLabel.TextColor3,
	hypergavnoDate = TextLabel_2.TextColor3,
	vrotosernalName = TextLabel_3.TextColor3,
	vrotosernalDate = TextLabel_4.TextColor3,
	bloxtrikeName = TextLabel_5.TextColor3,
	bloxtrikeDate = TextLabel_6.TextColor3
}

local rngame = "None"

local gameInfo = {
	["hypergavno"] = {
		name = "Hyper Realistic CSGO Guns",
		status = "🟢",
		notes = "stable script",
		executors = "Potassium, Volcano, Volt, Bunni.fun"
	},
	["vrotosernal"] = {
		name = "Arsenal [BETA]",
		status = "🟣",
		notes = "in development",
		executors = "Potassium, Volcano, Volt, Bunni.fun"
	},
	["bloxtrike"] = {
		name = "BloxStrike",
		status = "🟡",
		notes = "use at own risk its maybe bannable u need use good exec",
		executors = "Potassium, Volcano, Volt, Bunni.fun"
	}
}

local function maleres()
	TextLabel.TextColor3 = originalColors.hypergavnoName
	TextLabel_2.TextColor3 = originalColors.hypergavnoDate
	TextLabel_3.TextColor3 = originalColors.vrotosernalName
	TextLabel_4.TextColor3 = originalColors.vrotosernalDate
	TextLabel_5.TextColor3 = originalColors.bloxtrikeName
	TextLabel_6.TextColor3 = originalColors.bloxtrikeDate
end

local function updgames(gameKey)
	if gameInfo[gameKey] then
		rngame = gameKey
		local info = gameInfo[gameKey]
		maleres()
		if gameKey == "hypergavno" then
			TextLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
			TextLabel_2.TextColor3 = Color3.fromRGB(0, 255, 0)
		elseif gameKey == "vrotosernal" then
			TextLabel_3.TextColor3 = Color3.fromRGB(0, 255, 0)
			TextLabel_4.TextColor3 = Color3.fromRGB(0, 255, 0)
		elseif gameKey == "bloxtrike" then
			TextLabel_5.TextColor3 = Color3.fromRGB(0, 255, 0)
			TextLabel_6.TextColor3 = Color3.fromRGB(0, 255, 0)
		end
		label1.Text = "Game: " .. info.name
		label2.Text = "Status: " .. info.status
		label3.Text = info.notes
		label4.Text = "Executors: " .. info.executors
	end
end

local function resetxyeta()
	hypergavno.BackgroundTransparency = 1
	vrotosernal.BackgroundTransparency = 1
	bloxtrike.BackgroundTransparency = 1
end

local function inobj(object)
	if object:IsA("TextLabel") or object:IsA("TextButton") then
		object.TextTransparency = 1
		object.Visible = true
		for i = 0, 1, 0.04 do
			object.TextTransparency = 1 - i
			wait(0.016)
		end
		object.TextTransparency = 0
	elseif object:IsA("ImageLabel") then
		object.ImageTransparency = 1
		object.Visible = true
		for i = 0, 1, 0.04 do
			object.ImageTransparency = 1 - i
			wait(0.016)
		end
		object.ImageTransparency = 0
	elseif object:IsA("Frame") then
		object.BackgroundTransparency = 1
		object.Visible = true
		for i = 0, 1, 0.04 do
			object.BackgroundTransparency = 1 - i
			wait(0.016)
		end
		object.BackgroundTransparency = 0
	end
end

local function fanumta(object)
	if object:IsA("TextLabel") or object:IsA("TextButton") then
		for i = 0, 1, 0.04 do
			object.TextTransparency = i
			wait(0.016)
		end
		object.Visible = false
		object.TextTransparency = 1
	elseif object:IsA("ImageLabel") then
		for i = 0, 1, 0.04 do
			object.ImageTransparency = i
			wait(0.016)
		end
		object.Visible = false
		object.ImageTransparency = 1
	elseif object:IsA("Frame") then
		for i = 0, 1, 0.04 do
			object.BackgroundTransparency = i
			wait(0.016)
		end
		object.Visible = false
		object.BackgroundTransparency = 1
	end
end

local function EBATDOLARRITANCI()
	local dollarText = loadingDollar
	local startY = 0.435
	local positions = {
		{text = "$$$", y = startY - 0.08, duration = 0.4},
		{text = "$$$", y = startY, duration = 0.3},
		{text = "$$", y = startY - 0.08, duration = 0.4},
		{text = "$$", y = startY, duration = 0.3},
		{text = "$", y = startY - 0.08, duration = 0.4},
		{text = "$", y = startY, duration = 0.3},
		{text = "$$$", y = startY - 0.08, duration = 0.4},
		{text = "$$$", y = startY, duration = 0.3},
	}
	for _, pos in ipairs(positions) do
		dollarText.Text = pos.text
		for i = 0, 1, 0.05 do
			local currentY = dollarText.Position.Y.Scale
			local targetY = pos.y
			local newY = currentY + (targetY - currentY) * i
			dollarText.Position = UDim2.new(0.292, 0, newY, 0)
			wait(0.016)
		end
		wait(pos.duration)
	end
	dollarText.Position = UDim2.new(0.292, 0, startY, 0)
	dollarText.Text = "$$$"
end

local function createbakgrind()
	local texts = {"femboy", "club", "$$","yaica.tech"}
	local colors = {
		Color3.fromRGB(255, 105, 180), Color3.fromRGB(255, 20, 147), Color3.fromRGB(255, 0, 255),
		Color3.fromRGB(148, 0, 211), Color3.fromRGB(75, 0, 130), Color3.fromRGB(0, 0, 255),
		Color3.fromRGB(0, 255, 255), Color3.fromRGB(0, 255, 0), Color3.fromRGB(255, 255, 0),
		Color3.fromRGB(255, 165, 0)
	}
	for i = 1, 45 do
		local text = Instance.new("TextLabel")
		text.Name = "FloatingText_" .. i
		text.Parent = ScreenGui
		text.BackgroundTransparency = 1
		text.Size = UDim2.new(0, math.random(80, 120), 0, 30)
		text.Position = UDim2.new(math.random(-100, 1000) / 1000, 0, math.random(-100, 1000) / 1000, 0)
		text.Font = Enum.Font.SourceSans
		text.Text = texts[math.random(1, #texts)]
		text.TextColor3 = colors[math.random(1, #colors)]
		text.TextSize = math.random(18, 28)
		text.TextTransparency = 0.4
		text.ZIndex = -2
		table.insert(floatingTexts, {
			object = text,
			speedX = (math.random() - 0.5) * 0.005,
			speedY = (math.random() - 0.5) * 0.005,
			color = text.TextColor3,
			targetColor = colors[math.random(1, #colors)],
			colorChangeTime = 0
		})
	end
end

local function updateb()
	for _, data in ipairs(floatingTexts) do
		local text = data.object
		local currentX = text.Position.X.Scale + data.speedX
		local currentY = text.Position.Y.Scale + data.speedY
		if currentX < -0.1 or currentX > 1.1 then data.speedX = -data.speedX currentX = math.clamp(currentX, -0.1, 1.1) end
		if currentY < -0.1 or currentY > 1.1 then data.speedY = -data.speedY currentY = math.clamp(currentY, -0.1, 1.1) end
		text.Position = UDim2.new(currentX, 0, currentY, 0)
		data.colorChangeTime = data.colorChangeTime + 0.016
		if data.colorChangeTime >= 2 then
			local colors = {
				Color3.fromRGB(255, 105, 180), Color3.fromRGB(255, 20, 147), Color3.fromRGB(255, 0, 255),
				Color3.fromRGB(148, 0, 211), Color3.fromRGB(75, 0, 130), Color3.fromRGB(0, 0, 255),
				Color3.fromRGB(0, 255, 255), Color3.fromRGB(0, 255, 0), Color3.fromRGB(255, 255, 0),
				Color3.fromRGB(255, 165, 0)
			}
			data.targetColor = colors[math.random(1, #colors)]
			data.colorChangeTime = 0
		end
		local lerpFactor = math.min(data.colorChangeTime / 2, 1)
		text.TextColor3 = data.color:Lerp(data.targetColor, lerpFactor)
	end
end

local function startbackgrind()
	createbakgrind()
	while #floatingTexts > 0 do
		updateb()
		wait(0.016)
	end
end

local function some11()
	loadingScreen.Enabled = true
	loadingFrame.Visible = true
	inobj(loadingFrame)
	wait(0.2)
	inobj(loadingImageLabel)
	wait(0.2)
	loadingDollar.Visible = true
	inobj(loadingDollar)
	wait(0.3)
	EBATDOLARRITANCI()
	fanumta(loadingDollar)
	wait(0.2)
	loadingText.Visible = true
	inobj(loadingText)
	local dots = {"Loading .", "Loading ..", "Loading ..."}
	for i = 1, 4 do
		for _, dot in ipairs(dots) do
			loadingText.Text = dot
			wait(0.3)
		end
	end
	fanumta(loadingText)
	wait(0.2)
	loadingSuccess.TextTransparency = 1
	loadingName.TextTransparency = 1
	loadingSuccess.Visible = false
	loadingName.Visible = false
	loadingSuccess.Text = "Successfully Loaded Welcome"
	loadingName.Text = "Welcome back, " .. game.Players.LocalPlayer.Name
	coroutine.wrap(function() inobj(loadingSuccess) end)()
	wait(0.1)
	inobj(loadingName)
	wait(1.5)
	fanumta(loadingName)
	wait(0.1)
	fanumta(loadingSuccess)
	wait(0.1)
	fanumta(loadingImageLabel)
	wait(0.1)
	fanumta(loadingFrame)
	wait(0.3)
	loadingScreen.Enabled = false
	mainframe.Visible = true
	inobj(mainframe)
	wait(0.1)
	inobj(femboyclub)
	ScreenGui.Enabled = true
	coroutine.wrap(startbackgrind)()
end

local function loadscriptwithou()
	if rngame ~= "None" then
		mainframe.Visible = false
		femboyclub.Visible = false
		fanumta(mainframe)
		wait(0.1)
		fanumta(femboyclub)
		wait(0.3)
		loadingScreen.Enabled = true
		loadingFrame.Visible = true
		inobj(loadingFrame)
		wait(0.2)
		inobj(loadingImageLabel)
		wait(0.2)
		loadingSuccess.TextTransparency = 1
		loadingName.TextTransparency = 1
		loadingSuccess.Text = "Loading script for " .. gameInfo[rngame].name
		loadingName.Text = "Please wait..."
		coroutine.wrap(function() inobj(loadingSuccess) end)()
		wait(0.1)
		inobj(loadingName)
		wait(1)
		if rngame == "hypergavno" then
			pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/makerpastaa/roblox_stuff/refs/heads/main/femboy.club%20dev"))() end)
		elseif rngame == "bloxtrike" then
			pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/l1l1l1l1l11l1l1l1l11/rabux-styff/refs/heads/main/bloxstrike.luau"))() end)  -- << discounted
		elseif rngame == "vrotosernal" then
			loadingSuccess.Text = "bro i say its development😭"
			loadingName.Text = ""
		end
		wait(1)
		fanumta(loadingName)
		wait(0.1)
		fanumta(loadingSuccess)
		wait(0.1)
		fanumta(loadingImageLabel)
		wait(0.1)
		fanumta(loadingFrame)
		wait(0.3)
		loadingScreen.Enabled = false
		mainframe.Visible = true
		inobj(mainframe)
		wait(0.1)
		inobj(femboyclub)
	else
		label1.Text = "Please select a game first!"
	end
end

hypergavno.MouseButton1Click:Connect(function() resetxyeta() maleres() hypergavno.BackgroundColor3 = Color3.fromRGB(80, 80, 80) hypergavno.BackgroundTransparency = 0.7 updgames("hypergavno") end)
vrotosernal.MouseButton1Click:Connect(function() resetxyeta() maleres() vrotosernal.BackgroundColor3 = Color3.fromRGB(80, 80, 80) vrotosernal.BackgroundTransparency = 0.7 updgames("vrotosernal") end)
bloxtrike.MouseButton1Click:Connect(function() resetxyeta() maleres() bloxtrike.BackgroundColor3 = Color3.fromRGB(80, 80, 80) bloxtrike.BackgroundTransparency = 0.7 updgames("bloxtrike") end)
TextButton.MouseButton1Click:Connect(loadscriptwithou)
TextButton_2.MouseButton1Click:Connect(function() for _, data in ipairs(floatingTexts) do data.object:Destroy() end floatingTexts = {} ScreenGui:Destroy() loadingScreen:Destroy() end)

label1.Text = "Connected to femboy.club"
label2.Text = "Welcome back, " .. game.Players.LocalPlayer.Name .. ""
some11()

local watermark = Instance.new("ScreenGui")
local WatermarkFrame = Instance.new("Frame")
local Border1 = Instance.new("Frame")
local Border2 = Instance.new("Frame")
local Border3 = Instance.new("Frame")
local Border4 = Instance.new("Frame")
local TextContainer = Instance.new("Frame")
local GameText = Instance.new("TextLabel")
local ClubText = Instance.new("TextLabel")
local InfoText = Instance.new("TextLabel")
local GradientLine = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")

watermark.Name = "watermark"
watermark.Parent = game:GetService("CoreGui")
watermark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
watermark.ResetOnSpawn = false

WatermarkFrame.Name = "WatermarkFrame"
WatermarkFrame.Parent = watermark
WatermarkFrame.AnchorPoint = Vector2.new(1, 0)
WatermarkFrame.BackgroundColor3 = Color3.new(0, 0, 0)
WatermarkFrame.BackgroundTransparency = 0.6
WatermarkFrame.BorderSizePixel = 0
WatermarkFrame.Position = UDim2.new(1, -14, 0, -40)
WatermarkFrame.Size = UDim2.new(0, 340, 0, 32)
WatermarkFrame.Active = true
WatermarkFrame.Draggable = true

Border1.Name = "Border1"
Border1.Parent = WatermarkFrame
Border1.BackgroundColor3 = Color3.new(0.164706, 0.168627, 0.164706)
Border1.BorderSizePixel = 0
Border1.Position = UDim2.new(0, 1, 0, 1)
Border1.Size = UDim2.new(1, -2, 1, -2)

Border2.Name = "Border2"
Border2.Parent = WatermarkFrame
Border2.BackgroundColor3 = Color3.new(0.0705882, 0.0705882, 0.0705882)
Border2.BorderSizePixel = 0
Border2.Position = UDim2.new(0, 2, 0, 2)
Border2.Size = UDim2.new(1, -4, 1, -4)

Border3.Name = "Border3"
Border3.Parent = WatermarkFrame
Border3.BackgroundColor3 = Color3.new(0.164706, 0.168627, 0.164706)
Border3.BorderSizePixel = 0
Border3.Position = UDim2.new(0, 3, 0, 3)
Border3.Size = UDim2.new(1, -6, 1, -6)

Border4.Name = "Border4"
Border4.Parent = WatermarkFrame
Border4.BackgroundColor3 = Color3.new(0.0117647, 0.0117647, 0.00784314)
Border4.BorderSizePixel = 0
Border4.Position = UDim2.new(0, 4, 0, 4)
Border4.Size = UDim2.new(1, -8, 1, -8)

TextContainer.Name = "TextContainer"
TextContainer.Parent = WatermarkFrame
TextContainer.BackgroundTransparency = 1
TextContainer.Position = UDim2.new(0, 6, 0, 6)
TextContainer.Size = UDim2.new(1, -12, 1, -12)

GameText.Name = "GameText"
GameText.Parent = TextContainer
GameText.BackgroundTransparency = 1
GameText.Size = UDim2.new(0, 40, 1, 0)
GameText.Font = Enum.Font.Code
GameText.Text = "femboy"
GameText.TextColor3 = Color3.new(1, 1, 1)
GameText.TextSize = 14
GameText.TextXAlignment = Enum.TextXAlignment.Left

ClubText.Name = "ClubText"
ClubText.Parent = TextContainer
ClubText.BackgroundTransparency = 1
ClubText.Position = UDim2.new(0, 42, 0, 0)
ClubText.Size = UDim2.new(0, 30, 1, 0)
ClubText.Font = Enum.Font.Code
ClubText.Text = "club"
ClubText.TextColor3 = Color3.new(1, 0.333333, 1)
ClubText.TextSize = 14
ClubText.TextXAlignment = Enum.TextXAlignment.Left

InfoText.Name = "InfoText"
InfoText.Parent = TextContainer
InfoText.BackgroundTransparency = 1
InfoText.Position = UDim2.new(0, 70, 0, 0)
InfoText.Size = UDim2.new(1, -70, 1, 0)
InfoText.Font = Enum.Font.Code
InfoText.Text = " | player | 0ms | 0fps | 00:00 UTC"
InfoText.TextColor3 = Color3.new(1, 1, 1)
InfoText.TextSize = 14
InfoText.TextXAlignment = Enum.TextXAlignment.Left

GradientLine.Name = "GradientLine"
GradientLine.Parent = WatermarkFrame
GradientLine.BackgroundTransparency = 1
GradientLine.Position = UDim2.new(0, 6, 0, 6)
GradientLine.Size = UDim2.new(1, -12, 0, 1)

ImageLabel.Parent = GradientLine
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(1, 0, 0, 1)
ImageLabel.Image = "rbxassetid://8508019876"

local dragging = false
local dragStart
local startPos

WatermarkFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = WatermarkFrame.Position
    end
end)

WatermarkFrame.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        WatermarkFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

WatermarkFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

local lastTime = tick()
local frameCount = 0
local fps = 0

local function fepes()
    frameCount = frameCount + 1
    local currentTime = tick()
    if currentTime - lastTime >= 1 then
        fps = math.floor(frameCount / (currentTime - lastTime))
        frameCount = 0
        lastTime = currentTime
    end
    return fps
end

local function zalupaping()
    local player = game.Players.LocalPlayer
    if player then
        local stats = player:GetNetworkPing()
        if stats then
            return math.floor(stats * 1000)
        end
    end
    
    local statsService = game:GetService("Stats")
    if statsService then
        local network = statsService.Network
        if network then
            local pingStat = network:FindFirstChild("ServerStatsItem")
            if pingStat then
                local pingValue = pingStat:GetValue()
                return math.floor(pingValue)
            end
        end
    end
    
    return math.random(20, 60)
end

local function realtimeomg()
    local time = os.date("!*t")
    return string.format("%02d:%02d UTC", time.hour, time.min)
end

local function upd()
    local username = game.Players.LocalPlayer.Name
    local ping = zalupaping()
    local fps = fepes()
    local time = realtimeomg()
    
    InfoText.Text = string.format(" | %s | %dms | %dfps | %s", username, ping, fps, time)
    
    local TextService = game:GetService("TextService")
    local fullText = "femboy" .. "club" .. InfoText.Text
    local textSize = TextService:GetTextSize(fullText, 14, Enum.Font.Code, Vector2.new(10000, 100))
    
    local some11sosal = math.max(340, textSize.X + 30)
    WatermarkFrame.Size = UDim2.new(0, some11sosal, 0, 32)
end

game:GetService("RunService").Heartbeat:Connect(upd)
upd()
