local Novauilib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ehehhdrhdhehehhehendducucuh/Novauilib/refs/heads/main/OpenSourcelib.lua.txt"))()


-- examples
local Frame_3 = Novauilib:CreateTab()

Novauilib:Createbtn("Example", Enum.Font.SourceSans, Frame_3, function()
Novauilib:SendNotify("Template of texts", "rbxassetid://0")
end)

Novauilib:CreateToggle("Enable Feature", Frame_3, function(state)
    print("Toggling State:", state)
end)

local Textbox = Novauilib:CreateBox("What?", Frame_3, function(n)
print(n)
end)
