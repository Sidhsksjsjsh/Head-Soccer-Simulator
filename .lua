local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sidhsksjsjsh/VAPE-UI-MODDED/main/.lua"))()
local wndw = lib:Window("VIP Turtle Hub V4")
local T1 = wndw:Tab("Main")
local T2 = wndw:Tab("Comets")
local T3 = wndw:Tab("Boss / Enemies")

local self = game:GetService("Players").LocalPlayer

local tog = {
  click = false,
  comet = false,
  comet2 = false,
  spin = false,
  boss = {
    name = "",
    toggle = false
  },
  remote = {
    list = "All remote will be showed here.",
    target = "Workspace",
    class = "BindableEvent"
  },
  reb = false,
  gifts = false,
  index = false,
  best = false
}

--[[local args = {
    [1] = {
        ["Pets"] = {
            [1] = {
                ["Object"] = {
                    ["StrengthMultiplier"] = 9e9,
                    ["Zone"] = {
                        ["BossOpponent"] = {
                            ["StrengthNeeded"] = "189200000000000000000",
                            ["HeadHeight"] = 0,
                            ["DisplayName"] = "Proud Striker",
                            ["HeadColor"] = Color3.new(0.8470588326454163,0.8980392217636108,0.29411765933036804),
                            ["Name"] = "Proud",
                            ["FeetHidden"] = false,
                            ["Trophies_Score"] = "3600000000000000",
                            ["HeadHidden"] = false,
                            ["Difficulty"] = {
                                ["LobbyTextColor"] = Color3.new(0.45098039507865906,0.13333334028720856,0.13333334028720856),
                                ["AutoFightBackgroundColor"] = Color3.new(0.45098039507865906,0.13333334028720856,0.13333334028720856),
                                ["IsSpecialOpponent"] = true,
                                ["Name"] = "BOSS",
                                ["PlayingTextColor"] = Color3.new(0.45098039507865906, 0.1764705926179886, 0.1764705926179886),
                                ["LobbyStrokeColor"] = Color3.new(0, 0, 0)
                            },
                            ["FeetColor"] = Color3.new(0.9176470637321472, 0.7215686440467834, 0.572549045085907)
                        },
                        ["Name"] = "Zone5",
                        ["LayoutOrder"] = 5,
                        ["Opponents"] = {
                            [1] = {
                                ["StrengthNeeded"] = "132000000000000020",
                                ["HeadHeight"] = 0,
                                ["DisplayName"] = "Astronaut",
                                ["HeadColor"] = Color3.new(0.772549033164978, 0.6549019813537598, 0.3803921639919281),
                                ["Name"] = "Astronaut",
                                ["FeetHidden"] = false,
                                ["Trophies_Score"] = "7200000000000",
                                ["HeadHidden"] = false,
                                ["Difficulty"] = {
                                    ["LobbyTextColor"] = Color3.new(0.20000000298023224, 1, 0.22745098173618317),
                                    ["AutoFightBackgroundColor"] = Color3.new(0.20000000298023224, 1, 0.22745098173618317),
                                    ["IsSpecialOpponent"] = false,
                                    ["Name"] = "Easy",
                                    ["PlayingTextColor"] = Color3.new(0.529411792755127, 1, 0.30980393290519714),
                                    ["LobbyStrokeColor"] = Color3.new(0.23137255012989044, 0.41960784792900085, 0.08235294371843338)
                                },
                                ["FeetColor"] = Color3.new(0.6000000238418579, 0.5215686559677124, 0.3176470696926117)
                            },
                            [2] = {
                                ["StrengthNeeded"] = "752400000000000000",
                                ["HeadHeight"] = -0.2,
                                ["DisplayName"] = "Pilot",
                                ["HeadColor"] = Color3.new(0.1764705926179886, 0.16862745583057404, 0.1725490242242813),
                                ["Name"] = "Pilot",
                                ["FeetHidden"] = true,
                                ["Trophies_Score"] = "36000000000000",
                                ["HeadHidden"] = true,
                                ["Difficulty"] = {
                                    ["LobbyTextColor"] = Color3.new(0.501960813999176, 0.6941176652908325, 1),
                                    ["AutoFightBackgroundColor"] = Color3.new(0.501960813999176, 0.6941176652908325, 1),
                                    ["IsSpecialOpponent"] = false,
                                    ["Name"] = "Medium",
                                    ["PlayingTextColor"] = Color3.new(0.30980393290519714, 0.6784313917160034, 1),
                                    ["LobbyStrokeColor"] = Color3.new(0.14901961386203766, 0.23137255012989044, 0.45490196347236633)
                                },
                                ["FeetColor"] = Color3.new(0.929411768913269, 0.9176470637321472, 0.9176470637321472)
                            },
                            [3] = {
                                ["StrengthNeeded"] = "1606000000000000300",
                                ["HeadHeight"] = -0.2,
                                ["DisplayName"] = "Alien",
                                ["HeadColor"] = Color3.new(0.4313725531101227, 0.6000000238418579, 0.7921568751335144),
                                ["Name"] = "Alien",
                                ["FeetHidden"] = true,
                                ["Trophies_Score"] = "144000000000000",
                                ["HeadHidden"] = false,
                                ["Difficulty"] = {
                                    ["LobbyTextColor"] = Color3.new(1, 0.95686274766922, 0.32549020648002625),
                                    ["AutoFightBackgroundColor"] = Color3.new(1, 0.95686274766922, 0.32549020648002625),
                                    ["IsSpecialOpponent"] = false,
                                    ["Name"] = "Hard",
                                    ["PlayingTextColor"] = Color3.new(1, 0.9764705896377563, 0.3137255012989044),
                                    ["LobbyStrokeColor"] = Color3.new(0.41960784792900085, 0.3803921639919281, 0.06666667014360428)
                                },
                                ["FeetColor"] = Color3.new(0.9176470637321472, 0.7215686440467834, 0.572549045085907)
                            },
                            [4] = {
                                ["StrengthNeeded"] = "26400000000000004000",
                                ["HeadHeight"] = 0,
                                ["DisplayName"] = "\194\167\226\128\176\194\182\195\183\226\128\161\194\177\195\151",
                                ["HeadColor"] = Color3.new(0.10588235408067703, 0.16470588743686676, 0.2078431397676468),
                                ["Name"] = "Cursed",
                                ["FeetHidden"] = false,
                                ["Trophies_Score"] = "720000000000000",
                                ["HeadHidden"] = false,
                                ["Difficulty"] = {
                                    ["LobbyTextColor"] = Color3.new(1, 0.13333334028720856, 0.13333334028720856),
                                    ["AutoFightBackgroundColor"] = Color3.new(1, 0.13333334028720856, 0.13333334028720856),
                                    ["IsSpecialOpponent"] = false,
                                    ["Name"] = "Expert",
                                    ["PlayingTextColor"] = Color3.new(1, 0.26274511218070984, 0.26274511218070984),
                                    ["LobbyStrokeColor"] = Color3.new(0.41960784792900085, 0.0235294122248888, 0.0235294122248888)
                                },
                                ["FeetColor"] = Color3.new(0.06666667014360428, 0.06666667014360428, 0.06666667014360428)
                            },
                            [5] = {} ,
                            [6] = {
                                ["LobbyAnimation"] = "Bonus_Levitate",
                                ["StrengthNeeded"] = "3.168e+21",
                                ["Scale"] = 7,
                                ["HeadHeight"] = 0,
                                ["DisplayName"] = "Thano",
                                ["Difficulty"] = {
                                    ["LobbyTextColor"] = Color3.new(0.364705890417099, 0.3960784375667572, 1),
                                    ["AutoFightBackgroundColor"] = Color3.new(0.364705890417099, 0.3960784375667572, 1),
                                    ["IsSpecialOpponent"] = true,
                                    ["Name"] = "WORLD-BREAKER",
                                    ["PlayingTextColor"] = Color3.new(0.3019607961177826, 0.33725491166114807, 0.8313725590705872),
                                    ["LobbyStrokeColor"] = Color3.new(0.14901961386203766, 0.13333334028720856, 0.40392157435417175)
                                },
                                ["Name"] = "Thanos",
                                ["Trophies_Score"] = "5000000000000000",
                                ["FeetHidden"] = true,
                                ["HeadHidden"] = true,
                                ["HeadColor"] = Color3.new(0.8274509906768799, 0.7607843279838562, 0.239215686917305),
                                ["AdjustNametag"] = Vector3.new(0, -2, 0),
                                ["FeetColor"] = Color3.new(0.5254902243614197, 0.48235294222831726, 0.2705882489681244)
                            }
                        },
                        ["Arena"] = "Arena5",
                        ["TrophiesNeeded"] = "360000000000000000",
                        ["DisplayName"] = "Final Frontier"
                    },
                    ["Rarity"] = {
                        ["LayoutOrder"] = 1,
                        ["DisplayName"] = "Epic",
                        ["Name"] = "Epic",
                        ["Color"] = Color3.new(1, 0.29019609093666077, 1),
                        ["SuperLuckAdd"] = 9e9,
                        ["MegaLuckAdd"] = 9e9,
                        ["HasForms"] = true,
                        ["LuckAdd"] = 9e9
                    },
                    ["CameraZoomoutDistance"] = 0.8,
                    ["ExtraHeight"] = 0,
                    ["Form"] = "Default",
                    ["Name"] = "Alien Dog",
                    ["DisplayName"] = "Alien Dog"
                },
                ["Scale"] = 50
            },
            [2] = {
                ["Object"] = {
                    ["StrengthMultiplier"] = 9e9,
                    ["Zone"] = {} --DUPLICATE,
                    ["Rarity"] = {} --DUPLICATE,
                    ["CameraZoomoutDistance"] = 0.95,
                    ["ExtraHeight"] = 0,
                    ["Form"] = "Default",
                    ["Name"] = "Alien Deer",
                    ["DisplayName"] = "Alien Deer"
                },
                ["Scale"] = 35
            },
            [3] = {
                ["Object"] = {
                    ["StrengthMultiplier"] = 9e9,
                    ["Zone"] = {} --DUPLICATE,
                    ["Rarity"] = {
                        ["LayoutOrder"] = 1,
                        ["DisplayName"] = "Legendary",
                        ["Name"] = "Legendary",
                        ["Color"] = Color3.new(1, 0.8549019694328308, 0.5215686559677124),
                        ["SuperLuckAdd"] = 9e9,
                        ["MegaLuckAdd"] = 9e9,
                        ["HasForms"] = true,
                        ["LuckAdd"] = 9e9
                    },
                    ["CameraZoomoutDistance"] = 1,
                    ["ExtraHeight"] = 0,
                    ["Form"] = "Default",
                    ["Name"] = "Alien",
                    ["DisplayName"] = "Alien"
                },
                ["Scale"] = 12
            },
            [4] = {
                ["Object"] = {
                    ["StrengthMultiplier"] = 9e9,
                    ["Zone"] = {} --DUPLICATE,
                    ["Rarity"] = {} --DUPLICATE,
                    ["CameraZoomoutDistance"] = 0.75,
                    ["ExtraHeight"] = 0,
                    ["Form"] = "Default",
                    ["Name"] = "Gumball Machine",
                    ["DisplayName"] = "Gumball Machine"
                },
                ["Scale"] = 2.75
            },
            [5] = {
                ["Object"] = {
                    ["StrengthMultiplier"] = 9e9,
                    ["Zone"] = {} --DUPLICATE,
                    ["Rarity"] = {} --DUPLICATE,
                    ["CameraZoomoutDistance"] = 0.2,
                    ["ExtraHeight"] = 0,
                    ["Form"] = "Default",
                    ["Name"] = "Energy",
                    ["DisplayName"] = "Energy"
                },
                ["Scale"] = 0.25
            }
        },
        ["EggType"] = "Default",
        ["Name"] = "Default15",
        ["Zone"] = {} --DUPLICATE,
        ["Price"] = 3000000000000000,
        ["DisplayName"] = ""
    },
    [2] = false
}

args[1].Pets[3].Object.Zone = args[1].Pets[1].Object.Zone
args[1].Pets[4].Object.Zone = args[1].Pets[1].Object.Zone
args[1].Pets[4].Object.Rarity = args[1].Pets[3].Object.Rarity
args[1].Pets[4].Object.Zone = args[1].Pets[1].Object.Zone
args[1].Pets[4].Object.Rarity = args[1].Pets[3].Object.Rarity
args[1].Pets[5].Object.Zone = args[1].Pets[1].Object.Zone
args[1].Pets[5].Object.Rarity = args[1].Pets[3].Object.Rarity
args[1].Zone = args[1].Pets[1].Object.Zone
args[1].Pets[5].Object.Zone = args[1].Pets[1].Object.Zone
args[1].Pets[5].Object.Rarity = args[1].Pets[3].Object.Rarity
args[1].Zone = args[1].Pets[1].Object.Zone
game:GetService("ReplicatedStorage")["CurrentGame"]["Pets"]["Eggs"]["Eggs_m"]["BuyEgg"]:InvokeServer(unpack(args))
]]

T1:Toggle("Auto click [ V-RemoteTrigger ]",false,function(value)
    tog.click = value
    while wait() do
      if tog.click == false then break end
      game:GetService("ReplicatedStorage")["CurrentGame"]["Managers"]["Training"]["Training_UI"]["Click"]:Fire()
    end
end)

T2:Toggle("Auto claim comets",false,function(value)
    tog.comet = value
    while wait() do
      if tog.comet == false then break end
      game:GetService("ReplicatedStorage")["CurrentGame"]["Managers"]["Comets"]["WorkspaceComet_m"]["ClaimWorkspaceComet"]:InvokeServer()
    end
end)

T2:Toggle("Auto open comets",false,function(value)
    tog.comet2 = value
    while wait() do
      if tog.comet2 == false then break end
      game:GetService("ReplicatedStorage")["CurrentGame"]["Managers"]["Comets"]["Comets_m"]["OpenComet"]:InvokeServer()
    end
end)

T1:Toggle("Auto spin",false,function(value)
    tog.spin = value
    while wait() do
      if tog.spin == false then break end
      game:GetService("ReplicatedStorage")["CurrentGame"]["UI"]["Assets"]["Spinner"]["Spinner_m"]["SpinWheel"]:InvokeServer()
    end
end)

--[[
T1:Toggle("Auto rebirth",false,function(value)
    tog.reb = value
    while wait() do
      if tog.reb == false then break end
      
    end
end)
]]
T3:Textbox("Insert enemies name",false,function(value)
    tog.boss.name = value
end)

T3:Toggle("Instant win",false,function(value)
    tog.boss.toggle = value
    while wait() do
      if tog.boss.toggle == false then break end
      game:GetService("ReplicatedStorage")["CurrentGame"]["Managers"]["Battles"]["Fight"]["Fight_m"]["GiveWins_RE"]:FireServer(tog.boss.name,"Score")
      game:GetService("ReplicatedStorage")["CurrentGame"]["Managers"]["Battles"]["Fight"]["Fight_m"]["GiveWins_RE"]:FireServer(tog.boss.name,"BonusShot")
    end
end)

if self.Name == "Rivanda_Cheater" then
local T4 = wndw:Tab("Remote Detections")
local lab = T4:Label(tog.remote.list)
  
T4:Dropdown("Target detection",{"Workspace","ReplicatedStorage"},function(value)
      tog.remote.target = value
end)

T4:Dropdown("Remote type",{"BindableEvent","BindableFunction","RemoteEvent","RemoteFunction"},function(value)
      tog.remote.class = value
end)

T4:Button("Start detect",function()
      tog.remote.list = "Looking for the remote you're aiming for"
      wait(1)
      tog.remote.list = ""
      for i,v in pairs(game:GetService(tog.remote.target):GetDescendants()) do
        if v:IsA(tog.remote.class) then
          if tog.remote.class == "BindableEvent" then
            tog.remote.list = tog.remote.list .. "\n" .. lib:ColorFonts(v.Name,"Red") .. ":" .. lib:ColorFonts("Fire()","Yellow")
          elseif tog.remote.class == "BindableFunction" then
            tog.remote.list = tog.remote.list .. "\n" .. lib:ColorFonts(v.Name,"Red") .. ":" .. lib:ColorFonts("Invoke()","Blue")
          elseif tog.remote.class == "RemoteEvent" then
            tog.remote.list = tog.remote.list .. "\n" .. lib:ColorFonts(v.Name,"Red") .. ":" .. lib:ColorFonts("FireServer()","Yellow")
          elseif tog.remote.class == "RemoteFunction" then
            tog.remote.list = tog.remote.list .. "\n" .. lib:ColorFonts(v.Name,"Red") .. ":" .. lib:ColorFonts("InvokeServer()","Blue")
          end
        end
      end
      lab:EditLabel(tog.remote.list)
end)
  
end
