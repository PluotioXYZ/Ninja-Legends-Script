User = game.Players.LocalPlayer.Name
_G.AutoSwing = false
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("NinjaLegendsScript", "DarkTheme")
local Tab = Window:NewTab("AutoSwing")
local Section = Tab:NewSection("Settings")
_G.AutoSwingDelay = ""
_G.AutoSellDelay = ""
Section:NewSlider("AutoSwing Delay", "Changes the wait time in between swings", 5, 0, function(Delay) -- 500 (MaxValue) | 0 (MinValue)
    _G.AutoSwingDelay = (Delay)
end)
Section:NewToggle("ToggleAutoSwing", "Toggles AutoSwing", function(state)
    if state then
        _G.AutoSwing = true
    else
        _G.AutoSwing = false
    end
end)

Section:NewButton("LoadAutoSwing", "Loads a simple autoswing script", function()
    while _G.AutoSwing do
        local args = {
    [1] = "swingKatana";
}

game:GetService("Players"):WaitForChild(User, 9e9):WaitForChild("ninjaEvent", 9e9):FireServer(unpack(args))
        local SwingDelay = _G.AutoSwingDelay
        task.wait(SwingDelay)
    end
end)

local AutoSellTab = Window:NewTab("AutoSell")
local Section = AutoSellTab:NewSection("Settings")
Section:NewSlider("AutoSell Delay", "Changes the wait time in between sells", 5, 0, function(Delay) -- 500 (MaxValue) | 0 (MinValue)
    _G.AutoSellDelay = (Delay)
end)
Section:NewToggle("ToggleAutoSell", "Toggles AutoSell", function(state)
    if state then
        _G.AutoSell = true
    else
        _G.AutoSell = false
    end
end)
Section:NewButton("LoadAutoSell", "Loads a simple autosell script", function()
    while _G.AutoSell do
        local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
        local location = 71.1857986, 2.99802518, -46.5102806, -0.766061425, -1.0103828e-08, -0.64276737, -7.54091367e-09, 1, -6.73186795e-09, 0.64276737, -3.09970993e-10, -0.766061425
        rootPart.CFrame = location
        task.wait(_G.AutoSellDelay)
    end
end)
