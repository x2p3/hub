_G.settings = {
    ["MagicType"] = "Water",
    ["TpShardsAndDia"] = true,
    ["KillAll"] = true
}
 
local Remotes = game:GetService("ReplicatedStorage").Remotes
local typez = _G.settings.MagicType
local tp2 = _G.settings.TpShardsAndDia
local tp3 = _G.settings.KillAll
while wait() do
local hum = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Character.Available.ScrollingFrame.Frame:GetChildren()) do
Remotes.DoClientMagic:FireServer(typez, v.Name)
Remotes.DoMagic:InvokeServer(typez, v.Name)
if tp2 then
for i,x in pairs(game:GetService("Workspace")[".Ignore"][".ServerEffects"]:GetChildren()) do 
if x.Name == "Shard" or x.Name == "Diamond" and not x:IsA("Folder") then
_G.test = false
print("tping 2 shard or dia")
hum.CFrame = x.CFrame
wait(1)
_G.test = true
else 
_G.test = true
end
end
end  
if tp3 and _G.test then 
for i,z in pairs(game.workspace:GetChildren()) do 
if z:FindFirstChild("HumanoidRootPart") and not z:FindFirstChild("ForceField") then 
hum.CFrame = z.HumanoidRootPart.CFrame
end
end
end
end
end