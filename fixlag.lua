if not game['Loaded'] or not game:GetService('Players')['LocalPlayer'] then
      game['Loaded']:Wait();
      game:WaitForChild(game:GetService('Players'));
      game:GetService('Players'):WaitForChild(game:GetService('Players').LocalPlayer.Name)
  end
  
  local LP = game:GetService('Players').LocalPlayer
  --// Physics Settings
  settings().Rendering.QualityLevel = 'Level01'
  -- Comment line 7 if you want to be able to hear your game, keep it the same if you're using it for bots.
  
  for _,v in pairs(workspace:GetDescendants()) do
if v.ClassName == "WedgePart"
or v.ClassName == "Terrain"
or v.ClassName == "MeshPart" then
v.BrickColor = BrickColor.new(155, 155, 155)
v.Material = "Plastic"
end
end

for _,v in pairs(workspace:GetDescendants()) do
if v.ClassName == "Decal"
or v.ClassName == "Texture" then
end
end
  
  --// Physical/UI Derender
  local decalsyeeted = true
   local g = game
   local w = g.Workspace
   local l = g.Lighting
   local t = w.Terrain
   t.WaterWaveSize = 0
   t.WaterWaveSpeed = 0
   t.WaterReflectance = 0
   t.WaterTransparency = 0
   l.GlobalShadows = true
   l.FogEnd = 9e9
   l.Brightness = 0
   settings().Rendering.QualityLevel = "Level01"
   for i, v in pairs(g:GetDescendants()) do
      if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
         v.Material = "Plastic"
         v.Reflectance = 0
      elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
         v.Transparency = 1
      elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
         v.Lifetime = NumberRange.new(0)
      elseif v:IsA("Explosion") then
         v.BlastPressure = 1
         v.BlastRadius = 1
      elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
         v.Enabled = false
      elseif v:IsA("MeshPart") then
         v.Material = "Plastic"
         v.Reflectance = 0
         v.TextureID = 10385902758728957
      end
   end
   for i, e in pairs(l:GetChildren()) do
      if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
         e.Enabled = false
      end
   end
   game.Lighting.ChildAdded:Connect(function(v)
      if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
         v.Enabled = false
      end
   end)
if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
 --require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.Particle.SlashHit).playAt = function() return nil end

end