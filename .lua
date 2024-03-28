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
  }
}

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
      for i,v in pairs(game:GetService(tog.remote.target):GetDescendants()) do
        if v:IsA(tog.remote.class) then
          if tog.remote.class == "BindableEvent" then
            tog.remote.list = tog.remote.list .. "\n" .. lib:ColorFonts(v:GetFullName(),"Red") .. " - " .. lib:ColorFonts(":Fire()","Yellow")
          elseif tog.remote.class == "BindableFunction" then
            tog.remote.list = tog.remote.list .. "\n" .. lib:ColorFonts(v:GetFullName(),"Red") .. " - " .. lib:ColorFonts(":Invoke()","Blue")
          elseif tog.remote.class == "RemoteEvent" then
            tog.remote.list = tog.remote.list .. "\n" .. lib:ColorFonts(v:GetFullName(),"Red") .. " - " .. lib:ColorFonts(":FireServer()","Yellow")
          elseif tog.remote.class == "RemoteFunction" then
            tog.remote.list = tog.remote.list .. "\n" .. lib:ColorFonts(v:GetFullName(),"Red") .. " - " .. lib:ColorFonts(":InvokeServer()","Blue")
          end
        end
      end
      lab:EditLabel(tog.remote.list)
end)
  
end
