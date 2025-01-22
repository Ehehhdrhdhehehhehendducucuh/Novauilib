local Novauilib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ehehhdrhdhehehhehendducucuh/Novauilib/refs/heads/main/obf_PcHGM44P4aKH5FkE5NfWzx6TeV0H2Nbi3bsY8u83l29RH8Cw4g4E0oHn45BN6tRs.lua.txt"))()


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
