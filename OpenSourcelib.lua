--[[
 do NOT skid this
]]

local Novauilib = {}

local gui = Instance.new("ScreenGui")
gui.Name = "gui"
gui.Parent = game.CoreGui

function Novauilib:CreateTab(Text)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 250, 0, 300)
    Frame.Position = UDim2.new(0.5, -125, 0.5, -150)
    Frame.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    Frame.BorderColor3 = Color3.new(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Active = true
    Frame.BackgroundTransparency = 0
    Frame.Draggable = true
    Frame.Parent = gui

    local Smth = Instance.new("TextLabel")
    Smth.Size = UDim2.new(1, 0, 0, 38.5)
    Smth.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
    Smth.BorderColor3 = Color3.new(0, 0, 0)
    Smth.BorderSizePixel = 0
    Smth.TextScaled = true
    Smth.Text = Text or "Untitled Tab"
    Smth.BackgroundTransparency = 0
    Smth.TextColor3 = Color3.new(1, 1, 1)
    Smth.Font = Enum.Font.SourceSans
    Smth.Parent = Frame

    local Close = Instance.new("TextButton")
    Close.Size = UDim2.new(0, 25, 0, 15)
    Close.Position = UDim2.new(0.855, 0, 0.01, 0)
    Close.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
    Close.BorderColor3 = Color3.new(0, 0, 0)
    Close.BorderSizePixel = 0
    Close.TextScaled = true
    Close.Text = "+"
    Close.BackgroundTransparency = 0
    Close.TextColor3 = Color3.new(1, 1, 1)
    Close.Font = Enum.Font.SourceSans
    Close.Parent = Frame

    local ScrollingFrame = Instance.new("ScrollingFrame")
    ScrollingFrame.Size = UDim2.new(1, -10, 1, -50)
    ScrollingFrame.Position = UDim2.new(0, 5, 0, 45)
    ScrollingFrame.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
    ScrollingFrame.BorderSizePixel = 0
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollingFrame.ScrollBarThickness = 6
    ScrollingFrame.Parent = Frame

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Padding = UDim.new(0, 10)
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Parent = ScrollingFrame

    UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 10)
    end)

    local UIStroke = Instance.new("UIStroke")
    UIStroke.Color = Color3.fromRGB(64, 64, 64)
    UIStroke.Thickness = 2.45
    UIStroke.Parent = Frame

    Close.MouseButton1Click:Connect(function()
        if Frame.Size == UDim2.new(0, 250, 0, 300) then
            Frame:TweenSize(UDim2.new(0, 250, 0, 50), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.5)
        else
            Frame:TweenSize(UDim2.new(0, 250, 0, 300), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.5)
        end
    end)

    return ScrollingFrame
end

function Novauilib:CreateBox(PlaceHolder, Parent, Callback)
local Box  = Instance.new("TextBox")
Box.Size = UDim2.new(1, -10, 0, 30)
Box.BackgroundColor3 = Color3.fromRGB(35,35,35)
Box.BorderColor3 = Color3.new(0, 0, 0)
Box.BorderSizePixel = 1
Box.PlaceholderText = PlaceHolder
Box.Text = ""
Box.TextColor3 = Color3.new(1, 1, 1)
Box.BackgroundTransparency = 0
Box.Font = Enum.Font.SourceSans
Box.TextSize = 15
Box.Parent = Parent or Frame


local b = Instance.new("UICorner")
b.CornerRadius = UDim.new(0, 4)
b.Parent = Box

if Callback then
Box:GetPropertyChangedSignal("Text"):Connect(Callback)
end

return Box
end

function Novauilib:Createbtn(Text, Font, Parent, CallBack)
local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(1, -10, 0, 30)
TextButton.BackgroundColor3 = Color3.fromRGB(45,45,45)
TextButton.BorderSizePixel = 0
TextButton.Text = Text or "Smth"
TextButton.BackgroundTransparency = 0 
TextButton.TextColor3 = Color3.new(255, 255, 255)
TextButton.TextSize = 11.5
TextButton.Font = Font or Enum.Font.FredokaOne
TextButton.Parent = Parent

if CallBack then
TextButton.MouseButton1Click:Connect(CallBack)
end

local U = Instance.new("UICorner")
U.CornerRadius = UDim.new(0, 4)
U.Parent = TextButton

return TextButton
end

function Novauilib:SendNotify(Text, Image)
local Frame_2 = Instance.new("Frame")
Frame_2.Size = UDim2.new(0, 200, 0, 45)
Frame_2.Position = UDim2.new(2, 0, 0.7, 0)
Frame_2.BackgroundColor3 = Color3.fromRGB(45,45,45)
Frame_2.BorderSizePixel = 0
Frame_2.BackgroundTransparency = 0 
Frame_2.Parent = gui

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Size = UDim2.new(0, 35, 0, 35)
ImageLabel.Position = UDim2.new(0.05, 0, 0.14, 0)
ImageLabel.BackgroundColor3 = Color3.new(0, 0, 0)
ImageLabel.Image = Image
ImageLabel.BorderSizePixel = 0
ImageLabel.ImageColor3 = Color3.new(1, 1, 1)
ImageLabel.ImageTransparency = 0
ImageLabel.ScaleType = Enum.ScaleType.Stretch
ImageLabel.Parent = Frame_2
ImageLabel.BackgroundTransparency = 1

local Ui = Instance.new("UIStroke")
Ui.Color = Color3.fromRGB(100,100,100)
Ui.Thickness = 1.45
Ui.Parent = Frame_2


local NotifText = Instance.new("TextLabel")
NotifText.Size = UDim2.new(0, 45, 0, 45)
NotifText.Position = UDim2.new(0.4, 0, 0, 0)
NotifText.TextSize = 14.5
NotifText.BackgroundColor3 = Color3.fromRGB(220,220,220)
NotifText.BorderColor3 = Color3.new(0, 0, 0)
NotifText.BorderSizePixel = 0
NotifText.Text = Text
NotifText.TextTransparency = 0.275
NotifText.BackgroundTransparency = 1
NotifText.TextColor3 = Color3.new(255, 255, 255)
NotifText.Font = Enum.Font.FredokaOne
NotifText.Parent = Frame_2

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 5.75)
UICorner.Parent = Frame_2

Frame_2:TweenPosition(UDim2.new(0.675, 0, 0.7, 0), "InOut", "Quad", 2, true, function()
task.wait(2)
Frame_2:TweenPosition(UDim2.new(2, 0, 0.7, 0), "InOut", "Quad", 2, true, function()
Frame_2:Destroy()
   end)
end)
return Frame
end

function Novauilib:CreateToggle(Text, Parent, CallBack)
    local ToggleFrame = Instance.new("Frame")
    ToggleFrame.Size = UDim2.new(1, -10, 0, 30)
    ToggleFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    ToggleFrame.BorderSizePixel = 0
    ToggleFrame.Parent = Parent

    local P= Instance.new("UICorner")
    P.CornerRadius = UDim.new(0, 4)
    P.Parent = ToggleFrame

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(0.8, 0, 1, 0)
    Label.Position = UDim2.new(0, 5, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = Text or "Toggle"
    Label.TextColor3 = Color3.new(1, 1, 1)
    Label.Font = Enum.Font.SourceSans
    Label.TextSize = 15
    Label.Parent = ToggleFrame

    local ToggleButton = Instance.new("TextButton")
    ToggleButton.Size = UDim2.new(0, 20, 0, 20)
    ToggleButton.Position = UDim2.new(0.9, 0, 0.5, -10)
    ToggleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    ToggleButton.Text = ""
    ToggleButton.Parent = ToggleFrame

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(1, 0)
    UICorner.Parent = ToggleButton

    local toggled = false
    ToggleButton.MouseButton1Click:Connect(function()
        toggled = not toggled
        ToggleButton.BackgroundColor3 = toggled and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(100, 100, 100)
        if CallBack then
            CallBack(toggled)
        end
    end)

    return ToggleFrame
end
