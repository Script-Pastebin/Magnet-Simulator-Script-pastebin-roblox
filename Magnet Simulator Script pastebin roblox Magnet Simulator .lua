-- find more powerfull verified and New Scripts here : https://script-pastebin.com

local LocalPlayer = game:GetService("Players").LocalPlayer 
local library = loadstring(game:HttpGet("https://pastebin.com/raw/JsdM2jiP",true))() 
library.options.underlinecolor = "rainbow" 
local FH = library:CreateWindow('Cheats')
FH:Section('--= Auto-Farms =--')
FH:Toggle("Auto-Farm", {flag = "AF"})
FH:Section('--= Auto-Buy =--')
FH:Toggle("Auto-Backpack", {flag = "ABB"})
FH:Toggle("Auto-Magnet", {flag = "ABN"})
FH:Toggle("Auto-Rebirth", {flag = "ABR"})
FH:Section('--= Cheats =--')
FH:Button("Claim Cubes", function() 
   for i,v in pairs(game:GetService("Workspace").Cubes:GetChildren()) do
       if not v:IsA("Model") then
           LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
       end
       wait(.1)
   end
end)
local Pets = library:CreateWindow("Pet Stuff")
Pets:Section("--= Chests =--")
Pets:Dropdown("Eggs", {location = _G, flag = "Egg1", list = {
   "Wooden Chest",
   "Sparkle Chest",
   "Fortunate Chest",
   "Valkyrie Chest",
   "Rich Chest",
   "Pumpkin Chest",
   "Domino Chest",
   "Chrono Chest",
   "Antler Chest",
   "Viridian Chest",
   "Headphone Chest",
   "Bighead Chest",
   "Spooky Chest",
   "Creepy Chest",
   "Scary Chest",
   "Haunted Chest",
   "Fire Chest"
   }
   }, function(new) print("Selected Chest:", new) end)
Pets:Toggle("Open Chests", {flag = "Egg1"}) 
Pets:Section("--= Eggs =--")
Pets:Dropdown("Eggs", {location = _G, flag = "Egg2", list = {
   "Common Egg",
   "Uncommon Egg",
   "Rare Egg",
   "Epic Egg",
   "Legendary Egg",
   "Mythical Egg",
   "Meme Egg",
   "Psychadelic Rebirth Egg",
   "Rebirth Egg 2",
   "Super Egg",
   "Dominus Egg",
   "Demonic Egg",
   "Overseer Egg",
   "Magma Egg",
   "Korblox Egg",
   "Ninja Egg",
   "Aquatic Egg",
   "Dragon Egg",
   "Robot Egg",
   "Tycoonist Egg",
   "Ghost Egg",
   "Skeleton Egg",
   "Mystical Egg",
   "Knight Egg",
   "Eye Egg",
   "Sinister Egg",
   "Infernal Egg",
   "Snowman Egg",
   "Santa's Workshop Egg"
   }
}, function(new) 
   print("Selected Chest:", new) 
end)
Pets:Toggle("Open Chests", {flag = "Egg2"}) 

local Misc = library:CreateWindow("Misc")
Misc:Button("Destroy GUI", function() 
   game.CoreGui.ScreenGui:Destroy() 
end)
Misc:Button("Rejoin", function() 
   game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer) 
end)
Misc:Bind("Hide Gui", { 
   flag = "killbind";
   kbonly = true; 
   default = Enum.KeyCode.RightAlt; 
}, function() 
   if game.CoreGui.ScreenGui.Enabled == false then
       game.CoreGui.ScreenGui.Enabled = true
   else
       game.CoreGui.ScreenGui.Enabled = false
   end
end)
local Credits = library:CreateWindow('Credits')
Credits:Section('therealDEXLTH - Scripting')
Credits:Section('Wally - UI Library')

spawn(function() -- Auto-farm
   while wait() do
       if FH.flags.AF == true then
           for i,v in pairs(LocalPlayer.Backpack:GetChildren()) do
               for u,z in pairs(game:GetService("ReplicatedStorage").Coins:GetChildren()) do
                   local Root = LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                   game:GetService("ReplicatedStorage").Events.MagnetEvents.requestGrab:FireServer(z.Name, v)
                   Root.CFrame = game:GetService("Workspace").Rings.Sellx2.CFrame + Vector3.new(0,2.9,0)
               end
           end
       end
   end
end)
spawn(function() -- Open Chests
   while wait() do
       if Pets.flags.Egg1 then
           game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(_G.Egg1)
       end
   end
end)
spawn(function() -- Open Eggs
   while wait() do
       if Pets.flags.Egg2 then
           game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(_G.Egg2)
       end
   end
end)
spawn(function() -- Auto-Buy Backpacks
   while wait() do
       if FH.flags.ABB == true then
           for i,v in pairs(game:GetService("Players").LocalPlayer.BackpackInventory:GetChildren()) do
               if v.Value == false then
                   game:GetService("ReplicatedStorage").Events.ShopEvents.requestBuy:FireServer(v.Name, "Backpack")
               end
           end
       end
   end
end)
spawn(function() -- Auto-Buy Magnets
   while wait() do
       if FH.flags.ABN  == true then
           for i,v in pairs(LocalPlayer.Inventory:GetChildren()) do
               if v.Value == false then
                   game:GetService("ReplicatedStorage").Events.ShopEvents.requestBuy:FireServer(v.Name, "Magnet")
               end
           end
       end
   end
end)
spawn(function() -- Auto-Buy Magnets
   while wait() do
       if FH.flags.ABR  == true then
           game:GetService("ReplicatedStorage").Events.StatEvents.statRequest:InvokeServer("Money")
           game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(500)
           game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(100) 
           game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(50) 
           game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(25)
           game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(5) 
           game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(1)
       end
   end
end)

-- find more powerfull verified and New Scripts here : https://scriptpastebin.io

--[[ Script Description:

							Cool Functional script for Magnet Simulator easy farming
						
]]