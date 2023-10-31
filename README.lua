local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Jujutsu Chronicles",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Mod#8016",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Home", 4483362458) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "You executed the script!",
   Content = "Have fun",
   Duration = 5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "SpinOrbTp",
   Callback = function()
   local targetPosition = workspace.Game_FX.CurseSpinOrb.CurseSpinOrb.Position -- Target position to teleport to
local humanoidRootPart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")

if humanoidRootPart and humanoidRootPart:IsA("BasePart") then
    humanoidRootPart.CFrame = CFrame.new(targetPosition)
            end
   end,
})

local Button = Tab:CreateButton({
   Name = "InfSpinOrb",
   Callback = function()
   for i = 1, 1000 do -- Get Spins Any mount by change number (To use. use when u at the hold e thing then execute if too much u may crashes)
    fireproximityprompt(workspace.Game_FX.CurseSpinOrb.CurseSpinOrb.Prompt)
            end
   end,
})
