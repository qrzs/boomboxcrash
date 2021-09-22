function gen(len)
  local script = "Fuck off sk1ds!                 !!!!"
  for i=1,12 do script = script..script end
  return script
end
local sls = gen(20000)

local bbs = {}
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
 if v.Name == 'BoomBox' then table.insert(bbs,v) end
end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
 if v.Name == 'BoomBox' then
     v.Parent = game.Players.LocalPlayer.Character
     table.insert(bbs,v)
   end
end
game:GetService('RunService').RenderStepped:Connect(function()
  for i=1,#bbs do
      bbs[i].Remote:FireServer('PlaySong',sls)
  end
end)
