repeat wait() until game:IsLoaded()

-- Instances:

local PulsarHub_BOOT = Instance.new("ScreenGui")
local Carrier = Instance.new("Frame")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Logo = Instance.new("ImageLabel")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local ActionText = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UpperFrame = Instance.new("Frame")
local LowerFrame = Instance.new("Frame")

--Properties:

PulsarHub_BOOT.Name = "PulsarHub_BOOT"
PulsarHub_BOOT.Parent = game.ReplicatedStorage
PulsarHub_BOOT.Enabled = false
PulsarHub_BOOT.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Carrier.Name = "Carrier"
Carrier.Parent = PulsarHub_BOOT
Carrier.AnchorPoint = Vector2.new(0.5, 0.5)
Carrier.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Carrier.BackgroundTransparency = 1.000
Carrier.Position = UDim2.new(0.5, 0, 0.5, 0)
Carrier.Size = UDim2.new(0.300000012, 0, 0.400000006, 0)

UIAspectRatioConstraint.Parent = Carrier
UIAspectRatioConstraint.AspectRatio = 0.900

Logo.Name = "Logo"
Logo.Parent = Carrier
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.Size = UDim2.new(1, 0, 1, 0)
Logo.Image = "rbxassetid://10073648511"

UIAspectRatioConstraint_2.Parent = Logo

ActionText.Name = "ActionText"
ActionText.Parent = Carrier
ActionText.AnchorPoint = Vector2.new(0.5, 0.5)
ActionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ActionText.BackgroundTransparency = 1.000
ActionText.Position = UDim2.new(0.5, 0, 0.949999988, 0)
ActionText.Size = UDim2.new(1, 0, 0.100000001, 0)
ActionText.Font = Enum.Font.GothamBold
ActionText.Text = "Action Text"
ActionText.TextColor3 = Color3.fromRGB(161, 161, 161)
ActionText.TextScaled = true
ActionText.TextSize = 14.000
ActionText.TextWrapped = true

UITextSizeConstraint.Parent = ActionText
UITextSizeConstraint.MaxTextSize = 25

UpperFrame.Name = "UpperFrame"
UpperFrame.Parent = ActionText
UpperFrame.AnchorPoint = Vector2.new(0.5, 0.5)
UpperFrame.BackgroundColor3 = Color3.fromRGB(161, 161, 161)
UpperFrame.BorderSizePixel = 0
UpperFrame.Position = UDim2.new(0.5, 0, 0, 0)
UpperFrame.Size = UDim2.new(0.5, 0, 0.100000001, 0)

LowerFrame.Name = "LowerFrame"
LowerFrame.Parent = ActionText
LowerFrame.AnchorPoint = Vector2.new(0.5, 0.5)
LowerFrame.BackgroundColor3 = Color3.fromRGB(161, 161, 161)
LowerFrame.BorderSizePixel = 0
LowerFrame.Position = UDim2.new(0.5, 0, 1, 0)
LowerFrame.Size = UDim2.new(0.5, 0, 0.100000001, 0)

getgenv().BootStatus = "checking-blacklist"

local requrl = "https://raw.githubusercontent.com/pulsar-hub/pulsar-hub-dev/main/userids_blacklisted.json"
local request = syn.request({
	url = requrl,
	Method = "GET"
}).Body

local blacklisted = {}

for _,item in (request) do
	table.insert(blacklisted, item)
end

local player = game.Players.LocalPlayer
local failsafe = True

for _,item in (blacklisted) do
	if table.find(blacklisted, tostring(player.UserId)) then
		PulsarHub_BOOT:Destroy()
		script:Destroy()
		failsafe = False
	end
end

if failsafe == True then
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local PulsarHub_KEY = Instance.new("ScreenGui")
	local KeyMain = Instance.new("Frame")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local UICorner = Instance.new("UICorner")
	local Welcome = Instance.new("TextLabel")
	local Title = Instance.new("TextLabel")
	local Close = Instance.new("ImageButton")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local KeyBoxContainer = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local KeyEnterBox = Instance.new("TextBox")
	local Confirm = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local ContainedText = Instance.new("TextLabel")
	local GetKey = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local ContainedText_2 = Instance.new("TextLabel")
	local StatusText = Instance.new("TextLabel")

	--Properties:

	PulsarHub_KEY.Name = "PulsarHub_KEY"
	PulsarHub_KEY.Parent = game.Players.LocalPlayer.PlayerGui
	PulsarHub_KEY.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	KeyMain.Name = "KeyMain"
	KeyMain.Parent = PulsarHub_KEY
	KeyMain.AnchorPoint = Vector2.new(0.5, 0.5)
	KeyMain.BackgroundColor3 = Color3.fromRGB(24, 24, 26)
	KeyMain.BackgroundTransparency = 1.000
	KeyMain.Position = UDim2.new(0.5, 0, 0.5, 0)
	KeyMain.Size = UDim2.new(0.300000012, 0, 0.349999994, 0)

	UIAspectRatioConstraint.Parent = KeyMain
	UIAspectRatioConstraint.AspectRatio = 1.750

	UICorner.CornerRadius = UDim.new(0, 6)
	UICorner.Parent = KeyMain

	Welcome.Name = "Welcome"
	Welcome.Parent = KeyMain
	Welcome.AnchorPoint = Vector2.new(0.5, 0.5)
	Welcome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Welcome.BackgroundTransparency = 1.000
	Welcome.Position = UDim2.new(0.300000012, 0, 0.174999997, 0)
	Welcome.Size = UDim2.new(0.5, 0, 0.0500000007, 0)
	Welcome.Font = Enum.Font.GothamBold
	Welcome.Text = "WELCOME TO PULSAR"
	Welcome.TextColor3 = Color3.fromRGB(186, 186, 186)
	Welcome.TextScaled = true
	Welcome.TextSize = 14.000
	Welcome.TextTransparency = 1.000
	Welcome.TextWrapped = true
	Welcome.TextXAlignment = Enum.TextXAlignment.Left

	Title.Name = "Title"
	Title.Parent = KeyMain
	Title.AnchorPoint = Vector2.new(0.5, 0.5)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.300000012, 0, 0.300000012, 0)
	Title.Size = UDim2.new(0.5, 0, 0.125, 0)
	Title.Font = Enum.Font.GothamBold
	Title.Text = "Enter Key"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextTransparency = 1.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left

	Close.Name = "Close"
	Close.Parent = KeyMain
	Close.AnchorPoint = Vector2.new(0.5, 0.5)
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BackgroundTransparency = 1.000
	Close.Position = UDim2.new(0.949999988, 0, 0.075000003, 0)
	Close.Size = UDim2.new(0.100000001, 0, 0.100000001, 0)
	Close.ZIndex = 3
	Close.AutoButtonColor = false
	Close.Image = "rbxassetid://10057862438"
	Close.ImageTransparency = 1.000

	UIAspectRatioConstraint_2.Parent = Close

	KeyBoxContainer.Name = "KeyBoxContainer"
	KeyBoxContainer.Parent = KeyMain
	KeyBoxContainer.AnchorPoint = Vector2.new(0.5, 0.5)
	KeyBoxContainer.BackgroundColor3 = Color3.fromRGB(24, 24, 26)
	KeyBoxContainer.BackgroundTransparency = 1.000
	KeyBoxContainer.Position = UDim2.new(0.5, 0, 0.5, 0)
	KeyBoxContainer.Size = UDim2.new(0.899999976, 0, 0.125, 0)

	UICorner_2.Parent = KeyBoxContainer

	KeyEnterBox.Name = "KeyEnterBox"
	KeyEnterBox.Parent = KeyBoxContainer
	KeyEnterBox.AnchorPoint = Vector2.new(0.5, 0.5)
	KeyEnterBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	KeyEnterBox.BackgroundTransparency = 1.000
	KeyEnterBox.Position = UDim2.new(0.5, 0, 0.5, 0)
	KeyEnterBox.Size = UDim2.new(0.899999976, 0, 0.5, 0)
	KeyEnterBox.Font = Enum.Font.Gotham
	KeyEnterBox.PlaceholderText = "Enter the key here"
	KeyEnterBox.Text = ""
	KeyEnterBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	KeyEnterBox.TextScaled = true
	KeyEnterBox.TextSize = 14.000
	KeyEnterBox.TextTransparency = 1.000
	KeyEnterBox.TextWrapped = true
	KeyEnterBox.TextXAlignment = Enum.TextXAlignment.Left

	Confirm.Name = "Confirm"
	Confirm.Parent = KeyMain
	Confirm.AnchorPoint = Vector2.new(0.5, 0.5)
	Confirm.BackgroundColor3 = Color3.fromRGB(33, 33, 35)
	Confirm.BackgroundTransparency = 1.000
	Confirm.Position = UDim2.new(0.625, 0, 0.675000012, 0)
	Confirm.Size = UDim2.new(0.200000003, 0, 0.100000001, 0)
	Confirm.AutoButtonColor = false
	Confirm.Font = Enum.Font.SourceSans
	Confirm.Text = ""
	Confirm.TextColor3 = Color3.fromRGB(0, 0, 0)
	Confirm.TextSize = 14.000
	Confirm.TextTransparency = 1.000

	UICorner_3.CornerRadius = UDim.new(0, 6)
	UICorner_3.Parent = Confirm

	ContainedText.Name = "ContainedText"
	ContainedText.Parent = Confirm
	ContainedText.AnchorPoint = Vector2.new(0.5, 0.5)
	ContainedText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ContainedText.BackgroundTransparency = 1.000
	ContainedText.Position = UDim2.new(0.5, 0, 0.5, 0)
	ContainedText.Size = UDim2.new(0.800000012, 0, 0.600000024, 0)
	ContainedText.Font = Enum.Font.GothamBold
	ContainedText.Text = "CONFIRM"
	ContainedText.TextColor3 = Color3.fromRGB(255, 255, 255)
	ContainedText.TextScaled = true
	ContainedText.TextSize = 14.000
	ContainedText.TextTransparency = 1.000
	ContainedText.TextWrapped = true

	GetKey.Name = "GetKey"
	GetKey.Parent = KeyMain
	GetKey.AnchorPoint = Vector2.new(0.5, 0.5)
	GetKey.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
	GetKey.BackgroundTransparency = 1.000
	GetKey.Position = UDim2.new(0.375, 0, 0.675000012, 0)
	GetKey.Size = UDim2.new(0.200000003, 0, 0.100000001, 0)
	GetKey.AutoButtonColor = false
	GetKey.Font = Enum.Font.SourceSans
	GetKey.Text = ""
	GetKey.TextColor3 = Color3.fromRGB(0, 0, 0)
	GetKey.TextSize = 14.000

	UICorner_4.Parent = GetKey

	ContainedText_2.Name = "ContainedText"
	ContainedText_2.Parent = GetKey
	ContainedText_2.AnchorPoint = Vector2.new(0.5, 0.5)
	ContainedText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ContainedText_2.BackgroundTransparency = 1.000
	ContainedText_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	ContainedText_2.Size = UDim2.new(0.800000012, 0, 0.600000024, 0)
	ContainedText_2.Font = Enum.Font.GothamBold
	ContainedText_2.Text = "GET KEY"
	ContainedText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	ContainedText_2.TextScaled = true
	ContainedText_2.TextSize = 14.000
	ContainedText_2.TextTransparency = 1.000
	ContainedText_2.TextWrapped = true

	StatusText.Name = "StatusText"
	StatusText.Parent = KeyMain
	StatusText.AnchorPoint = Vector2.new(0.5, 0.5)
	StatusText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	StatusText.BackgroundTransparency = 1.000
	StatusText.Position = UDim2.new(0.5, 0, 0.850000024, 0)
	StatusText.Size = UDim2.new(0.800000012, 0, 0.075000003, 0)
	StatusText.Font = Enum.Font.GothamMedium
	StatusText.Text = "Checking..."
	StatusText.TextColor3 = Color3.fromRGB(255, 255, 255)
	StatusText.TextScaled = true
	StatusText.TextSize = 14.000
	StatusText.TextTransparency = 1.000
	StatusText.TextWrapped = true

	-- Scripts:

	local function TCCKNPZ_fake_script() -- KeyMain.UI_Master 
		local script = Instance.new('LocalScript', KeyMain)

		repeat wait() until game:IsLoaded()

		local UserInputService = game:GetService("UserInputService")
		local close = script.Parent:WaitForChild("Close")

		-- DRAG -- 


		local gui = script.Parent

		local dragging
		local dragInput
		local dragStart
		local startPos

		local function update(input)
			local delta = input.Position - dragStart
			gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end

		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)

		-- FADEIN/FADEOUT --

		local TweenService = game:GetService("TweenService")

		local Fade_TweenInfo = TweenInfo.new(
			.5,
			Enum.EasingStyle.Sine,
			Enum.EasingDirection.Out
		)

		local temp_key_ui_array = {}

		for _,v in pairs(script.Parent:GetDescendants()) do 
			if v:IsA("Frame") or v:IsA("UIStroke") or v:IsA("TextLabel") or v:IsA("TextBox") or v:IsA("ImageLabel") or v:IsA("TextButton") then
				table.insert(temp_key_ui_array, v)
			end
		end

		function fade_in()
			TweenService:Create(script.Parent, Fade_TweenInfo, {Transparency = 0}):Play()

			wait(.35)

			for _,v in pairs(temp_key_ui_array) do
				spawn(function()
					if v:IsA("Frame") or v:IsA("UIStroke") then
						TweenService:Create(v, Fade_TweenInfo, {Transparency = 0}):Play()
					elseif v:IsA("TextLabel") or v:IsA("TextBox") then
						TweenService:Create(v, Fade_TweenInfo, {TextTransparency = 0}):Play()
					elseif v:IsA("TextButton") then
						TweenService:Create(v, Fade_TweenInfo, {Transparency = 0, TextTransparency = 0}):Play()
					end
					TweenService:Create(close, Fade_TweenInfo, {ImageTransparency = 0}):Play()
				end)
			end
		end

		function fade_out()
			for _,v in pairs(temp_key_ui_array) do
				spawn(function()
					if v:IsA("Frame") or v:IsA("UIStroke") then
						TweenService:Create(v, Fade_TweenInfo, {Transparency = 1}):Play()
					elseif v:IsA("TextLabel") or v:IsA("TextBox") then
						TweenService:Create(v, Fade_TweenInfo, {TextTransparency = 1}):Play()
					elseif v:IsA("TextButton") then
						TweenService:Create(v, Fade_TweenInfo, {Transparency = 1, TextTransparency = 1}):Play()
					end
					TweenService:Create(close, Fade_TweenInfo, {ImageTransparency = 1}):Play()
				end)
			end
			wait(.35)

			TweenService:Create(script.Parent, Fade_TweenInfo, {Transparency = 1}):Play()
		end

		fade_in()

		-- CLOSE --

		close.MouseButton1Click:Connect(function()
			fade_out()
			wait(.65)
			script.Parent.Parent:Destroy()
		end)

		-- BUTTON SIZE --

		local button_tweeninfo = TweenInfo.new(
			.35,
			Enum.EasingStyle.Exponential,
			Enum.EasingDirection.Out
		)

		local confirm = script.Parent.Confirm
		local getkey = script.Parent.GetKey

		function handleSize1(object)
			TweenService:Create(object, button_tweeninfo, {Size = UDim2.new(0.225, 0,0.113, 0)}):Play()
		end

		function handleSize2(object)
			TweenService:Create(object, button_tweeninfo, {Size = UDim2.new(0.2, 0,0.1, 0)}):Play()
		end

		confirm.MouseEnter:Connect(function()
			handleSize1(confirm)
		end)

		getkey.MouseEnter:Connect(function()
			handleSize1(getkey)
		end)

		confirm.MouseLeave:Connect(function()
			handleSize2(confirm)
		end)

		getkey.MouseLeave:Connect(function()
			handleSize2(getkey)
		end)

		-- KEY --

		function RUN_PULSARHUB_MAIN()
			print("ran")
		end

		_G.k8mzQp3azgWnvNIWOq0xoDzhQM6o5X4whSGuMPz9I3IY5M4adR8ebTI1N5GQHf9tqvMlCXrtXsiQ9lCwbfjw1EsnrxuIG4v7GR7 = "pending key..."

		local HTTP_SERVICE = game:GetService("HttpService")
		local keyenter = script.Parent:WaitForChild("KeyBoxContainer"):WaitForChild("KeyEnterBox")
		local requrl = "https://pulsarhubrblx.pythonanywhere.com/?apitype=key"



		confirm.MouseButton1Click:Connect(function()
			local STATUS_TEXT = script.Parent:WaitForChild("StatusText")

			STATUS_TEXT.TextTransparency = 0
			STATUS_TEXT.TextColor3 = Color3.new(1,1,1)
			STATUS_TEXT.Text = "Checking Servers..."
			wait(0.75)
			STATUS_TEXT.Text = "Making API Request..."

			local KEY = keyenter.Text

			local HTTP_REQUEST = syn.request({
				Url = requrl,
				Method = "GET"
			})
			local RESPONSE = HTTP_REQUEST.Body

			wait(1.5)
			STATUS_TEXT.Text = "Checking Key..."

			if not (KEY == RESPONSE) then
				STATUS_TEXT.TextColor3 = Color3.fromRGB(255, 64, 64)
				STATUS_TEXT.Text = "Incorrect Key."
				wait(3)
				STATUS_TEXT.TextColor3 = Color3.new(1,1,1)
				STATUS_TEXT.TextTransparency = 1
			elseif (KEY == RESPONSE) then
				local sound = Instance.new("Sound", workspace)
				sound.SoundId = "rbxassetid://5949365181"
				sound:Play()
				STATUS_TEXT.Text = "Key Correct."
				STATUS_TEXT.TextColor3 = Color3.fromRGB(0, 170, 127)
				RUN_PULSARHUB_MAIN()
			end
		end)
	end
	coroutine.wrap(TCCKNPZ_fake_script)()

end
