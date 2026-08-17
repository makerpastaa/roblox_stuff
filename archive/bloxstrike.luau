--[[
@isreadonly 1263134044816805975
silent aim method by @skider1336/blank tyty
]]

local library, notifications = loadstring(game:HttpGet("https://raw.githubusercontent.com/l1l1l1l1l11l1l1l1l11/Neverlose-Main/refs/heads/main/nssso.luau"))()

local window = library:window({name = "$$ femboy.sense $$"})
local aimbot = window:Tab({name = "AIMBOT"})

-- variables
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local Workspace = workspace
local Camera = Workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

-- silent aim settings
local SilentAimEnabled = false
local SilentAimKeybind = "E" -- not working 
local SilentAimHitChance = 50
local SilentAimHitbox = "Head"
local SilentAimVisibilityCheck = false
local SilentAimTeamCheck = false

-- fov settings
local FOVCircleEnabled = false
local FOVCircleColor = Color3.fromRGB(255, 255, 255)
local FOVCircleRadius = 150

-- esp variables
local ESPEnabled = false
local ShowBox = false
local ShowName = true
local ShowHealth = true
local ShowTracer = true
local ShowDistance = true
local TeamCheck = false
local BoxColor = Color3.fromRGB(255, 255, 255)
local TracerColor = Color3.fromRGB(255, 255, 255)
local ESPLibrary = nil
local ESPInitialized = false

-- fov circle drawing
local Circle = nil

-- initialize drawing
if Drawing and Drawing.new then
    Circle = Drawing.new("Circle")
    Circle.Color = FOVCircleColor
    Circle.Thickness = 2
    Circle.NumSides = 64
    Circle.Radius = FOVCircleRadius
    Circle.Filled = false
    Circle.Visible = FOVCircleEnabled
    Circle.Transparency = 1
end

-- ui elements
local silentaim_section = aimbot:Section({name = "SILENT AIM", side = "left"})

local silentaim_toggle = silentaim_section:Toggle({name = "enabled", callback = function(state)
    SilentAimEnabled = state
end})

silentaim_toggle:Keybind({name = "bind", default = Enum.KeyCode.E, callback = function(key)
    SilentAimKeybind = key
end})

local hitchance_toggle = silentaim_section:Toggle({name = "hit chance", callback = function(state)
end})
hitchance_toggle:Slider({name = "value", min = 0, max = 100, default = 50, suffix = "%", callback = function(value)
    SilentAimHitChance = value
end})

silentaim_section:Dropdown({name = "hitbox", items = {"Head", "Torso", "HumanoidRootPart"}, default = "Head", callback = function(value)
    SilentAimHitbox = value
end})

silentaim_section:Toggle({name = "visibility check", callback = function(state)
    SilentAimVisibilityCheck = state
end})

silentaim_section:Toggle({name = "team check", callback = function(state)
    SilentAimTeamCheck = state
end})

local fovcircle_section = aimbot:Section({name = "FOV CIRCLE", side = "right"})

local fovcircle_toggle = fovcircle_section:Toggle({name = "enabled", callback = function(state)
    FOVCircleEnabled = state
    if Circle then
        Circle.Visible = state
    end
end})

fovcircle_toggle:Colorpicker({name = "color", default = Color3.fromRGB(255, 255, 255), callback = function(color)
    FOVCircleColor = color
    if Circle then
        Circle.Color = color
    end
end})

fovcircle_section:Slider({name = "radius", min = 0, max = 720, default = 150, suffix = "px", callback = function(value)
    FOVCircleRadius = value
    if Circle then
        Circle.Radius = value
    end
end})

fovcircle_section:Button({name = "reset fov", callback = function()
    FOVCircleRadius = 150
    if Circle then
        Circle.Radius = 150
    end
end})

local visual = window:Tab({name = "VISUAL"})

local function initializeESP()
    if ESPInitialized then return true end
    
    local success, loaded = pcall(function()
        return loadstring(game:HttpGet("https://raw.githubusercontent.com/l1l1l1l1l11l1l1l1l11/rabux-styff/refs/heads/main/esp"))()
    end)
    
    if success and loaded then
        ESPLibrary = loaded
        ESPInitialized = true
    
        ESPLibrary.ShowBox = ShowBox
        ESPLibrary.ShowName = ShowName
        ESPLibrary.ShowHealth = ShowHealth
        ESPLibrary.ShowTracer = ShowTracer
        ESPLibrary.ShowDistance = ShowDistance
        ESPLibrary.BoxColor = BoxColor
        ESPLibrary.TracerColor = TracerColor
        ESPLibrary.BoxType = "Corner Box Esp"
        
        if ESPLibrary.TeamCheck then
            ESPLibrary.TeamCheck = TeamCheck
        end
        
        return true
    else
        notifications:Notification({title = "ESP Error", body = "Failed to load ESP library", duration = 5})
        return false
    end
end

-- esp section
local esp_section = visual:Section({name = "ESP SETTINGS", side = "left"})

local esp_toggle = esp_section:Toggle({name = "enable esp", callback = function(state)
    ESPEnabled = state
    
    if ESPEnabled then
        if not ESPInitialized then
            if not initializeESP() then
                esp_toggle.set(false)
                return
            end
        end

        if ESPLibrary then
            ESPLibrary.Enabled = true
        end
    else
        if ESPLibrary then
            ESPLibrary.Enabled = false
        end
    end
end})

local box_toggle = esp_section:Toggle({name = "box", callback = function(state)
    ShowBox = state
    if ESPLibrary then
        ESPLibrary.ShowBox = state
    end
end})

box_toggle:Colorpicker({name = "box color", default = Color3.fromRGB(255, 255, 255), callback = function(color)
    BoxColor = color
    if ESPLibrary then
        ESPLibrary.BoxColor = color
    end
end})

local name_toggle = esp_section:Toggle({name = "names", callback = function(state)
    ShowName = state
    if ESPLibrary then
        ESPLibrary.ShowName = state
    end
end})

local health_toggle = esp_section:Toggle({name = "health", callback = function(state)
    ShowHealth = state
    if ESPLibrary then
        ESPLibrary.ShowHealth = state
    end
end})

local tracer_toggle = esp_section:Toggle({name = "tracers", callback = function(state)
    ShowTracer = state
    if ESPLibrary then
        ESPLibrary.ShowTracer = state
    end
end})

tracer_toggle:Colorpicker({name = "tracer color", default = Color3.fromRGB(255, 255, 255), callback = function(color)
    TracerColor = color
    if ESPLibrary then
        ESPLibrary.TracerColor = color
    end
end})

local distance_toggle = esp_section:Toggle({name = "distance", callback = function(state)
    ShowDistance = state
    if ESPLibrary then
        ESPLibrary.ShowDistance = state
    end
end})

esp_section:Toggle({name = "team check", callback = function(state)
    TeamCheck = state
    if ESPLibrary and ESPLibrary.TeamCheck then
        ESPLibrary.TeamCheck = state
    end
end})

local misc = window:Tab({name = "MISC"})
local misc_section = misc:Section({name = "MOVEMENT", side = "left"})

local BHopEnabled = false

local function setupbhop()
    local SETTINGS = {
        Speed = 18,
        Smoothness = 0.2,
        RayDistance = -4
    }

    local function getmovedirection()
        local Direction = Vector3.zero
        local LookVector = Camera.CFrame.LookVector
        local RightVector = Camera.CFrame.RightVector

        if UserInputService:IsKeyDown(Enum.KeyCode.W) then
            Direction += LookVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then
            Direction -= LookVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then
            Direction -= RightVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then
            Direction += RightVector
        end

        return Vector3.new(Direction.X, 0, Direction.Z).Unit
    end

    local bhopConnection
    local bhop_toggle = misc_section:Toggle({name = "bhop", callback = function(state)
        BHopEnabled = state
        
        if BHopEnabled then
            bhopConnection = RunService.Heartbeat:Connect(function()
                local Character = LocalPlayer.Character
                if not Character then return end

                local RootPart = Character:FindFirstChild("HumanoidRootPart")
                local Humanoid = Character:FindFirstChild("Humanoid")

                if not RootPart or not Humanoid then return end

                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    local RayParams = RaycastParams.new()
                    RayParams.FilterDescendantsInstances = {Character}
                    RayParams.FilterType = Enum.RaycastFilterType.Exclude

                    local GroundCheck = Workspace:Raycast(RootPart.Position, Vector3.new(0, SETTINGS.RayDistance, 0), RayParams)

                    if GroundCheck then
                        Humanoid.Jump = true
                    end
                end

                local Direction = Vector3.zero
                local Success, Result = pcall(function() return getmovedirection() end)
                
                if Success and Result.Magnitude > 0 then
                    Direction = Result * SETTINGS.Speed
                    
                    local Velocity = RootPart.AssemblyLinearVelocity
                    local NewX = Velocity.X + (Direction.X - Velocity.X) * SETTINGS.Smoothness
                    local NewZ = Velocity.Z + (Direction.Z - Velocity.Z) * SETTINGS.Smoothness
                    
                    RootPart.AssemblyLinearVelocity = Vector3.new(NewX, Velocity.Y, NewZ)
                end
            end)
        else
            if bhopConnection then
                bhopConnection:Disconnect()
                bhopConnection = nil
            end
        end
    end})
end

local features_section = misc:Section({name = "FEATURES", side = "right"})

local no_spread_toggle = features_section:Toggle({name = "no spread", callback = function(state)
    if state then
        local success, Bullet = pcall(function()
            return require(ReplicatedStorage.Components.Weapon.Classes.Bullet)
        end)
        
        if success and Bullet then
            Bullet.getTrueSpread = function()
                return 0.005
            end
            Bullet.getBaseSpread = function()
                return 0.005
            end
            Bullet.updateSpread = function(self)
                if self.Spread then
                    self.Spread:setPosition(0)
                end
            end
            Bullet._updateShotSpread = function(self)
                if self.Spread then
                    self.Spread:setPosition(0)
                end
            end
        end
    end
end})

local no_recoil_toggle = features_section:Toggle({name = "no recoil", callback = function(state)
    if state then
        local success, CameraController = pcall(function()
            return require(ReplicatedStorage.Controllers.CameraController)
        end)
        
        if success and CameraController then
            CameraController.weaponKick = function() end
            CameraController.setWeaponRecoil = function() end
            CameraController.flinch = function() end
        end
    end
end})

local function gettarget()
    if not SilentAimEnabled then return nil end
    
    local closest = FOVCircleRadius
    local target = nil
    local mousePos = UserInputService:GetMouseLocation()
    
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local humanoid = player.Character:FindFirstChild("Humanoid")
            if humanoid and humanoid.Health > 0 then
                if SilentAimTeamCheck and player.Team == LocalPlayer.Team then
                    continue
                end
                
                local targetPart = player.Character:FindFirstChild(SilentAimHitbox)
                if not targetPart then
                    targetPart = player.Character:FindFirstChild("HumanoidRootPart") or 
                                player.Character:FindFirstChild("Head")
                end
                
                if targetPart then
                    local screenPos, onScreen = Camera:WorldToViewportPoint(targetPart.Position)
                    
                    if SilentAimVisibilityCheck and not onScreen then
                        continue
                    end
                    
                    if onScreen then
                        local distance = (mousePos - Vector2.new(screenPos.X, screenPos.Y)).Magnitude
                        
                        if distance < closest then
                            if math.random(1, 100) <= SilentAimHitChance then
                                closest = distance
                                target = targetPart
                            end
                        end
                    end
                end
            end
        end
    end
    
    return target
end

local CurrentTarget = nil

RunService.RenderStepped:Connect(function()
    if Circle then
        local mousePos = UserInputService:GetMouseLocation()
        Circle.Position = mousePos
    end
    
    CurrentTarget = gettarget()
end)

local success, BulletClass = pcall(function()
    return require(ReplicatedStorage.Components.Weapon.Classes.Bullet)
end)

if success and BulletClass then
    local oldCreate = BulletClass.create
    
    BulletClass.create = function(self, ...)
        local result = oldCreate(self, ...)
        
        if CurrentTarget and SilentAimEnabled then
            local origin = Camera.CFrame.Position
            local direction = (CurrentTarget.Position - origin).Unit
            
            local rayParams = RaycastParams.new()
            rayParams.FilterDescendantsInstances = {LocalPlayer.Character, Camera}
            rayParams.FilterType = Enum.RaycastFilterType.Exclude
            
            local raycastResult = Workspace:Raycast(origin, direction * 1000, rayParams)
            
            result.Direction = direction
            result.Hits = {}
            
            if raycastResult then
                table.insert(result.Hits, {
                    Instance = raycastResult.Instance,
                    Position = raycastResult.Position,
                    Material = raycastResult.Material.Name,
                    Normal = raycastResult.Normal,
                    Exit = false
                })
                result.Distance = (raycastResult.Position - origin).Magnitude
            end
        end
        
        return result
    end
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == SilentAimKeybind then
        SilentAimEnabled = not SilentAimEnabled
        silentaim_toggle.set(SilentAimEnabled)
    end
end)

setupbhop()

window.toggle_menu(true)
if library.init_config then
    library:init_config(window)
end

local gamesense = Instance.new("ScreenGui")
local Watermark2 = Instance.new("Frame")
local _1 = Instance.new("Frame")
local A = Instance.new("TextLabel")
local T = Instance.new("TextLabel")
local E = Instance.new("TextLabel")
local B = Instance.new("TextLabel")
local back1 = Instance.new("TextLabel")
local FPS = Instance.new("TextLabel")
local Femboysense = Instance.new("TextLabel")

gamesense.Name = "gamesense"
gamesense.Parent = game:GetService("CoreGui")
gamesense.DisplayOrder = 99999999
gamesense.ResetOnSpawn = false
gamesense.IgnoreGuiInset = true

Watermark2.Name = "Watermark2"
Watermark2.Parent = gamesense
Watermark2.Active = true
Watermark2.AnchorPoint = Vector2.new(1, 0)
Watermark2.BackgroundColor3 = Color3.new(0.0862745, 0.0862745, 0.0862745)
Watermark2.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
Watermark2.BorderSizePixel = 0
Watermark2.Draggable = true
Watermark2.Position = UDim2.new(1, -10, 0, 10)
Watermark2.Selectable = true
Watermark2.Size = UDim2.new(0, 200, 0, 18)
Watermark2.ZIndex = 999999998

_1.Name = "1"
_1.Parent = Watermark2
_1.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
_1.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
_1.BorderSizePixel = 0
_1.Position = UDim2.new(0, -1, 0, -1)
_1.Size = UDim2.new(1, 2, 1, 2)
_1.ZIndex = -1

Femboysense.Name = "Femboysense"
Femboysense.Parent = Watermark2
Femboysense.BackgroundColor3 = Color3.new(1, 1, 1)
Femboysense.BackgroundTransparency = 1
Femboysense.BorderSizePixel = 0
Femboysense.Position = UDim2.new(0, 6, 0, 0)
Femboysense.Size = UDim2.new(0, 90, 1, 0)
Femboysense.ZIndex = 999999999
Femboysense.Font = Enum.Font.Code
Femboysense.Text = "[femboy.sense]"
Femboysense.TextColor3 = Color3.new(1, 1, 1)
Femboysense.TextSize = 12
Femboysense.TextXAlignment = Enum.TextXAlignment.Left

B.Name = "B"
B.Parent = Watermark2
B.BackgroundColor3 = Color3.new(0.00784314, 0.00784314, 0.00784314)
B.BackgroundTransparency = 1
B.BorderSizePixel = 0
B.Position = UDim2.new(0, 96, 0, 0)
B.Size = UDim2.new(0, 10, 1, 0)
B.ZIndex = 999999999
B.Font = Enum.Font.Ubuntu
B.Text = "B"
B.TextColor3 = Color3.new(1, 1, 1)
B.TextSize = 12
B.TextXAlignment = Enum.TextXAlignment.Center

E.Name = "E"
E.Parent = Watermark2
E.BackgroundColor3 = Color3.new(0, 0, 0)
E.BackgroundTransparency = 1
E.BorderSizePixel = 0
E.Position = UDim2.new(0, 106, 0, 0)
E.Size = UDim2.new(0, 10, 1, 0)
E.ZIndex = 999999999
E.Font = Enum.Font.Ubuntu
E.Text = "E"
E.TextColor3 = Color3.new(1, 1, 1)
E.TextSize = 12
E.TextXAlignment = Enum.TextXAlignment.Center

T.Name = "T"
T.Parent = Watermark2
T.BackgroundColor3 = Color3.new(0.00784314, 0.00784314, 0.00784314)
T.BackgroundTransparency = 1
T.BorderSizePixel = 0
T.Position = UDim2.new(0, 116, 0, 0)
T.Size = UDim2.new(0, 10, 1, 0)
T.ZIndex = 999999999
T.Font = Enum.Font.Ubuntu
T.Text = "T"
T.TextColor3 = Color3.new(1, 1, 1)
T.TextSize = 12
T.TextXAlignment = Enum.TextXAlignment.Center

A.Name = "A"
A.Parent = Watermark2
A.BackgroundColor3 = Color3.new(0.00784314, 0.00784314, 0.00784314)
A.BackgroundTransparency = 1
A.BorderSizePixel = 0
A.Position = UDim2.new(0, 126, 0, 0)
A.Size = UDim2.new(0, 10, 1, 0)
A.ZIndex = 999999999
A.Font = Enum.Font.Ubuntu
A.Text = "A"
A.TextColor3 = Color3.new(1, 1, 1)
A.TextSize = 12
A.TextXAlignment = Enum.TextXAlignment.Center

back1.Name = "back1"
back1.Parent = Watermark2
back1.BackgroundColor3 = Color3.new(1, 1, 1)
back1.BackgroundTransparency = 1
back1.BorderSizePixel = 0
back1.Position = UDim2.new(0, 138, 0, 0)
back1.Size = UDim2.new(0, 12, 1, 0)
back1.ZIndex = 999999999
back1.Font = Enum.Font.Code
back1.Text = "|"
back1.TextColor3 = Color3.new(1, 1, 1)
back1.TextSize = 12
back1.TextXAlignment = Enum.TextXAlignment.Center

FPS.Name = "FPS"
FPS.Parent = Watermark2
FPS.BackgroundColor3 = Color3.new(1, 1, 1)
FPS.BackgroundTransparency = 1
FPS.BorderSizePixel = 0
FPS.Position = UDim2.new(0, 152, 0, 0)
FPS.Size = UDim2.new(0, 50, 1, 0)
FPS.ZIndex = 999999999
FPS.Font = Enum.Font.Code
FPS.Text = "0 fps"
FPS.TextColor3 = Color3.new(1, 1, 1)
FPS.TextSize = 12
FPS.TextXAlignment = Enum.TextXAlignment.Left

local function vrksq_fake_script() 
	local script = Instance.new('LocalScript', Watermark2)

	local wm = script.Parent
	local fpsText = wm:WaitForChild("FPS")
	local b = wm:WaitForChild("B")
	local e = wm:WaitForChild("E")
	local t = wm:WaitForChild("T")
	local a = wm:WaitForChild("A")
	
	local frames = 0
	local lastTick = tick()
	local curFPS = 0
	
	local function animletters()
		local tm = tick() * 1.5
	
		local colors = {
			Color3.fromRGB(100, 200, 255), 
			Color3.fromRGB(0, 100, 255), 
			Color3.fromRGB(255, 100, 200),
			Color3.fromRGB(100, 255, 100) 
		}
	
		local wave = (math.sin(tm) + 1) / 2
	
		local idx = math.floor(wave * 3) + 1
		local nextIdx = idx < 4 and idx + 1 or 1
		local blend = (wave * 3) % 1
	
		local col1 = colors[idx]
		local col2 = colors[nextIdx]
	
		local color = Color3.new(
			col1.R + (col2.R - col1.R) * blend,
			col1.G + (col2.G - col1.G) * blend,
			col1.B + (col2.B - col1.B) * blend
		)
	
		b.TextColor3 = color
		e.TextColor3 = color
		t.TextColor3 = color
		a.TextColor3 = color
	end
	
	local function updfps()
		frames = frames + 1
	
		local curTime = tick()
		if curTime - lastTick >= 0.5 then
			curFPS = math.floor(frames / (curTime - lastTick))
			frames = 0
			lastTick = curTime
	
			fpsText.Text = curFPS .. " fps"
		end
	end
	
	game:GetService("RunService").RenderStepped:Connect(function()
		updfps()
		animletters()
	end)

	animletters()
end
coroutine.wrap(vrksq_fake_script)()
