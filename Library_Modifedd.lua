--[[

█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░██░░░░░░░░████░░░░░░██░░░░░░█░░░░░░░░░░█
█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀▄▀░░████░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀░░█
█░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░██░░▄▀░░░░████░░▄▀░░██░░▄▀░░█░░░░▄▀░░░░█
█░░▄▀░░██░░▄▀░░█░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░█████████░░▄▀░░██░░▄▀░░██████░░▄▀░░██░░▄▀░░███░░▄▀░░███
█░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░█████████░░▄▀░░░░░░▄▀░░██████░░▄▀░░██░░▄▀░░███░░▄▀░░███
█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░█████████░░▄▀▄▀▄▀▄▀▄▀░░██████░░▄▀░░██░░▄▀░░███░░▄▀░░███
█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░█████████░░▄▀░░░░░░▄▀░░██████░░▄▀░░██░░▄▀░░███░░▄▀░░███
█░░▄▀░░█████████░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░█████████░░▄▀░░██░░▄▀░░██████░░▄▀░░██░░▄▀░░███░░▄▀░░███
█░░▄▀░░█████████░░▄▀░░░░░░░░░░█░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░██░░▄▀░░░░████░░▄▀░░░░░░▄▀░░█░░░░▄▀░░░░█
█░░▄▀░░█████████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀▄▀░░████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀░░█
█░░░░░░█████████░░░░░░░░░░░░░░█░░░░░░██░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░██░░░░░░░░████░░░░░░░░░░░░░░█░░░░░░░░░░█
█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
█░░░░░░█████████░░░░░░░░░░█░░░░░░░░░░░░░░███░░░░░░░░░░░░░░░░███░░░░░░░░░░░░░░█░░░░░░░░░░░░░░░░███░░░░░░░░██░░░░░░░░█
█░░▄▀░░█████████░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░███░░▄▀▄▀▄▀▄▀▄▀▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███░░▄▀▄▀░░██░░▄▀▄▀░░█
█░░▄▀░░█████████░░░░▄▀░░░░█░░▄▀░░░░░░▄▀░░███░░▄▀░░░░░░░░▄▀░░███░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░▄▀░░███░░░░▄▀░░██░░▄▀░░░░█
█░░▄▀░░███████████░░▄▀░░███░░▄▀░░██░░▄▀░░███░░▄▀░░████░░▄▀░░███░░▄▀░░██░░▄▀░░█░░▄▀░░████░░▄▀░░█████░░▄▀▄▀░░▄▀▄▀░░███
█░░▄▀░░███████████░░▄▀░░███░░▄▀░░░░░░▄▀░░░░█░░▄▀░░░░░░░░▄▀░░███░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░▄▀░░█████░░░░▄▀▄▀▄▀░░░░███
█░░▄▀░░███████████░░▄▀░░███░░▄▀▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███████░░░░▄▀░░░░█████
█░░▄▀░░███████████░░▄▀░░███░░▄▀░░░░░░░░▄▀░░█░░▄▀░░░░░░▄▀░░░░███░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░▄▀░░░░█████████░░▄▀░░███████
█░░▄▀░░███████████░░▄▀░░███░░▄▀░░████░░▄▀░░█░░▄▀░░██░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░███████████░░▄▀░░███████
█░░▄▀░░░░░░░░░░█░░░░▄▀░░░░█░░▄▀░░░░░░░░▄▀░░█░░▄▀░░██░░▄▀░░░░░░█░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░░░░░███████░░▄▀░░███████
█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀▄▀▄▀░░███████░░▄▀░░███████
█░░░░░░░░░░░░░░█░░░░░░░░░░█░░░░░░░░░░░░░░░░█░░░░░░██░░░░░░░░░░█░░░░░░██░░░░░░█░░░░░░██░░░░░░░░░░███████░░░░░░███████
████████████████████████████████████████████████████████████████████████████████████████████████████████████████████

	Made By God_Stando
Developers:
	God_Stando Discord | God_Stando#6979

God_Stando Only Made This No Help
]]

-- Services
local players = game:GetService("Players")
local tweenService = game:GetService("TweenService")
local input = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local coreGui = game:GetService("CoreGui")
local uis = game:GetService("UserInputService")

-- Vars
local lp = players.LocalPlayer
local Mouse = lp:GetMouse()
local viewport = workspace.CurrentCamera.ViewportSize
local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

local Library = {}

function Library:validate(defaults, brackets)
	for i, v in pairs(defaults) do
		if brackets[i] == nil then
			brackets[i] = v
		end
	end
	return brackets
end

function Library:tween(object, goal, callback)
	local tween = tweenService:Create(object, tweenInfo, goal)
	tween.Completed:Connect(callback or function() end)
	tween:Play()
end

function Library:CreateLib(brackets)
	brackets = Library:validate({
		name = "PeaCOCK UI Library"
	}, brackets or {})

	local GUI = {
		CurrentTab = nil
	}

	-- Main Frame/TopBar
	do
		-- StarterGui.Peacock
		GUI["1"] = Instance.new("ScreenGui", runService:IsStudio() and players.LocalPlayer:WaitForChild("PlayerGui") or coreGui);
		GUI["1"]["IgnoreGuiInset"] = true;
		GUI["1"]["ResetOnSpawn"] = true;
		GUI["1"]["Name"] = [[Peacock]];

		-- StarterGui.Peacock.Drag
		GUI["6g"] = Instance.new("Frame", GUI["1"]);
		GUI["6g"]["ZIndex"] = 500;
		GUI["6g"]["BorderSizePixel"] = 0;
		GUI["6g"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["6g"]["BackgroundTransparency"] = 1;
		GUI["6g"]["Size"] = UDim2.new(0, 496, 0, 30);
		GUI["6g"]["Position"] = UDim2.new(0, 380,0, 188);
		GUI["6g"]["Name"] = [[Drag]];
		GUI["6g"]["Active"] = true
		GUI["6g"] = GUI["6g"]
		local dragging = false
		local dragInput, mousePos, framePos

		GUI["6g"].InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = true
				mousePos = input.Position
				framePos = GUI["6g"].Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		GUI["6g"].InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				dragInput = input
			end
		end)

		input.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				local delta = input.Position - mousePos
				GUI["6g"].Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
			end
		end)

		-- StarterGui.Peacock.HideFrames
		GUI["5e"] = Instance.new("TextButton", GUI["1"]);
		GUI["5e"]["TextSize"] = 15;
		GUI["5e"]["BackgroundColor3"] = Color3.fromRGB(101, 49, 6);
		GUI["5e"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["5e"]["Size"] = UDim2.new(0.134, 0, 0.034, 0);
		GUI["5e"]["Name"] = [[HideFrames]];
		GUI["5e"]["Text"] = [[Hide Gui/ReHide Gui]];
		GUI["5e"]["Font"] = Enum.Font.Ubuntu;
		GUI["5e"]["Position"] = UDim2.new(0.335, 0, 0.082, 0);
		GUI["5e"].MouseButton1Click:Connect(function()
			GUI["2"]["Visible"] = not GUI["2"]["Visible"]
		end)

		-- StarterGui.Peacock.HideFrames.UICorner
		GUI["5f"] = Instance.new("UICorner", GUI["5e"]);
		GUI["5f"]["CornerRadius"] = UDim.new(0, 2);

		-- StarterGui.Peacock.Main
		GUI["2"] = Instance.new("Frame", GUI["6g"]);
		GUI["2"]["BackgroundColor3"] = Color3.fromRGB(255, 127, 15);
		GUI["2"]["AnchorPoint"] = Vector2.new(0, 0)
		GUI["2"]["Size"] = UDim2.new(0, 525, 0, 318);
		GUI["2"]["Position"] = UDim2.fromOffset(0, 0, 0);
		GUI["2"]["Name"] = [[Main]];

		-- StarterGui.Peacock.Main.UICorner
		GUI["3"] = Instance.new("UICorner", GUI["2"]);
		GUI["3"]["CornerRadius"] = UDim.new(0, 6);

		-- StarterGUI.Peacock.Main.ContentContainer
		GUI["1b"] = Instance.new("Frame", GUI["2"]);
		GUI["1b"]["BorderSizePixel"] = 0;
		GUI["1b"]["BackgroundColor3"] = Color3.fromRGB(144, 70, 9);
		GUI["1b"]["AnchorPoint"] = Vector2.new(1, 0);
		GUI["1b"]["BackgroundTransparency"] = 1;
		GUI["1b"]["Size"] = UDim2.new(1, -132, 1, -42);
		GUI["1b"]["Position"] = UDim2.new(1, -6, 0, 36);
		GUI["1b"]["Name"] = [[ContentContainer]];

		-- StarterGUI.Peacock.Main.ContentContainer.UIPadding
		GUI["4"] = Instance.new("UIPadding", GUI["1b"]);
		GUI["4"]["PaddingTop"] = UDim.new(0, 1);
		GUI["4"]["PaddingRight"] = UDim.new(0, 1);
		GUI["4"]["PaddingBottom"] = UDim.new(0, 1);
		GUI["4"]["PaddingLeft"] = UDim.new(0, 1);

		-- StarterGUI.Peacock.Main.ContentContainer.Fade
		GUI["5a"] = Instance.new("Frame", GUI["1b"]);
		GUI["5a"]["ZIndex"] = 10;
		GUI["5a"]["BorderSizePixel"] = 0;
		GUI["5a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["5a"]["Size"] = UDim2.new(1, 0, 0, 30);
		GUI["5a"]["Visible"] = false;
		GUI["5a"]["Name"] = [[Fade]];

		-- StarterGUI.Peacock.Main.ContentContainer.Fade.UIGradient
		GUI["5b"] = Instance.new("UIGradient", GUI["5a"]);
		GUI["5b"]["Rotation"] = 90;
		GUI["5b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(254, 126, 15)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 127, 15))};

		-- StarterGui.Peacock.Main.TopBar
		GUI["5"] = Instance.new("Frame", GUI["2"]);
		GUI["5"]["BorderSizePixel"] = 0;
		GUI["5"]["BackgroundColor3"] = Color3.fromRGB(101, 49, 6);
		GUI["5"]["Size"] = UDim2.new(0, 525, 0, 30);
		GUI["5"]["Position"] = UDim2.new(-0.0007851123809814453, 0, -0.00313471257686615, 0);
		GUI["5"]["Name"] = [[TopBar]];

		-- StarterGui.Peacock.Main.TopBar.UICorner
		GUI["6"] = Instance.new("UICorner", GUI["5"]);

		-- StarterGui.Peacock.Main.TopBar.Extension
		GUI["7"] = Instance.new("Frame", GUI["5"]);
		GUI["7"]["BorderSizePixel"] = 0;
		GUI["7"]["BackgroundColor3"] = Color3.fromRGB(101, 49, 6);
		GUI["7"]["AnchorPoint"] = Vector2.new(0, 1);
		GUI["7"]["Size"] = UDim2.new(1, 0, 0.5, 0);
		GUI["7"]["Position"] = UDim2.new(0, 0, 1, 0);
		GUI["7"]["Name"] = [[Extension]];

		-- StarterGui.Peacock.Main.TopBar.Title
		GUI["8"] = Instance.new("TextLabel", GUI["5"]);
		GUI["8"]["BorderSizePixel"] = 0;
		GUI["8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		GUI["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["8"]["TextSize"] = 17;
		GUI["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["8"]["Size"] = UDim2.new(0.5, 0, 1, 0);
		GUI["8"]["Text"] = brackets["name"];
		GUI["8"]["Name"] = brackets["name"];
		GUI["8"]["Font"] = Enum.Font.Gotham;
		GUI["8"]["BackgroundTransparency"] = 1;

		-- StarterGui.Peacock.Main.TopBar.Title.UIPadding
		GUI["9"] = Instance.new("UIPadding", GUI["8"]);
		GUI["9"]["PaddingTop"] = UDim.new(0, 1);
		GUI["9"]["PaddingLeft"] = UDim.new(0, 8);

		-- StarterGui.Peacock.Main.TopBar.Line
		GUI["10"] = Instance.new("Frame", GUI["5"]);
		GUI["10"]["BorderSizePixel"] = 0;
		GUI["10"]["BackgroundColor3"] = Color3.fromRGB(82, 82, 82);
		GUI["10"]["Size"] = UDim2.new(1, 0, 0, 1);
		GUI["10"]["Position"] = UDim2.new(0, 0, 1, 0);
		GUI["10"]["Name"] = [[Line]];

		-- StarterGui.Peacock.Main.TopBar.Close
		GUI["a"] = Instance.new("ImageButton", GUI["5"]);
		GUI["a"]["ZIndex"] = 2;
		GUI["a"]["Selectable"] = true;
		GUI["a"]["Image"] = [[rbxassetid://3926305904]];
		GUI["a"]["ImageRectSize"] = Vector2.new(36, 36);
		GUI["a"]["LayoutOrder"] = 3;
		GUI["a"]["Size"] = UDim2.new(0, 27, 0, 27);
		GUI["a"]["Active"] = true;
		GUI["a"]["Name"] = [[Close]];
		GUI["a"]["ImageRectOffset"] = Vector2.new(924, 724);
		GUI["a"]["BackgroundTransparency"] = 1;
		GUI["a"]["Position"] = UDim2.new(0.9476190805435181, 0, 0, 0);
		GUI["a"].MouseButton1Click:Connect(function()
			GUI["1"]:Destroy()
		end)


		-- StarterGui.Peacock.Main.DropShadowHolder
		GUI["b"] = Instance.new("Frame", GUI["2"]);
		GUI["b"]["ZIndex"] = 0;
		GUI["b"]["BorderSizePixel"] = 0;
		GUI["b"]["BackgroundTransparency"] = 1;
		GUI["b"]["Size"] = UDim2.new(1, 0, 1, 0);
		GUI["b"]["Name"] = [[DropShadowHolder]];

		-- StarterGui.Peacock.Main.DropShadowHolder.DropShadow
		GUI["c"] = Instance.new("ImageLabel", GUI["b"]);
		GUI["c"]["ZIndex"] = 0;
		GUI["c"]["BorderSizePixel"] = 0;
		GUI["c"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
		GUI["c"]["ScaleType"] = Enum.ScaleType.Slice;
		GUI["c"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["c"]["ImageTransparency"] = 0.5;
		GUI["c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		GUI["c"]["Image"] = [[rbxassetid://6014261993]];
		GUI["c"]["Size"] = UDim2.new(1, 47, 1, 47);
		GUI["c"]["Name"] = [[DropShadow]];
		GUI["c"]["BackgroundTransparency"] = 1;
		GUI["c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	end

	-- Navigation
	do
		-- StarterGui.Peacock.Main.Navigation
		GUI["d"] = Instance.new("Frame", GUI["2"]);
		GUI["d"]["BorderSizePixel"] = 0;
		GUI["d"]["BackgroundColor3"] = Color3.fromRGB(137, 66, 9);
		GUI["d"]["Size"] = UDim2.new(0, 120, 1, -30);
		GUI["d"]["Position"] = UDim2.new(0, 0, 0, 30);
		GUI["d"]["Name"] = [[Navigation]];

		-- StarterGui.Peacock.Main.Navigation.UICorner
		GUI["e"] = Instance.new("UICorner", GUI["d"]);
		GUI["e"]["CornerRadius"] = UDim.new(0, 6);

		-- StarterGui.Peacock.Main.Navigation.ButtonHolder
		GUI["f"] = Instance.new("Frame", GUI["d"]);
		GUI["f"]["BorderSizePixel"] = 0;
		GUI["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["f"]["BackgroundTransparency"] = 1;
		GUI["f"]["Size"] = UDim2.new(1, 0, 1, 0);
		GUI["f"]["Name"] = [[ButtonHolder]];

		-- StarterGui.Peacock.Main.Navigation.ButtonHolder.UIListLayout
		GUI["h"] = Instance.new("UIListLayout", GUI["f"]);
		GUI["h"]["Padding"] = UDim.new(0, 1);
		GUI["h"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

		-- StarterGui.Peacock.Main.Navigation.ButtonHolder.UIPadding
		GUI["g"] = Instance.new("UIPadding", GUI["f"]);
		GUI["g"]["PaddingTop"] = UDim.new(0, 8);
		GUI["g"]["PaddingBottom"] = UDim.new(0, 8);

		-- StarterGui.Peacock.Main.Navigation.Hide
		GUI["i"] = Instance.new("Frame", GUI["d"]);
		GUI["i"]["BorderSizePixel"] = 0;
		GUI["i"]["BackgroundColor3"] = Color3.fromRGB(137, 66, 9);
		GUI["i"]["Size"] = UDim2.new(1, 0, 0, 20);
		GUI["i"]["Name"] = [[Hide]];

		-- StarterGui.Peacock.Main.Navigation.Hide2
		GUI["j"] = Instance.new("Frame", GUI["d"]);
		GUI["j"]["BorderSizePixel"] = 0;
		GUI["j"]["BackgroundColor3"] = Color3.fromRGB(137, 66, 9);
		GUI["j"]["AnchorPoint"] = Vector2.new(1, 0);
		GUI["j"]["Size"] = UDim2.new(0, 20, 1, 0);
		GUI["j"]["Position"] = UDim2.new(1, 0, 0, 0);
		GUI["j"]["Name"] = [[Hide2]];

		-- StarterGui.Peacock.Main.Navigation.Line
		GUI["k"] = Instance.new("Frame", GUI["d"]);
		GUI["k"]["BorderSizePixel"] = 0;
		GUI["k"]["BackgroundColor3"] = Color3.fromRGB(81, 81, 81);
		GUI["k"]["Size"] = UDim2.new(0, 1, 1, 0);
		GUI["k"]["Position"] = UDim2.new(1, 0, 0, 0);
		GUI["k"]["Name"] = [[Line]];
	end

	function GUI:NewTab(brackets)
		brackets = Library:validate({
			name = "Preview Tab",
			icon = "rbxassetid://3926305904"
		}, brackets or {})

		local Tab = {
			Hover = false,
			Active = false
		}

		-- Render
		do
			-- StarterGui.Peacock.Main.Navigation.ButtonHolder.Inactive
			Tab["11"] = Instance.new("TextLabel", GUI["f"]);
			Tab["11"]["ZIndex"] = 2;
			Tab["11"]["BorderSizePixel"] = 0;
			Tab["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			Tab["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Tab["11"]["TextSize"] = 12;
			Tab["11"]["TextColor3"] = Color3.fromRGB(200, 200, 200);
			Tab["11"]["Size"] = UDim2.new(1, 0, 0, 24);
			Tab["11"]["Text"] = brackets.name;
			Tab["11"]["Name"] = brackets.name;
			Tab["11"]["Font"] = Enum.Font.Ubuntu;
			Tab["11"]["BackgroundTransparency"] = 1;

			-- StarterGui.Peacock.Main.Navigation.ButtonHolder.Inactive.UIPadding
			Tab["12"] = Instance.new("UIPadding", Tab["11"]);
			Tab["12"]["PaddingLeft"] = UDim.new(0, 28);

			-- StarterGui.Peacock.Main.Navigation.ButtonHolder.Inactive.extension
			Tab["13"] = Instance.new("ImageLabel", Tab["11"]);
			Tab["13"]["ZIndex"] = 2;
			Tab["13"]["ImageColor3"] = Color3.fromRGB(200, 200, 200);
			Tab["13"]["Selectable"] = true;
			Tab["13"]["Image"] = brackets.icon;
			Tab["13"]["ImageRectSize"] = Vector2.new(36, 36);
			Tab["13"]["LayoutOrder"] = 8;
			Tab["13"]["Size"] = UDim2.new(0, 25, 0, 25);
			Tab["13"]["Active"] = true;
			Tab["13"]["Name"] = brackets.icon;
			Tab["13"]["ImageRectOffset"] = Vector2.new(924, 244);
			Tab["13"]["BackgroundTransparency"] = 1;
			Tab["13"]["Position"] = UDim2.new(-0.043478257954120636, -24, 0, 0);

			-- StarterGui.Peacock.Drag.Main.ContentContainer.HomeTab
			Tab["1c"] = Instance.new("ScrollingFrame", GUI["1b"]);
			Tab["1c"]["BorderSizePixel"] = 0;
			Tab["1c"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
			Tab["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Tab["1c"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
			Tab["1c"]["BackgroundTransparency"] = 1;
			Tab["1c"]["Size"] = UDim2.new(1, 0, 1, 0);
			Tab["1c"]["Selectable"] = false;
			Tab["1c"]["ScrollBarThickness"] = 0;
			Tab["1c"]["Name"] = brackets.name;
			Tab["1c"]["SelectionGroup"] = false;
			Tab["1c"]["Visible"] = false;

			-- StarterGui.Peacock.Main.ContentContainer.HomeTab.UIListLayout
			Tab["24"] = Instance.new("UIListLayout", Tab["1c"]);
			Tab["24"]["Padding"] = UDim.new(0, 6);
			Tab["24"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

			-- StarterGUI.Peacock.Main.ContentContainer.HomeTab.UIPadding
			Tab["15"] = Instance.new("UIPadding", Tab["1c"]);
			Tab["15"]["PaddingTop"] = UDim.new(0, 1);
			Tab["15"]["PaddingRight"] = UDim.new(0, 1);
			Tab["15"]["PaddingBottom"] = UDim.new(0, 1);
			Tab["15"]["PaddingLeft"] = UDim.new(0, 1);
		end

		-- Methods
		function Tab:Activate()
			if not Tab.Active then
				if GUI.CurrentTab ~= nil then
					GUI.CurrentTab:Deactivate()
				end

				Tab.Active = true 
				Library:tween(Tab["11"], {TextColor3 = Color3.fromRGB(255, 255, 255)})
				Library:tween(Tab["13"], {ImageColor3 = Color3.fromRGB(255, 255, 255)})
				Library:tween(Tab["11"], {BackgroundTransparency = .8})
				Tab["1c"].Visible = true

				GUI.CurrentTab = Tab
			end
		end

		function Tab:Deactivate()
			if Tab.Active then
				Tab.Active = false
				Tab.Hover = false
				Library:tween(Tab["11"], {TextColor3 = Color3.fromRGB(200, 200, 200)})
				Library:tween(Tab["13"], {ImageColor3 = Color3.fromRGB(200, 200, 200)})
				Library:tween(Tab["11"], {BackgroundTransparency = 1})
				Tab["1c"].Visible = false
			end
		end

		-- Codes Stuff
		do
			Tab["11"].MouseEnter:Connect(function()
				Tab.Hover = true

				if not Tab.Active then
					Library:tween(Tab["11"], {TextColor3 = Color3.fromRGB(255, 255, 255)})
					Library:tween(Tab["13"], {ImageColor3 = Color3.fromRGB(255, 255, 255)})
				end
			end)

			Tab["11"].MouseLeave:Connect(function()
				Tab.Hover = false

				if not Tab.Active then
					Library:tween(Tab["11"], {TextColor3 = Color3.fromRGB(200, 200, 200)})
					Library:tween(Tab["13"], {ImageColor3 = Color3.fromRGB(200, 200, 200)})
				end
			end)

			uis.InputBegan:Connect(function(input, gpe)
				if gpe then return end

				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					if Tab.Hover then
						Tab:Activate()
					end
				end
			end)

			if GUI.CurrentTab == nil then
				Tab:Activate()
			end
		end

		function Tab:NewButton(brackets)
			brackets = Library:validate({
				name = "NewButton",
				callback = function() end
			}, brackets or {})

			local Button = {
				Hover = false,
				MouseDown = false
			}

			--Render
			do
				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Button
				Button["1d"] = Instance.new("Frame", Tab["1c"]);
				Button["1d"]["BackgroundColor3"] = Color3.fromRGB(137, 66, 9);
				Button["1d"]["Size"] = UDim2.new(1, 0, 0, 32);
				Button["1d"]["Name"] = [[Button]];

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Button.UICorner
				Button["1e"] = Instance.new("UICorner", Button["1d"]);
				Button["1e"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Button.UIPadding
				Button["16"] = Instance.new("UIPadding", Button["1d"]);
				Button["16"]["PaddingTop"] = UDim.new(0, 6);
				Button["16"]["PaddingRight"] = UDim.new(0, 6);
				Button["16"]["PaddingBottom"] = UDim.new(0, 6);
				Button["16"]["PaddingLeft"] = UDim.new(0, 6);

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Button.UIStroke
				Button["1f"] = Instance.new("UIStroke", Button["1d"]);
				Button["1f"]["Color"] = Color3.fromRGB(82, 82, 82);
				Button["1f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Button.cursor
				Button["17"] = Instance.new("ImageLabel", Button["1d"]);
				Button["17"]["ZIndex"] = 2;
				Button["17"]["Selectable"] = true;
				Button["17"]["AnchorPoint"] = Vector2.new(1, 0);
				Button["17"]["Image"] = [[rbxassetid://6764432293]];
				Button["17"]["ImageRectSize"] = Vector2.new(100, 100);
				Button["17"]["Size"] = UDim2.new(0, 25, 0, 25);
				Button["17"]["Active"] = true;
				Button["17"]["Name"] = [[cursor]];
				Button["17"]["ImageRectOffset"] = Vector2.new(400, 0);
				Button["17"]["BackgroundTransparency"] = 1;
				Button["17"]["Position"] = UDim2.new(1, 0, -0.10000000149011612, 0);

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Button.Title
				Button["18"] = Instance.new("TextLabel", Button["1d"]);
				Button["18"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Button["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Button["18"]["TextSize"] = 14;
				Button["18"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Button["18"]["Size"] = UDim2.new(1, -20, 1, 0);
				Button["18"]["Text"] = brackets.name;
				Button["18"]["Name"] = [[Title]];
				Button["18"]["Font"] = Enum.Font.Ubuntu;
				Button["18"]["BackgroundTransparency"] = 1;
			end

			-- Methods
			function Button:SetText(text)
				brackets.name = text
				Button["18"].Text = text
			end

			function Button:SetCallback(callback)
				brackets.callback = callback
			end

			-- Logic
			do
				Button["1d"].MouseEnter:Connect(function()
					Button.Hover = true

					Library:tween(Button["1f"], {Color = Color3.fromRGB(102, 102, 102)})
				end)

				Button["1d"].MouseLeave:Connect(function()
					Button.Hover = false

					if not Button.MouseDown then
						Library:tween(Button["1f"], {Color = Color3.fromRGB(82, 82, 82)})
					end
				end)

				uis.InputBegan:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 and Button.Hover then
						Button.MouseDown = true
						Library:tween(Button["1d"], {BackgroundColor3 = Color3.fromRGB(100, 48, 5)})
						Library:tween(Button["1f"], {Color = Color3.fromRGB(200, 200, 200)})
						brackets.callback()
					end
				end)

				uis.InputEnded:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Button.MouseDown = false

						if Button.Hover then
							Library:tween(Button["1d"], {BackgroundColor3 = Color3.fromRGB(137, 66, 9)})
							Library:tween(Button["1f"], {Color = Color3.fromRGB(102, 102, 102)})
						else
							Library:tween(Button["1d"], {BackgroundColor3 = Color3.fromRGB(137, 66, 9)})
							Library:tween(Button["1f"], {Color = Color3.fromRGB(82, 82, 82)})
						end
					end
				end)
			end

			return Button
		end

		function Tab:NewLabel(brackets)
			brackets = Library:validate({
				name = "NewLabel"
			}, brackets or {})

			local Label = {}

			-- Render
			do
				-- StarterLabel.Peacock.Main.ContentContainer.HomeTab.Label
				Label["19"] = Instance.new("Frame", Tab["1c"]);
				Label["19"]["BackgroundColor3"] = Color3.fromRGB(101, 49, 6);
				Label["19"]["Size"] = UDim2.new(1, 0, 0, 26);
				Label["19"]["Name"] = [[Label]];

				-- StarterLabel.Peacock.Main.ContentContainer.HomeTab.Label.UICorner
				Label["20"] = Instance.new("UICorner", Label["19"]);
				Label["20"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterLabel.Peacock.Main.ContentContainer.HomeTab.Label.UIPadding
				Label["21"] = Instance.new("UIPadding", Label["19"]);
				Label["21"]["PaddingTop"] = UDim.new(0, 6);
				Label["21"]["PaddingRight"] = UDim.new(0, 6);
				Label["21"]["PaddingBottom"] = UDim.new(0, 6);
				Label["21"]["PaddingLeft"] = UDim.new(0, 30);

				-- StarterLabel.Peacock.Main.ContentContainer.HomeTab.Label.UIStroke
				Label["22"] = Instance.new("UIStroke", Label["19"]);
				Label["22"]["Color"] = Color3.fromRGB(137, 66, 9);
				Label["22"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterLabel.Peacock.Main.ContentContainer.HomeTab.Label.chat
				Label["23"] = Instance.new("ImageLabel", Label["19"]);
				Label["23"]["ZIndex"] = 2;
				Label["23"]["Selectable"] = true;
				Label["23"]["AnchorPoint"] = Vector2.new(1, 0);
				Label["23"]["Image"] = [[rbxassetid://3926305904]];
				Label["23"]["ImageRectSize"] = Vector2.new(36, 36);
				Label["23"]["Size"] = UDim2.new(0, 19, 0, 19);
				Label["23"]["Active"] = true;
				Label["23"]["Name"] = [[chat]];
				Label["23"]["ImageRectOffset"] = Vector2.new(564, 564);
				Label["23"]["BackgroundTransparency"] = 1;
				Label["23"]["Position"] = UDim2.new(-0.009999999776481982, 0, -0.30000001192092896, 0);

				-- StarterLabel.Peacock.Main.ContentContainer.HomeTab.Label.Title
				Label["24"] = Instance.new("TextLabel", Label["19"]);
				Label["24"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Label["24"]["TextYAlignment"] = Enum.TextYAlignment.Top;
				Label["24"]["TextWrapped"] = true
				Label["24"]["BackgroundColor3"] = Color3.fromRGB(195, 195, 195);
				Label["24"]["TextSize"] = 14;
				Label["24"]["TextColor3"] = Color3.fromRGB(195, 195, 195);
				Label["24"]["Size"] = UDim2.new(1, 0, 1, 0);
				Label["24"]["Text"] = brackets.name;
				Label["24"]["Name"] = [[Title]];
				Label["24"]["Font"] = Enum.Font.Ubuntu;
				Label["24"]["BackgroundTransparency"] = 1;
			end

			-- Methods
			function Label:SetText(text)
				brackets.name = text
				Label:_update()
			end

			function Label:_update()
				Label["24"].Text = brackets.name

				Label["24"].Size = UDim2.new(Label["24"].Size.X.Scale, Label["24"].Size.X.Offset, 0, math.huge)
				Label["24"].Size = UDim2.new(Label["24"].Size.X.Scale, Label["24"].Size.X.Offset, 0, Label["24"].TextBounds.Y)
				Label["19"].Size = UDim2.new(Label["19"].Size.X.Scale, Label["19"].Size.X.Offset, 0, Label["24"].TextBounds.Y + 12)
			end


			Label:_update()
			return Label
		end

		function Tab:NewSlider(brackets)
			brackets = Library:validate({
				name = "NewSlider",
				min = brackets,
				max = brackets,
				default = brackets,
				callback = function() end
			}, brackets or {})

			local Slider = {
				MouseDown = false,
				Hover = false,
				Connection = nil,
				Brackets = brackets
			}

			-- Render
			do
				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Slider
				Slider["25"] = Instance.new("Frame", Tab["1c"]);
				Slider["25"]["BackgroundColor3"] = Color3.fromRGB(137, 66, 9);
				Slider["25"]["Size"] = UDim2.new(1, 0, 0, 38);
				Slider["25"]["Name"] = [[Slider]];

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Slider.UICorner
				Slider["26"] = Instance.new("UICorner", Slider["25"]);
				Slider["26"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Slider.UIPadding
				Slider["27"] = Instance.new("UIPadding", Slider["25"]);
				Slider["27"]["PaddingTop"] = UDim.new(0, 6);
				Slider["27"]["PaddingRight"] = UDim.new(0, 6);
				Slider["27"]["PaddingBottom"] = UDim.new(0, 6);
				Slider["27"]["PaddingLeft"] = UDim.new(0, 6);

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Slider.UIStroke
				Slider["28"] = Instance.new("UIStroke", Slider["25"]);
				Slider["28"]["Color"] = Color3.fromRGB(82, 82, 82);
				Slider["28"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Slider.SliderBack
				Slider["29"] = Instance.new("Frame", Slider["25"]);
				Slider["29"]["BorderSizePixel"] = 0;
				Slider["29"]["BackgroundColor3"] = Color3.fromRGB(95, 46, 6);
				Slider["29"]["AnchorPoint"] = Vector2.new(0, 1);
				Slider["29"]["Size"] = UDim2.new(1, 0, 0, 9);
				Slider["29"]["Position"] = UDim2.new(0, 0, 1, 0);
				Slider["29"]["Name"] = [[SliderBack]];

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Slider.SliderBack.UICorner
				Slider["30"] = Instance.new("UICorner", Slider["29"]);
				Slider["30"]["CornerRadius"] = UDim.new(0, 6);

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Slider.SliderBack.UIStroke
				Slider["31"] = Instance.new("UIStroke", Slider["29"]);
				Slider["31"]["Color"] = Color3.fromRGB(64, 64, 64);
				Slider["31"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Slider.SliderBack.Draggable
				Slider["32"] = Instance.new("Frame", Slider["29"]);
				Slider["32"]["BackgroundColor3"] = Color3.fromRGB(89, 89, 89);
				Slider["32"]["Size"] = UDim2.new(0, 1, 1, 0);
				Slider["32"]["Name"] = [[Draggable]];

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Slider.SliderBack.Draggable.UICorner
				Slider["33"] = Instance.new("UICorner", Slider["32"]);
				Slider["33"]["CornerRadius"] = UDim.new(0, 6);

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Slider.Title
				Slider["34"] = Instance.new("TextLabel", Slider["25"]);
				Slider["34"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Slider["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["34"]["TextSize"] = 14;
				Slider["34"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["34"]["Size"] = UDim2.new(1, -20, 1, -10);
				Slider["34"]["Text"] = brackets.name;
				Slider["34"]["Name"] = [[Title]];
				Slider["34"]["Font"] = Enum.Font.Ubuntu;
				Slider["34"]["BackgroundTransparency"] = 1;

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.Slider.Value
				Slider["35"] = Instance.new("TextLabel", Slider["25"]);
				Slider["35"]["TextXAlignment"] = Enum.TextXAlignment.Right;
				Slider["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["35"]["TextSize"] = 14;
				Slider["35"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["35"]["AnchorPoint"] = Vector2.new(1, 0);
				Slider["35"]["Size"] = UDim2.new(0, 24, 1, -10);
				Slider["35"]["Text"] = tostring(brackets.default);
				Slider["35"]["Name"] = [[Value]];
				Slider["35"]["Font"] = Enum.Font.Ubuntu;
				Slider["35"]["BackgroundTransparency"] = 1;
				Slider["35"]["Position"] = UDim2.new(1, 0, 0, 0);
			end

			-- Methods
			do
				function Slider:SetValue(v)
					if v == nil then
						local percentage = math.clamp((Mouse.X - Slider["29"].AbsolutePosition.X) / (Slider["29"].AbsoluteSize.X), 0, 1)
						local value = math.floor(((brackets.max - brackets.min) * percentage) + brackets.min)

						Slider["35"].Text = tostring(value)
						Slider["32"].Size = UDim2.fromScale(percentage, 1) 
					else
						Slider["35"].Text = tostring(v)
						Slider["32"]:tween{Size = UDim2.fromScale(((v - brackets.min) / (brackets.max - brackets.min)), 1)}
					end
					brackets.callback(Slider:GetValue())
				end

				function Slider:GetValue()
					return tonumber(Slider["35"].Text)
				end

				function Slider:SetCallback(callback)
					brackets.callback = callback
				end
			end

			-- Logic
			do
				Slider["25"].MouseEnter:Connect(function()
					Slider.Hover = true

					Library:tween(Slider["28"], {Color = Color3.fromRGB(102, 102, 102)})
					Library:tween(Slider["31"], {Color = Color3.fromRGB(102, 102, 102)})
					Library:tween(Slider["32"], {BackgroundColor3 = Color3.fromRGB(102, 102, 102)})
				end)

				Slider["25"].MouseLeave:Connect(function()
					Slider.Hover = false

					if not Slider.MouseDown then
						Library:tween(Slider["28"], {Color = Color3.fromRGB(82, 82, 82)})
						Library:tween(Slider["31"], {Color = Color3.fromRGB(82, 82, 82)})
						Library:tween(Slider["32"], {BackgroundColor3 = Color3.fromRGB(82, 82, 82)})
					end
				end)

				uis.InputBegan:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 and Slider.Hover then
						Slider.MouseDown = true
						Library:tween(Slider["25"], {BackgroundColor3 = Color3.fromRGB(100, 48, 5)})
						Library:tween(Slider["28"], {Color = Color3.fromRGB(200, 200, 200)})
						Library:tween(Slider["31"], {Color = Color3.fromRGB(200, 200, 200)})
						Library:tween(Slider["32"], {BackgroundColor3 = Color3.fromRGB(200, 200, 200)})

						if not Slider.Connection then
							Slider.Connection = runService.RenderStepped:Connect(function()
								Slider:SetValue()
							end)
						end
					end
				end)

				uis.InputEnded:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Slider.MouseDown = false

						if Slider.Hover then
							Library:tween(Slider["25"], {BackgroundColor3 = Color3.fromRGB(137, 66, 9)})
							Library:tween(Slider["28"], {Color = Color3.fromRGB(102, 102, 102)})
							Library:tween(Slider["31"], {Color = Color3.fromRGB(102, 102, 102)})
							Library:tween(Slider["32"], {BackgroundColor3 = Color3.fromRGB(102, 102, 102)})
						else
							Library:tween(Slider["25"], {BackgroundColor3 = Color3.fromRGB(137, 66, 9)})
							Library:tween(Slider["28"], {Color = Color3.fromRGB(82, 82, 82)})
							Library:tween(Slider["31"], {Color = Color3.fromRGB(82, 82, 82)})
							Library:tween(Slider["32"], {BackgroundColor3 = Color3.fromRGB(82, 82, 82)})
						end

						if Slider.Connection then Slider.Connection:Disconnect() end
						Slider.Connection = nil
					end
				end)
			end

			return Slider
		end

		function Tab:NewToggle(brackets)
			brackets = Library:validate({
				name = "NewToggle",
				callback = function() end
			}, brackets or {})

			local Toggle = {
				MouseDown = false,
				Hover = false,
				State = false
			}

			-- Render
			do
				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.ToggleInActive
				Toggle["35"] = Instance.new("Frame", Tab["1c"]);
				Toggle["35"]["BackgroundColor3"] = Color3.fromRGB(137, 66, 9);
				Toggle["35"]["Size"] = UDim2.new(1, 0, 0, 32);
				Toggle["35"]["Name"] = [[ToggleInActive]];

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.ToggleInActive.UICorner
				Toggle["36"] = Instance.new("UICorner", Toggle["35"]);
				Toggle["36"]["CornerRadius"] = UDim.new(0, 2);

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.ToggleInActive.UIPadding
				Toggle["37"] = Instance.new("UIPadding", Toggle["35"]);
				Toggle["37"]["PaddingTop"] = UDim.new(0, 6);
				Toggle["37"]["PaddingRight"] = UDim.new(0, 6);
				Toggle["37"]["PaddingBottom"] = UDim.new(0, 6);
				Toggle["37"]["PaddingLeft"] = UDim.new(0, 6);

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.ToggleInActive.UIStroke
				Toggle["38"] = Instance.new("UIStroke", Toggle["35"]);
				Toggle["38"]["Color"] = Color3.fromRGB(82, 82, 82);
				Toggle["38"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.ToggleInActive.CheckmarkHolder
				Toggle["39"] = Instance.new("Frame", Toggle["35"]);
				Toggle["39"]["BackgroundColor3"] = Color3.fromRGB(89, 89, 89);
				Toggle["39"]["AnchorPoint"] = Vector2.new(1, 0.5);
				Toggle["39"]["Size"] = UDim2.new(0, 16, 0, 16);
				Toggle["39"]["Position"] = UDim2.new(1, -3, 0.5, 0);
				Toggle["39"]["Name"] = [[CheckmarkHolder]];

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.ToggleInActive.CheckmarkHolder.UICorner
				Toggle["40"] = Instance.new("UICorner", Toggle["39"]);
				Toggle["40"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.ToggleInActive.CheckmarkHolder.UIStroke
				Toggle["41"] = Instance.new("UIStroke", Toggle["39"]);
				Toggle["41"]["Color"] = Color3.fromRGB(255, 255, 255);
				Toggle["41"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.ToggleInActive.CheckmarkHolder.done
				Toggle["42"] = Instance.new("ImageLabel", Toggle["39"]);
				Toggle["42"]["ZIndex"] = 2;
				Toggle["42"]["Selectable"] = true;
				Toggle["42"]["ImageTransparency"] = 1;
				Toggle["42"]["Image"] = [[rbxassetid://3926305904]];
				Toggle["42"]["ImageRectSize"] = Vector2.new(36, 36);
				Toggle["42"]["LayoutOrder"] = 2;
				Toggle["42"]["Size"] = UDim2.new(1, -2, 1, -2);
				Toggle["42"]["Active"] = true;
				Toggle["42"]["Name"] = [[done]];
				Toggle["42"]["ImageRectOffset"] = Vector2.new(644, 204);
				Toggle["42"]["BackgroundTransparency"] = 1;

				-- StarterGui.Peacock.Main.ContentContainer.HomeTab.ToggleInActive.Title
				Toggle["43"] = Instance.new("TextLabel", Toggle["35"]);
				Toggle["43"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Toggle["43"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["43"]["TextSize"] = 14;
				Toggle["43"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["43"]["Size"] = UDim2.new(1, -26, 1, 0);
				Toggle["43"]["Text"] = brackets.name;
				Toggle["43"]["Name"] = [[Title]];
				Toggle["43"]["Font"] = Enum.Font.Ubuntu;
				Toggle["43"]["BackgroundTransparency"] = 1;
			end

			-- Methods
			do
				function Toggle:Toggle(v)
					if v == nil then
						Toggle.State = not Toggle.State
					else
						Toggle.State = v
					end

					if Toggle.State then
						Library:tween(Toggle["39"], {BackgroundColor3 = Color3.fromRGB(67, 122, 15)})
						Library:tween(Toggle["42"], {ImageTransparency = 0})
					else
						Library:tween(Toggle["39"], {BackgroundColor3 = Color3.fromRGB(89, 89, 89)})
						Library:tween(Toggle["42"], {ImageTransparency = 1})
					end


					brackets.callback(Toggle.State)
				end

				function Toggle:SetCallback(callback)
					brackets.callback = callback
				end
			end

			-- Logic
			do
				Toggle["35"].MouseEnter:Connect(function()
					Toggle.Hover = true

					Library:tween(Toggle["38"], {Color = Color3.fromRGB(102, 102, 102)})
				end)

				Toggle["35"].MouseLeave:Connect(function()
					Toggle.Hover = false

					if not Toggle.MouseDown then
						Library:tween(Toggle["38"], {Color = Color3.fromRGB(82, 82, 82)})
					end
				end)

				uis.InputBegan:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 and Toggle.Hover then
						Toggle.MouseDown = true
						Library:tween(Toggle["35"], {BackgroundColor3 = Color3.fromRGB(100, 48, 5)})
						Library:tween(Toggle["38"], {Color = Color3.fromRGB(200, 200, 200)})
						Toggle:Toggle()
					end
				end)

				uis.InputEnded:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Toggle.MouseDown = false

						if Toggle.Hover then
							Library:tween(Toggle["35"], {BackgroundColor3 = Color3.fromRGB(137, 66, 9)})
							Library:tween(Toggle["38"], {Color = Color3.fromRGB(102, 102, 102)})
						else
							Library:tween(Toggle["35"], {BackgroundColor3 = Color3.fromRGB(137, 66, 9)})
							Library:tween(Toggle["38"], {Color = Color3.fromRGB(82, 82, 82)})
						end
					end
				end)
			end

			return Toggle
		end

		function Tab:NewDropdown(brackets)
			brackets = Library:validate({
				name = "NewDropdown",
				callback = function(v) print(v) end,
				items = {}
			}, brackets or {})

			local Dropdown = {
				Items = {
					["id"] = {
						"value"
					}
				},
                Open = false,
                MouseDown = false,
                Hover = false,
                HoveringItem = false
			}

			-- Render
			do
				-- StarterGui.Peacock.Drag.Main.ContentContainer.HomeTab.Dropdown
				Dropdown["44"] = Instance.new("Frame", Tab["1c"]);
				Dropdown["44"]["BackgroundColor3"] = Color3.fromRGB(137, 66, 9);
				Dropdown["44"]["Size"] = UDim2.new(1, 0, 0, 30);
				Dropdown["44"]["ClipsDescendants"] = true;
				Dropdown["44"]["Name"] = [[Dropdown]];

				-- StarterGui.Peacock.Drag.Main.ContentContainer.HomeTab.Dropdown.UICorner
				Dropdown["45"] = Instance.new("UICorner", Dropdown["44"]);
				Dropdown["45"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.Peacock.Drag.Main.ContentContainer.HomeTab.Dropdown.UIStroke
				Dropdown["46"] = Instance.new("UIStroke", Dropdown["44"]);
				Dropdown["46"]["Color"] = Color3.fromRGB(82, 82, 82);
				Dropdown["46"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.Peacock.Drag.Main.ContentContainer.HomeTab.Dropdown.Title
				Dropdown["47"] = Instance.new("TextLabel", Dropdown["44"]);
				Dropdown["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Dropdown["47"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Dropdown["47"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Dropdown["47"]["TextSize"] = 14;
				Dropdown["47"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Dropdown["47"]["Size"] = UDim2.new(1, -20, 0, 20);
				Dropdown["47"]["Text"] = brackets.name;
				Dropdown["47"]["Name"] = [[Title]];
				Dropdown["47"]["BackgroundTransparency"] = 1;

				-- StarterGui.Peacock.Drag.Main.ContentContainer.HomeTab.Dropdown.UIPadding
				Dropdown["48"] = Instance.new("UIPadding", Dropdown["44"]);
				Dropdown["48"]["PaddingTop"] = UDim.new(0, 6);
				Dropdown["48"]["PaddingRight"] = UDim.new(0, 6);
				Dropdown["48"]["PaddingBottom"] = UDim.new(0, 6);
				Dropdown["48"]["PaddingLeft"] = UDim.new(0, 6);

				-- StarterGui.Peacock.Drag.Main.ContentContainer.HomeTab.Dropdown.scrollVertical
				Dropdown["49"] = Instance.new("ImageLabel", Dropdown["44"]);
				Dropdown["49"]["ZIndex"] = 2;
				Dropdown["49"]["Selectable"] = true;
				Dropdown["49"]["AnchorPoint"] = Vector2.new(1, 0);
				Dropdown["49"]["Image"] = [[rbxassetid://6764432408]];
				Dropdown["49"]["ImageRectSize"] = Vector2.new(50, 50);
				Dropdown["49"]["LayoutOrder"] = 12;
				Dropdown["49"]["Size"] = UDim2.new(0, 25, 0, 25);
				Dropdown["49"]["Active"] = true;
				Dropdown["49"]["Name"] = [[scrollVertical]];
				Dropdown["49"]["ImageRectOffset"] = Vector2.new(100, 0);
				Dropdown["49"]["BackgroundTransparency"] = 1;
				Dropdown["49"]["Position"] = UDim2.new(1, 0, 0, 0);

				-- StarterGui.Peacock.Drag.Main.ContentContainer.HomeTab.Dropdown.OptionHolder
				Dropdown["50"] = Instance.new("Frame", Dropdown["44"]);
				Dropdown["50"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Dropdown["50"]["BackgroundTransparency"] = 1;
				Dropdown["50"]["Size"] = UDim2.new(1, 0, 1, -24);
				Dropdown["50"]["Position"] = UDim2.new(0, 0, 0, 26);
				Dropdown["50"]["Visible"] = false;
				Dropdown["50"]["Name"] = [[OptionHolder]];

				-- StarterGui.Peacock.Drag.Main.ContentContainer.HomeTab.Dropdown.OptionHolder.UIListLayout
				Dropdown["51"] = Instance.new("UIListLayout", Dropdown["50"]);
				Dropdown["51"]["Padding"] = UDim.new(0, 4);
				Dropdown["51"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
			end

			-- Methods
            do
                function Dropdown:Add(id, value)
                    local Item = {
                        Hover = false,
                        MouseDown = false
                    }
                    if Dropdown.Items[id] ~= nil then
                        return
                    end
                    Dropdown.Items[id] = {
                        instance = {},
                        value = value
                    }
                    -- StarterGui.Peacock.Drag.Main.ContentContainer.HomeTab.Dropdown.OptionHolder.InactiveOption
                    Dropdown.Items[id].instance["52"] = Instance.new("TextLabel", Dropdown["50"]);
                    Dropdown.Items[id].instance["52"]["BackgroundColor3"] = Color3.fromRGB(89, 89, 89);
                    Dropdown.Items[id].instance["52"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
                    Dropdown.Items[id].instance["52"]["TextSize"] = 12;
                    Dropdown.Items[id].instance["52"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
                    Dropdown.Items[id].instance["52"]["Size"] = UDim2.new(1, 0, 0, 16);
                    Dropdown.Items[id].instance["52"]["Text"] = id;
                    Dropdown.Items[id].instance["52"]["Name"] = [[InactiveOption]];
    
                    -- StarterGui.Peacock.Drag.Main.ContentContainer.HomeTab.Dropdown.OptionHolder.InactiveOption.UIStroke
                    Dropdown.Items[id].instance["53"] = Instance.new("UIStroke", Dropdown.Items[id].instance["52"]);
                    Dropdown.Items[id].instance["53"]["Color"] = Color3.fromRGB(64, 64, 64);
                    Dropdown.Items[id].instance["53"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    
                    -- StarterGui.Peacock.Drag.Main.ContentContainer.HomeTab.Dropdown.OptionHolder.InactiveOption.UICorner
                    Dropdown.Items[id].instance["54"] = Instance.new("UICorner", Dropdown.Items[id].instance["52"]);
                    Dropdown.Items[id].instance["54"]["CornerRadius"] = UDim.new(0, 2);

                    Dropdown.Items[id].instance["52"].MouseEnter:Connect(function()
                        Item.Hover = true
                        Dropdown.HoveringItem = true
    
                        Library:tween(Dropdown.Items[id].instance["53"], {Color = Color3.fromRGB(102, 102, 102)})
                    end)
    
                    Dropdown.Items[id].instance["52"].MouseLeave:Connect(function()
                        Item.Hover = false
                        Dropdown.HoveringItem = false
    
                        if not Item.MouseDown then
                            Library:tween(Dropdown.Items[id].instance["53"], {Color = Color3.fromRGB(82, 82, 82)})
                        end
                    end)
    
                    uis.InputBegan:Connect(function(input, gpe)
                        if gpe then return end

                        if input.UserInputType == Enum.UserInputType.MouseButton1 and Item.Hover then
                            Item.MouseDown = true
                            Library:tween(Dropdown.Items[id].instance["52"], {BackgroundColor3 = Color3.fromRGB(100, 48, 5)})
                            Library:tween(Dropdown.Items[id].instance["53"], {Color = Color3.fromRGB(200, 200, 200)})
                            brackets.callback(value)
                            Dropdown:Toggle()
                        end
                    end)
    
                    uis.InputEnded:Connect(function(input, gpe)
                        if gpe then return end

                        if Dropdown.Items[id] == nil then return end
    
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            Item.MouseDown = false
    
                            if Item.Hover then
                                Library:tween(Dropdown.Items[id].instance["52"], {BackgroundColor3 = Color3.fromRGB(137, 66, 9)})
                                Library:tween(Dropdown.Items[id].instance["53"], {Color = Color3.fromRGB(102, 102, 102)})
                            else
                                Library:tween(Dropdown.Items[id].instance["52"], {BackgroundColor3 = Color3.fromRGB(137, 66, 9)})
                                Library:tween(Dropdown.Items[id].instance["53"], {Color = Color3.fromRGB(82, 82, 82)})
                            end
                        end
                    end)
                end
    
                function Dropdown:Remove(id)
                    if Dropdown.Items[id] ~= nil then
                        if Dropdown.Items[id].Instance ~= nil then
                            for i, v in pairs(Dropdown.Items[id].instance) do
                                v:Destroy()
                            end
                        end
                        Dropdown.Items[id] = nil
                    end
                end
    
                function Dropdown:Clear()
                    for i, v in pairs(Dropdown.Items) do
                        Dropdown:Remove(i)
                    end
                end
                
                function Dropdown:Toggle()
                    if Dropdown.Open then
                        Library:tween(Dropdown["44"], {Size = UDim2.new(1, 0, 0, 30)}, function()
                            Dropdown["50"].Visible = false
                        end)
                    else
                        local count = 0
                        for i, v in pairs(Dropdown.Items) do
                            if v ~= nil then
                                count += 1
                            end
                        end

                        Dropdown["50"].Visible = true
                        Library:tween(Dropdown["44"], {Size = UDim2.new(1, 0, 0, 30 + (count * 16) + 1)})
                    end
                    Dropdown.Open = not Dropdown.Open
                end
            end

			-- Logic
			do
                Dropdown["44"].MouseEnter:Connect(function()
					Dropdown.Hover = true

					Library:tween(Dropdown["46"], {Color = Color3.fromRGB(102, 102, 102)})
				end)

				Dropdown["44"].MouseLeave:Connect(function()
					Dropdown.Hover = false

					if not Dropdown.MouseDown then
						Library:tween(Dropdown["46"], {Color = Color3.fromRGB(82, 82, 82)})
					end
				end)

				uis.InputBegan:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 and Dropdown.Hover then
						Dropdown.MouseDown = true
						Library:tween(Dropdown["44"], {BackgroundColor3 = Color3.fromRGB(100, 48, 5)})
						Library:tween(Dropdown["46"], {Color = Color3.fromRGB(200, 200, 200)})
                        
                        if not Dropdown.HoveringItem then
                            Dropdown:Toggle()
                        end
					end
				end)

				uis.InputEnded:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Dropdown.MouseDown = false

						if Dropdown.Hover then
							Library:tween(Dropdown["44"], {BackgroundColor3 = Color3.fromRGB(137, 66, 9)})
							Library:tween(Dropdown["46"], {Color = Color3.fromRGB(102, 102, 102)})
						else
							Library:tween(Dropdown["44"], {BackgroundColor3 = Color3.fromRGB(137, 66, 9)})
							Library:tween(Dropdown["46"], {Color = Color3.fromRGB(82, 82, 82)})
						end
					end
				end)
			end

			return Dropdown
		end

		return Tab
	end

	return GUI
end

return Library
