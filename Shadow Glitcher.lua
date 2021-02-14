--#-------------------------------------------------------#--
 --                          OPTIONS                            --
--#-------------------------------------------------------#--

local CleanRun = true
local CleanIdle = true
local FancyWings = false
local HorizontalAudioMove = true
local VerticalAudioMove = true
local WarnChat = false
local BossChat = false
local ShowTheme = false
local MagicSwordsName = "MeshPartAccessory"
local MagicLeftExtraSwordName = "BladeMasterAccessory"
local MagicRightExtraSwordName = "ShadowBladeMasterAccessory"
local MagicLittleRing = "Evil Aura"
local MagicBigRing = "MeshPartAccessory"
local MagicAccessory = ""

--#-------------------------------------------------------#--
 --                      SCRIPT VALUES                        --
--#-------------------------------------------------------#--

local glitchermode = "Shadow"
local ModeOfGlitch = 1
local KeyAnim = false

--#-------------------------------------------------------#--
 --                     FE SCRIPT START                       --
--#-------------------------------------------------------#--

local rchar = game.Players.LocalPlayer.Character

local MITZ_REANIMATE = true

local connection
local scriptDisabled = false

local shooting = true

if rchar:FindFirstChild(MagicAccessory) then

	local fireHat = rchar:FindFirstChild(MagicAccessory)
	fireHat.Handle:FindFirstChildOfClass("SpecialMesh"):Destroy()
	
end

game:GetService("RunService").RenderStepped:Connect(function()

    settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
    settings().Physics.AllowSleep = false
    setsimulationradius(math.huge)
    game:FindFirstChildOfClass("Players").LocalPlayer.MaximumSimulationRadius=math.pow(math.huge,math.huge)
    sethiddenproperty(game:FindFirstChildOfClass("Players").LocalPlayer,"SimulationRadius",math.huge*math.huge)

end)

connection = game:GetService("RunService").RenderStepped:Connect(function()

    function rotateRing2()

        if ring2Atho.Rotation ~= Vector3.new(-90, -90, 0) and ModeOfGlitch ~= 6666666666666666 then
        	ring2Atho.Rotation = ring2Atho.Rotation + Vector3.new(0, -1, 0)
        elseif ModeOfGlitch ~= 6666666666666666 then
            ring2Atho.Rotation = Vector3.new(-90, 35, 0)
        end

        if ModeOfGlitch == 6666666666666666 then
        	ring2Atho.Rotation = Vector3.new(-30, 0, 0)
        end

    end

    pcall(rotateRing2)

    function rotateRing1()

        if ring1Atho.Rotation ~= Vector3.new(0, -90, 0) and ModeOfGlitch ~= 6666666666666666 and ModeOfGlitch ~= 99999999999999999999999999 then
        	ring1Atho.Rotation = ring1Atho.Rotation + Vector3.new(0, 0, -1)
        elseif ModeOfGlitch ~= 6666666666666666 and ModeOfGlitch ~= 99999999999999999999999999 then
            ring1Atho.Rotation = Vector3.new(0, 35, 0)
        end

        if ModeOfGlitch == 6666666666666666 or ModeOfGlitch == 99999999999999999999999999 then
        	ring1Atho.Rotation = Vector3.new(90, 0, 0)
        end
    end

    pcall(rotateRing1)

    function rotateSwing()
        
        if swingAtho.Rotation ~= Vector3.new(0, -90, 0) then
        	swingAtho.Rotation = swingAtho.Rotation + Vector3.new(0, 0, -50)
        else
            swingAtho.Rotation = Vector3.new(0, 35, 0)
        end

    end

    pcall(rotateSwing)

    function rotateFire()

        if fireAtho.Rotation ~= Vector3.new(-90, 0, -90) then
        	fireAtho.Rotation = fireAtho.Rotation + Vector3.new(-30, 0, -30)
        else
            fireAtho.Rotation = Vector3.new(35, 0, 35)
        end
    end

    pcall(rotateFire)

end)

local shownStars = true
local shownExtras = true
local shownSStar = true
local shownRing = true

function hideStars() 

    if shownStars then
        
        lwing1Athp.Position = lwing1Athp.Position + Vector3.new(20, -20, -20)
        lwing2Athp.Position = lwing2Athp.Position + Vector3.new(20, -20, -20)
        
        shownStars = false

    end
        
end

function hideExtras() 

    if shownExtras then

        lwing3Athp.Position = lwing3Athp.Position + Vector3.new(30, -30, -30)
        rwing3Athp.Position = rwing3Athp.Position + Vector3.new(30, -30, -30)
        
        shownExtras = false

    end
        
end

function hideSStar() 

    if shownSStar then
        
        swingAthp.Position = swingAthp.Position + Vector3.new(20, -20, -20)
        
        shownSStar = false
    end
        
end

function hideRing() 

    if shownRing then

        ring2Athp.Position = ring2Athp.Position + Vector3.new(20, -20, -20)
        shownRing = false

    end
end

function showStars() 

    if not shownStars then

        lwing1Athp.Position = lwing1Athp.Position + Vector3.new(-20, 20, 20)
        lwing2Athp.Position = lwing2Athp.Position + Vector3.new(-20, 20, 20)
        
        shownStars = true
        
    end
        
end

function showExtras() 

    if not shownExtras then

        lwing3Athp.Position = lwing3Athp.Position + Vector3.new(-30, 30, 30)
        rwing3Athp.Position = rwing3Athp.Position + Vector3.new(-30, 30, 30)
        
        shownExtras = true
        
    end
        
end

function showSStar() 

    if not shownSStar then
        
        swingAthp.Position = swingAthp.Position + Vector3.new(-20, 20, 20)
        
        shownSStar = true
    end
        
end

function showRing() 

    if not shownRing then

        ring2Athp.Position = ring2Athp.Position + Vector3.new(-20, 20, 20)
        shownRing = true

    end
end

HumanDied = false

local CountSCIFIMOVIELOL = 1

function SCIFIMOVIELOL(Part0,Part1,Position,Angle)
	local AlignPos = Instance.new('AlignPosition', Part1); AlignPos.Name = "AliP_"..CountSCIFIMOVIELOL
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 5772000--67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1); AlignOri.Name = "AliO_"..CountSCIFIMOVIELOL
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 5772000
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name = "Ath_"..CountSCIFIMOVIELOL
	local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name = "Ath_"..CountSCIFIMOVIELOL
	AttachmentA.Orientation = Angle or Vector3.new(0,0,0)
	AttachmentA.Position = Position or Vector3.new(0,0,0)
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentA;
	AlignOri.Attachment0 = AttachmentB;
	CountSCIFIMOVIELOL = CountSCIFIMOVIELOL + 1
	return {AlignPos,AlignOri,AttachmentA,AttachmentB}
end

if _G.netted ~= true then
	_G.netted = true
	coroutine.wrap(function()
		settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
		settings().Physics.AllowSleep = false
		game:GetService("RunService").RenderStepped:Connect(function()
			game:FindFirstChildOfClass("Players").LocalPlayer.MaximumSimulationRadius=math.pow(math.huge,math.huge)
			sethiddenproperty(game:FindFirstChildOfClass("Players").LocalPlayer,"SimulationRadius",math.huge*math.huge)
		end)
	end)()
end

game:FindFirstChildOfClass("Players").LocalPlayer["Character"].Archivable = true

local hatnameclone = {}

for _,v in next, game:FindFirstChildOfClass("Players").LocalPlayer["Character"]:GetChildren() do
	if v:IsA("Accessory") then
		if hatnameclone[v.Name] then
			if hatnameclone[v.Name] == "s" then
				hatnameclone[v.Name] = {}
			end
			table.insert(hatnameclone[v.Name],v)
		else
			hatnameclone[v.Name] = "s"
		end
	end
end

for _,v in pairs(hatnameclone) do
	if type(v) == "table" then
		local num = 1
		for _,w in pairs(v) do
			w.Name = w.Name..num
			num = num + 1
		end
	end
end

hatnameclone = nil

local DeadChar = game:FindFirstChildOfClass("Players").LocalPlayer.Character

local fldr = Instance.new("Folder",game:FindFirstChildOfClass("Players").LocalPlayer["Character"])
fldr.Name = "DMYF"
local CloneChar = DeadChar:Clone()
local ANIMATIONHERE

if CloneChar:FindFirstChild("Animate") then
	ANIMATIONHERE = CloneChar:FindFirstChild("Animate"):Clone()
	CloneChar:FindFirstChild("Animate"):Destroy()
end

if CloneChar:FindFirstChildOfClass("Folder") then CloneChar:FindFirstChildOfClass("Folder"):Destroy() end

if CloneChar.Torso:FindFirstChild("Neck") then
	local Clonessss = CloneChar.Torso:FindFirstChild("Neck"):Clone()
	Clonessss.Part0 = nil
	Clonessss.Part1 = DeadChar.Head
	Clonessss.Parent = DeadChar.Torso
end

CloneChar.Parent = fldr
CloneChar.HumanoidRootPart.CFrame = DeadChar.HumanoidRootPart.CFrame
CloneChar.Humanoid.BreakJointsOnDeath = false
CloneChar.Name = "non"
CloneChar.Humanoid.DisplayDistanceType = "None"

for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		local topacc = false
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
		v.Handle.Massless = true
		v.Handle.CanCollide = false
		if v.Handle:FindFirstChildOfClass("Attachment") then
			local ath__ = v.Handle:FindFirstChildOfClass("Attachment")
			if ath__.Name == "HatAttachment" or ath__.Name == "HairAttachment" or ath__.Name == "FaceFrontAttachment" or ath__.Name == "FaceCenterAttachment" then
				topacc = ath__.Name
			end
		end
		
        local bv = Instance.new("BodyVelocity",v.Handle)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			if topacc then
				local allthings = SCIFIMOVIELOL(v.Handle,DeadChar.Torso,Vector3.new(0,1.5,0)+ (DeadChar.Head[topacc].Position + (v.Handle[topacc].Position*-1)),Vector3.new(0,0,0))
				local normaltop = allthings[1].Attachment1
				local alipos = allthings[1]
				local alirot = allthings[2]
				local p0 = v.Handle
				local p1 = DeadChar.Head
				alipos.Parent = CloneChar:FindFirstChild(v.Name).Handle
				alirot.Parent = CloneChar:FindFirstChild(v.Name).Handle
				while true do
					game:GetService("RunService").RenderStepped:wait()
					if HumanDied then break end
					coroutine.wrap(function()
						if alipos.Attachment1 == normaltop then
							p0.CFrame = p0.CFrame:lerp((((DeadChar.Torso.CFrame * CFrame.new(0,1.5,0)) * p1[topacc].CFrame) * p0[topacc].CFrame:inverse()),1)
						else
							v.Handle.CFrame = v.Handle.CFrame:lerp(alipos.Attachment1.Parent.CFrame * CFrame.new(alipos.Attachment1.Position) * CFrame.Angles(math.rad(alipos.Attachment1.Rotation.X),math.rad(alipos.Attachment1.Rotation.Y),math.rad(alipos.Attachment1.Rotation.Z)),1)
						end
					end)()
				end
			else
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end)()
	end
end

local a = DeadChar.Torso
local b = DeadChar.HumanoidRootPart
local c = DeadChar.Humanoid
a.Parent = game:FindFirstChildOfClass("Workspace")
c.Parent = game:FindFirstChildOfClass("Workspace")
local told = a:Clone()
local told1 = c:Clone()
b["RootJoint"].Part0 = told
b["RootJoint"].Part1 = DeadChar.Head
a.Name = "torso"
a.Neck:Destroy()
c.Name = "Mizt Hub Best"
told.Parent = DeadChar
told1.Parent = DeadChar
DeadChar.PrimaryPart = told
told1.Health = 0
b:Destroy()
a.Parent = DeadChar
c.Parent = DeadChar
told:Destroy()
told1:Destroy()
a.Name = "Torso"

if CloneChar.Head:FindFirstChildOfClass("Decal") then CloneChar.Head:FindFirstChildOfClass("Decal").Transparency = 1 end
if DeadChar:FindFirstChild("Animate") then DeadChar:FindFirstChild("Animate"):Destroy() end

local Collider

function UnCollide()
    if HumanDied then Collider:Disconnect(); return end
    --[[for _,Parts in next, CloneChar:GetChildren() do
        if Parts:IsA("BasePart") then
            Parts.CanCollide = false 
        end 
    end]]
    for _,Parts in next, DeadChar:GetChildren() do
        if Parts:IsA("BasePart") then
        Parts.CanCollide = false
        end 
    end 
end

Collider = game:GetService("RunService").Stepped:Connect(UnCollide)

local resetBindable = Instance.new("BindableEvent")
resetBindable.Event:connect(function()
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)

	resetBindable:Destroy()
	connection:Disconnect()
	
	HumanDied = true
	scriptDisabled = true

    pcall(function()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = DeadChar
		DeadChar.Head:Destroy()
		DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
		if DeadChar:FindFirstChildOfClass("Folder") then DeadChar:FindFirstChildOfClass("Folder"):Destroy() end
	end)
end)

game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

coroutine.wrap(function()

    while true do

        game:GetService("RunService").RenderStepped:wait()

        if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChildOfClass("Humanoid") or CloneChar:FindFirstChildOfClass("Humanoid").Health <= 0 and not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChildOfClass("Humanoid") or DeadChar:FindFirstChildOfClass("Humanoid").Health <= 0 then 
            
	HumanDied = true
            pcall(function()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = DeadChar
				DeadChar.Head:Destroy()
				DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
				if DeadChar:FindFirstChildOfClass("Folder") then DeadChar:FindFirstChildOfClass("Folder"):Destroy() end
			end)
            if resetBindable then

                game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
                resetBindable:Destroy()

            end

            break
        end		
    end
end)()

SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"])
SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"])
SCIFIMOVIELOL(DeadChar["Torso"],CloneChar["Torso"])
SCIFIMOVIELOL(DeadChar["Left Arm"],CloneChar["Left Arm"])
SCIFIMOVIELOL(DeadChar["Right Arm"],CloneChar["Right Arm"])
SCIFIMOVIELOL(DeadChar["Left Leg"],CloneChar["Left Leg"])
SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"])

for _,v in pairs(DeadChar:GetChildren()) do

	if v:IsA("BasePart") and v.Name ~= "Head" then

		--[[local bv = Instance.new("BodyVelocity",v)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()

			while true do

				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				v.CFrame = CloneChar[v.Name].CFrame
			end

		end)()]]

	elseif v:IsA("BasePart") and v.Name == "Head" then

		local bv = Instance.new("BodyVelocity",v)
		bv.Velocity = Vector3.new(0,0,0)

		coroutine.wrap(function()

			while true do

				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				v.CFrame = DeadChar.Torso.CFrame * CFrame.new(0,1.5,0)

			end
		end)()
	end
end

for _,BodyParts in next, CloneChar:GetDescendants() do
if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
BodyParts.Transparency = 1 end end
game:GetService("RunService").RenderStepped:wait()
game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
game:FindFirstChildOfClass("Workspace"):FindFirstChildOfClass("Camera").CameraSubject = CloneChar.Humanoid

for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
		if v.Handle:FindFirstChildOfClass("AccessoryWeld") then v.Handle:FindFirstChildOfClass("AccessoryWeld"):Destroy() end
		if v.Handle:FindFirstChildOfClass("BodyBackAttachment") then v.Handle:FindFirstChildOfClass("BodyBackAttachment"):Destroy() end
	end
end

-- if ANIMATIONHERE then ANIMATIONHERE.Parent = CloneChar end

workspace.FallenPartsDestroyHeight = 0/0

local char = workspace[game.Players.LocalPlayer.Name]
local v = char.Torso

for _,v in pairs(v:GetChildren()) do
	
	if v:IsA("Attachment") and not string.find(v.Name:lower(),"attachment") then
		
		v:Destroy()
	end
end

local c = char.DMYF.non.Torso

local StateMover = true

local ath = Instance.new("Attachment", c)
ath.Name = "nil"

coroutine.wrap(function() 
	
	local con
	
	local function tpmeyes() 
		
		if StateMover then
			
			v.CFrame = c.CFrame
		end
		
		v.CanCollide = false
	end
	
	con = game["Run Service"].Heartbeat:connect(tpmeyes)
end)()

local bv = Instance.new("BodyVelocity",v)
bv.Velocity = Vector3.new(0,10000,0)
bv.MaxForce = Vector3.new(0,10000,0)

local CDDF = {}

local DamageFling = function(DmgPer) 
	
	if (DmgPer.Name == char.Name and DmgPer.Name == "non") or CDDF[DmgPer] or not DmgPer or not DmgPer:FindFirstChildOfClass("Humanoid") or DmgPer:FindFirstChildOfClass("Humanoid").Health <= 0 then 
		
		return
	end

	CDDF[DmgPer] = true; StateMover = false
	
	local PosFling = DmgPer.Torso.CFrame
	local bv2 = Instance.new("BodyVelocity",v)
	bv2.Velocity = Vector3.new(0,10000,0)
	bv2.MaxForce = Vector3.new(0,10000,0)
	
	game:GetService("Debris"):AddItem(bv2,0.1)
	
	for _ = 1,15 do
	
		v.CFrame = PosFling
		wait(0.03)
	end
	
	v.CFrame = c.CFrame
	CDDF[DmgPer] = false; StateMover = true
end

--#-------------------------------------------------------#--
 --    FE SCRIPT END / WING POSITION AND STUFFS    --
--#-------------------------------------------------------#--

plr = game:GetService("Players").LocalPlayer
char = plr.Character
hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
Camera = cam
local CamInterrupt = false
local TwoD = false
local TargetInfo = {nil, nil}
cam.CameraType = "Custom"
t = char.Torso
h = char.Head
ra = char["Right Arm"]
la = char["Left Arm"]
rl = char["Right Leg"]
ll = char["Left Leg"]
tors = char.Torso
lleg = char["Left Leg"]
root = char.HumanoidRootPart
hed = char.Head
rleg = char["Right Leg"]
rarm = char["Right Arm"]
larm = char["Left Arm"]
radian = math.rad
random = math.random
Vec3 = Vector3.new
Inst = Instance.new
cFrame = CFrame.new
Euler = CFrame.fromEulerAnglesXYZ
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new

local Booleans = {
  CamFollow = true,
  GyroUse = true
}

char.Humanoid.Died:Connect(function() 
	
	connection:Disconnect()
	
	scriptDisabled = true
end)

function lerp(object, newCFrame, alpha) 
	
	return object:lerp(newCFrame, alpha)
end

local Directer = Inst("BodyGyro", root)
Directer.MaxTorque = Vec3(0, 0, 0)
Directer.P = 600000
local CPart = Inst("Part")
CPart.Anchored = true
CPart.CanCollide = false
CPart.Locked = true
CPart.Transparency = 1

local rainbowmode = false
local chaosmode = false

local kan = Instance.new("Sound", char)
kan.Volume = 1.25
kan.TimePosition = 0
kan.PlaybackSpeed = 1
kan.Pitch = 1
kan.SoundId = "rbxassetid://614032233"
kan.Name = "wrecked"
kan.Looped = true
kan:Play()

local currentThemePlaying = kan.SoundId
local currentPitch = kan.Pitch
local currentVol = kan.Volume

coroutine.resume(coroutine.create(function()
	
	while wait() do
		
		local ActionService = game:GetService("ContextActionService")
		ActionService:UnbindAction("BaseCameraKeyboardZoom")
	end
end))

function newTheme(ID,timepos,pitch,vol) 
	
	coroutine.resume(coroutine.create(function() 
		
		if ID ~= "rbxassetid://0" then
			
			local soundAsset = game:GetService("MarketplaceService"):GetProductInfo(tonumber(string.sub(ID, 14)))
			
			centerText2.Text = soundAsset.Name
			
			if ShowTheme then
				
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" [Shadow Glitcher] Now playing : " .. soundAsset.Name, "All")
			end
			
		else 
			
			centerText2.Text = "(Removed by Copyright)"
			
			if ShowTheme then
				
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" [Shadow Glitcher] Now playing : (Removed by Copyright)", "All")
			end
		end
	end))
	
	local kanz = kan
	
	-- kanz:Stop()
	
	kanz.Volume = vol
	
	-- kanz.TimePosition = timepos
	
	kanz.PlaybackSpeed = pitch
	kanz.Pitch = pitch
	kanz.SoundId = ID
	kanz.Name = "wrecked"
	kanz.Looped = true
	
	currentThemePlaying = kanz.SoundId
	currentVol = kanz.Volume
	currentPitch = kanz.Pitch
	
	--[[ kanz:Play()
	
	coroutine.resume(coroutine.create(function() 
		
		wait(0.05)
	end)) --]]
end


function newThemeCust(ID,timepos,pitch,vol) 
	
	coroutine.resume(coroutine.create(function() 
	
		if ID ~= "rbxassetid://0" then
			
			local soundAsset = game:GetService("MarketplaceService"):GetProductInfo(tonumber(string.sub(ID, 14)))
			
			centerText2.Text = soundAsset.Name
			
			if ShowTheme then
				
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" [Shadow Glitcher] Now playing : " .. soundAsset.Name, "All")
			end
			
		else 
			
			centerText2.Text = "(Removed by Copyright)"
			
			if ShowTheme then
				
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" [Shadow Glitcher] Now playing : (Removed by Copyright)", "All")
			end
		end
	end))
	
	local kanz = kan
	kanz:Stop()
	kanz.Volume = vol
	kanz.TimePosition = timepos
	kanz.PlaybackSpeed = pitch
	kanz.Pitch = pitch
	kanz.SoundId = ID
	kanz.Name = "wrecked"
	kanz.Looped = true
	
	currentThemePlaying = kanz.SoundId
	currentVol = kanz.Volume
	currentPitch = kanz.Pitch
	
	kanz:Play()
	
	coroutine.resume(coroutine.create(function() 
		
		wait(0.05)
	end))
end

local mutedtog = false

function IdolsWarn(text,represfont,color,color2)
	if disably ~= true then
CFuncs["Sound"].Create("rbxassetid://534859368", char, 1.25,1)
CFuncs["Sound"].Create("rbxassetid://963718869", char, 0.8,1)
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
coroutine.resume(coroutine.create(function()
if v.PlayerGui:FindFirstChild("Spinny")~= nil then
v.PlayerGui:FindFirstChild("Spinny"):destroy()
end
local scrg = Instance.new("ScreenGui",v.PlayerGui)
scrg.Name = "Spinny"
local frm = Instance.new("Frame",scrg)
frm.BackgroundTransparency = 0.25
frm.BackgroundColor3 = color
frm.BorderSizePixel = 0
frm.Rotation = 45
frm.Size = UDim2.new(3,0,0,100)
frm.Position = UDim2.new(-4,0,0,0)
local frm2 = frm:Clone()
frm2.Parent = scrg
frm2.BackgroundColor3 = color2
frm2.Position = UDim2.new(-4.05,0,0,0)
local imlb = Instance.new("ImageLabel",scrg)
imlb.BackgroundTransparency = 1
imlb.BackgroundColor3 = color
imlb.Image = "rbxassetid://787198541"
imlb.Size = UDim2.new(0,750,0,750)
imlb.ImageColor3 = color2
imlb.ImageTransparency = 0.25
imlb.Position = UDim2.new(-2.5,0,-2.5,0)
local imlb2 = imlb:Clone()
imlb2.Image = "rbxassetid://197468643"
imlb2.Size = UDim2.new(1,0,1,0)
imlb2.ImageTransparency = 0
imlb2.Position = UDim2.new(0,0,0,0)
local imlb3 = imlb:Clone()
imlb3.Image = "rbxassetid://787191999"
imlb3.Size = UDim2.new(1,0,1,0)
imlb3.ImageColor3 = color2
imlb3.ImageTransparency = 0
imlb3.Position = UDim2.new(0,0,0,0)
local imlb4 = imlb:Clone()
imlb4.Image = "rbxassetid://2092248396"
imlb4.Size = UDim2.new(3,0,3,0)
imlb3.ImageColor3 = color
imlb4.ImageTransparency = 0
imlb4.Position = UDim2.new(-1,0,-1,0)
local imlb5 = imlb:Clone()
imlb5.Image = "rbxassetid://2344870656"
imlb5.Size = UDim2.new(10,0,10,0)
imlb5.ImageColor3 = color2
imlb5.ImageTransparency = 0
imlb5.Position = UDim2.new(-4.5,0,-4.5,0)
imlb2.Parent = imlb
imlb3.Parent = imlb
imlb4.Parent = imlb
imlb5.Parent = imlb
local txtlb2 = Instance.new("TextLabel",imlb)
coroutine.resume(coroutine.create(function()
while true do
swait()
if Error == false then
txtlb2.Text = text
elseif Error == true then
txtlb2.Text = est[math.random(1,17)]
end
end
end))
txtlb2.Font = represfont
txtlb2.TextColor3 = color
txtlb2.TextStrokeTransparency = 0
txtlb2.BackgroundTransparency = 1
txtlb2.TextStrokeColor3 = color2
txtlb2.TextScaled = true
txtlb2.Size = UDim2.new(1,0,1,0)
txtlb2.Position = UDim2.new(0,0,0,0)
local fvalen = 0.55
local fval = -0.49
coroutine.resume(coroutine.create(function()
while true do
swait()
if rainbowmode == true then
imlb.Position = imlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.TextStrokeColor3 = Color3.new(r/255,g/255,b/255)
txtlb2.TextColor3 = Color3.new(r/255,g/255,b/255)
imlb.ImageColor3 = Color3.new(r/255,g/255,b/255)
frm.BackgroundColor3 = Color3.new(r/255,g/255,b/255)
frm2.BackgroundColor3 = Color3.new(r/255,g/255,b/255)
txtlb2.TextStrokeColor3 = Color3.new(1,1,1)
txtlb2.TextColor3 = Color3.new(r/255,g/255,b/255)
imlb.ImageColor3 = Color3.new(r/255,g/255,b/255)
imlb3.ImageColor3 = Color3.new(r/255,g/255,b/255)
imgl2b.ImageColor3 = Color3.new(r/255,g/255,b/255)
frm.BackgroundColor3 = Color3.new(r/255,g/255,b/255)
frm2.BackgroundColor3 = Color3.new(r/255,g/255,b/255)
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if Error == true then
imlb.Position = imlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.TextStrokeColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
txtlb2.TextColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imlb.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imlb2.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imlb3.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imlb4.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imlb5.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imgl2b.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
frm.BackgroundColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
frm2.BackgroundColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
text = est[math.random(1,17)]
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if CRAZED == true then
txtlb2.Rotation = math.random(-1,1)
imlb.Position = imlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.TextStrokeColor3 = Color3.new(0,0,math.random(0.1,1))
txtlb2.TextColor3 = Color3.new(0,0,math.random(0,0.2))
imlb.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
imlb2.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
imlb3.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
imlb4.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
imlb5.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
imgl2b.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
frm.BackgroundColor3 = Color3.new(0,0,math.random(0.1,1))
frm2.BackgroundColor3 = Color3.new(0,0,math.random(0.1,1))
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if chaosmode == true then
txtlb2.Rotation = math.random(-1,1)
imlb.Position = imlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
imlb.ImageColor3 = BrickColor.random().Color
txtlb2.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if scrg.Parent ~= nil then
	fvalen = fvalen - 0.0001
elseif scrg.Parent == nil then
break
end
end
end))
local flol = -5
local flil = 1.6
coroutine.resume(coroutine.create(function()
	for i = 0, 49 do
		swait()
		flol = flol + 0.125
		flil = flil - 0.1
		frm.Size = frm.Size + UDim2.new(0.1,0,0,0)
		frm.Rotation = frm.Rotation - 0.25
		frm2.Size = frm2.Size + UDim2.new(0.1,0,0,0)
		frm2.Rotation = frm.Rotation + 0.325
		imlb3.Rotation = imlb3.Rotation - 10
		imlb2.Rotation = imlb.Rotation + 7.5
		imlb.Rotation = imlb.Rotation + 5
		if Error == false then
		txtlb2.Rotation = txtlb2.Rotation - 5.125
		elseif Error == true then
		txtlb2.Rotation = txtlb2.Rotation - 5.125 + math.random(-6,6)
		end
		imlb.Position = imlb.Position + UDim2.new(0.05125,0,0.04775,0)
	end
	for i = 0, 99 do
		swait()
		fval = fval + 0.05
		flol = flol + 0.005
		frm.Size = frm.Size + UDim2.new(0.005,0,0,0)
		frm.Rotation = frm.Rotation - 0.075
		frm2.Size = frm2.Size + UDim2.new(0.005,0,0,0)
		frm2.Rotation = frm2.Rotation + 0.125
		imlb3.Rotation = imlb3.Rotation - 2
		imlb2.Rotation = imlb.Rotation + 1.5
		imlb.Rotation = imlb.Rotation + 1
		if Error == false then
		txtlb2.Rotation = txtlb2.Rotation - 1.125
		elseif Error == true then
		txtlb2.Rotation = txtlb2.Rotation - 1.125 + math.random(-6,6)
		end
		imlb.Position = imlb.Position + UDim2.new(0.0015,0,0.00075,0)
	end
local valinc = 0
local vinc2 = 1
for i = 0, 99 do
swait()
vinc2 = vinc2 + 0.25
valinc = valinc + 0.0001
flol = flol + valinc
flil = flil + valinc
txtlb2.Rotation = txtlb2.Rotation - 1.125*vinc2
imlb3.Rotation = imlb3.Rotation - 2*vinc2
imlb.Rotation = imlb.Rotation + 1*vinc2
imlb.Position = imlb.Position + UDim2.new(0.0015*vinc2,0,0.0005*vinc2,0)
frm.Size = frm.Size + UDim2.new(0.005*vinc2,0,0,0)
frm.Rotation = frm.Rotation + 0.1*vinc2
frm2.Size = frm2.Size + UDim2.new(0.005*vinc2,0,0,0)
frm2.Rotation = frm2.Rotation + 0.225*vinc2
frm2.BackgroundTransparency = frm2.BackgroundTransparency + 0.0075
frm.BackgroundTransparency = frm.BackgroundTransparency + 0.0075
imlb.ImageTransparency = imlb.ImageTransparency + 0.005
imlb2.ImageTransparency = imlb2.ImageTransparency + 0.01
imlb3.ImageTransparency = imlb3.ImageTransparency + 0.01
imlb4.ImageTransparency = imlb4.ImageTransparency + 0.01
imlb5.ImageTransparency = imlb4.ImageTransparency + 0.01
txtlb2.TextStrokeTransparency = txtlb2.TextStrokeTransparency + 0.01
txtlb2.TextTransparency = txtlb2.TextTransparency + 0.01
end
scrg:Destroy()
end))
end))
end
end
end

local IDTECC = {"LETS BE SERIOUS"," NEO","TRUE FORM","..."}

local OVMID = 1702473314
local OVMPIT = 1
local OVMVOL = 1

function warnedpeople(text,represfont,color,color2)
if WarnChat then
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" [WARN] " .. text, "All")
end
	if disably ~= true then
CFuncs["Sound"].Create("rbxassetid://534859368", char, 1.25,1)
CFuncs["Sound"].Create("rbxassetid://963718869", char, 0.8,1)
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
coroutine.resume(coroutine.create(function()
if v.PlayerGui:FindFirstChild("Spinny")~= nil then
v.PlayerGui:FindFirstChild("Spinny"):destroy()
end
local scrg = Instance.new("ScreenGui",v.PlayerGui)
scrg.Name = "Spinny"
local frm = Instance.new("Frame",scrg)
frm.BackgroundTransparency = 0.25
frm.BackgroundColor3 = color
frm.BorderSizePixel = 0
frm.Rotation = 45
frm.Size = UDim2.new(3,0,0,100)
frm.Position = UDim2.new(-4,0,0,0)
local frm2 = frm:Clone()
frm2.Parent = scrg
frm2.BackgroundColor3 = color2
frm2.Position = UDim2.new(-4.05,0,0,0)
local imlb = Instance.new("ImageLabel",scrg)
imlb.BackgroundTransparency = 1
imlb.BackgroundColor3 = Color3.new(0,0,0)
imlb.Image = "rbxassetid://2344851144"
imlb.Size = UDim2.new(0,750,0,750)
imlb.ImageColor3 = color2
imlb.ImageTransparency = 0.25
imlb.Position = UDim2.new(-2.5,0,-2.5,0)
local imlb2 = imlb:Clone()
imlb2.Image = "rbxassetid://2076458450"
imlb2.Size = UDim2.new(1,0,1,0)
imlb2.ImageColor3 = color
imlb2.ImageTransparency = 0
imlb2.Position = UDim2.new(0,0,0,0)
local imlb3 = imlb:Clone()
imlb3.Image = "rbxassetid://2312119891"
imlb3.Size = UDim2.new(1,0,1,0)
imlb3.ImageColor3 = color2
imlb3.ImageTransparency = 0
imlb3.Position = UDim2.new(0,0,0,0)
local imlb4 = imlb:Clone()
imlb4.Image = "rbxassetid://2092248396"
imlb4.Size = UDim2.new(3,0,3,0)
imlb3.ImageColor3 = color
imlb4.ImageTransparency = 0
imlb4.Position = UDim2.new(-1,0,-1,0)
local imlb5 = imlb:Clone()
imlb5.Image = "rbxassetid://2344870656"
imlb5.Size = UDim2.new(10,0,10,0)
imlb5.ImageColor3 = color2
imlb5.ImageTransparency = 0
imlb5.Position = UDim2.new(-4.5,0,-4.5,0)
imlb2.Parent = imlb
imlb3.Parent = imlb
imlb4.Parent = imlb
imlb5.Parent = imlb
local txtlb2 = Instance.new("TextLabel",imlb)
txtlb2.Text = text
coroutine.resume(coroutine.create(function()
while true do
swait()
if ASTRA == true then
txtlb2.Text = est[math.random(1,5)]
elseif dragon == true then
txtlb2.Text = nobreak[math.random(1,3)]
end
end
end))
txtlb2.Font = represfont
txtlb2.TextColor3 = color
txtlb2.TextStrokeTransparency = 0
txtlb2.BackgroundTransparency = 1
txtlb2.TextStrokeColor3 = color2
txtlb2.TextScaled = true
txtlb2.Size = UDim2.new(1,0,1,0)
txtlb2.Position = UDim2.new(0,0,0,0)
local fvalen = 0.55
local fval = -0.49

coroutine.resume(coroutine.create(function()
while true do
swait()
if rainbowmode == true then
imlb.Position = imlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.TextStrokeColor3 = Color3.new(r/255,g/255,b/255)
txtlb2.TextColor3 = Color3.new(r/255,g/255,b/255)
imlb.ImageColor3 = Color3.new(r/255,g/255,b/255)
frm.BackgroundColor3 = Color3.new(r/255,g/255,b/255)
frm2.BackgroundColor3 = Color3.new(r/255,g/255,b/255)
txtlb2.TextStrokeColor3 = Color3.new(1,1,1)
txtlb2.TextColor3 = Color3.new(r/255,g/255,b/255)
imlb.ImageColor3 = Color3.new(r/255,g/255,b/255)
imlb3.ImageColor3 = Color3.new(r/255,g/255,b/255)
imgl2b.ImageColor3 = Color3.new(r/255,g/255,b/255)
frm.BackgroundColor3 = Color3.new(r/255,g/255,b/255)
frm2.BackgroundColor3 = Color3.new(r/255,g/255,b/255)
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if Error == true then
imlb.Position = imlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.TextStrokeColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
txtlb2.TextColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imlb.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imlb2.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imlb3.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imlb4.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imlb5.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imgl2b.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
frm.BackgroundColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
frm2.BackgroundColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
text = est[math.random(1,17)]
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if CRAZED == true then
txtlb2.Rotation = math.random(-1,1)
imlb.Position = imlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.TextStrokeColor3 = Color3.new(0,0,math.random(0.1,1))
txtlb2.TextColor3 = Color3.new(0,0,math.random(0,0.2))
imlb.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
imlb2.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
imlb3.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
imlb4.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
imlb5.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
imgl2b.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
frm.BackgroundColor3 = Color3.new(0,0,math.random(0.1,1))
frm2.BackgroundColor3 = Color3.new(0,0,math.random(0.1,1))
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if chaosmode == true then
txtlb2.Rotation = math.random(-1,1)
imlb.Position = imlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
imlb.ImageColor3 = BrickColor.random().Color
txtlb2.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if scrg.Parent ~= nil then
	fvalen = fvalen - 0.0001
elseif scrg.Parent == nil then
break
end
end
end))
local flol = -5
local flil = 1.6
coroutine.resume(coroutine.create(function()
	for i = 0, 49 do
		swait()
		flol = flol + 0.125
		flil = flil - 0.1
		frm.Size = frm.Size + UDim2.new(0.1,0,0,0)
		frm.Rotation = frm.Rotation - 0.25
		frm2.Size = frm2.Size + UDim2.new(0.1,0,0,0)
		frm2.Rotation = frm.Rotation + 0.325
		imlb3.Rotation = imlb3.Rotation - 10
		imlb2.Rotation = imlb.Rotation + 7.5
		imlb.Rotation = imlb.Rotation + 5
		if Error == false then
		txtlb2.Rotation = txtlb2.Rotation - 5.125
		elseif Error == true then
		txtlb2.Rotation = txtlb2.Rotation - 5.125 + math.random(-6,6)
		end
		imlb.Position = imlb.Position + UDim2.new(0.05125,0,0.04775,0)
	end
	for i = 0, 99 do
		swait()
		fval = fval + 0.05
		flol = flol + 0.005
		frm.Size = frm.Size + UDim2.new(0.005,0,0,0)
		frm.Rotation = frm.Rotation - 0.075
		frm2.Size = frm2.Size + UDim2.new(0.005,0,0,0)
		frm2.Rotation = frm2.Rotation + 0.125
		imlb3.Rotation = imlb3.Rotation - 2
		imlb2.Rotation = imlb.Rotation + 1.5
		imlb.Rotation = imlb.Rotation + 1
		if Error == false then
		txtlb2.Rotation = txtlb2.Rotation - 1.125
		elseif Error == true then
		txtlb2.Rotation = txtlb2.Rotation - 1.125 + math.random(-6,6)
		end
		imlb.Position = imlb.Position + UDim2.new(0.0015,0,0.00075,0)
	end
local valinc = 0
local vinc2 = 1
for i = 0, 99 do
swait()
vinc2 = vinc2 + 0.25
valinc = valinc + 0.0001
flol = flol + valinc
flil = flil + valinc
txtlb2.Rotation = txtlb2.Rotation - 1.125*vinc2
imlb3.Rotation = imlb3.Rotation - 2*vinc2
imlb.Rotation = imlb.Rotation + 1*vinc2
imlb.Position = imlb.Position + UDim2.new(0.0015*vinc2,0,0.0005*vinc2,0)
frm.Size = frm.Size + UDim2.new(0.005*vinc2,0,0,0)
frm.Rotation = frm.Rotation + 0.1*vinc2
frm2.Size = frm2.Size + UDim2.new(0.005*vinc2,0,0,0)
frm2.Rotation = frm2.Rotation + 0.225*vinc2
frm2.BackgroundTransparency = frm2.BackgroundTransparency + 0.0075
frm.BackgroundTransparency = frm.BackgroundTransparency + 0.0075
imlb.ImageTransparency = imlb.ImageTransparency + 0.005
imlb2.ImageTransparency = imlb2.ImageTransparency + 0.01
imlb3.ImageTransparency = imlb3.ImageTransparency + 0.01
imlb4.ImageTransparency = imlb4.ImageTransparency + 0.01
imlb5.ImageTransparency = imlb4.ImageTransparency + 0.01
txtlb2.TextStrokeTransparency = txtlb2.TextStrokeTransparency + 0.01
txtlb2.TextTransparency = txtlb2.TextTransparency + 0.01
end
scrg:Destroy()
end))
end))
end
end
end

function warnedpeople2(text,represfont,color,color2)
	if disably ~= true then
CFuncs["Sound"].Create("rbxassetid://534859368", char, 1.25,1)
CFuncs["Sound"].Create("rbxassetid://963718869", char, 0.8,1)
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
coroutine.resume(coroutine.create(function()
if v.PlayerGui:FindFirstChild("Spinny")~= nil then
v.PlayerGui:FindFirstChild("Spinny"):destroy()
end
local scrg = Instance.new("ScreenGui",v.PlayerGui)
scrg.Name = "Spinny"
local frm = Instance.new("Frame",scrg)
frm.BackgroundTransparency = 0.25
frm.BackgroundColor3 = color
frm.BorderSizePixel = 0
frm.Rotation = 45
frm.Size = UDim2.new(3,0,0,100)
frm.Position = UDim2.new(-4,0,0,0)
local frm2 = frm:Clone()
frm2.Parent = scrg
frm2.BackgroundColor3 = color2
frm2.Position = UDim2.new(-4.05,0,0,0)
local imlb = Instance.new("ImageLabel",scrg)
imlb.BackgroundTransparency = 1
imlb.BackgroundColor3 = Color3.new(0,0,0)
imlb.Image = "rbxassetid://787198541"
imlb.Size = UDim2.new(0,750,0,750)
imlb.ImageColor3 = color2
imlb.ImageTransparency = 0.25
imlb.Position = UDim2.new(-2.5,0,-2.5,0)
local imlb2 = imlb:Clone()
imlb2.Image = "rbxassetid://2076458450"
imlb2.Size = UDim2.new(1,0,1,0)
imlb2.ImageColor3 = color
imlb2.ImageTransparency = 0
imlb2.Position = UDim2.new(0,0,0,0)
local imlb3 = imlb:Clone()
imlb3.Image = "rbxassetid://787191999"
imlb3.Size = UDim2.new(1,0,1,0)
imlb3.ImageColor3 = color2
imlb3.ImageTransparency = 0
imlb3.Position = UDim2.new(0,0,0,0)
local imlb4 = imlb:Clone()
imlb4.Image = "rbxassetid://2092248396"
imlb4.Size = UDim2.new(3,0,3,0)
imlb3.ImageColor3 = color
imlb4.ImageTransparency = 0
imlb4.Position = UDim2.new(-1,0,-1,0)
local imlb5 = imlb:Clone()
imlb5.Image = "rbxassetid://2344870656"
imlb5.Size = UDim2.new(10,0,10,0)
imlb5.ImageColor3 = color2
imlb5.ImageTransparency = 0
imlb5.Position = UDim2.new(-4.5,0,-4.5,0)
imlb2.Parent = imlb
imlb3.Parent = imlb
imlb4.Parent = imlb
imlb5.Parent = imlb
local txtlb2 = Instance.new("TextLabel",imlb)
txtlb2.Text = text
coroutine.resume(coroutine.create(function()
while true do
swait()
if ASTRA == true then
txtlb2.Text = est[math.random(1,5)]
elseif dragon == true then
txtlb2.Text = nobreak[math.random(1,3)]
end
end
end))
txtlb2.Font = represfont
txtlb2.TextColor3 = color
txtlb2.TextStrokeTransparency = 0
txtlb2.BackgroundTransparency = 1
txtlb2.TextStrokeColor3 = color2
txtlb2.TextScaled = true
txtlb2.Size = UDim2.new(1,0,1,0)
txtlb2.Position = UDim2.new(0,0,0,0)
local fvalen = 0.55
local fval = -0.49

coroutine.resume(coroutine.create(function()
while true do
swait()
if rainbowmode == true then
imlb.Position = imlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.TextStrokeColor3 = Color3.new(r/255,g/255,b/255)
txtlb2.TextColor3 = Color3.new(r/255,g/255,b/255)
imlb.ImageColor3 = Color3.new(r/255,g/255,b/255)
frm.BackgroundColor3 = Color3.new(r/255,g/255,b/255)
frm2.BackgroundColor3 = Color3.new(r/255,g/255,b/255)
txtlb2.TextStrokeColor3 = Color3.new(1,1,1)
txtlb2.TextColor3 = Color3.new(r/255,g/255,b/255)
imlb.ImageColor3 = Color3.new(r/255,g/255,b/255)
imlb3.ImageColor3 = Color3.new(r/255,g/255,b/255)
imgl2b.ImageColor3 = Color3.new(r/255,g/255,b/255)
frm.BackgroundColor3 = Color3.new(r/255,g/255,b/255)
frm2.BackgroundColor3 = Color3.new(r/255,g/255,b/255)
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if Error == true then
imlb.Position = imlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.TextStrokeColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
txtlb2.TextColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imlb.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imlb2.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imlb3.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imlb4.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imlb5.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
imgl2b.ImageColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
frm.BackgroundColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
frm2.BackgroundColor3 = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
text = est[math.random(1,17)]
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if CRAZED == true then
txtlb2.Rotation = math.random(-1,1)
imlb.Position = imlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.TextStrokeColor3 = Color3.new(0,0,math.random(0.1,1))
txtlb2.TextColor3 = Color3.new(0,0,math.random(0,0.2))
imlb.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
imlb2.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
imlb3.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
imlb4.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
imlb5.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
imgl2b.ImageColor3 = Color3.new(0,0,math.random(0.1,1))
frm.BackgroundColor3 = Color3.new(0,0,math.random(0.1,1))
frm2.BackgroundColor3 = Color3.new(0,0,math.random(0.1,1))
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if chaosmode == true then
txtlb2.Rotation = math.random(-1,1)
imlb.Position = imlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
imlb.ImageColor3 = BrickColor.random().Color
txtlb2.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if scrg.Parent ~= nil then
	fvalen = fvalen - 0.0001
elseif scrg.Parent == nil then
break
end
end
end))
local flol = -5
local flil = 1.6
coroutine.resume(coroutine.create(function()
	for i = 0, 49 do
		swait()
		flol = flol + 0.125
		flil = flil - 0.1
		frm.Size = frm.Size + UDim2.new(0.1,0,0,0)
		frm.Rotation = frm.Rotation - 0.25
		frm2.Size = frm2.Size + UDim2.new(0.1,0,0,0)
		frm2.Rotation = frm.Rotation + 0.325
		imlb3.Rotation = imlb3.Rotation - 10
		imlb2.Rotation = imlb.Rotation + 7.5
		imlb.Rotation = imlb.Rotation + 5
		if Error == false then
		txtlb2.Rotation = txtlb2.Rotation - 5.125
		elseif Error == true then
		txtlb2.Rotation = txtlb2.Rotation - 5.125 + math.random(-6,6)
		end
		imlb.Position = imlb.Position + UDim2.new(0.05125,0,0.04775,0)
	end
	for i = 0, 99 do
		swait()
		fval = fval + 0.05
		flol = flol + 0.005
		frm.Size = frm.Size + UDim2.new(0.005,0,0,0)
		frm.Rotation = frm.Rotation - 0.075
		frm2.Size = frm2.Size + UDim2.new(0.005,0,0,0)
		frm2.Rotation = frm2.Rotation + 0.125
		imlb3.Rotation = imlb3.Rotation - 2
		imlb2.Rotation = imlb.Rotation + 1.5
		imlb.Rotation = imlb.Rotation + 1
		if Error == false then
		txtlb2.Rotation = txtlb2.Rotation - 1.125
		elseif Error == true then
		txtlb2.Rotation = txtlb2.Rotation - 1.125 + math.random(-6,6)
		end
		imlb.Position = imlb.Position + UDim2.new(0.0015,0,0.00075,0)
	end
local valinc = 0
local vinc2 = 1
for i = 0, 99 do
swait()
vinc2 = vinc2 + 0.25
valinc = valinc + 0.0001
flol = flol + valinc
flil = flil + valinc
txtlb2.Rotation = txtlb2.Rotation - 1.125*vinc2
imlb3.Rotation = imlb3.Rotation - 2*vinc2
imlb.Rotation = imlb.Rotation + 1*vinc2
imlb.Position = imlb.Position + UDim2.new(0.0015*vinc2,0,0.0005*vinc2,0)
frm.Size = frm.Size + UDim2.new(0.005*vinc2,0,0,0)
frm.Rotation = frm.Rotation + 0.1*vinc2
frm2.Size = frm2.Size + UDim2.new(0.005*vinc2,0,0,0)
frm2.Rotation = frm2.Rotation + 0.225*vinc2
frm2.BackgroundTransparency = frm2.BackgroundTransparency + 0.0075
frm.BackgroundTransparency = frm.BackgroundTransparency + 0.0075
imlb.ImageTransparency = imlb.ImageTransparency + 0.005
imlb2.ImageTransparency = imlb2.ImageTransparency + 0.01
imlb3.ImageTransparency = imlb3.ImageTransparency + 0.01
imlb4.ImageTransparency = imlb4.ImageTransparency + 0.01
imlb5.ImageTransparency = imlb4.ImageTransparency + 0.01
txtlb2.TextStrokeTransparency = txtlb2.TextStrokeTransparency + 0.01
txtlb2.TextTransparency = txtlb2.TextTransparency + 0.01
end
scrg:Destroy()
end))
end))
end
end
end

function CameraEnshaking(Length,Intensity)
coroutine.resume(coroutine.create(function()
      local intensity = 1*Intensity
      local rotM = 0.01*Intensity
for i = 0, Length, 0.1 do
swait()
intensity = intensity - 0.05*Intensity/Length
rotM = rotM - 0.0005*Intensity/Length
      hum.CameraOffset = Vec3(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity)))
      cam.CFrame = cam.CFrame * cFrame(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity))) * Euler(radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM)
end
Humanoid.CameraOffset = Vec3(0, 0, 0)
end))
end
CamShake=function(Part,Distan,Power,Times) 
local de=Part.Position
for i,v in pairs(workspace:children()) do
 if v:IsA("Model") and v:findFirstChild("Humanoid") then
for _,c in pairs(v:children()) do
if c.ClassName=="Part" and (c.Position - de).magnitude < Distan then
local Noob=v.Humanoid
if Noob~=nil then
coroutine.resume(coroutine.create(function()
FV = Instance.new("BoolValue", Noob)
FV.Name = "CameraShake"
for ShakeNum=1,Times do
swait()
local ef=Power
  if ef>=1 then
   Humanoid.CameraOffset = Vector3.new(math.random(-ef,ef),math.random(-ef,ef),math.random(-ef,ef))
  else
   ef=Power*10
   Humanoid.CameraOffset = Vector3.new(math.random(-ef,ef)/10,math.random(-ef,ef)/10,math.random(-ef,ef)/10)
  end	
end
Humanoid.CameraOffset = Vector3.new(0,0,0)
FV:Destroy()
end))
CameraShake(Times, Power, Noob)
end
end
end
end
end
end

local toggleTag = true
local bilguit = Instance.new("BillboardGui", hed)
bilguit.Adornee = nil
bilguit.Name = "ModeName"
bilguit.Size = UDim2.new(4, 0, 1.2, 0)
bilguit.StudsOffset = Vector3.new(-8, 8/1.5, 0)
local modet = Instance.new("TextLabel", bilguit)
modet.Size = UDim2.new(10/2, 0, 7/2, 0)
modet.FontSize = "Size8"
modet.TextScaled = true
modet.TextTransparency = 0
modet.BackgroundTransparency = 1 
modet.TextTransparency = 0
modet.TextStrokeTransparency = 0
modet.Font = "Antique"
modet.TextStrokeColor3 = Color3.new(1,0,0)
modet.TextColor3 = Color3.new(0.25,0,0)
modet.Text = "MAYHEM"

function oldchatfunc(ctext,color)
	
	if BossChat then
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" [" .. modet.Text .. "] " .. ctext, "All")
	end
	
	local chat = coroutine.wrap(function()
		if Character:FindFirstChild("TalkingBillBoard")~= nil then
			Character:FindFirstChild("TalkingBillBoard"):destroy()
		end
		local naeeym2 = Instance.new("BillboardGui",Character)
		naeeym2.Size = UDim2.new(0,100,0,40)
		naeeym2.StudsOffset = Vector3.new(0,3,0)
		naeeym2.Adornee = Character.Head
		naeeym2.Name = "TalkingBillBoard"
		local tecks2 = Instance.new("TextLabel",naeeym2)
		tecks2.BackgroundTransparency = 1
		tecks2.BorderSizePixel = 0
		tecks2.Text = ""
		tecks2.Font = "SciFi"
		tecks2.TextSize = 30
		tecks2.TextStrokeTransparency = 0
		tecks2.TextColor3 = color
		tecks2.TextStrokeColor3 = Color3.new(0,0,0)
		tecks2.Size = UDim2.new(1,0,0.5,0)
		local tecks3 = Instance.new("TextLabel",naeeym2)
		tecks3.BackgroundTransparency = 1
		tecks3.BorderSizePixel = 0
		tecks3.Text = ""
		tecks3.Font = "SciFi"
		tecks3.TextSize = 30
		tecks3.TextStrokeTransparency = 0
		tecks3.TextColor3 = Color3.new(0,0,0)
		tecks3.TextStrokeColor3 = color
		tecks3.Size = UDim2.new(1,0,0.5,0)
		coroutine.resume(coroutine.create(function()
			while true do
				swait(1)
				if chaosmode == true then
					tecks2.TextColor3 = BrickColor.random().Color
					tecks3.TextStrokeColor3 = BrickColor.random().Color
				end
				if(glitchymode)then
					local val = math.random(1,255)
					local color = Color3.fromRGB(val,val,val)
					tecks2.TextColor3 = color
					tecks3.TextStrokeColor3 = color
				end
				tecks2.Position = UDim2.new(0,math.random(-5,5),0,math.random(-5,5))
				tecks3.Position = UDim2.new(0,math.random(-5,5),0,math.random(-5,5))
				tecks2.Rotation = math.random(-5,5)
				tecks3.Rotation = math.random(-5,5)
			end
		end))
		for i = 1,string.len(ctext),1 do
			CFuncs["Sound"].Create("rbxassetid://274118116", char, 0.25, 0.115)
			tecks2.Text = string.sub(ctext,1,i)
			tecks3.Text = string.sub(ctext,1,i)
			swait(1)
		end
		wait(1)
		local randomrot = math.random(1,2)
		if randomrot == 1 then
			for i = 1, 50 do
				swait()
				tecks2.Rotation = tecks2.Rotation - .75
				tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
				tecks2.TextTransparency = tecks2.TextTransparency + .04
				tecks3.Rotation = tecks2.Rotation + .75
				tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
				tecks3.TextTransparency = tecks2.TextTransparency + .04
			end
		elseif randomrot == 2 then
			for i = 1, 50 do
				swait()
				tecks2.Rotation = tecks2.Rotation + .75
				tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
				tecks2.TextTransparency = tecks2.TextTransparency + .04
				tecks3.Rotation = tecks2.Rotation - .75
				tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
				tecks3.TextTransparency = tecks2.TextTransparency + .04
			end
		end
		naeeym2:Destroy()
	end)
	chat()
end

function chatfunc(text,color,typet,font,timeex)

if BossChat then
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" [" .. modet.Text .. "] " .. text, "All")
end

local chat = coroutine.wrap(function()
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = font
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = color
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = font
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
if typet == "Inverted" then
tecks3.TextColor3 = Color3.new(0,0,0)
tecks3.TextStrokeColor3 = color
elseif typet == "Normal" then
tecks3.TextColor3 = color
tecks3.TextStrokeColor3 = Color3.new(0,0,0)
end
tecks3.Size = UDim2.new(1,0,0.5,0)
coroutine.resume(coroutine.create(function()
while true do
swait(1)
if chaosmode == true then
tecks2.TextColor3 = BrickColor.random().Color
tecks3.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
modet.TextTransparency = modet.TextTransparency  + 1
modet.TextStrokeTransparency = modet.TextStrokeTransparency + 1
for i = 0, 74*timeex do
swait()
modet.TextTransparency = 1
modet.TextStrokeTransparency = 1
tecks2.Text = text
tecks3.Text = text
end
local randomrot = math.random(1,2)
if randomrot == 1 then
for i = 1, 50 do
swait()
tecks2.Text = text
tecks3.Text = text
modet.TextTransparency = modet.TextTransparency - .02
modet.TextStrokeTransparency = modet.TextStrokeTransparency - .02
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
elseif randomrot == 2 then
	for i = 1, 50 do
swait()
tecks2.Text = text
tecks3.Text = text
modet.TextTransparency = modet.TextTransparency - .02
modet.TextStrokeTransparency = modet.TextStrokeTransparency - .02
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
end
modet.TextTransparency = 0
modet.TextStrokeTransparency = 0
if toggleTag == false then
modet.TextTransparency = 1
modet.TextStrokeTransparency = 1
end
naeeym2:Destroy()
end)
chat()
end

function bosschatfunc(text,color,watval)

if BossChat then
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" [" .. modet.Text .. "] " .. text, "All")
end

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
coroutine.resume(coroutine.create(function()
if v.PlayerGui:FindFirstChild("Dialog")~= nil then
v.PlayerGui:FindFirstChild("Dialog"):destroy()
end
local scrg = Instance.new("ScreenGui",v.PlayerGui)
CFuncs["EchoSound"].Create("rbxassetid://525200869", scrg, 0.5, 1,0,10,0.1,0.25,1)
scrg.Name = "Dialog"
local txtlb = Instance.new("TextLabel",scrg)
txtlb.Text = ""
txtlb.Font = "Bodoni"
txtlb.TextColor3 = Color3.new(0,0,0)
txtlb.TextStrokeTransparency = 0
txtlb.BackgroundTransparency = 0.75
txtlb.BackgroundColor3 = Color3.new(0,0,0)
txtlb.TextStrokeColor3 = color
txtlb.TextScaled = true
txtlb.Size = UDim2.new(1,0,0.25,0)
txtlb.TextXAlignment = "Left"
txtlb.Position = UDim2.new(0,0,0.75 + 1,0)
local txtlb2 = Instance.new("TextLabel",scrg)
txtlb2.Text = "star:"
txtlb2.Font = "Arcade"
txtlb2.TextColor3 = Color3.new(0,0,0)
txtlb2.TextStrokeTransparency = 0
txtlb2.BackgroundTransparency = 1
txtlb2.TextStrokeColor3 = color
txtlb2.TextSize = 40
txtlb2.Size = UDim2.new(1,0,0.25,0)
txtlb2.TextXAlignment = "Left"
txtlb2.Position = UDim2.new(0,0,1,0)
local fvalen = 0.55
local fval = -0.49
coroutine.resume(coroutine.create(function()
while true do
swait()
if chaosmode == true then
txtlb.Rotation = math.random(-1,1)
txtlb2.Rotation = math.random(-1,1)
txtlb.Position = txtlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb.TextStrokeColor3 = BrickColor.random().Color
txtlb2.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if scrg.Parent ~= nil then
    fvalen = fvalen - 0.0001
elseif scrg.Parent == nil then
break
end
end
end))
local flol = 1.75
local flil = 1.6
coroutine.resume(coroutine.create(function()
    for i = 0, 9 do
        swait()
        fval = fval + 0.05
        flol = flol - 0.1
        flil = flil - 0.1
        txtlb.Text = ""
        txtlb.Position = UDim2.new(0,0,flol,0)
        txtlb2.Position = UDim2.new(0,0,flil,0)
    end
    txtlb.Text = text
wait(watval)
local valinc = 0
for i = 0, 99 do
swait()
valinc = valinc + 0.0001
flol = flol + valinc
flil = flil + valinc
txtlb.Rotation = txtlb.Rotation + valinc*20
txtlb2.Rotation = txtlb2.Rotation - valinc*50
txtlb.Position = UDim2.new(0,0,flol,0)
txtlb2.Position = UDim2.new(0,0,flil,0)
txtlb.TextStrokeTransparency = txtlb.TextStrokeTransparency + 0.01
txtlb.TextTransparency = txtlb.TextTransparency + 0.01
txtlb2.TextStrokeTransparency = txtlb2.TextStrokeTransparency + 0.01
txtlb2.TextTransparency = txtlb2.TextTransparency + 0.01
txtlb.BackgroundTransparency = txtlb.BackgroundTransparency + 0.0025
end
scrg:Destroy()
end))
end))
end
end

function bosschatfunc2(text,color,watval)

if BossChat then
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" [" .. modet.Text .. "] " .. text, "All")
end

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
coroutine.resume(coroutine.create(function()
if v.PlayerGui:FindFirstChild("Dialog")~= nil then
v.PlayerGui:FindFirstChild("Dialog"):destroy()
end
local scrg = Instance.new("ScreenGui",v.PlayerGui)
CFuncs["EchoSound"].Create("rbxassetid://525200869", scrg, 0.5, 1,0,10,0.1,0.25,1)
scrg.Name = "Dialog"
local txtlb = Instance.new("TextLabel",scrg)
txtlb.Text = ""
txtlb.Font = "Bodoni"
txtlb.TextColor3 = Color3.new(0,0,0)
txtlb.TextStrokeTransparency = 0
txtlb.BackgroundTransparency = 0.75
txtlb.BackgroundColor3 = Color3.new(0,0,0)
txtlb.TextStrokeColor3 = color
txtlb.TextScaled = true
txtlb.Size = UDim2.new(1,0,0.25,0)
txtlb.TextXAlignment = "Left"
txtlb.Position = UDim2.new(0,0,0.75 + 1,0)
local txtlb2 = Instance.new("TextLabel",scrg)
txtlb2.Text = "User:"
txtlb2.Font = "Arcade"
txtlb2.TextColor3 = Color3.new(0,0,0)
txtlb2.TextStrokeTransparency = 0
txtlb2.BackgroundTransparency = 1
txtlb2.TextStrokeColor3 = color
txtlb2.TextSize = 40
txtlb2.Size = UDim2.new(1,0,0.25,0)
txtlb2.TextXAlignment = "Left"
txtlb2.Position = UDim2.new(0,0,1,0)
local fvalen = 0.55
local fval = -0.49
coroutine.resume(coroutine.create(function()
while true do
swait()
if chaosmode == true then
txtlb.Rotation = math.random(-1,1)
txtlb2.Rotation = math.random(-1,1)
txtlb.Position = txtlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb.TextStrokeColor3 = BrickColor.random().Color
txtlb2.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if scrg.Parent ~= nil then
    fvalen = fvalen - 0.0001
elseif scrg.Parent == nil then
break
end
end
end))
local flol = 1.75
local flil = 1.6
coroutine.resume(coroutine.create(function()
    for i = 0, 9 do
        swait()
        fval = fval + 0.05
        flol = flol - 0.1
        flil = flil - 0.1
        txtlb.Text = ""
        txtlb.Position = UDim2.new(0,0,flol,0)
        txtlb2.Position = UDim2.new(0,0,flil,0)
    end
    txtlb.Text = text
wait(watval)
local valinc = 0
for i = 0, 99 do
swait()
valinc = valinc + 0.0001
flol = flol + valinc
flil = flil + valinc
txtlb.Rotation = txtlb.Rotation + valinc*20
txtlb2.Rotation = txtlb2.Rotation - valinc*50
txtlb.Position = UDim2.new(0,0,flol,0)
txtlb2.Position = UDim2.new(0,0,flil,0)
txtlb.TextStrokeTransparency = txtlb.TextStrokeTransparency + 0.01
txtlb.TextTransparency = txtlb.TextTransparency + 0.01
txtlb2.TextStrokeTransparency = txtlb2.TextStrokeTransparency + 0.01
txtlb2.TextTransparency = txtlb2.TextTransparency + 0.01
txtlb.BackgroundTransparency = txtlb.BackgroundTransparency + 0.0025
end
scrg:Destroy()
end))
end))
end
end

loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

CFuncs = {
	
	["Part"] = {
		
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size) 
			
			local Part = Create("Part") {
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material,
			}
			
			RemoveOutlines(Part)
			return Part
		end;
	};
	
	["Mesh"] = {
		
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale) 
			
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			
			return Msh
		end;
	};
	
	["Weld"] = {
		
		Create = function(Parent, Part0, Part1, C0, C1) 
			
			local Weld = Create("Weld") {
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			
			return Weld
		end;
	};

	["Sound"] = {
		
		Create = function(id, par, vol, pit) 
			
			coroutine.resume(coroutine.create(function() 
				
				local S = Create("Sound") {
					Volume = vol,
                                        		Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				
				wait()
				S:play()
				
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};

	["TimeSound"] = {
		
		Create = function(id, par, vol, pit, timepos) 
			
			coroutine.resume(coroutine.create(function() 
				
				local S = Create("Sound") {
					Volume = vol,
                                        		Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
                                        		TimePosition = timepos,
					Parent = par or workspace,
				}
				
				wait()
				S:play()
				
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};
	
	["EchoSound"] = {
		
		Create = function(id, par, vol, pit, timepos,delays,echodelay,fedb,dryl) 
			
			coroutine.resume(coroutine.create(function() 
				
				local Sas = Create("Sound") {
					Volume = vol,
                    				Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
                    				TimePosition = timepos,
					Parent = par or workspace,
				}
				
				local E = Create("EchoSoundEffect") {
					Delay = echodelay,
                    				Name = "Echo",
					Feedback = fedb,
                    				DryLevel = dryl,
					Parent = Sas,
				}
				
				wait() 
				Sas:play() 
				
				game:GetService("Debris"):AddItem(Sas, delays)
			end))
		end;
	};

	["LongSound"] = {
		
		Create = function(id, par, vol, pit) 
			
			coroutine.resume(coroutine.create(function() 
				
				local S = Create("Sound") {
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				
				wait()
				S:play()
				
				game:GetService("Debris"):AddItem(S, 60)
			end))
		end;
	};
	
	["ParticleEmitter"] = {
		
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			
			local fp = Create("ParticleEmitter") {
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			
			return fp
		end;
	};

	CreateTemplate = {
	
	};
}



New = function(Object, Parent, Name, Data) 
	
	local Object = Instance.new(Object)
	
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	
	Object.Parent = Parent
	Object.Name = Name
	
	return Object
end

local halocolor = BrickColor.new("White")
local halocolor2 = BrickColor.new("White")
local starcolor = BrickColor.new("White")
local lunacolor = BrickColor.new("White")
local lunacolor2 = BrickColor.new("White")
local wepcolor = BrickColor.new("White")
local maincolor = BrickColor.new("White")

local m = Instance.new("Model",char)
local m2 = Instance.new("Model",char)
local m3 = Instance.new("Model",char)
local mw1 = Instance.new("Model",char)
local mw2 = Instance.new("Model",char)

gui = function(GuiType, parent, text, backtrans, backcol, pos, size) 
	
	local gui = it(GuiType)
	gui.Parent = parent
	gui.Text = text
	gui.BackgroundTransparency = backtrans
	gui.BackgroundColor3 = backcol
	gui.SizeConstraint = "RelativeXY"
	gui.TextXAlignment = "Center"
	gui.TextYAlignment = "Center"
	gui.Position = pos
	gui.Size = size
	gui.Font = "SourceSans"
	gui.FontSize = "Size14"
	gui.TextWrapped = false
	gui.TextStrokeTransparency = 0
	gui.TextColor = BrickColor.new("White")
	
	return gui
end

--#-------------------------------------------------------#--
 --                         GUI STUFF                           --
--#-------------------------------------------------------#--

local basgui = it("GuiMain")
basgui.Parent = plr.PlayerGui
basgui.Name = "VISgui"
local fullscreenz = it("Frame")
fullscreenz.Parent = basgui
fullscreenz.BackgroundColor3 = Color3.new(255, 255, 255)
fullscreenz.BackgroundTransparency = 1
fullscreenz.BorderColor3 = Color3.new(17, 17, 17)
fullscreenz.Size = UDim2.new(1, 0, 1, 0)
fullscreenz.Position = UDim2.new(0, 0, 0, 0)

local backFrame1 = it("Frame")
backFrame1.Parent = basgui

coroutine.resume(coroutine.create(function() 
while true do
wait()
pcall(function() backFrame1.BackgroundColor3 = MAINRUINCOLOR.Color end)
end
end))

backFrame1.BorderColor3 = Color3.new(255, 255, 255)
backFrame1.BackgroundTransparency = 0.25
backFrame1.Size = UDim2.new(1.5, 0, 0.125, 0)
backFrame1.Position = UDim2.new(-0.25, 0, 0.85, 0)
backFrame1.ZIndex = 999

local backFrame2 = it("Frame")
backFrame2.Parent = basgui

backFrame2.BackgroundColor3 = BrickColor.new("White").Color

backFrame2.BorderColor3 = Color3.new(255, 255, 255)
backFrame2.BackgroundTransparency = 0.25
backFrame2.Size = UDim2.new(1.5, 0, 0.2, 0)
backFrame2.Position = UDim2.new(-0.25, 0, 0.95, 0)

local rotateFrame = it("Frame")
rotateFrame.Parent = basgui

coroutine.resume(coroutine.create(function() 
while true do
wait()
pcall(function() rotateFrame.BackgroundColor3 = MAINRUINCOLOR.Color end)
end
end))

rotateFrame.BorderColor3 = Color3.new(255, 255, 255)
rotateFrame.BackgroundTransparency = 0.5
rotateFrame.Size = UDim2.new(0.076, 0, 0.15, 0)
rotateFrame.Position = UDim2.new(0.457, 0, 0.743, 0)
rotateFrame.Rotation = 45
rotateFrame.ZIndex = 999

local rotateFrame2 = it("Frame")
rotateFrame2.Parent = basgui

coroutine.resume(coroutine.create(function() 
while true do
wait()
pcall(function() rotateFrame2.BackgroundColor3 = MAINRUINCOLOR.Color end)
end
end))

rotateFrame2.BorderColor3 = Color3.new(255, 255, 255)
rotateFrame2.BackgroundTransparency = 0.5
rotateFrame2.Size = UDim2.new(0.05, 0, 0.1, 0)
rotateFrame2.Position = UDim2.new(0.47, 0, 0.8, 0)
rotateFrame2.Rotation = 45
rotateFrame2.ZIndex = 999

local imgl2 = Instance.new("ImageLabel",fullscreenz)
imgl2.BackgroundTransparency = 1
imgl2.BorderSizePixel = 0
imgl2.ImageTransparency = 0
imgl2.Position = UDim2.new(0.815,-200,0.6,-200)
imgl2.Size = UDim2.new(0,750,0,750)
imgl2.Image = "rbxassetid://2344830904"
imgl2.ZIndex = 99999
imgl2.ImageColor3 = Color3.new(0.25,0,0)
local techc = imgl2:Clone()
techc.Parent = fullscreenz
techc.ImageTransparency = 0
techc.Size = UDim2.new(0,700,0,700)
techc.Position = UDim2.new(0.803,-150,0.575,-150)
techc.Image = "rbxassetid://2092248396"
techc.ZIndex = 99999
techc.ImageColor3 = Color3.new(1,0,0)
local circl = imgl2:Clone()
circl.Parent = fullscreenz
circl.ImageTransparency = 0
circl.Size = UDim2.new(0,400,0,400)
circl.Position = UDim2.new(0.79,25,0.55,25)
circl.Image = "rbxassetid://2312119891"
circl.ZIndex = 99999
circl.ImageColor3 = Color3.new(1,0,0)
local circl2 = imgl2:Clone()
circl2.Parent = fullscreenz
circl2.ImageTransparency = 0
circl2.Size = UDim2.new(0,600,0,600)
circl2.Position = UDim2.new(0.77,-50,0.55,-50)
circl2.Image = "rbxassetid://2312119891"
circl2.ZIndex = 99999
circl2.ImageColor3 = Color3.new(1,0,0)
local imgl2b = imgl2:Clone()
imgl2b.Parent = fullscreenz
imgl2b.ImageTransparency = 0
imgl2b.Size = UDim2.new(0,650,0,650)
imgl2b.Position = UDim2.new(0.79,-100,0.55,-100)
imgl2b.ImageColor3 = Color3.new(0,0,0)
imgl2b.ZIndex = 99999
imgl2b.ImageColor3 = Color3.new(1,0,0)
local ned = Instance.new("TextLabel",fullscreenz)
ned.Font = "Fantasy"
ned.BackgroundTransparency = 1
ned.BorderSizePixel = 0.65
ned.Size = UDim2.new(0.6,0,0.6,0)
ned.Position = UDim2.new(0.38,0,0.85,0)
ned.TextTransparency = HideSecondText
ned.TextStrokeTransparency = HideSecondText
ned.Text = "MAYHEM"
ned.TextSize = 85
ned.Rotation = 1
ned.TextXAlignment = "Right"
ned.TextYAlignment = "Top"
ned.ZIndex = 99999
ned.TextColor3 = Color3.new(0.25,0,0)
ned.TextStrokeColor3 = Color3.new(1,0,0)

local sideText = Instance.new("TextLabel",fullscreenz)
sideText.Font = "Fantasy"
sideText.BackgroundTransparency = 1
sideText.BorderSizePixel = 0.65
sideText.Size = UDim2.new(0.5,0,0.5,0)
sideText.Position = UDim2.new(0.01,0,0.9,0)
sideText.TextTransparency = HideSText
sideText.TextStrokeTransparency = HideSText

coroutine.resume(coroutine.create(function() 
	
	while wait() do
		
		sideText.Text = "Side : " .. glitchermode
	end
end))

sideText.TextSize = 34
sideText.Rotation = 1
sideText.TextXAlignment = "Left"
sideText.TextYAlignment = "Top"
sideText.ZIndex = 99999
sideText.TextColor3 = Color3.new(0.25,0,0)
sideText.TextStrokeColor3 = Color3.new(1,0,0)

local sideText2 = Instance.new("TextLabel",fullscreenz)
sideText2.Font = "Fantasy"
sideText2.BackgroundTransparency = 1
sideText2.BorderSizePixel = 0.65
sideText2.Size = UDim2.new(0.5,0,0.5,0)
sideText2.Position = UDim2.new(0.01,0,0.95,0)
sideText2.TextTransparency = HideSText
sideText2.TextStrokeTransparency = HideSText
sideText2.Text = "Damage = Disabled"
sideText2.TextSize = 34
sideText2.Rotation = 1
sideText2.TextXAlignment = "Left"
sideText2.TextYAlignment = "Top"
sideText2.ZIndex = 99999
sideText2.TextColor3 = Color3.new(0.25,0,0)
sideText2.TextStrokeColor3 = Color3.new(1,0,0)

local centerText = Instance.new("TextLabel",fullscreenz)
centerText.Font = "Fantasy"
centerText.BackgroundTransparency = 1
centerText.BorderSizePixel = 0.65
centerText.Size = UDim2.new(0.6,0,0.6,0)
centerText.Position = UDim2.new(0.2,0,0.85,0)
centerText.TextTransparency = HideSText
centerText.TextStrokeTransparency = HideSText

coroutine.resume(coroutine.create(function() 
	
	while wait() do
		
		centerText.Text = glitchermode.." Glitcher"
	end
end))

centerText.TextSize = 80
centerText.Rotation = 1
centerText.TextXAlignment = "Center"
centerText.TextYAlignment = "Top"
centerText.ZIndex = 99999
centerText.TextColor3 = Color3.new(0.25,0,0)
centerText.TextStrokeColor3 = Color3.new(1,0,0)

centerText2 = Instance.new("TextLabel",fullscreenz)
centerText2.Font = "Fantasy"
centerText2.BackgroundTransparency = 1
centerText2.BorderSizePixel = 0.65
centerText2.Size = UDim2.new(0.6,0,0.6,0)
centerText2.Position = UDim2.new(0.2,0,0.92,0)
centerText2.TextTransparency = HideSText
centerText2.TextStrokeTransparency = HideSText
centerText2.Text = "D-Mode-D - Shriek"
centerText2.TextSize = 46
centerText2.Rotation = 1
centerText2.TextXAlignment = "Center"
centerText2.TextYAlignment = "Top"
centerText2.ZIndex = 99999
centerText2.TextColor3 = Color3.new(0.25,0,0)
centerText2.TextStrokeColor3 = Color3.new(1,0,0)

local extrawingmod1 = Instance.new("Model",char)
local extrawingmod2 = Instance.new("Model",char)

function CreateParta(parent,transparency,reflectance,material,brickcolor)
local p = Instance.new("Part")
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = parent
p.Size = Vector3.new(0.1,0.1,0.1)
p.Transparency = transparency
p.Reflectance = reflectance
p.CanCollide = false
p.Locked = true
p.BrickColor = brickcolor
p.Material = material
return p
end

function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND
	coroutine.resume(coroutine.create(function()
		NEWSOUND = Instance.new("Sound")
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.EmitterSize = VOLUME * 3
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id=" .. ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat
				wait(1)
			until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end

function CreateMesh(parent,meshtype,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = meshtype
mesh.Scale = Vector3.new(x1*10,y1*10,z1*10)
return mesh
end

function CreateSpecialMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "FileMesh"
mesh.MeshId = meshid
mesh.Scale = Vector3.new(x1,y1,z1)
return mesh
end


function CreateSpecialGlowMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "FileMesh"
mesh.MeshId = meshid
mesh.TextureId = "http://www.roblox.com/asset/?id=269748808"
mesh.Scale = Vector3.new(x1,y1,z1)
mesh.VertexColor = Vector3.new(parent.BrickColor.r, parent.BrickColor.g, parent.BrickColor.b)
return mesh
end

function CreateWeld(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
local weld = Instance.new("Weld")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
return weld
end

--#-------------------------------------------------------#--
 --                      SECOND CHAR                        --
--#-------------------------------------------------------#--

local secondchar = Instance.new("Model",char)
local GhostCol = BrickColor.new("Really red")
local sectors = CreateParta(secondchar,1,0,"Neon",GhostCol)
CreateMesh(sectors,"Brick",2*8,2*8,1*8)
local torsweld = CreateWeld(sectors,root,sectors,1,-1,-2,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
 
local seclarm = CreateParta(secondchar,1,0,"Neon",GhostCol)
CreateMesh(seclarm,"Brick",1*8,2*8,1*8)
local larmsweld = CreateWeld(seclarm,sectors,seclarm,1.5,0,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
 
local secrarm = CreateParta(secondchar,1,0,"Neon",GhostCol)
CreateMesh(secrarm,"Brick",1*8,2*8,1*8)
local rarmsweld = CreateWeld(secrarm,sectors,secrarm,-1.5,0,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
 
local seclleg = CreateParta(secondchar,1,0,"Neon",GhostCol)
CreateMesh(seclleg,"Brick",1*8,2*8,1*8)
local llegsweld = CreateWeld(seclleg,sectors,seclleg,0.5,2,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
 
local secrleg = CreateParta(secondchar,1,0,"Neon",GhostCol)
CreateMesh(secrleg,"Brick",1*8,2*8,1*8)
local rlegsweld = CreateWeld(secrleg,sectors,secrleg,-0.5,2,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
 
local seched = CreateParta(secondchar,1,0,"Neon",GhostCol)
CreateMesh(seched,"Brick",1*8,1*8,1*8)
local hedsweld = CreateWeld(seched,sectors,seched,0,-1.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

--#-------------------------------------------------------#--
 --                WING AND OTHER STUFF                 --
--#-------------------------------------------------------#--

StarSwords = {}

StarRings = {}

for _,v in pairs(char:GetChildren()) do
	
	if v:IsA("Accessory") and v.Name:find(MagicSwordsName) and v.Handle.Size == Vector3.new(4, 4, 1) then
			
		table.insert(StarSwords,v)
	end
end

for _,v in pairs(char:GetChildren()) do
	
	if v:IsA("Accessory") and v.Name:find(MagicBigRing) and v.Handle.Size == Vector3.new(3,3,3) then
		
		table.insert(StarRings, v)
	end
end

CreateWeld(sorb,rarm,sorb,0,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local sorb2 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb2,larm,sorb2,0,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local handlex = CreateParta(mw2,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0,0,0)
local handlexweld = CreateWeld(handlex,tors,handlex,0,-1.5,-1.05,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local valuaring = 10
for i = 0, 49 do
	valuaring = valuaring + 10
CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(rn,"Brick",0.25,0.1,0.1)
CreateWeld(rn,handlex,rn,0,1,0,math.rad(0),math.rad(0),math.rad(valuaring),0,0,0,math.rad(0),math.rad(0),math.rad(0))
end

handlex = CreateParta(mw2,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0,0,0)
CreateWeld(handlex,tors,handlex,0,-3,-2.1,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local valuaring = 10

for i = 0, 49 do
	valuaring = valuaring + 10
rn = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(rn,"Brick",0.5,0.2,0.2)
CreateWeld(rn,handlex,rn,0,2,0,math.rad(0),math.rad(0),math.rad(valuaring),0,0,0,math.rad(0),math.rad(0),math.rad(0))
end

secondWing = nil

for _, v in pairs(char:GetChildren()) do
	if v:IsA("Accessory") and string.find(v.Name, "Guada") ~= nil then -- finding "Guadana"
		secondWing = v
	end
end

if secondWing then
	
	swingAthp = Instance.new("Attachment",extrawingmod1:GetChildren("Part")[1])
	swingAtho = Instance.new("Attachment",extrawingmod1:GetChildren("Part")[1])

	local HatChoice = secondWing
	HatChoice.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = swingAthp
	HatChoice.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = swingAtho

	swingAthp.Position = Vector3.new(0.55,0.6,-1)
	swingAtho.Rotation = Vector3.new(0,0,0)
end

local handle = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local handleweld = CreateWeld(handle,tors,handle,0,-1.5,-1.05,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local sorb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb,rarm,sorb,0,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local sorb2 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb2,larm,sorb2,0,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local handlex = CreateParta(mw2,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0,0,0)
local handlexweld = CreateWeld(handlex,tors,handlex,0,-1.5,-1.05,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local valuaring = 10
for i = 0, 49 do
	valuaring = valuaring + 10
rn = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(rn,"Brick",0.25,0.1,0.1)
CreateWeld(rn,handlex,rn,0,1,0,math.rad(0),math.rad(0),math.rad(valuaring),0,0,0,math.rad(0),math.rad(0),math.rad(0))
end

handlex = CreateParta(mw2,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0,0,0)
CreateWeld(handlex,tors,handlex,0,-3,-2.1,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local valuaring = 10
for i = 0, 49 do
	valuaring = valuaring + 10
rn = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(rn,"Brick",0.5,0.2,0.2)
CreateWeld(rn,handlex,rn,0,2,0,math.rad(0),math.rad(0),math.rad(valuaring),0,0,0,math.rad(0),math.rad(0),math.rad(0))
end

if StarRings[1] then
	ring2Athp = Instance.new("Attachment",handlex)
	ring2Atho = Instance.new("Attachment",handlex)

	local StarRing = StarRings[1]
	StarRing.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = ring2Athp
	StarRing.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = ring2Atho
	
	ring2Athp.Position = Vector3.new(0,0,-1.3)
	ring2Atho.Rotation = Vector3.new(-90,0,0)
end

local handle = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local handleweld = CreateWeld(handle,tors,handle,0,-1.5,-1.05,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

if char:FindFirstChild(MagicLittleRing) then
	ring1Athp = Instance.new("Attachment",handle)
	ring1Atho = Instance.new("Attachment",handle)

	local StarRing = char:FindFirstChild(MagicLittleRing)
	StarRing.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = ring1Athp
	StarRing.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = ring1Atho
	
	ring1Athp.Position = Vector3.new(0,0,0)
	ring1Atho.Rotation = Vector3.new(0,0,0)
end

function weld(parent, part0, part1, c0) 
	
	local weld = Instance.new("Weld") 
	weld.Parent = parent
	weld.Part0 = part0 
	weld.Part1 = part1 
	weld.C0 = c0
	
	return weld
end

local RotatingFire1 = Instance.new("Part", m)
local fireWeld1 = weld(RotatingFire1,handle,RotatingFire1,CFrame.new(0, 0, 0))
RotatingFire1.Transparency = 1

local RotatingFire2 = Instance.new("Part", m)
local fireWeld2 = weld(RotatingFire2,handle,RotatingFire2,CFrame.new(0, 0, 0))
RotatingFire2.Transparency = 1

local RotatingFire3 = Instance.new("Part", m)
local fireWeld3 = weld(RotatingFire3,handle,RotatingFire3,CFrame.new(0, 0, 0))
RotatingFire3.Transparency = 1

if char:FindFirstChild(MagicAccessory) then
	
	fireAthp = Instance.new("Attachment",RotatingFire1)
	fireAtho = Instance.new("Attachment",RotatingFire1)

	local fireHat = char:FindFirstChild(MagicAccessory)

	fireHat.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = fireAthp
	fireHat.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = fireAtho
	
	fireAthp.Position = Vector3.new(0,0,0)
	fireAtho.Rotation = Vector3.new(0,0,0)
end

--- Left wing.

lwing1 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing1weld = CreateWeld(lwing1,handle,lwing1,3,0,0,math.rad(5),math.rad(0),math.rad(12.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

if StarSwords[1] then

	lwing1Athp = Instance.new("Attachment",lwing1)
	lwing1Atho = Instance.new("Attachment",lwing1)

	local StarSword = StarSwords[1]
	StarSword.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = lwing1Athp
	StarSword.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = lwing1Atho
	
	lwing1Athp.Position = Vector3.new(0,-1.5,0)
	lwing1Atho.Rotation = Vector3.new(0,0,45)
	table.remove(StarSwords,1)
end

wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing1,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing1,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing1,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25,-2)
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing1,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

tl1 = Instance.new('Trail',wed)
tl1.Attachment0 = A1
tl1.Attachment1 = A0
tl1.Texture = "rbxassetid://2108945559"
tl1.LightEmission = 1
tl1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl1.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tl1.Lifetime = 0.6


lwing2 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing2weld = CreateWeld(lwing2,handle,lwing2,4,1,0,math.rad(10),math.rad(0),math.rad(25),0,0,0,math.rad(0),math.rad(0),math.rad(0))

if StarSwords[1] then
	lwing2Athp = Instance.new("Attachment",lwing2)
	lwing2Atho = Instance.new("Attachment",lwing2)

	local StarSword = StarSwords[1]
	StarSword.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = lwing2Athp
	StarSword.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = lwing2Atho
	
	lwing2Athp.Position = Vector3.new(0,-1,0)
	lwing2Atho.Rotation = Vector3.new(0,0,45)
	table.remove(StarSwords,1)
end

wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing2,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing2,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing2,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25,-2)
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing2,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

tl2 = Instance.new('Trail',wed)
tl2.Attachment0 = A1
tl2.Attachment1 = A0
tl2.Texture = "rbxassetid://2108945559"
tl2.LightEmission = 1
tl2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl2.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tl2.Lifetime = 0.6

lwing3 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing3weld = CreateWeld(lwing3,handle,lwing3,4.75,2,0,math.rad(15),math.rad(0),math.rad(37.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing3,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing3,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing3,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25,-2)
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing3,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

tl3 = Instance.new('Trail',wed)
tl3.Attachment0 = A1
tl3.Attachment1 = A0
tl3.Texture = "rbxassetid://2108945559"
tl3.LightEmission = 1
tl3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl3.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tl3.Lifetime = 0.6

tl1.Enabled = false
tl2.Enabled = false
tl3.Enabled = false
local lwing4 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing4weld = CreateWeld(lwing4,handle,lwing4,5.75,3,0,math.rad(20),math.rad(0),math.rad(50),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing4,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing4,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing4,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing4,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local lwing5 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing5weld = CreateWeld(lwing5,handle,lwing5,6.75,4,0,math.rad(25),math.rad(0),math.rad(62.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

if char:FindFirstChild(MagicLeftExtraSwordName) then
	lwing3Athp = Instance.new("Attachment",lwing5)
	lwing3Atho = Instance.new("Attachment",lwing5)

	local StarSword = char:FindFirstChild(MagicLeftExtraSwordName)
	StarSword.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = lwing3Athp
	StarSword.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = lwing3Atho
	
	lwing3Athp.Position = Vector3.new(0,-0.5,0)
	lwing3Atho.Rotation = Vector3.new(0,0,48)
end

wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing5,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing5,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing5,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing5,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local lwing6 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing6weld = CreateWeld(lwing6,handle,lwing6,7.75,5,0,math.rad(30),math.rad(0),math.rad(75),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing6,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing6,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing6,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing6,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

-- Right wing.

local rwing1 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing1weld = CreateWeld(rwing1,handle,rwing1,-3,0,0,math.rad(5),math.rad(0),math.rad(-12.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

if StarSwords[1] then
	local athp = Instance.new("Attachment",rwing1)
	local atho = Instance.new("Attachment",rwing1)

	local StarSword = StarSwords[1]
	StarSword.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp
	StarSword.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho
	
	athp.Position = Vector3.new(0,-1.5,0)
	atho.Rotation = Vector3.new(0,0,45)
	table.remove(StarSwords,1)
end

wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing1,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing1,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr1 = Instance.new('Trail',wed)
tr1.Attachment0 = A1
tr1.Attachment1 = A0
tr1.Texture = "rbxassetid://2108945559"
tr1.LightEmission = 1
tr1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr1.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr1.Lifetime = 0.6

local rwing2 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing2weld = CreateWeld(rwing2,handle,rwing2,-4,1,0,math.rad(10),math.rad(0),math.rad(-25),0,0,0,math.rad(0),math.rad(0),math.rad(0))

if StarSwords[1] then
	local athp = Instance.new("Attachment",rwing2)
	local atho = Instance.new("Attachment",rwing2)

	local StarSword = StarSwords[1]
	StarSword.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp
	StarSword.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho
	
	athp.Position = Vector3.new(0,-1,0)
	atho.Rotation = Vector3.new(0,0,45)
	table.remove(StarSwords,1)
end

wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing2,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing2,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)
tr2 = Instance.new('Trail',wed)
tr2.Attachment0 = A1
tr2.Attachment1 = A0
tr2.Texture = "rbxassetid://2108945559"
tr2.LightEmission = 1
tr2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr2.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr2.Lifetime = 0.6

local rwing3 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing3weld = CreateWeld(rwing3,handle,rwing3,-4.75,2,0,math.rad(15),math.rad(0),math.rad(-37.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing3,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing3,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr3 = Instance.new('Trail',wed)
tr3.Attachment0 = A1
tr3.Attachment1 = A0
tr3.Texture = "rbxassetid://2108945559"
tr3.LightEmission = 1
tr3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr3.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr3.Lifetime = 0.6


local rwing4 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing4weld = CreateWeld(rwing4,handle,rwing4,-5.75,3,0,math.rad(20),math.rad(0),math.rad(-50),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing4,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing4,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing4,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing4,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local rwing5 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing5weld = CreateWeld(rwing5,handle,rwing5,-6.75,4,0,math.rad(25),math.rad(0),math.rad(-62.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

if char:FindFirstChild(MagicRightExtraSwordName) then
	rwing3Athp = Instance.new("Attachment",rwing5)
	rwing3Atho = Instance.new("Attachment",rwing5)

	local StarSword = char:FindFirstChild(MagicRightExtraSwordName)
	StarSword.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = rwing3Athp
	StarSword.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = rwing3Atho
	
	rwing3Athp.Position = Vector3.new(0,-0.5,0)
	rwing3Atho.Rotation = Vector3.new(0,0,48)
end

wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing5,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing5,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing5,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing5,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local rwing6 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing6weld = CreateWeld(rwing6,handle,rwing6,-7.75,3,0,math.rad(30),math.rad(0),math.rad(-75),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing6,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing6,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing6,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing6,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

if WarnChat then

	warnedpeople("The shadow glitcher 1.1 [FE Version] is loaded","Fantasy",BrickColor.new("White").Color,BrickColor.new("Really black").Color)

end
---- HERES THE RING


ran = CreateParta(m2,0,0,"Glass",wepcolor)
CreateMesh(ran,"Wedge",1.02,1.02,1.02)
CreateWeld(ran,larm,ran,0,0.15,0,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
ran = CreateParta(m,0,0,"Glass",wepcolor)
CreateMesh(ran,"Wedge",0.9,0.9,1.025)
CreateWeld(ran,larm,ran,0,0.155,0,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
ran = CreateParta(m,0,0,"Glass",wepcolor)
CreateMesh(ran,"Wedge",1.025,0.9,0.9)
CreateWeld(ran,larm,ran,0,0.155,-0.025,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))


gan = CreateParta(m,0,0,"Glass",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,larm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m,0,0,"Glass",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,larm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))



gan = CreateParta(m2,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,larm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m2,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,larm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gane = CreateParta(m3,0,0,"Glass",lunacolor2)
CreateMesh(gane,"Brick",1.0625,0.2,1.0625)
CreateWeld(gane,larm,gane,0,0.6,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

star = CreateParta(m,0,0,"Glass",wepcolor)
CreateSpecialMesh(star,"http://www.roblox.com/asset/?id=45428961",2.5,2.5,2.5)
CreateWeld(star,larm,star,0,0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
starl = CreateParta(m3,0,0,"SmoothPlastic",starcolor)
CreateSpecialMesh(starl,"http://www.roblox.com/asset/?id=45428961",1.95,2.55,1.95)
CreateWeld(starl,larm,starl,0,0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
--- second ring

ran = CreateParta(m2,0,0,"Granite",wepcolor)
CreateMesh(ran,"Wedge",1.02,1.02,1.02)
CreateWeld(ran,rarm,ran,0,0.15,0,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
ran = CreateParta(m,0,0,"Granite",wepcolor)
CreateMesh(ran,"Wedge",0.9,0.9,1.025)
CreateWeld(ran,rarm,ran,0,0.155,0,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
ran = CreateParta(m,0,0,"Granite",wepcolor)
CreateMesh(ran,"Wedge",1.025,0.9,0.9)
CreateWeld(ran,rarm,ran,0,0.155,-0.025,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m,0,0,"Granite",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,rarm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m,0,0,"Granite",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,rarm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))



gan = CreateParta(m2,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,rarm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m2,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,rarm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gane = CreateParta(m3,0,0,"Granite",lunacolor2)
CreateMesh(gane,"Brick",1.0625,0.2,1.0625)
CreateWeld(gane,rarm,gane,0,0.6,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

star = CreateParta(m,0,0,"Granite",wepcolor)
CreateSpecialMesh(star,"http://www.roblox.com/asset/?id=45428961",2.5,2.5,2.5)
CreateWeld(star,rarm,star,0,-0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
starl = CreateParta(m3,0,0,"Granite",starcolor)
CreateSpecialMesh(starl,"http://www.roblox.com/asset/?id=45428961",1.95,2.55,1.95)
CreateWeld(starl,rarm,starl,0,-0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))




for i, v in pairs(m:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("White")
v.Material = "Glass"
end
end
for i, v in pairs(m2:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("White")
v.Material = "Granite"
end
end
for i, v in pairs(m3:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("White")
v.Material = "Neon"
end
end
for i, v in pairs(mw2:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("White")
v.Material = "Neon"
end
end
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0
v.BrickColor = BrickColor.new("White")
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0.8
v.BrickColor = BrickColor.new("White")
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod2:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0.8
v.BrickColor = BrickColor.new("White")
v.Material = "Neon"
end
end
MAINRUINCOLOR = BrickColor.new("White")

--- Clothes

--[[ local Hair = Instance.new("Part", char)
Hair.Name = "Hair"
Hair.CanCollide = false
Hair.BrickColor = BrickColor.new("Institutional white")
Hair.Transparency = 0
Hair.Material = "Plastic"
Hair.Size = Vector3.new(1, 1, 2)
Hair.TopSurface = Enum.SurfaceType.Smooth
Hair.BottomSurface = Enum.SurfaceType.Smooth
 
local Weld = Instance.new("Weld", Hair)
Weld.Part0 = hed
Weld.Part1 = Hair
Weld.C1 = CFrame.new(0, -.6, 0)
Weld.C0 = CFrame.Angles(math.rad(0),math.rad(0),0)
 
local M2 = Instance.new("SpecialMesh")
M2.Parent = Hair
M2.MeshId = "http://www.roblox.com/asset/?id=16627529"
M2.TextureId = "http://www.roblox.com/asset/?id=16627494"
M2.Scale = Vector3.new(1, 1, 1) --]]

for i,v in pairs(char:children()) do
if v:IsA("Shirt") and v:IsA("Pants") and v:IsA("Hat") and v:IsA("Accessory") then
v:Remove()
end
end

function RemoveOutlines(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end

function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({
    Parent = Parent,
    Reflectance = Reflectance,
    Transparency = Transparency,
    CanCollide = false,
    Locked = true,
    BrickColor = BrickColor.new(tostring(BColor)),
    Name = Name,
    Size = Size,
    Material = Material
  })
  Part.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
  RemoveOutlines(Part)
  return Part
end
function CreateMesha(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({
    Parent = Part,
    Offset = OffSet,
    Scale = Scale
  })
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end

function CreateWeld(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({
    Parent = Parent,
    Part0 = Part0,
    Part1 = Part1,
    C0 = C0,
    C1 = C1
  })
  return Weld
end

function RandomMaterial()
	local getRandom;
	local material;
	
	local function IsTerrainMaterial(mat)
		local isMaterial = pcall(function() workspace:FindFirstChildOfClass'Terrain':GetMaterialColor(mat) end)
		return isMaterial
	end
	
	getRandom = function()
		local mat = Enum.Material:GetEnumItems()[math.random(1,#Enum.Material:GetEnumItems())]
		if(not IsTerrainMaterial(mat))then material = mat else getRandom() end
	end
	
	getRandom()
	repeat wait() until material
	
	return material
end

function RandomCaps(str)
	local new = ""
	
	for i = 1, #str do
		if(math.random(1,2) == 1)then
			new = new .. (str:sub(i,i):upper())
		else
			new = new .. str:sub(i,i)
		end
	end
	
	return new
end

Player=game:GetService("Players").LocalPlayer
Character=Player.Character
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
mouse=Player:GetMouse()
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid

Character.Humanoid.Died:Connect(function() 
	
	connection:Disconnect()
	
	scriptDisabled = true
	
end)

local charSpeed = 0

Humanoid.Running:connect(function(speed) 

	if speed > 5 then

		KeyAnim = true
		
		charSpeed = speed

	elseif speed < 1 then

		KeyAnim = false
		
		charSpeed = speed
	end
end)

m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
combo=0
mana=0
trispeed=.2
attackmode='none'

local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
local sine = 0
local change = 1

function RecolorTextAndRename(name,col1,col2,font) 
	
	modet.TextStrokeColor3 = col2
	modet.TextColor3 = col1
	modet.Font = font
	modet.Text = name
	techc.ImageColor3 = col2
	circl.ImageColor3 = col2
	circl2.ImageColor3 = col1
	imgl2.ImageColor3 = col1
	imgl2b.ImageColor3 = col2
	ned.Text = name
	ned.TextColor3 = col1
	ned.TextStrokeColor3 = col2
	ned.Font = "Fantasy"
	sideText.TextColor3 = col1
	sideText.TextStrokeColor3 = col2
	sideText.Font = "Fantasy"
	sideText2.TextColor3 = col1
	sideText2.TextStrokeColor3 = col2
	sideText2.Font = "Fantasy"
	centerText.TextColor3 = col1
	centerText.TextStrokeColor3 = col2
	centerText.Font = "Fantasy"
	centerText2.TextColor3 = col1
	centerText2.TextStrokeColor3 = col2
	centerText2.Font = "Fantasy"
end

-- save shoulders 

RSH, LSH=nil, nil 

-- welds 

RW, LW = Instance.new("Weld"), Instance.new("Weld") 

RW.Name = "Right Shoulder"
LW.Name="Left Shoulder"

LH = Torso["Left Hip"]
RH = Torso["Right Hip"]

TorsoColor = Torso.BrickColor

function NoOutline(Part) 
	
	Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end

ch = Character

RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 

RSH.Parent = nil 
LSH.Parent = nil 

RW.Name = "Right Shoulder"
RW.Part0 = ch.Torso 
RW.C0 = cf(1.5, 0.5, 0) -- CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = cf(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 

LW.Name = "Left Shoulder"
LW.Part0 = ch.Torso 
LW.C0 = cf(-1.5, 0.5, 0) -- CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = cf(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 

local Stats = Instance.new("BoolValue")
Stats.Name = "Stats"
Stats.Parent = Character

local Atk = Instance.new("NumberValue")
Atk.Name = "Damage"
Atk.Parent = Stats
Atk.Value = 1

local Def = Instance.new("NumberValue")
Def.Name = "Defense"
Def.Parent = Stats
Def.Value=1

local Speed = Instance.new("NumberValue")
Speed.Name = "Speed"
Speed.Parent = Stats
Speed.Value = 1

local Mvmt = Instance.new("NumberValue")
Mvmt.Name = "Movement"
Mvmt.Parent = Stats
Mvmt.Value = 1

local donum=0

function part(formfactor, parent, reflectance, transparency, brickcolor, name, size) 
	
	local fp = it("Part")
	fp.formFactor = formfactor 
	fp.Parent = parent
	fp.Reflectance = reflectance
	fp.Transparency = transparency
	fp.CanCollide = false 
	fp.Locked = true
	fp.BrickColor = brickcolor
	fp.Name = name
	fp.Size = size
	fp.Position = Torso.Position 
	
	NoOutline(fp)
	
	fp.Material = "SmoothPlastic"
	fp:BreakJoints()
	
	return fp 
end 
 
function mesh(Mesh, part, meshtype, meshid, offset, scale) 
	
	local mesh = it(Mesh) 
	mesh.Parent = part
	
	if Mesh == "SpecialMesh" then
		
		mesh.MeshType = meshtype
		
		if meshid ~= "nil" then
			
			mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
		end
	end
	
	mesh.Offset=offset
	mesh.Scale=scale
	
	return mesh
end
 
function weld(parent, part0, part1, c0) 
	
	local weld=it("Weld") 
	weld.Parent=parent
	weld.Part0=part0 
	weld.Part1=part1 
	weld.C0=c0
	return weld
end
 
local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

--#-------------------------------------------------------#--
 --                 SazEreno's Artificial HB                   --
--#-------------------------------------------------------#--

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

Frame_Speed = 1 / 60
frame = Frame_Speed
tf = 0

allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p) 
	
	tf = tf + s
	
	if tf >= frame then
		
		if allowframeloss then
			
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			
			for i = 1, math.floor(tf / frame) do
				
				script.ArtificialHB:Fire()
			end
			
			lastframe = tick()
		end
		
		if tossremainder then
			
			tf = 0
		else
			
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

--#-------------------------------------------------------#--
 --                   USEFUL FUNCTIONS                     --
--#-------------------------------------------------------#--

function swait(num)
	
	if num == 0 or num == nil then
		
		game:service("RunService").Stepped:wait(0)
		
	else
		
		for i = 0, num do
			
			game:service("RunService").Stepped:wait(0)
		end
	end
end

----------- [[ RAINBOW LEAVE IT TO ME ]] -----------

local r = 255
local g = 0
local b = 0

coroutine.resume(coroutine.create(function() 
	
	while wait() do
		
		if not scriptDisabled then
			
			for i = 0, 254/5 do
				
				swait()
				g = g + 5
			end
			
			for i = 0, 254/5 do
				
				swait()
				r = r - 5
			end
			
			for i = 0, 254/5 do
				
				swait()
				b = b + 5
				end
				for i = 0, 254/5 do
				swait()
				g = g - 5
			end
			
			for i = 0, 254/5 do
				
				swait()
				r = r + 5
			end
			
			for i = 0, 254/5 do
				
				swait()
				b = b - 5
			end
		end
	end
end))
 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Really red")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
local l1 = Instance.new("PointLight",w1)
l1.Color = Color3.new(170,0,0)
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Really red")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
local l2 = Instance.new("PointLight",w2)
l2.Color = Color3.new(170,0,0)
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
 

function Damagefunc(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  if hit.Parent == nil then
    return
  end
  local h = hit.Parent:FindFirstChildOfClass("Humanoid")
  for _, v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Head") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return
    end
    --[[ local c = Create("ObjectValue")({
      Name = "creator",
      Value = game:GetService("Players").LocalPlayer,
      Parent = h
    })
    game:GetService("Debris"):AddItem(c, 0.5) --]]
    if HitSound ~= nil and HitPitch ~= nil then
      CFuncs.Sound.Create(HitSound, hit, 1, HitPitch)
    end
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil and block.className == "IntValue" and block.Value > 0 then
      blocked = true
      block.Value = block.Value - 1
      print(block.Value)
    end
    if blocked == false then
      HitHealth = h.Health
      h.MaxHealth = 100
      -- h.Health = h.Health - Damage
      if HitHealth ~= h.Health and HitHealth ~= 0 and 0 >= h.Health and h.Parent.Name ~= "Hologram" then
        print("gained kill")
        dmg(h.Parent)
      end
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
      DamageFling(h.Parent)
    else
      -- h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
      DamageFling(h.Parent)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
        swait(1)
        -- HHumanoid.PlatformStand = false
      end), hum)
      --[[ local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Create("BodyVelocity")({
        velocity = angle * knockback,
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      local rl = Create("BodyAngularVelocity")({
        P = 3000,
        maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
        angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5) --]]
    elseif Type == "Normal" then
      --[[ local vp = Create("BodyVelocity")({
        P = 500,
        maxForce = Vector3.new(math.huge, 0, math.huge),
        velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
      })
      if knockback > 0 then
        -- vp.Parent = hit.Parent.Head
      end
      game:GetService("Debris"):AddItem(vp, 0.5) --]]
    elseif Type == "Up" then
      --[[ local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 1) --]]
    elseif Type == "Leech" then
      local hum = hit.Parent.Humanoid
      if hum ~= nil then
        for i = 0, 2 do
          Effects.Sphere.Create(BrickColor.new("Bright red"), hit.Parent.Torso.CFrame * cn(0, 0, 0) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 15, 1, 0, 5, 0, 0.02)
        end
        -- Humanoid.Health = Humanoid.Health + 10
      end
    elseif Type == "UpKnock" then
     --[[ local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      if hum ~= nil then
        hitr = true
      end
      coroutine.resume(coroutine.create(function(HHumanoid)
        swait(5)
        HHumanoid.PlatformStand = false
        hitr = false
      end), hum)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 1) --]]
    elseif Type == "Snare" then
      --[[ local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1) --]]
    elseif Type == "Slashnare" then
      Effects.Block.Create(BrickColor.new("Pastel Blue"), hit.Parent.Torso.CFrame * cn(0, 0, 0), 15*4, 15*4, 15*4, 3*4, 3*4, 3*4, 0.07)
      for i = 1, math.random(4, 5) do
        Effects.Sphere.Create(BrickColor.new("Teal"), hit.Parent.Torso.CFrame * cn(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 15, 1, 0, 5, 0, 0.02)
      end
      --[[ local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1) --]]
    elseif Type == "Spike" then
      CreateBigIceSword(hit.Parent.Torso.CFrame)
      --[[ local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1) --]]
    elseif Type == "Freeze" then
      --[[ local BodPos = Create("BodyPosition")({
        P = 50000,
        D = 1000,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      local BodGy = Create("BodyGyro")({
        maxTorque = Vector3.new(400000, 400000, 400000) * math.huge,
        P = 20000,
        Parent = hit.Parent.Torso,
        cframe = hit.Parent.Torso.CFrame
      })
      hit.Parent.Torso.Anchored = true
      coroutine.resume(coroutine.create(function(Part)
        swait(1.5)
        Part.Anchored = false
      end), hit.Parent.Torso)
      game:GetService("Debris"):AddItem(BodPos, 3)
      game:GetService("Debris"):AddItem(BodGy, 3) --]]
    end
    --[[ local debounce = Create("BoolValue")({
      Name = "DebounceHit",
      Parent = hit.Parent,
      Value = true
    })
    game:GetService("Debris"):AddItem(debounce, Delay)
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = Player
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5) --]]
  end
end

function ShowDamage(Pos, Text, Time, Color)
  local Rate = 0.03333333333333333
  local Pos = Pos or Vector3.new(0, 0, 0)
  local Text = Text or ""
  local Time = Time or 2
  local Color = Color or Color3.new(1, 0, 1)
  local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Create("BillboardGui")({
    Size = UDim2.new(3, 0, 3, 0),
    Adornee = EffectPart,
    Parent = EffectPart
  })
  local TextLabel = Create("TextLabel")({
    BackgroundTransparency = 1,
    Size = UDim2.new(1, 0, 1, 0),
    Text = Text,
    TextColor3 = Color,
    TextScaled = true,
    Font = Enum.Font.ArialBold,
    Parent = BillboardGui
  })
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  delay(0, function()
    local Frames = Time / Rate
    for Frame = 1, Frames do
      wait(Rate)
      local Percent = Frame / Frames
      EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
      TextLabel.TextTransparency = Percent
    end
    if EffectPart and EffectPart.Parent then
      EffectPart:Destroy()
    end
  end)
end

function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:GetChildren()) do
    local hum = c:findFirstChildOfClass("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Head")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "rbxassetid://231917784", 1)
        end
      end
    end
  end
end

function MagniDamageWithEffect(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:GetChildren()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
	MagicBlock(BrickColor.new("Pastel light blue"),head.CFrame,5,5,5,1,1,1,0.05)
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "rbxassetid://231917784", 1)
        end
      end
    end
  end
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
--http://www.roblox.com/asset/?id=4770560
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
for i=0,1,0.2 do
wait()
Part.CFrame=CF*cf(0,0,-0.4)
end
for i=0,1,delay do
wait()
--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
Mesh.Scale=Mesh.Scale
end
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,CF)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicBlockSteady(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicSphere(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicBlockSteady(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
local refec = Instance.new("ParticleEmitter",handlex)
refec.Texture = "rbxassetid://249270319"
refec.LightEmission = 0.95
refec.Color = ColorSequence.new(BrickColor.new("Really red").Color)
refec.Rate = 50
refec.Lifetime = NumberRange.new(0.5)
refec.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.5,0.75,0),NumberSequenceKeypoint.new(1,0.1,0)})
refec.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.25,0),NumberSequenceKeypoint.new(1,1,0)})
refec.Speed = NumberRange.new(0,2)
refec.Drag = 5
refec.LockedToPart = true
refec.Rotation = NumberRange.new(-500,500)
refec.VelocitySpread = 9000
refec.RotSpeed = NumberRange.new(-500,500)

function MagicShock(brickcolor,cframe,x1,y1,x3,y3,delay,rottype)
local prt=part(3,char,1,1,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
local dec = decal(prt.Color,"http://www.roblox.com/asset/?id=874580939","Front",prt)
local dec2 = decal(prt.Color,"http://www.roblox.com/asset/?id=874580939","Front",prt)
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,0.01))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
dec.Transparency=i
dec2.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockAlt(brickcolor,cframe,x1,y1,x3,y3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,0.01))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockAltCircle(brickcolor,cframe,x1,z1,x3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0.1,0)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,-0.1,0)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,0,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockTrailAlt(brickcolor,cframe,x1,y1,z1,x3,y3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockTrailAlt2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicBlock2(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,cframe)
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cframe
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicBlock3(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(i*20,0,0)
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
local prt2=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.5,0)
end
Part.Parent=nil
end),prt2,msh2)
end
for i=0,1,delay*2 do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=vt((x1+x3)-(x1+x3)*i,(y1+y3)-(y1+y3)*i,(z1+z3)-(z1+z3)*i)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()/10
rand1=math.random()/10
for i=0,1,rand1 do
wait()
CF=CF*cf(0,math.random()/2,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end
 
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*cf(0,y3/2,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function StravEffect(brickcolor,cframe,x,y,z,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x,y,z)
msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://168892363",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,ex,why,zee) 
local num=math.random()
local num2=math.random(-3,2)+math.random()
local numm=0
for i=0,1,delay*2 do
swait()
Part.CFrame=cframe*euler(0,numm*num*10,0)*cf(ex,why,zee)*cf(-i*10,num2,0)
Part.Transparency=i
numm=numm+0.01
end
Part.Parent=nil
Mesh.Parent=nil
end),prt,msh,x,y,z)
end

function dmgstart(dmg,what)
	hitcon = what.Touched:connect(function(hit)
		local hum = hit.Parent:FindFirstChild("Humanoid")
		if hum and not hum:IsDescendantOf(Character) then
			-- hum:TakeDamage(dmg)
		end
	end)
end

function dmgstop()
	hitcon:disconnect()
end

function Cloak()
Face.Parent=nil
cloaked=true
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.2 do
                wait()
                derp.Transparency=i
                end
                derp.Transparency=1
                end),hatp)
                end
        end
        for _,v in pairs(m:children()) do
                if v.className=="Part" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
        end
end
 
function UnCloak()
so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
Face.Parent=Head 
cloaked=false
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.1 do
                wait()
                derp.Transparency=derp.Transparency-0.1
                end
                derp.Transparency=0
                end),hatp)
                end
        end
        for _,v in pairs(m:children()) do
                if v.className=="Part" and v.Name~="hitbox" and v.Name~='tip' then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                v.Transparency=0
                end
        end
end

local origcolor = BrickColor.new("Pastel light blue")
---- This section of explosions.

----


function ring(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, 0)
end
rng:Destroy()
end))
end


function wave(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function wind(type,pos,scale,value,speed)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=1051557"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.CFrame = rng.CFrame*CFrame.Angles(0,0.025*speed,0)
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function groundwind(type,pos,scale,value,speed)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=1051557"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.CFrame = rng.CFrame*CFrame.Angles(0,0.025*speed,0)
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2/5, scaler2)
end
rng:Destroy()
end))
end

function CameraManager()
  if TwoD and not CamInterrupt then
    if Humanoid.Health > 0 then
      Camera.CameraSubject = Humanoid
      Camera.CameraType = "Scriptable"
      Humanoid.AutoRotate = false
      if Booleans.GyroUse then
        Directer.MaxTorque = Vec3(0, huge, 0)
      else
        Directer.MaxTorque = Vec3(0, 0, 0)
      end
      if TargetInfo[1] ~= nil and TargetInfo[2] ~= nil then
        if Booleans.CamFollow then
          CPart.CFrame = cFrame(RootPart.Position, Vec3(TargetInfo[1].Position.X, RootPart.Position.Y, TargetInfo[1].Position.Z))
          Directer.CFrame = cFrame((RootPart.CFrame * cFrame(0, 0, 10)).p, TargetInfo[1].Position)
        else
          CPart.Position = RootPart.Position
        end
      else
        local ahead = (RootPart.CFrame * cFrame(0, 0, -3)).p
        CPart.CFrame = cFrame(RootPart.Position, Vec3(ahead.X, RootPart.Position.Y, ahead.Z))
      end
      Camera.CFrame = lerp(Camera.CFrame, CPart.CFrame * cFrame(25, 3, 0) * Euler(0, radian(90), 0), 0.2)
    else
      Camera.CameraSubject = Humanoid
      Camera.CameraType = "Custom"
    end
  end
end

function ring(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, 0)
end
rng:Destroy()
end))
end


function wave(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function sphere(bonuspeed,type,pos,scale,value,color)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
if ModeOfGlitch ~= 9 then
        rng.BrickColor = color
elseif ModeOfGlitch == 9 then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
end
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = scale
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if ModeOfGlitch == 9 then
coroutine.resume(coroutine.create(function()
while true do
swait()
if not scriptDisabled then
if rng.Parent ~= nil then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
else
break
end
end
end
end))
end
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function sphere2(bonuspeed,type,pos,scale,value,value2,value3,color)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
if ModeOfGlitch ~= 9 then
        rng.BrickColor = color
elseif ModeOfGlitch == 9 then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
end
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = scale
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
scaler2c = 1*value3
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
scaler2c = 1/value3
end
if ModeOfGlitch == 9 then
coroutine.resume(coroutine.create(function()
while true do
if not scriptDisabled then
swait()
if rng.Parent ~= nil then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
else
break
end
end
end
end))
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
scaler2c = scaler2c - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
scaler2c = scaler2c - 0.01/value*bonuspeed
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end))
end

function slash(bonuspeed,rotspeed,rotatingop,typeofshape,type,typeoftrans,pos,scale,value,color)
local type = type
local rotenable = rotatingop
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
if typeoftrans == "In" then
rng.Transparency = 1
end
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "FileMesh"
if typeofshape == "Normal" then
rngm.MeshId = "rbxassetid://662586858"
elseif typeofshape == "Round" then
rngm.MeshId = "rbxassetid://662585058"
end
rngm.Scale = scale
local scaler2 = 1/10
if type == "Add" then
scaler2 = 1*value/10
elseif type == "Divide" then
scaler2 = 1/value/10
end
local randomrot = math.random(1,2)
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed/10
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed/10
end
if rotenable == true then
if randomrot == 1 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(rotspeed*bonuspeed/2),0)
elseif randomrot == 2 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(-rotspeed*bonuspeed/2),0)
end
end
if typeoftrans == "Out" then
rng.Transparency = rng.Transparency + 0.01*bonuspeed
elseif typeoftrans == "In" then
rng.Transparency = rng.Transparency - 0.01*bonuspeed
end
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed/10, 0, scaler2*bonuspeed/10)
end
rng:Destroy()
end))
end

function PixelBlock(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
--rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function PixelBlockX(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function PixelBlockNeg(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 0
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder + 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
--rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function WACKYEFFECT(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or vt(1, 1, 1)
	local ENDSIZE = Table.Size2 or vt(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = "Neon"
	local COLOR = Table.Color or Color3.new(1, 1, 1)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	local USEBOOMERANGMATH = Table.UseBoomerangMath or false
	local BOOMERANG = Table.Boomerang or 0
	local SIZEBOOMERANG = Table.SizeBoomerang or 0
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
		EFFECT.Color = C3(1,1,0)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, vt(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", vt(SIZE.X, SIZE.X, 0.1), vt(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", vt(SIZE.X / 10, 0, SIZE.X / 10), vt(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", vt(SIZE.X / 10, 0, SIZE.X / 10), vt(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, vt(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, vt(0, 0, 0))
		elseif TYPE == "Star" then 
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "2760116123", "", SIZE, vt(0,0,0))   	
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "450656451", "", SIZE, vt(0, 0, 0))
		end
		coroutine.resume(coroutine.create(function()
			if MSH ~= nil then
				local BOOMR1 = 1 + BOOMERANG / 50
				local BOOMR2 = 1 + SIZEBOOMERANG / 50
				local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
				local GROWTH
				if USEBOOMERANGMATH == true then
					GROWTH = (SIZE - ENDSIZE) * (BOOMR2 + 1)
				else
					GROWTH = SIZE - ENDSIZE
				end
				local TRANS = TRANSPARENCY - ENDTRANSPARENCY
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * angles(math.rad(MRANDOM(0, 360)), math.rad(MRANDOM(0, 360)), math.rad(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = CFRAME
				end
				if USEBOOMERANGMATH == true then
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - vt(GROWTH.X * (1 - LOOP / TIME * BOOMR2), GROWTH.Y * (1 - LOOP / TIME * BOOMR2), GROWTH.Z * (1 - LOOP / TIME * BOOMR2)) * BOOMR2 / TIME
						if TYPE == "Wave" then
							MSH.Offset = vt(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * angles(math.rad(ROTATION1), math.rad(ROTATION2), math.rad(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = cf(EFFECT.Position, MOVEDIRECTION) * cf(0, 0, -MOVESPEED * (1 - LOOP / TIME * BOOMR1))
							EFFECT.Orientation = ORI
						end
					end
				else
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - GROWTH / TIME
						if TYPE == "Wave" then
							MSH.Offset = vt(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * angles(math.rad(ROTATION1), math.rad(ROTATION2), math.rad(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = cf(EFFECT.Position,MOVEDIRECTION)*cf(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
				end
				EFFECT.Transparency = 1
				if PLAYSSOUND == false then
					EFFECT:remove()
				else
					repeat
						Swait()
					until EFFECT:FindFirstChildOfClass("Sound") == nil
					EFFECT:remove()
				end
			elseif PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end))
		return EFFECT
	end))
end 

function block(bonuspeed,type,pos,scale,value,value2,value3,color,color3)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.Color = color3
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = scale
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
scaler2c = 1*value3
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
scaler2c = 1/value3
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
scaler2c = scaler2c - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
scaler2c = scaler2c - 0.01/value*bonuspeed
end
rng.CFrame = rng.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end))
end

function sphereMKw(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", workspace)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end))
end

function sphereMK(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
if ModeOfGlitch ~= 9 then
        rng.BrickColor = color
elseif ModeOfGlitch == 9 then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
end
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if ModeOfGlitch == 9 then
coroutine.resume(coroutine.create(function()
while true do
swait()
if not scriptDisabled then
if rng.Parent ~= nil then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
else
break
end
end
end
end))
end
local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end))
end


function sphereMKCharge(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
if ModeOfGlitch ~= 9 then
        rng.BrickColor = color
elseif ModeOfGlitch == 9 then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
end
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 1
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if ModeOfGlitch == 9 then
coroutine.resume(coroutine.create(function()
while true do
swait()
if not scriptDisabled then
if rng.Parent ~= nil then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
else
break
end
end
end
end))
end
local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency - 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end))
end

function dmg(dude)
if dude.Name ~= Character.Name and dude.Name ~= DeadChar.Name and dude.Name ~= CloneChar.Name then

DamageFling(dude)

local undoDelay = 30
local keptcolor = MAINRUINCOLOR
--[[ local bgf = Instance.new("BodyGyro",dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0) --]]
local val = Instance.new("BoolValue",dude)
val.Name = "IsHit"
local ds = coroutine.wrap(function()
-- dude:WaitForChild("Head"):BreakJoints()
for i, v in pairs(dude:GetChildren()) do
if v:IsA("Part") or v:IsA("MeshPart") then
-- v.Name = "DEMINISHED"
end
end
wait(0.5)
targetted = nil
CFuncs["Sound"].Create("rbxassetid://62339698", char, 0.75, 0.285)
coroutine.resume(coroutine.create(function()

for i, v in pairs(dude:GetChildren()) do
if v:IsA("Accessory") then
coroutine.resume(coroutine.create(function() 

v.Transparency = 1

for i, parts in pairs(v.Handle:GetChildren()) do
parts.Transparency = 1
end

wait(undoDelay)

v.Transparency = 0

for i, parts in pairs(v.Handle:GetChildren()) do
parts.Transparency = 0
end

end))
end
if v:IsA("Humanoid") then
coroutine.resume(coroutine.create(function()
v.Transparency = 1
wait(undoDelay)
v.Transparency = 0
end))
end
if v:IsA("CharacterMesh") then
coroutine.resume(coroutine.create(function()
v.Transparency = 1
wait(undoDelay)
v.Transparency = 0
end))
end
if v:IsA("Model") then
coroutine.resume(coroutine.create(function()
v.Transparency = 1
wait(undoDelay)
v.Transparency = 0
end))
end
if v:IsA("Part") or v:IsA("MeshPart") then
for x, o in pairs(v:GetChildren()) do
if o:IsA("Decal") then
coroutine.resume(coroutine.create(function()
o.Transparency = 1
wait(10)
o.Transparency = 0
end))
end
end
coroutine.resume(coroutine.create(function()
-- v.Material = "Neon"
-- v.CanCollide = false
-- v.Anchored = false
local bld = Instance.new("ParticleEmitter",v)
bld.LightEmission = 0.75
bld.Texture = "rbxassetid://363275192" ---284205403
bld.Color = ColorSequence.new(keptcolor.Color)
bld.Rate = 500
bld.Lifetime = NumberRange.new(1)
bld.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(0.8,2.25,0),NumberSequenceKeypoint.new(1,0,0)})
bld.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.8,0.75,0),NumberSequenceKeypoint.new(1,1,0)})
bld.Speed = NumberRange.new(2,5)
bld.VelocitySpread = 50000
bld.Rotation = NumberRange.new(-500,500)
bld.RotSpeed = NumberRange.new(-500,500)
        --[[ local sbs = Instance.new("BodyPosition", v)
        sbs.P = 3000
        sbs.D = 1000
        sbs.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
        sbs.position = v.Position + Vector3.new(math.random(-2,2),10 + math.random(-2,2),math.random(-2,2)) --]]
-- v.Color = keptcolor.Color
coroutine.resume(coroutine.create(function()
for i = 0, 49 do
swait(1)
-- v:BreakJoints()
v.Transparency = v.Transparency + 0.02
end
-- v:BreakJoints()
sphere2(1,"Add",v.CFrame,vt(0,0,0),0.1,0.1,0.1,keptcolor)
CFuncs["Sound"].Create("rbxassetid://1192402877", v, 0.5, 0.75)
bld.Speed = NumberRange.new(10,25)
bld.Drag = 5
bld.Acceleration = vt(0,2,0)
wait(0.5)
bld.Enabled = false
wait(undoDelay - 2)
if v.Name ~= "HumanoidRootPart" then
v.Transparency = 0
end
-- v:Destroy()
-- dude:Destroy()
end))
end))
end
end
end))
end)
ds()
end
end

function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") then
			if v:findFirstChild("Head") then
				if v ~= Character then
					if (v.Head.Position - Position).magnitude <= Distance then
						table.insert(List, v)
					end 
				end 
			end 
		end 
	end
	return List
end

function FaceMouse()
  Cam = workspace.CurrentCamera
  return {
    CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
    Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
  }
end

function FaceMouse2()
  Cam = workspace.CurrentCamera
  return {
    CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)),
    Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
  }
end

ModeOfGlitch = 1
local SModeOfGlitch = 1
-- Functions are ready.
local storehumanoidWS = 16

function BinaryBLINK()
for i = 0, 9 do
sphere2(6,"Add",root.CFrame*CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),vt(0.5,0.5,0.5),-0.005,0.5,-0.005,MAINRUINCOLOR)        sphere2(6,"Add",root.CFrame*CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.5,-0.005,MAINRUINCOLOR)        sphere2(6,"Add",root.CFrame*CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.5,-0.005,MAINRUINCOLOR)
end
sphere(20,"Add",root.CFrame,vt(0,0,0),0.5,MAINRUINCOLOR)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",root)
eff.Texture = "rbxassetid://1175838406"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,4,0),NumberSequenceKeypoint.new(0.8,5,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(30,160)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 100000
wait(0.25)
eff.Enabled = false
wait(4)
eff:Destroy()
end))
CFuncs["Sound"].Create("rbxassetid://1177785010", root, 10,1)
RootPart.CFrame = mouse.Hit *CFrame.new(0,2,0)
CameraEnshaking(2,11)
for i, v in pairs(FindNearestHead(Torso.CFrame.p, 10)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
for i = 0, 9 do
sphere2(6,"Add",root.CFrame*CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),vt(0.5,0.5,0.5),-0.005,0.5,-0.005,MAINRUINCOLOR)        sphere2(6,"Add",root.CFrame*CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.5,-0.005,MAINRUINCOLOR)        sphere2(6,"Add",root.CFrame*CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.5,-0.005,MAINRUINCOLOR)
end
sphere(20,"Add",root.CFrame,vt(0,0,0),0.5,MAINRUINCOLOR)
end

function Fireball()
attack = true
hum.WalkSpeed = 0
local keptcolor = MAINRUINCOLOR
    for i = 0,2,0.1 do
        swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(40)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(6), math.rad(-20), math.rad(12)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(40), math.rad(-40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(0)),.3)
    end
local orb = Instance.new("Part", char)
        orb.BrickColor = keptcolor
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(4,4,4)
orb.CFrame = root.CFrame + root.CFrame.lookVector*3
local eff = Instance.new("ParticleEmitter",orb)
eff.Texture = "rbxassetid://296874871"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(orb.BrickColor.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1.5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,7,0),NumberSequenceKeypoint.new(0.1,5,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(25)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-500,500)
    local a = Instance.new("Part",workspace)
    a.Name = "Direction"   
    a.Anchored = true
    a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
    a.CanCollide = false
    local ray = Ray.new(
        orb.CFrame.p,                           -- origin
        (mouse.Hit.p - orb.CFrame.p).unit * 500 -- direction
    )
    local ignore = orb
    local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
    a.BottomSurface = 10
    a.TopSurface = 10
    local distance = (orb.CFrame.p - position).magnitude
    a.Size = Vector3.new(0.1, 0.1, 0.1)
    a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, 0)
orb.CFrame = a.CFrame
a:Destroy()
CFuncs["Sound"].Create("rbxassetid://304448425", orb, 1.5, 0.9)
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = orb.CFrame.lookVector*75
bv.Parent = orb
game:GetService("Debris"):AddItem(orb, 10)
local hitted = false
coroutine.resume(coroutine.create(function()
while true do
swait()
if not scriptDisabled then
if orb.Parent ~= nil and hitted == false then
sphere2(4,"Add",orb.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),0) - orb.CFrame.lookVector*1.5,vt(3,3,3),-0.03,-0.03,-0.03,keptcolor)
elseif orb.Parent == nil and hitted == true then
break
end
end
end
end))
local hit =orb.Touched:connect(function(hit)
    if hitted == false and hit.Parent ~= char then
    hitted = true
    eff.Enabled = false
CameraEnshaking(2,11)
CFuncs["Sound"].Create("rbxassetid://1226980789", orb, 4.5, 0.7)
CFuncs["Sound"].Create("rbxassetid://178452221", orb, 2.5, 0.4)
    MagniDamage(orb, 25, 20,30, 0, "Normal")
sphere2(4,"Add",orb.CFrame,vt(4,4,4),0.5,0.5,0.5,keptcolor)
sphere2(3,"Add",orb.CFrame,vt(4,4,4),0.5,0.5,0.5,keptcolor)
sphere2(2,"Add",orb.CFrame,vt(4,4,4),0.5,0.5,0.5,keptcolor)
for i = 0, 9 do
sphere2(4,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1.5,1,1.5),-0.005,4,-0.005,keptcolor)
end
for i = 0, 49 do
local rsiz = math.random(10,30)
sphereMK(math.random(1,3),1,"Add",orb.CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,keptcolor,0)
end
local eff = Instance.new("ParticleEmitter",orb)
eff.Texture = "rbxassetid://296874871"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(orb.BrickColor.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1.5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.1,15,0),NumberSequenceKeypoint.new(0.8,25,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(150)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-500,500)
coroutine.resume(coroutine.create(function()
    wait(0.25)
    eff.Enabled = false
end))
local hfr,pfr=rayCast(orb.Position,(CFrame.new(orb.Position,orb.Position - Vector3.new(0,1,0))).lookVector,4,char)
orb.Anchored = true
orb.Transparency = 1
coroutine.resume(coroutine.create(function()
if hfr ~= nil then
orb.Size = vt(50,1,50)
orb.Orientation = vt(0,0,0)
orb.CFrame = orb.CFrame*CFrame.new(0,-5,0)
orbm:Destroy()
local firef = eff:Clone()
firef.Parent = orb
firef.VelocitySpread = 50
firef.Rate = 500
firef.Drag = 3
firef.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.2,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
firef.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,3,0),NumberSequenceKeypoint.new(0.1,5,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
firef.Speed = NumberRange.new(10,30)
for i = 0, 24 do
wait(0.25)
MagniDamage(orb, 25, 3,6, 0, "Normal")
end
firef.Enabled = false
end
end))
wait(10)
orb:Destroy()
end
end)
    for i = 0,1,0.1 do
        swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-50)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(50)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(6), math.rad(-20), math.rad(12)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(140), math.rad(0), math.rad(-20)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(0)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(0)),.5)
    end
hum.WalkSpeed = storehumanoidWS
attack = false
end

function smiter()
local targetted = nil
if mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
targetted = mouse.Target.Parent
end
if targetted ~= nil then
RootPart.CFrame = FaceMouse()[1]
attack = true
hum.WalkSpeed = 0
coroutine.resume(coroutine.create(function()
CFuncs["Sound"].Create("rbxassetid://1117054464", targetted.Head, 2, 1)
sphere2(4,"Add",targetted.Head.CFrame,vt(8,8,8),0.1,0.1,0.1,MAINRUINCOLOR)
local vel = Instance.new("BodyPosition", targetted.Head)
vel.P = 12500
vel.D = 1000
vel.maxForce = Vector3.new(50000000000, 10e10, 50000000000)
vel.position = targetted.Head.CFrame.p
end))
CFuncs["Sound"].Create("rbxassetid://671759140", sorb2, 1, 1.2)
    for i = 0,4,0.1 do
        swait()
sphere2(4,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.125,-0.01,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-60)),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(60)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.01 * math.cos(sine / 28),0)*angles(math.rad(15),math.rad(15),math.rad(-10)),.2)
LW.C0=clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-40)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(20),math.rad(5)),.2)
    end
coroutine.resume(coroutine.create(function()
CameraEnshaking(6,5)
MagniDamage(targetted.Head, 18, 18,30, 0, "Normal")
CFuncs["Sound"].Create("rbxassetid://1042705869", targetted.Head, 6.5, 0.8)
CFuncs["Sound"].Create("rbxassetid://1042716828", targetted.Head, 6.25, 0.8)
CFuncs["Sound"].Create("rbxassetid://1117054464", targetted.Head, 5, 0.8)
sphere2(3,"Add",targetted.Head.CFrame,vt(0,40000,0),0.25,0,0.25,MAINRUINCOLOR)
sphere2(2,"Add",targetted.Head.CFrame,vt(0,40000,0),0.25,0,0.25,MAINRUINCOLOR)
sphere2(4,"Add",targetted.Head.CFrame,vt(0,0,0),0.5,0.5,0.5,MAINRUINCOLOR)
sphere2(5,"Add",targetted.Head.CFrame,vt(0,0,0),0.5,0.5,0.5,MAINRUINCOLOR)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",targetted.Head)
eff.Texture = "rbxassetid://363275192"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1.5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,15,0),NumberSequenceKeypoint.new(0.8,25,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(25,150)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
local eff2 = eff:Clone()
eff2.Parent = targetted.Head
eff2.Texture = "rbxassetid://284205403"
eff2.Rate = 10000
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff2.Drag = 5
eff2.Rotation = NumberRange.new(-500,500)
eff2.VelocitySpread = 9000
wait(0.5)
eff2.Enabled = false
eff.Enabled = false
end))
for i = 0, 9 do
sphere2(3,"Add",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(2,1,2),-0.02,3,-0.02,MAINRUINCOLOR)
end
for i = 0, 49 do
local rsiz = math.random(10,50)
sphereMK(math.random(1,4),1,"Add",targetted.Head.CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,MAINRUINCOLOR,0)
end
game:GetService("Debris"):AddItem(vel,1)
dmg(targetted)
end))
    for i = 0,1,0.1 do
        swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-70)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(70)),.5)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.01 * math.cos(sine / 28),0)*angles(math.rad(15),math.rad(15),math.rad(-10)),.5)
LW.C0=clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(-50)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(0)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(20),math.rad(5)),.5)
    end
attack = false
hum.WalkSpeed = storehumanoidWS
end
end

function BinaryE()
local posit = -2
attack = true
hum.WalkSpeed = 5
CFuncs["Sound"].Create("rbxassetid://169380495", sorb2, 1, 1)
    for i = 0,2,0.1 do
        swait()
sphere2(7,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.075,-0.01,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(30)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-30)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(45), math.rad(6), math.rad(-30)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(-20),math.rad(0)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(0)),.5)
    end
for i = 0, 2 do
CameraEnshaking(2,11)
local hite = Instance.new("Part", char)
        hite.Anchored = true
        hite.CanCollide = false
        hite.FormFactor = 3
        hite.Name = "Ring"
        hite.Material = "Neon"
        hite.Size = Vector3.new(1, 1, 1)
        hite.Transparency = 1
        hite.TopSurface = 0
        hite.BottomSurface = 0
hite.CFrame = root.CFrame*CFrame.new(0,posit,-5)
CFuncs["Sound"].Create("rbxassetid://231917856", hite, 0.5, 0.9)
CFuncs["Sound"].Create("rbxassetid://231917758", hite, 0.25, 0.8)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",hite)
eff.Texture = "rbxassetid://1175838406"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 1000
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(0.8,1,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(10,50)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 100000
wait(0.25)
eff.Enabled = false
end))
coroutine.resume(coroutine.create(function()
for i = 0, 1 do
    swait()
        sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
        sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
end
end))
sphere2(6,"Add",hite.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(2,2,2),0.5,-0.01,-0.01,MAINRUINCOLOR)
MagniDamage(hite, 3, 30,40, 0, "Normal")
game:GetService("Debris"):AddItem(hite, 5)
posit = posit + 2
end
    for i = 0,1,0.1 do
        swait()
sphere2(7,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.075,-0.01,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-80)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(80)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(110), math.rad(6), math.rad(40)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(-20),math.rad(0)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(0)),.5)
    end
    for i = 0,1,0.1 do
        swait()
sphere2(7,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.075,-0.01,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,-0.2,0)* angles(math.rad(20),math.rad(0),math.rad(60)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-60)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(60)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(60), math.rad(6), math.rad(-50)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(-20),math.rad(30)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(40)),.5)
    end
    posit = -6
    for i = 0, 6 do
CameraEnshaking(2,11)
local hite = Instance.new("Part", char)
        hite.Anchored = true
        hite.CanCollide = false
        hite.FormFactor = 3
        hite.Name = "Ring"
        hite.Material = "Neon"
        hite.Size = Vector3.new(1, 1, 1)
        hite.Transparency = 1
        hite.TopSurface = 0
        hite.BottomSurface = 0
hite.CFrame = root.CFrame*CFrame.new(posit,0,-5)
CFuncs["Sound"].Create("rbxassetid://231917856", hite, 0.5, 1.2)
CFuncs["Sound"].Create("rbxassetid://231917758", hite, 0.25, 1)
sphere2(6,"Add",hite.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(1,1,1),-0.01,1,-0.01,MAINRUINCOLOR)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",hite)
eff.Texture = "rbxassetid://1175838406"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 1000
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(0.8,1,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,70)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 100000
wait(0.25)
eff.Enabled = false
end))
coroutine.resume(coroutine.create(function()
for i = 0, 2 do
    swait()
        sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
        sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
        sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
end
end))
MagniDamage(hite, 5, 40,70, 0, "Normal")
game:GetService("Debris"):AddItem(hite, 5)
posit = posit + 2
    end
    for i = 0,1,0.1 do
        swait()
sphere2(7,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.075,-0.01,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0.1,1.5)* angles(math.rad(-10),math.rad(0),math.rad(-60)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(50)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(140), math.rad(6), math.rad(-50)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(10),math.rad(-10)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(60)),.5)
    end
    hum.WalkSpeed = storehumanoidWS
attack = false
end

function CorruptBlink()
for i = 0, 14 do
PixelBlock(3,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.03,MAINRUINCOLOR,0)
end
sphere(10,"Add",root.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
CFuncs["Sound"].Create("rbxassetid://1177785010", root, 10,1)
RootPart.CFrame = mouse.Hit *CFrame.new(0,2,0)
CameraEnshaking(2,10)
for i, v in pairs(FindNearestHead(Torso.CFrame.p, 20)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
for i = 0, 14 do
PixelBlock(3,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.03,MAINRUINCOLOR,0)
end
sphere(10,"Add",root.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
end
function PureBomb()
attack = true
hum.WalkSpeed = 0
local orb = Instance.new("Part", char)
        orb.Anchored = true
        orb.BrickColor = BrickColor.new("Toothpaste")
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(0,0,0)
local scaled = 0.1
local posid = 0
CFuncs["Sound"].Create("rbxassetid://136007472", orb, 1,1)
for i = 0, 5, 0.1 do
swait()
scaled = scaled - 0.001
posid = posid - scaled
orb.CFrame = rarm.CFrame*CFrame.new(0,-0.1+posid/1.05,0)
local scaled = 0.1
orbm.Scale = orbm.Scale + vt(scaled,scaled,scaled)
sphereMKCharge(5,-0.25,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,5,-0.005,BrickColor.new("Toothpaste"),10)
PixelBlockNeg(2,1,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.01,BrickColor.new("Toothpaste"),0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(180),math.rad(20),math.rad(0)),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.1)
end
for i = 0, 2, 0.1 do
swait()
orb.CFrame = rarm.CFrame*CFrame.new(0,-0.1+posid/1.05,0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(-50)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(20)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(220),math.rad(20),math.rad(0)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.4)
end
coroutine.resume(coroutine.create(function()
orb.Anchored = false
CFuncs["Sound"].Create("rbxassetid://260433768", root, 1.25,1)
    local a = Instance.new("Part",workspace)
    a.Name = "Direction"   
    a.Anchored = true
    a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
    a.CanCollide = false
    local ray = Ray.new(
        orb.CFrame.p,                           -- origin
        (mouse.Hit.p - orb.CFrame.p).unit * 500 -- direction
    )
    local ignore = orb
    local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
    a.BottomSurface = 10
    a.TopSurface = 10
    local distance = (orb.CFrame.p - position).magnitude
    a.Size = Vector3.new(0.1, 0.1, 0.1)
    a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, 0)
orb.CFrame = a.CFrame
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = orb.CFrame.lookVector*125
bv.Parent = orb
local hitted = false
game:GetService("Debris"):AddItem(orb, 15)
wait()
local hit =orb.Touched:connect(function(hit)
    if hitted == false then
    hitted = true
CameraEnshaking(10,2.5)
CFuncs["Sound"].Create("rbxassetid://151304356", orb, 5,1)
    MagniDamage(orb, 65, 65,90, 0, "Normal")
sphere(1,"Add",orb.CFrame,vt(orbm.Scale.x,orbm.Scale.y,orbm.Scale.z),1,BrickColor.new("Toothpaste"))
sphere(2,"Add",orb.CFrame,vt(orbm.Scale.x,orbm.Scale.y,orbm.Scale.z),2,BrickColor.new("Toothpaste"))
for i = 0, 49 do
PixelBlock(1,math.random(1,30),"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,0.08,BrickColor.new("Toothpaste"),0)
end
for i = 0, 9 do
sphereMK(1,2.5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,50,-0.05,BrickColor.new("Toothpaste"),0)
sphereMK(2,5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,50,-0.05,BrickColor.new("Toothpaste"),0)
end
orb.Anchored = true
orb.Transparency = 1
wait(8)
orb:Destroy()
end
end)
end))
for i = 0, 1, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(50)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-50)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(60),math.rad(20),math.rad(50)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.4)
end
hum.WalkSpeed = storehumanoidWS
attack = false
end

function BanishingOrb()
attack = true
hum.WalkSpeed = 0
local orb = Instance.new("Part", char)
        orb.Anchored = true
        orb.BrickColor = BrickColor.new("Black")
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(0,0,0)
local scaled = 0.1
local posid = 0
CFuncs["Sound"].Create("rbxassetid://136007472", orb, 1.5,0.9)
for i = 0, 5, 0.1 do
swait()
scaled = scaled - 0.001
posid = posid - scaled
orb.CFrame = rarm.CFrame*CFrame.new(0,-0.1+posid/1.05,0)
local scaled = 0.1
orbm.Scale = orbm.Scale + vt(scaled,scaled,scaled)
sphereMKCharge(5,-0.25,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,5,-0.005,BrickColor.new("Black"),10)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(180),math.rad(20),math.rad(0)),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.1)
end
for i = 0, 2, 0.1 do
swait()
orb.CFrame = rarm.CFrame*CFrame.new(0,-0.1+posid/1.05,0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(-50)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(20)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(220),math.rad(20),math.rad(0)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.4)
end
coroutine.resume(coroutine.create(function()
orb.Anchored = false
CFuncs["Sound"].Create("rbxassetid://260433768", root, 1.25,0.75)
	local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    orb.CFrame.p,                           -- origin
	    (mouse.Hit.p - orb.CFrame.p).unit * 500 -- direction
	) 
	local ignore = orb
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (orb.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, 0)
orb.CFrame = a.CFrame
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = orb.CFrame.lookVector*0
bv.Parent = orb
local hitted = false
local rate = 0
coroutine.resume(coroutine.create(function()
for i = 0, 24 do
wait(0.1)
rate = rate + 0.25
bv.velocity = bv.velocity + orb.CFrame.lookVector*rate
for i, v in pairs(FindNearestHead(orb.CFrame.p, 15)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
CFuncs["Sound"].Create("rbxassetid://1177785010", orb, 2.5,0.9)
sphere(2,"Add",orb.CFrame,vt(0,0,0),0.5,MAINRUINCOLOR)
sphere(3,"Add",orb.CFrame,vt(0,0,0),0.75,MAINRUINCOLOR)
end
orb.Anchored = true
orb.Transparency = 1
for i, v in pairs(FindNearestHead(orb.CFrame.p, 32)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
local eff = Instance.new("ParticleEmitter",orb)
eff.Texture = "rbxassetid://296874871"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 1000000000
eff.Lifetime = NumberRange.new(3)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,50,0),NumberSequenceKeypoint.new(0.1,10,0),NumberSequenceKeypoint.new(0.8,9,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(30)
eff.Acceleration = vt(0,-15,0)
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 100000
eff.RotSpeed = NumberRange.new(-500,500)
coroutine.resume(coroutine.create(function()
	wait(0.6)
	eff.Enabled = false
end))
CFuncs["Sound"].Create("rbxassetid://1177785010", orb, 8,0.6)
CFuncs["Sound"].Create("rbxassetid://438666141", orb, 7.5,0.9)
sphere(1,"Add",orb.CFrame,vt(0,0,0),0.75,MAINRUINCOLOR)
sphere(1.5,"Add",orb.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(2,"Add",orb.CFrame,vt(0,0,0),1.25,MAINRUINCOLOR)
game:GetService("Debris"):AddItem(orb, 15)
end))
end))
for i = 0, 1, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(50)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-50)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(60),math.rad(20),math.rad(50)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.4)
end
hum.WalkSpeed = storehumanoidWS
attack = false
end

function ChaosGroundStrike()
attack = true
for i = 0, 2, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(140),math.rad(0),math.rad(-20)),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(140),math.rad(0),math.rad(20)),.2)
end
CFuncs["Sound"].Create("rbxassetid://438666141", root, 7.5,1)
CFuncs["Sound"].Create("rbxassetid://1208650519", root, 7.5, 1)
CameraEnshaking(5,100)
for i, v in pairs(FindNearestHead(Torso.CFrame.p, 52.5)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
sphere(5,"Add",root.CFrame*CFrame.new(0,-2.9,0),vt(0,0,0),1,BrickColor.random())
sphere(10,"Add",root.CFrame*CFrame.new(0,-2.9,0),vt(0,0,0),2,BrickColor.random())
sphere(1,"Add",root.CFrame*CFrame.new(0,-2.9,0),vt(100,0.1,100),0.01,BrickColor.random())
for i = 0, 2, 0.1 do
swait()
sphereMK(2.5,0.75,"Add",root.CFrame*CFrame.new(math.random(-52.5,52.5),-5,math.random(-52.5,52.5))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),2.5,2.5,25,-0.025,BrickColor.random(),0)
sphereMK(2.5,0.75,"Add",root.CFrame*CFrame.new(math.random(-52.5,52.5),-5,math.random(-52.5,52.5))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),2.5,2.5,25,-0.025,BrickColor.random(),0)
RH.C0=clerp(RH.C0,cf(1,-1,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(30)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(-30)),.4)
end
attack = false
end

function InsaneGroundStrike()
	attack = true
	oldchatfunc("Succumb to the insanity!",Color3.new(0,0,0))
	for i = 0, 8, 0.1 do
		swait()
		PixelBlockNeg(2,1,"Add",RightLeg.CFrame*cf(0,-1.35,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.01,BrickColor.new("Toothpaste"),0)

		RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(20)),.2)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(20)),.2)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(140),math.rad(0),math.rad(-20)),.2)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(140),math.rad(0),math.rad(20)),.2)
	end
	CFuncs["Sound"].Create("rbxassetid://438666141", root, 7.5,1)
	CFuncs["Sound"].Create("rbxassetid://1208650519", root, 7.5, 1)
	CameraEnshaking(8,24)
	for i, v in pairs(FindNearestHead(Torso.CFrame.p, 105)) do
		if v:FindFirstChild('Head') then
			dmg(v)
		end
	end
	sphere(5,"Add",root.CFrame*CFrame.new(0,-2.9,0),vt(0,0,0),1,BrickColor.random())
	sphere(10,"Add",root.CFrame*CFrame.new(0,-2.9,0),vt(0,0,0),2,BrickColor.random())
	sphere(1,"Add",root.CFrame*CFrame.new(0,-2.9,0),vt(200,0.1,200),0.01,BrickColor.random())
	CFuncs["Sound"].Create("rbxassetid://907329669", root, 10, 1)
	oldchatfunc("Leave the dead where they fall!",Color3.new(0,0,0))
	for i = 0, 2, 0.1 do
		swait()
		sphereMK(2.5,0.75,"Add",root.CFrame*CFrame.new(math.random(-105,105),-5,math.random(-105,105))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),2.5,2.5,25,-0.025,BrickColor.random(),0)
		sphereMK(2.5,0.75,"Add",root.CFrame*CFrame.new(math.random(-105,105),-5,math.random(-105,105))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),2.5,2.5,25,-0.025,BrickColor.random(),0)
		RH.C0=clerp(RH.C0,cf(1,-1,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.4)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.4)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.4)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.4)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(30)),.4)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(-30)),.4)
	end
	attack = false
end

function Starfall()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://136007472", root, 5, 1)
for i = 0, 5, 0.1 do
swait()
PixelBlockNeg(1,math.random(1,2),"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
PixelBlockNeg(1,math.random(1,2),"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(-5 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(70 + 2.5 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(-70 - 2.5 * math.cos(sine / 28))),.1)
end
local Overed = false
CameraEnshaking(2,20)
sphere(1.5,"Add",sorb.CFrame,vt(0,0,0),0.25,MAINRUINCOLOR)
sphere(1.5,"Add",sorb2.CFrame,vt(0,0,0),0.25,MAINRUINCOLOR)
sphere(5,"Add",root.CFrame,vt(0,0,0),12.5,MAINRUINCOLOR)
CFuncs["Sound"].Create("rbxassetid://1177785010", char, 1, 1)
local orb = Instance.new("Part", char)
        orb.Anchored = true
        orb.BrickColor = BrickColor.new("Toothpaste")
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Remenant"
        orb.Material = "Neon"
orb.CFrame = root.CFrame*CFrame.new(0,150,0)
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 1
        orb.TopSurface = 0
        orb.BottomSurface = 0
hum.WalkSpeed = storehumanoidWS
coroutine.resume(coroutine.create(function()
for i = 0, 9 do
swait(10)
local lb = Instance.new("Part")
lb.Color = MAINRUINCOLOR.Color
lb.CanCollide = false
lb.Material = "Neon"
lb.Anchored = true
lb.TopSurface = 0
lb.BottomSurface = 0
lb.Transparency = 0
lb.Size = vt(1,1,1)
lb.CFrame = orb.CFrame*CFrame.new(math.random(-150,150),0,math.random(-150,150))*CFrame.Angles(math.rad(-90 + math.random(-15,15)),0,math.rad(math.random(-15,15)))
lb.Anchored = false
lb.Parent = char
local thingery = Instance.new("SpecialMesh",lb)
thingery.MeshType = "Sphere"
thingery.Scale = vt(20,20,20)
game:GetService("Debris"):AddItem(lb, 10)
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = lb.CFrame.lookVector*math.random(75,250)
bv.Parent = lb
sphere(2.5,"Add",lb.CFrame,vt(50,50,0),0.25,MAINRUINCOLOR)
sphere(5,"Add",lb.CFrame,vt(50,50,0),0.5,MAINRUINCOLOR)
CFuncs["Sound"].Create("rbxassetid://633627961",lb, 5, 1)
CFuncs["Sound"].Create("rbxassetid://1002081188", lb, 5, 1)
CFuncs["Sound"].Create("rbxassetid://741272936", lb, 5, 1)
CFuncs["Sound"].Create("rbxassetid://1192402877", lb, 5, 1)
local hitted = false
coroutine.resume(coroutine.create(function()
while true do
swait(1)
if not scriptDisabled then
if lb.Parent ~= nil and hitted == false then
PixelBlockNeg(5,math.random(1,2),"Add",lb.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),10,10,10,0.1,MAINRUINCOLOR,-2)
elseif lb.Parent == nil then
break
end
end
end
end))

-- game:GetService("Debris"):AddItem(a, 0.1)

coroutine.resume(coroutine.create(function()
swait(1)
lb.Touched:connect(function(hit)
if hitted == false then
hitted = true
lb.Transparency = 1
lb.Anchored = true
CFuncs["Sound"].Create("rbxassetid://1177785010", lb, 5, 1)
CFuncs["Sound"].Create("rbxassetid://192410089", lb, 5, 0.7)
CFuncs["Sound"].Create("rbxassetid://579687077", lb, 2.5, 0.75)
CFuncs["Sound"].Create("rbxassetid://1060191237", lb, 3, 0.75)
CFuncs["Sound"].Create("rbxassetid://164881112", lb, 5, 1)
CFuncs["Sound"].Create("rbxassetid://429123896", lb, 3.5, 0.85)
MagniDamage(lb, 45, 45,85, 0, "Normal")
CameraEnshaking(1,5)
sphere(8,"Add",lb.CFrame,vt(20,20,20),1,MAINRUINCOLOR)
sphere(16,"Add",lb.CFrame,vt(20,20,20),2,MAINRUINCOLOR)
for i = 0, 9 do
sphereMK(1,math.random(1,3),"Add",lb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,50,-0.1,MAINRUINCOLOR,0)
end
for i = 0, 49 do
swait()
MagniDamage(lb, 30, 2,4, 0, "Normal")
PixelBlock(4,math.random(1,30),"Add",lb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),16,16,16,0.16,MAINRUINCOLOR,0)
end
end
end)
end))
end
Overed = true
orb:Destroy()
end))

attack = false
end

function StarfallEX()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://136007472", root, 5, 0.7)
for i = 0, 10, 0.1 do
swait()
PixelBlockNeg(1,math.random(1,2),"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
PixelBlockNeg(1,math.random(1,2),"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(-5 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(70 + 2.5 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(-70 - 2.5 * math.cos(sine / 28))),.1)
end
local Overed = false
CameraEnshaking(2,20)
sphere(1.5,"Add",sorb.CFrame,vt(0,0,0),0.5,MAINRUINCOLOR)
sphere(1.5,"Add",sorb2.CFrame,vt(0,0,0),0.5,MAINRUINCOLOR)
sphere(5,"Add",root.CFrame,vt(0,0,0),2.5,MAINRUINCOLOR)
CFuncs["Sound"].Create("rbxassetid://1177785010", char, 1, 0.9)
local orb = Instance.new("Part", char)
        orb.Anchored = true
        orb.BrickColor = BrickColor.new("Toothpaste")
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Remenant"
        orb.Material = "Neon"
orb.CFrame = root.CFrame*CFrame.new(0,250,0)
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 1
        orb.TopSurface = 0
        orb.BottomSurface = 0
hum.WalkSpeed = storehumanoidWS
coroutine.resume(coroutine.create(function()
for i = 0, 4 do
swait(15)
				 local lb = Instance.new("Part")
    lb.Color = MAINRUINCOLOR.Color
     lb.CanCollide = false
lb.Material = "Neon"
     lb.Anchored = true
lb.TopSurface = 0
        lb.BottomSurface = 0
     lb.Transparency = 0
     lb.Size = vt(1,1,1)
     lb.CFrame = orb.CFrame*CFrame.new(math.random(-150,150),0,math.random(-150,150))*CFrame.Angles(math.rad(-90 + math.random(-15,15)),0,math.rad(math.random(-15,15)))
lb.Anchored = false
  lb.Parent = char
local thingery = Instance.new("SpecialMesh",lb)
     thingery.MeshType = "Sphere"
thingery.Scale = vt(50,50,50)
game:GetService("Debris"):AddItem(lb, 10)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = lb.CFrame.lookVector*math.random(50,420)
  bv.Parent = lb
sphere(2.5,"Add",lb.CFrame,vt(100,100,0),0.25,MAINRUINCOLOR)
sphere(5,"Add",lb.CFrame,vt(100,100,0),0.5,MAINRUINCOLOR)
CFuncs["Sound"].Create("rbxassetid://633627961",lb, 5, 0.9)
CFuncs["Sound"].Create("rbxassetid://1002081188", lb, 5, 0.9)
CFuncs["Sound"].Create("rbxassetid://741272936", lb, 5, 0.9)
CFuncs["Sound"].Create("rbxassetid://1192402877", lb, 5, 0.9)
local hitted = false
coroutine.resume(coroutine.create(function()
while true do
swait(1)
if not scriptDisabled then
if lb.Parent ~= nil and hitted == false then
PixelBlockNeg(5,math.random(1,2),"Add",lb.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),25,25,25,0.25,MAINRUINCOLOR,-2)
elseif lb.Parent == nil then
break
end
end
end
end))

-- game:GetService("Debris"):AddItem(a, 0.1)

coroutine.resume(coroutine.create(function()
swait(1)
lb.Touched:connect(function(hit)
if hitted == false then
hitted = true
lb.Transparency = 1
lb.Anchored = true
CFuncs["Sound"].Create("rbxassetid://1177785010", lb, 5, 0.9)
CFuncs["Sound"].Create("rbxassetid://192410089", lb, 5, 0.6)
CFuncs["Sound"].Create("rbxassetid://579687077", lb, 2.5, 0.65)
CFuncs["Sound"].Create("rbxassetid://1060191237", lb, 3, 0.65)
CFuncs["Sound"].Create("rbxassetid://164881112", lb, 5, 0.9)
CFuncs["Sound"].Create("rbxassetid://429123896", lb, 3.5, 0.75)
MagniDamage(lb, 50, 60,99, 0, "Normal")
CameraEnshaking(1,5)
sphere(4,"Add",lb.CFrame,vt(50,50,50),2,MAINRUINCOLOR)
sphere(8,"Add",lb.CFrame,vt(50,50,50),4,MAINRUINCOLOR)
for i = 0, 9 do
sphereMK(1,math.random(1,3),"Add",lb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,100,-0.1,MAINRUINCOLOR,0)
end
for i = 0, 99 do
swait()
MagniDamage(lb, 30, 6,18, 0, "Normal")
PixelBlock(4,math.random(1,30),"Add",lb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),32,32,32,0.32,MAINRUINCOLOR,0)
end
end
end)
end))
end
Overed = true
orb:Destroy()
end))

attack = false
end

function FinalCalam()
attack = true

local orb = Instance.new("Part", char)
        orb.Anchored = true
        orb.BrickColor = MAINRUINCOLOR
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(0,0,0)
local scaled = 0.1
local posid = 0
CFuncs["Sound"].Create("rbxassetid://136007472", orb, 1,1)
for i = 0, 5, 0.1 do
swait()
scaled = scaled - 0.001
posid = posid - scaled
orb.CFrame = rarm.CFrame*CFrame.new(0,-0.1+posid/1.05,0)
orbm.Scale = orbm.Scale + vt(scaled,scaled,scaled)
sphereMKCharge(5,-0.25,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,5,-0.005,MAINRUINCOLOR,10)
PixelBlockNeg(2,1,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.01,MAINRUINCOLOR,0)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,2 + 0.1 * math.cos(sine / 10))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(180),math.rad(20),math.rad(0)),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.1)
end
swait(60)
for i =1,3 do
	swait(30)
	CFuncs["Sound"].Create("rbxassetid://847061203", orb, 1,0.9)
	sphere(5,"Add",orb.CFrame,vt(1,1,1),0.3,MAINRUINCOLOR)
end
swait(30)
for i = 0, 2, 0.1 do
swait()
orb.CFrame = rarm.CFrame*CFrame.new(0,-0.1+posid/1.05,0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,2 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(-50)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(20)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(220),math.rad(20),math.rad(0)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.4)
end
swait(60)
	CFuncs["Sound"].Create("rbxassetid://1208650519", root, 7.5, 1)
	CFuncs["Sound"].Create("rbxassetid://151304356", workspace, 5,1)
	sphere(0.2,"Add",orb.CFrame,vt(10,10,10),5,MAINRUINCOLOR)
	sphere(0.5,"Add",orb.CFrame,vt(1,1,1),5,MAINRUINCOLOR)
	for i, v in pairs(FindNearestHead(Torso.CFrame.p, 1234567890)) do
	if v:FindFirstChild('Head') then
	dmg(v)
	end
	end
	for i = 1,20 do
	sphereMK(1,2.5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,50,-0.05,MAINRUINCOLOR,0)
	for i = 0, 10 do
		PixelBlock(1,math.random(1,30),"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,0.08,MAINRUINCOLOR,0)
	end
end
orb:Remove()
attack = false
end
function PureBomb()
attack = true

local orb = Instance.new("Part", char)
        orb.Anchored = true
        orb.BrickColor = BrickColor.new("Toothpaste")
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(0,0,0)
local scaled = 0.1
local posid = 0
CFuncs["Sound"].Create("rbxassetid://136007472", orb, 1,1)
for i = 0, 5, 0.1 do
swait()
scaled = scaled - 0.001
posid = posid - scaled
orb.CFrame = rarm.CFrame*CFrame.new(0,-0.1+posid/1.05,0)
orbm.Scale = orbm.Scale + vt(scaled,scaled,scaled)
sphereMKCharge(5,-0.25,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,5,-0.005,BrickColor.new("Toothpaste"),10)
PixelBlockNeg(2,1,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.01,BrickColor.new("Toothpaste"),0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(180),math.rad(20),math.rad(0)),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.1)
end
for i = 0, 2, 0.1 do
swait()
orb.CFrame = rarm.CFrame*CFrame.new(0,-0.1+posid/1.05,0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(-50)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(20)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(220),math.rad(20),math.rad(0)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.4)
end
coroutine.resume(coroutine.create(function()
orb.Anchored = false
CFuncs["Sound"].Create("rbxassetid://260433768", root, 1.25,1)
	local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    orb.CFrame.p,                           -- origin
	    (mouse.Hit.p - orb.CFrame.p).unit * 500 -- direction
	) 
	local ignore = orb
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (orb.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, 0)
orb.CFrame = a.CFrame
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = orb.CFrame.lookVector*125
bv.Parent = orb
local hitted = false
game:GetService("Debris"):AddItem(orb, 15)
wait()
local hit =orb.Touched:connect(function(hit) 
	if hitted == false then
	hitted = true
CameraEnshaking(10,2.5)
	MagniDamage(orb, 65, 65,90, 0, "Normal")
sphere(1,"Add",orb.CFrame,vt(orbm.Scale.x,orbm.Scale.y,orbm.Scale.z),1,BrickColor.new("Toothpaste"))
sphere(2,"Add",orb.CFrame,vt(orbm.Scale.x,orbm.Scale.y,orbm.Scale.z),2,BrickColor.new("Toothpaste"))
for i = 0, 49 do
PixelBlock(1,math.random(1,30),"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,0.08,BrickColor.new("Toothpaste"),0)
end
for i = 0, 9 do
sphereMK(1,2.5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,50,-0.05,BrickColor.new("Toothpaste"),0)
sphereMK(2,5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,50,-0.05,BrickColor.new("Toothpaste"),0)
end
orb.Anchored = true
orb.Transparency = 1
wait(8)
orb:Destroy()
end
end)
end))
for i = 0, 1, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(50)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-50)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(60),math.rad(20),math.rad(50)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.4)
end
attack = false
end

function DivineBlast()
attack = true
hum.WalkSpeed = 0
local elocacenter = CreateParta(sorb,1,1,"SmoothPlastic",BrickColor.random())
elocacenter.Anchored = true
elocacenter.CFrame = sorb.CFrame
local eloca1 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca1.Anchored = true
eloca1.CFrame = elocacenter.CFrame
local eloca2 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca2.Anchored = true
eloca2.CFrame = elocacenter.CFrame
local eloca3 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca3.Anchored = true
eloca3.CFrame = elocacenter.CFrame
local eloca4 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca4.Anchored = true
eloca4.CFrame = elocacenter.CFrame
local lookavec = 0 
local speeds = 0
CFuncs["Sound"].Create("rbxassetid://1192402877", sorb, 1.5, 1)
for i = 0, 3, 0.1 do
swait()
---
lookavec = lookavec + 0.1
speeds = speeds + 10
elocacenter.CFrame = sorb.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0.1,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0.1,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)
---
root.CFrame = FaceMouse()[1]
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.1 * math.cos(sine / 28),0.45)*angles(math.rad(-30),math.rad(0),math.rad(30)),.1)
end
for i = 0, 3, 0.1 do
swait()
---
speeds = speeds + 10
elocacenter.CFrame = sorb.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0.1,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0.1,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)
---
root.CFrame = FaceMouse()[1]
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.1 * math.cos(sine / 28),0.45)*angles(math.rad(-30),math.rad(0),math.rad(30)),.1)
end
CFuncs["Sound"].Create("rbxassetid://136007472", sorb, 1,1)
for i = 0, 3, 0.1 do
swait()
---
speeds = speeds + 10
elocacenter.CFrame = sorb.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0.1,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0.1,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0.1,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.5,0.5,0.5,0.005,MAINRUINCOLOR,-2)
---
root.CFrame = FaceMouse()[1]
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(40)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(0),math.rad(-40)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(40)),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.1 * math.cos(sine / 28),0.45)*angles(math.rad(-30),math.rad(0),math.rad(30)),.1)
end
coroutine.resume(coroutine.create(function()
local a = Instance.new("Part",Character)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("White")
a.Material = "Neon"
a.Transparency = 0
a.Shape = "Cylinder"
	a.CanCollide = false
local a2 = Instance.new("Part",Character)
	a2.Name = "Direction"	
	a2.Anchored = true
	a2.BrickColor = bc("Bright yellow")
a2.Material = "Neon"
a2.Transparency = 0
a2.Shape = "Cylinder"
	a2.CanCollide = false
local b = Instance.new("Part",Character)
	b.Name = "HitDirect"	
	b.Anchored = true
	b.BrickColor = bc("Cool yellow")
b.Material = "Neon"
b.Transparency = 1
	b.CanCollide = false
	local ray = Ray.new(
	    elocacenter.CFrame.p,                           -- origin
	    (mouse.Hit.p - elocacenter.CFrame.p).unit * 1000 -- direction
	) 
	local ignore = Character
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	a2.BottomSurface = 10
	a2.TopSurface = 10
	local distance = (elocacenter.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance, 1, 1)
	a.CFrame = CFrame.new(elocacenter.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
	a2.Size = Vector3.new(distance, 1, 1)
	a2.CFrame = CFrame.new(elocacenter.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
b.CFrame = CFrame.new(elocacenter.CFrame.p, position) * CFrame.new(0, 0, -distance)
a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
a2.CFrame = a2.CFrame*CFrame.Angles(0,math.rad(90),0)
game:GetService("Debris"):AddItem(a, 10)
game:GetService("Debris"):AddItem(a2, 10)
game:GetService("Debris"):AddItem(b, 10)
local msh = Instance.new("SpecialMesh",a)
msh.MeshType = "Cylinder"
msh.Scale = vt(1,2,2)
local msh2 = Instance.new("SpecialMesh",a2)
msh2.MeshType = "Cylinder"
msh2.Scale = vt(1,2.5,2.5)
CFuncs["Sound"].Create("rbxassetid://376970418", sorb, 2, 0.75)
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
msh.Scale = msh.Scale + vt(0,0.05,0.05)
a.Transparency = a.Transparency + 0.025
msh2.Scale = msh2.Scale + vt(0,0.25,0.25)
a2.Transparency = a2.Transparency + 0.05
end
a:Destroy()
a2:Destroy()
end))
CFuncs["Sound"].Create("rbxassetid://1177785010", b, 3, 1)
CFuncs["Sound"].Create("rbxassetid://192410089", b, 3, 0.7)
CFuncs["Sound"].Create("rbxassetid://579687077", b, 0.5, 0.75)
CFuncs["Sound"].Create("rbxassetid://1060191237", b, 1, 0.75)
CFuncs["Sound"].Create("rbxassetid://164881112", b, 3, 1)
CFuncs["Sound"].Create("rbxassetid://429123896", b, 1.5, 0.85)
MagniDamage(b, 25, 40,65, 0, "Normal")
for i = 0, 49 do
PixelBlock(2,math.random(10,20),"Add",b.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,0.04,BrickColor.new("Bright yellow"),0)
PixelBlock(1,math.random(1,10),"Add",b.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,0.08,BrickColor.new("Bright yellow"),0)
end
sphere(1,"Add",b.CFrame,vt(4,4,4),0.1,BrickColor.new("White"))
sphere(1,"Add",b.CFrame,vt(5,5,5),0.25,BrickColor.new("Bright yellow"))
sphere(1,"Add",b.CFrame,vt(5,5,5),0.5,BrickColor.new("Bright yellow"))
sphere(2,"Add",b.CFrame,vt(5,5,5),0.5,BrickColor.new("Bright yellow"))
sphere(3,"Add",b.CFrame,vt(5,5,5),0.5,BrickColor.new("Bright yellow"))
sphere(4,"Add",b.CFrame,vt(5,5,5),0.5,BrickColor.new("Bright yellow"))
end))
game:GetService("Debris"):AddItem(elocacenter, 5)
hum.WalkSpeed = storehumanoidWS
attack = false
end

function StarDivision()
attack = true
CFuncs["Sound"].Create("rbxassetid://136007472", root, 2, 1.5)
for i = 0, 2, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.6)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.1 * math.cos(sine / 28),0.45)*angles(math.rad(-30),math.rad(0),math.rad(30)),.1)
end
local orb = Instance.new("Part", char)
        orb.BrickColor = MAINRUINCOLOR
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"

if char:FindFirstChild(MagicAccessory) then

	local athp = Instance.new("Attachment",orb)
	local atho = Instance.new("Attachment",orb)
	
	local hatFire = char:FindFirstChild(MagicAccessory)
	hatFire.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp
	hatFire.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho

end

orbm.Name = "SizeMesh"
orbm.Scale = vt(2,2,2)
local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    sorb.CFrame.p,                           -- origin
	    (mouse.Hit.p - sorb.CFrame.p).unit * 500 -- direction
	) 
	local ignore = sorb
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (sorb.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(sorb.CFrame.p, position) * CFrame.new(0, 0, 0)
orb.CFrame = a.CFrame
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = orb.CFrame.lookVector*100
bv.Parent = orb
local hitted = false
game:GetService("Debris"):AddItem(orb, 10)
CFuncs["Sound"].Create("rbxassetid://376970418",orb, 1.5, 1.15)
CFuncs["Sound"].Create("rbxassetid://633627961",orb, 1, 1.15)
CFuncs["Sound"].Create("rbxassetid://1002081188", orb, 1, 1.15)
CFuncs["Sound"].Create("rbxassetid://741272936", orb, 1, 1.15)
CFuncs["Sound"].Create("rbxassetid://1192402877", orb, 1, 1.15)
coroutine.resume(coroutine.create(function()
while true do
swait(1)
if not scriptDisabled then
if orb.Parent ~= nil and hitted == false then
PixelBlockNeg(1,math.random(1,2),"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),1,1,1,0.02,MAINRUINCOLOR,-2)
elseif orb.Parent == nil then
break
end
end
end
end))
coroutine.resume(coroutine.create(function()
swait(1)
orb.Touched:connect(function(hit)
if hitted == false then
hitted = true
game:GetService("Debris"):AddItem(orb, 5)
orb.Transparency = 1
orb.Anchored = true
local elocacenter = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
elocacenter.Anchored = true
elocacenter.CFrame = orb.CFrame
elocacenter.Orientation = vt(0,0,0)
local eloca1 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca1.Anchored = true
eloca1.CFrame = elocacenter.CFrame
local eloca2 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca2.Anchored = true
eloca2.CFrame = elocacenter.CFrame
local eloca3 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca3.Anchored = true
eloca3.CFrame = elocacenter.CFrame
local eloca4 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca4.Anchored = true
eloca4.CFrame = elocacenter.CFrame
local lookavec = 0 
local speeds = 0
CameraEnshaking(1,1)
CFuncs["Sound"].Create("rbxassetid://419447292", elocacenter, 10,1)
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
for i = 0, 99 do
swait()
lookavec = lookavec + 1
speeds = speeds + 0.1
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,math.random(1,2),"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,math.random(1,2),"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,math.random(1,2),"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,math.random(1,2),"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)
end

for i = 0, 149 do
swait()
speeds = speeds + 0.1
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,math.random(1,2),"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,math.random(1,2),"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,math.random(1,2),"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,math.random(1,2),"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)
end
for i, v in pairs(FindNearestHead(elocacenter.CFrame.p, 125)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
CameraEnshaking(7,30)
MagniDamage(elocacenter, 225, 50,75, 0, "Normal")
CFuncs["Sound"].Create("rbxassetid://468991944", char, 4, 1)
CFuncs["Sound"].Create("rbxassetid://533636230", char, 5, 0.75)
CFuncs["Sound"].Create("rbxassetid://419447292", char, 1,1)
CFuncs["Sound"].Create("rbxassetid://421328847", char, 1,1)
sphere(1,"Add",elocacenter.CFrame,vt(125,90000,125),-0.25,MAINRUINCOLOR)
sphere(1,"Add",elocacenter.CFrame,vt(125,90000,125),0.5,MAINRUINCOLOR)
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
for i = 0, 24 do
sphereMK(1,2,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,100,-0.5,MAINRUINCOLOR,0)
sphereMK(2,4,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,75,-0.25,MAINRUINCOLOR,0)
sphereMK(3,6,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,50,-0.25,MAINRUINCOLOR,0)
sphereMK(4,8,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,25,-0.25,MAINRUINCOLOR,0)
end
coroutine.resume(coroutine.create(function()
for i = 0, 499 do
swait(1)
MagniDamage(elocacenter, 90, 1,5, 0, "Normal")
PixelBlockNeg(2,math.random(1,10),"Add",elocacenter.CFrame*CFrame.new(math.random(-75,75),0,math.random(-75,75))*CFrame.Angles(math.rad(90 + math.random(-30,30)),math.rad(math.random(-30,30)),math.rad(math.random(-30,30))),15,15,15,0.15,MAINRUINCOLOR,-5)
end
elocacenter:Destroy()
eloca1:Destroy()
eloca2:Destroy()
eloca3:Destroy()
eloca4:Destroy()
end))
end
end)
end))
attack = false

	coroutine.resume(coroutine.create(function() 
		
		wait(5)

		if char:FindFirstChild(MagicAccessory) then
		
			local hatFire = char:FindFirstChild(MagicAccessory)
			hatFire.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = fireAthp
			hatFire.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = fireAtho

		end
	end))
end


function THE_TRUE_POWER_OF_VIOLENCE()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://136007472", sorb, 2.5,0.7)
for i = 0, 10, 0.1 do
swait()
PixelBlockNeg(1,math.random(1,2),"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(40)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-40)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(0)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-10),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.4)
end
local orb = Instance.new("Part", char)
        orb.BrickColor = MAINRUINCOLOR
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
orb.CFrame = sorb.CFrame
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(0,0,0)
        local sbs = Instance.new("BodyPosition", orb)
        sbs.P = 3000
        sbs.D = 1000
        sbs.maxForce = Vector3.new(50000000000, 10e10, 50000000000)
        sbs.position = RootPart.CFrame.p + Vector3.new(0, 250, 0)
CFuncs["Sound"].Create("rbxassetid://419447292", rarm, 5,1)
sphere(1,"Add",sorb.CFrame,vt(0,0,0),0.25,MAINRUINCOLOR)
sphere(2,"Add",sorb.CFrame,vt(0,0,0),0.25,MAINRUINCOLOR)
sphere(3,"Add",sorb.CFrame,vt(0,0,0),0.25,MAINRUINCOLOR)
sphere(4,"Add",sorb.CFrame,vt(0,0,0),0.25,MAINRUINCOLOR)
sphere(5,"Add",sorb.CFrame,vt(0,0,0),0.25,MAINRUINCOLOR)
for i = 0, 10, 0.1 do
swait()
PixelBlockNeg(1,0.01,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),6,6,6,0.12,MAINRUINCOLOR,0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.6)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(60)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-60)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(0)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-10),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.6)
end
orb.Anchored = true
local elocacenter = CreateParta(orb,1,1,"SmoothPlastic",BrickColor.random())
elocacenter.Anchored = true
elocacenter.CFrame = orb.CFrame
elocacenter.Orientation = vt(0,0,0)
local eloca1 = CreateParta(orb,1,1,"SmoothPlastic",BrickColor.random())
eloca1.Anchored = true
eloca1.CFrame = elocacenter.CFrame
local eloca2 = CreateParta(orb,1,1,"SmoothPlastic",BrickColor.random())
eloca2.Anchored = true
eloca2.CFrame = elocacenter.CFrame
local eloca3 = CreateParta(orb,1,1,"SmoothPlastic",BrickColor.random())
eloca3.Anchored = true
eloca3.CFrame = elocacenter.CFrame
local eloca4 = CreateParta(orb,1,1,"SmoothPlastic",BrickColor.random())
eloca4.Anchored = true
eloca4.CFrame = elocacenter.CFrame
local lookavec = 0 
local speeds = 0
CameraEnshaking(1,1)
CFuncs["Sound"].Create("rbxassetid://1208650519", char, 3,1)
CFuncs["Sound"].Create("rbxassetid://419447292", char, 1.5,1)
CFuncs["Sound"].Create("rbxassetid://468991944", char, 2.5, 1)
CFuncs["Sound"].Create("rbxassetid://164881112", char, 2.5, 1)
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
for i = 0, 99 do
swait()
lookavec = lookavec + 2.5
speeds = speeds + 0.25
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)
end

for i = 0, 149 do
swait()
speeds = speeds + 0.25
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)
end
CFuncs["Sound"].Create("rbxassetid://1192402877", char, 5, 0.75)
for i = 0, 99 do
swait()
lookavec = lookavec - 2.5
speeds = speeds + 0.25
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,0,"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,0,"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,0,"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,0,"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)
end
local scaled = 0.1*75
CFuncs["Sound"].Create("rbxassetid://289315275", char, 2.5,1)
CFuncs["Sound"].Create("rbxassetid://1208650519", char, 2.5,1)
CFuncs["Sound"].Create("rbxassetid://419447292", char, 2.5,0.5)
CFuncs["Sound"].Create("rbxassetid://151304356", char, 1,0.5)
CFuncs["Sound"].Create("rbxassetid://164881112", char, 3.5, 0.75)
CFuncs["Sound"].Create("rbxassetid://1192402877", char, 2.5, 0.5)
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
for i = 0, 10, 0.1 do
swait()
scaled = scaled - 0.001*75
orbm.Scale = orbm.Scale + vt(scaled,scaled,scaled)
PixelBlockNeg(1,math.random(1,2),"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.6)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(60)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-60)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(0)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-10),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.6)
end
for x = 0, 4 do
for i = 0, 9 do
sphereMK(0.5,0,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,100000,0,MAINRUINCOLOR,0)
end
CFuncs["Sound"].Create("rbxassetid://419447292", char, 5,0.75)
CFuncs["Sound"].Create("rbxassetid://164881112", char, 2.5, 0.5)
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
for i = 0, 5, 0.1 do
swait()
PixelBlockNeg(1,math.random(1,2),"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
PixelBlockNeg(1,math.random(1,2),"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(-10)),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(10)),.1)
end
end
local speedearn = 0
CFuncs["Sound"].Create("rbxassetid://136007472", char, 5,0.2)
CFuncs["Sound"].Create("rbxassetid://289315275", char, 5,0.75)
CFuncs["Sound"].Create("rbxassetid://163619849", char, 2.5, 0.25)
for i = 0, 30, 0.1 do
swait()
scaled = scaled - 0.001*75/10
speedearn = speedearn + 0.5
for i = 0, 4 do 
sphereMK(1+speedearn,speedearn,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
end
PixelBlock(1,speedearn,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1*speedearn/10,1*speedearn/10,1*speedearn/10,0.02*speedearn/10,MAINRUINCOLOR,0)
orbm.Scale = orbm.Scale + vt(scaled,scaled,scaled)
PixelBlockNeg(1,math.random(1,2),"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
PixelBlockNeg(1,math.random(1,2),"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.6)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(0)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(-10)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(10)),.6)
end
orb.Transparency = 1
for i, v in pairs(FindNearestHead(elocacenter.CFrame.p, 125000000)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
CameraEnshaking(7,30)
MagniDamage(elocacenter, 9999999, 5000000,99999999, 0, "Normal")
CFuncs["Sound"].Create("rbxassetid://167115397", char, 5,1)
CFuncs["Sound"].Create("rbxassetid://289315275", char, 5,0.5)
CFuncs["Sound"].Create("rbxassetid://163619849", char, 3, 0.25)
CFuncs["Sound"].Create("rbxassetid://468991944", char, 10, 1)
CFuncs["Sound"].Create("rbxassetid://533636230", char, 10, 0.75)
CFuncs["Sound"].Create("rbxassetid://419447292", char, 6,1)
CFuncs["Sound"].Create("rbxassetid://421328847", char, 1,1)
CFuncs["Sound"].Create("rbxassetid://741272936", char, 5, 1)
CFuncs["Sound"].Create("rbxassetid://164881112", char, 5, 1)
CFuncs["Sound"].Create("rbxassetid://1192402877", char, 7.5, 0.5)
CFuncs["Sound"].Create("rbxassetid://429123896", char, 5, 0.85)
CFuncs["Sound"].Create("rbxassetid://1208650519", char, 5, 1)
CFuncs["Sound"].Create("rbxassetid://919941001", char, 5,1.05)
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
for i = 0, 99 do
PixelBlock(1,math.random(50,1000),"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),20,20,20,0.4,MAINRUINCOLOR,0)
PixelBlock(2,math.random(250,1000),"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,10,0.2,MAINRUINCOLOR,0)
end
for i = 0, 24 do
sphereMK(0.5,0,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,100000,0,MAINRUINCOLOR,0)
sphereMK(1,2,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,100,-0.5,MAINRUINCOLOR,0)
sphereMK(2,4,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,75,-0.25,MAINRUINCOLOR,0)
sphereMK(3,6,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,50,-0.25,MAINRUINCOLOR,0)
sphereMK(4,8,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,25,-0.25,MAINRUINCOLOR,0)
end
game:GetService("Debris"):AddItem(orb, 10)
hum.WalkSpeed = storehumanoidWS
attack = false
end


function ViolentRing()
attack = true
CFuncs["Sound"].Create("rbxassetid://136007472", rarm, 1, 1)
for i = 0, 2, 0.1 do
swait()
local snap = math.random(1,10)
if snap == 1 then
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(-50 + math.random(-10,10))),1)
end
PixelBlockX(5,0.5,"Add",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.01,MAINRUINCOLOR,0)
PixelBlockNeg(5,0.5,"Add",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.01,MAINRUINCOLOR,0)
PixelBlockX(5,0.25,"Add",larm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.65,0.65,0.65,0.0065,MAINRUINCOLOR,0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.6)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(50)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-50)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(70),math.rad(20),math.rad(50)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-30 + 5 * math.cos(sine / 30)),math.rad(-20)),.6)
RootPart.CFrame = FaceMouse()[1]
end
local orb = Instance.new("Part", char)
        orb.BrickColor = MAINRUINCOLOR
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(2,2,2)
orb.CFrame = mouse.Hit
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = orb.CFrame.lookVector*100
bv.Parent = orb
local hitted = false
coroutine.resume(coroutine.create(function()
game:GetService("Debris"):AddItem(orb, 5)
orb.Transparency = 1
orb.Anchored = true
local elocacenter = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
elocacenter.Anchored = true
elocacenter.CFrame = orb.CFrame
elocacenter.Orientation = vt(0,0,0)
local eloca1 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca1.Anchored = true
eloca1.CFrame = elocacenter.CFrame
local eloca2 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca2.Anchored = true
eloca2.CFrame = elocacenter.CFrame
local eloca3 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca3.Anchored = true
eloca3.CFrame = elocacenter.CFrame
local eloca4 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca4.Anchored = true
eloca4.CFrame = elocacenter.CFrame
local lookavec = 0 
local speeds = 0
CameraEnshaking(1,1)
CFuncs["Sound"].Create("rbxassetid://419447292", elocacenter, 10,1)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(6,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(7,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(8,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
sphere(9,"Add",elocacenter.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
for i = 0, 24 do
swait()
lookavec = lookavec + 3.5
speeds = speeds + 1
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,math.random(1,2),"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,math.random(1,2),"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,math.random(1,2),"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,math.random(1,2),"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)
end

local risen = 0
for i = 0, 49 do
swait()
risen = risen + 0.05
speeds = speeds + 0.1
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,math.random(1+risen,2+risen),"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,math.random(1+risen,2+risen),"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,math.random(1+risen,2+risen),"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)

eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,math.random(1+risen,2+risen),"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,MAINRUINCOLOR,-2)
end
for i, v in pairs(FindNearestHead(elocacenter.CFrame.p, 100)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
CameraEnshaking(4,10)
MagniDamage(elocacenter, 150, 50,75, 0, "Normal")
CFuncs["Sound"].Create("rbxassetid://468991944", char, 2, 1)
CFuncs["Sound"].Create("rbxassetid://533636230", char, 2.5, 0.75)
CFuncs["Sound"].Create("rbxassetid://419447292", char, 0.25,1)
CFuncs["Sound"].Create("rbxassetid://421328847", char, 0.25,1)
CFuncs["Sound"].Create("rbxassetid://919941001", char, 1.5,1.05)
sphere(1,"Add",elocacenter.CFrame,vt(100,90000,100),-0.25,MAINRUINCOLOR)
sphere(1,"Add",elocacenter.CFrame,vt(100,90000,100),0.5,MAINRUINCOLOR)
sphere(1,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(2,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(3,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(4,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(5,"Add",elocacenter.CFrame,vt(0,0,0),500,MAINRUINCOLOR)
for i = 0, 24 do
sphereMK(2,2,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,100,-0.25,MAINRUINCOLOR,0)
sphereMK(4,4,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,75,-0.25,MAINRUINCOLOR,0)
sphereMK(6,6,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,50,-0.25,MAINRUINCOLOR,0)
sphereMK(8,8,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,25,-0.25,MAINRUINCOLOR,0)
end
coroutine.resume(coroutine.create(function()
wait(10)
elocacenter:Destroy()
eloca1:Destroy()
eloca2:Destroy()
eloca3:Destroy()
eloca4:Destroy()
end))
end))
attack = false
end

function HolyBarrier()
	attack = true
	shielding = true
	for i = 0, 2, 0.1 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(60),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-2 - 1 * math.cos(sine / 32))),.4)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(-20),math.rad(-90),math.rad(0))*angles(math.rad(-3 + 1 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.4)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5 + 0.1 * math.cos(sine / 32))*angles(math.rad(30),math.rad(0),math.rad(0)),.4)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-30),math.rad(0),math.rad(0)),.4)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(120),math.rad(-230),math.rad(-40)),.1)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(120),math.rad(230),math.rad(40)),.1)
	end
	CFuncs["Sound"].Create("rbxassetid://240429289", root, 7, 1)
	stash = Instance.new("Model",workspace)
	local barrier = Instance.new("Part",stash)
	barrier.Anchored = true
	barrier.CanCollide = false
	barrier.Size = Vector3.new(20,20,20)
	barrier.CFrame = root.CFrame
	barrier.Transparency = 0.6
	barrier.BrickColor = MAINRUINCOLOR
	barrier.Material = Enum.Material.Neon
	barrier.Shape = Enum.PartType.Ball
	barrier.CFrame = root.CFrame
	sphere(3, "Add", root.CFrame, vt(20, 20, 20), 0.15, MAINRUINCOLOR)
	Torso.Anchored = true
	for i=1,50 do
		local p = Instance.new("Part",stash)
		p.Anchored = true
		p.Transparency = 1
		p.Size = Vector3.new(11,11,11)
		p.CFrame = root.CFrame * CFrame.Angles(math.random(0,360),math.random(0,360),math.random(0,360))
	end
	repeat
		swait(5)
		sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("White"),0)
	until shielding == false
	stash:Remove()
	Torso.Anchored = false
	shielding = false
	sphere(3, "Add", root.CFrame, vt(20, 20, 20), 0.15, MAINRUINCOLOR)
	attack = false
end

function Judgement()
	attack = true
	judgement = true
	hum.WalkSpeed = 0
	local p = Instance.new("Part",root)
	p.Anchored = true
	p.CanCollide = false
	p.BrickColor = MAINRUINCOLOR
	p.Material = Enum.Material.Neon
	p.Size = Vector3.new(1,1,1)
	p.CFrame = CFrame.new(mouse.Hit.p)+Vector3.new(0,1000,0)
	p.CFrame = p.CFrame * CFrame.Angles(0,0,89.5354)
	local m = Instance.new("SpecialMesh",p)
	m.MeshType = "Cylinder"
	m.Scale = Vector3.new(2000,2,2)
	local targ = Instance.new("Part",root)
	targ.Anchored = true
	targ.Transparency = 1
	targ.CanCollide = false
	targ.Size = Vector3.new(1,1,1)
	targ.CFrame = p.CFrame-Vector3.new(0,1000,0)
	local s = Instance.new("Sound",targ)
	s.SoundId = "https://roblox.com/asset/?id=115327352"
	s.Looped = true
	s.Pitch = 1.2
	s.Volume = 3
	spawn(function()
		swait(15)
		s:Play()
	end)
	CFuncs.Sound.Create("rbxassetid://1208650519", targ, 10, 1)
	for i = 1,15 do
		targ.CFrame = p.CFrame-Vector3.new(0,1000,0)
		RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-20),math.rad(0),math.rad(0)),0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-15),math.rad(0),math.rad(0)),.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(100)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-100)), 0.2)
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-0.5),math.rad(0),math.rad(-20)),.2)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(10),math.rad(20)),.2)
		sphere(10, "Add", targ.CFrame, vt(15, 15, 15), 0.05, MAINRUINCOLOR)
		sphereMK(3, 0.5, "Add", targ.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 1, 1, 7, -0.005, MAINRUINCOLOR, 0)
		m.Scale = m.Scale+Vector3.new(0,1,1)
		p.CFrame = CFrame.new(mouse.Hit.p)+Vector3.new(0,1000,0)
		p.CFrame = p.CFrame * CFrame.Angles(0,0,89.5354)
		swait()
	end
	sphereMK(3, 0.2, "Add", targ.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 0.5, 0.5, 5, -0.005, MAINRUINCOLOR, 0)
	repeat
		targ.CFrame = p.CFrame-Vector3.new(0,1000,0)
		sphereMK(3, 0.5, "Add", targ.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 3, 3, 15, -0.005, MAINRUINCOLOR, 0)
		sphere(10, "Add", targ.CFrame, vt(15, 15, 15), 0.15, MAINRUINCOLOR)
		p.CFrame = CFrame.new(mouse.Hit.p)+Vector3.new(0,1000,0)
		p.CFrame = p.CFrame * CFrame.Angles(0,0,89.5354)
		MagniDamage(targ, 25, 5, 8, 0, "Normal")
		swait()
		until judgement == false
	for i =1,15 do
	m.Scale = m.Scale-Vector3.new(1,1,1)
	p.Transparency = i / 15
	s.Pitch = s.Pitch - 0.4
	swait()
	end
	p:Destroy()
	hum.WalkSpeed = storehumanoidWS 
	attack = false
end

function UniversalSpark()
attack = true

local rngb = Instance.new("Part", char)
        rngb.Anchored = true
        rngb.BrickColor = origcolor
        rngb.CanCollide = false
        rngb.FormFactor = 3
        rngb.Name = "Ring"
        rngb.Material = "Neon"
        rngb.Size = Vector3.new(1, 0.05, 1)
        rngb.Transparency = 1
        rngb.TopSurface = 0
        rngb.BottomSurface = 0
        local rngmb = Instance.new("SpecialMesh", rngb)
        rngmb.MeshType = "Brick"
rngmb.Name = "SizeMesh"
rngmb.Scale = vt(0,1,0)

local orb = rngb:Clone()
orb.Parent = char
orb.Transparency = 0
orb.BrickColor = BrickColor.new("White")
orb.Size = vt(1,1,1)
local orbmish = orb.SizeMesh
orbmish.Scale = vt(0,0,0)
orbmish.MeshType = "Sphere"

local orbe = rngb:Clone()
orbe.Parent = char
orbe.Transparency = 0.5
orbe.BrickColor = BrickColor.new("New Yeller")
orbe.Size = vt(1,1,1)
local orbmish2 = orbe.SizeMesh
orbmish2.Scale = vt(0,0,0)
orbmish2.MeshType = "Sphere"
orbe.Color = Color3.new(r/255,g/255,b/255)

rngb:Destroy()
--[[CFuncs["Sound"].Create("rbxassetid://136007472", orb, 1.5, 1)
local scaled = 1
for i = 0,5,0.1 do
swait()
scaled = scaled - 0.02
if rainbowmode == true then
orbe.Color = Color3.new(r/255,g/255,b/255)
end
orbmish.Scale = orbmish.Scale + vt(scaled/1.5,scaled/1.5,scaled/1.5)
orbmish2.Scale = orbmish2.Scale + vt(scaled*1.1/1.5,scaled*1.1/1.5,scaled*1.1/1.5)
orb.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*11.5
orbe.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*11.5
sphereMKCharge(2.5,-0.5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,15,-0.025,MAINRUINCOLOR,25)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
-- Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-0.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(10),math.rad(0)),.3)
-- RootPart.CFrame = FaceMouse()[1]
end]]--
for i = 0,5,0.1 do
swait()
if rainbowmode == true then
orbe.Color = Color3.new(r/255,g/255,b/255)
end
orb.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*11.5
orbe.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*11.5
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-0.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(10),math.rad(0)),.3)
-- RootPart.CFrame = FaceMouse()[1]
end
orbe.Transparency = 1
orb.Transparency = 1
orb.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*5
CFuncs["Sound"].Create("rbxassetid://741272936", char, 1, 1)
CFuncs["Sound"].Create("rbxassetid://164881112", char, 1, 1)
CFuncs["Sound"].Create("rbxassetid://1192402877", char, 1, 1)

CFuncs["Sound"].Create("rbxassetid://294188875", char, 1, 1)
CFuncs["Sound"].Create("rbxassetid://741272936", char, 0.75, 1)
CFuncs["Sound"].Create("rbxassetid://1192402877", char, 1, 1)
CFuncs["Sound"].Create("rbxassetid://1208650519", char, 0.75, 1)
CFuncs["Sound"].Create("rbxassetid://164881112", char, 0.75, 1)
CFuncs["Sound"].Create("rbxassetid://429123896", char, 1, 0.85)
CFuncs["Sound"].Create("rbxassetid://164178927", char, 1, 1)
local xd= Instance.new("Sound",char)
xd.SoundId = "rbxassetid://445796828"
xd.Pitch = 0.75
xd.Looped = true
xd.Volume = 1.25
xd:Play()
local a = Instance.new("Part",Character)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Alder")
a.Color = MAINRUINCOLOR.Color
a.Material = "Neon"
a.Transparency = 0.5
a.Shape = "Cylinder"
	a.CanCollide = false
local a2 = Instance.new("Part",Character)
	a2.Name = "Direction"	
	a2.Anchored = true
	a2.BrickColor = bc("New Yeller")
a2.Color = MAINRUINCOLOR.Color
a2.Material = "Neon"
a2.Transparency = 0.5
a2.Shape = "Cylinder"
	a2.CanCollide = false
local ba = Instance.new("Part",Character)
	ba.Name = "HitDirect"	
	ba.Anchored = true
	ba.BrickColor = bc("Cool yellow")
ba.Material = "Neon"
ba.Transparency = 1
	ba.CanCollide = false
	local ray = Ray.new(
	    orb.CFrame.p,                           -- origin
	    (mouse.Hit.p - orb.CFrame.p).unit * 1000 -- direction
	) 
	local ignore = Character
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	a2.BottomSurface = 10
	a2.TopSurface = 10
	local distance = (orb.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance, 1, 1)
	a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
	a2.Size = Vector3.new(distance, 1, 1)
	a2.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
ba.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
a2.CFrame = a2.CFrame*CFrame.Angles(0,math.rad(90),0)
game:GetService("Debris"):AddItem(a, 60)
game:GetService("Debris"):AddItem(a2, 60)
game:GetService("Debris"):AddItem(ba, 60)
local outerscale = 0
local msh = Instance.new("SpecialMesh",a)
msh.MeshType = "Cylinder"
msh.Scale = vt(1,0,0)
local msh2 = Instance.new("SpecialMesh",a2)
msh2.MeshType = "Cylinder"
msh2.Scale = vt(1,0,0)
for i = 0,2,0.1 do
swait()
CameraEnshaking(1,1)
msh2.Scale = msh2.Scale + vt(0,outerscale*20,outerscale*20)
msh.Scale = msh.Scale + vt(0,outerscale*15,outerscale*15)
outerscale = outerscale - 0.015
orb.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*4
orbe.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*4
ray = Ray.new(
	    orb.CFrame.p,                           -- origin
	    (mouse.Hit.p - orb.CFrame.p).unit * 1000 -- direction
	) 
hit, position, normal = workspace:FindPartOnRay(ray, ignore)
distance = (orb.CFrame.p - position).magnitude
if typrot == 1 then
rotation = rotation + 2.5
elseif typrot == 2 then
rotation = rotation - 2.5
end
-- RootPart.CFrame = FaceMouse()[1]
a.Size = Vector3.new(distance, 1, 1)
a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
a2.Size = Vector3.new(distance, 1, 1)
a2.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
ba.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
a2.CFrame = a2.CFrame*CFrame.Angles(0,math.rad(90),0)
sphereMK(5,5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25*3,25*3,75*3,-0.25*3,MAINRUINCOLOR,0)
sphereMK(5,5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25*3,25*3,75*3,-0.25*3,MAINRUINCOLOR,0)
MagniDamage(ba, 100, 500,60000, 0, "Normal")
end
for z = 0, 2 do
for i = 0,4,0.1 do
swait()
CameraEnshaking(1,1)
msh2.Scale = msh2.Scale + vt(0,outerscale,outerscale)
msh.Scale = msh.Scale - vt(0,outerscale,outerscale)
outerscale = outerscale + 0.015
orb.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*4
orbe.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*4
ray = Ray.new(
	    orb.CFrame.p,                           -- origin
	    (mouse.Hit.p - orb.CFrame.p).unit * 1000 -- direction
	) 
hit, position, normal = workspace:FindPartOnRay(ray, ignore)
distance = (orb.CFrame.p - position).magnitude
if typrot == 1 then
rotation = rotation + 2.5
elseif typrot == 2 then
rotation = rotation - 2.5
end
-- RootPart.CFrame = FaceMouse()[1]
a.Size = Vector3.new(distance, 1, 1)
a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
a2.Size = Vector3.new(distance, 1, 1)
a2.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
ba.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
a2.CFrame = a2.CFrame*CFrame.Angles(0,math.rad(90),0)
sphereMK(5,5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25*3,25*3,75*3,-0.25*3,MAINRUINCOLOR,0)
sphereMK(5,5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25*3,25*3,75*3,-0.25*3,MAINRUINCOLOR,0)
MagniDamage(ba, 100, 500,60000, 0, "Normal")
end
for i = 0,4,0.1 do
swait()
CameraEnshaking(1,1)
msh2.Scale = msh2.Scale + vt(0,outerscale,outerscale)
msh.Scale = msh.Scale - vt(0,outerscale,outerscale)
outerscale = outerscale - 0.015
orb.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*4
orbe.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*4
ray = Ray.new(
	    orb.CFrame.p,                           -- origin
	    (mouse.Hit.p - orb.CFrame.p).unit * 1000 -- direction
	) 
hit, position, normal = workspace:FindPartOnRay(ray, ignore)
distance = (orb.CFrame.p - position).magnitude
if typrot == 1 then
rotation = rotation + 2.5
elseif typrot == 2 then
rotation = rotation - 2.5
end
-- RootPart.CFrame = FaceMouse()[1]
a.Size = Vector3.new(distance, 1, 1)
a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
a2.Size = Vector3.new(distance, 1, 1)
a2.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
ba.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
a2.CFrame = a2.CFrame*CFrame.Angles(0,math.rad(90),0)
sphereMK(5,5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25*3,25*3,75*3,-0.25*3,MAINRUINCOLOR,0)
sphereMK(5,5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25*3,25*3,75*3,-0.25*3,MAINRUINCOLOR,0)
MagniDamage(ba, 100, 500,60000, 0, "Normal")
end
end
for i = 0,4,0.1 do
swait()
CameraEnshaking(1,1)
msh2.Scale = msh2.Scale + vt(0,outerscale,outerscale)
msh.Scale = msh.Scale - vt(0,outerscale,outerscale)
xd.Volume = xd.Volume - 0.025
a.Transparency = a.Transparency + 0.025
a2.Transparency = a2.Transparency + 0.025
outerscale = outerscale - 0.015
orb.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*4
orbe.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*4
ray = Ray.new(
	    orb.CFrame.p,                           -- origin
	    (mouse.Hit.p - orb.CFrame.p).unit * 1000 -- direction
	) 
hit, position, normal = workspace:FindPartOnRay(ray, ignore)
distance = (orb.CFrame.p - position).magnitude
if typrot == 1 then
rotation = rotation + 2.5
elseif typrot == 2 then
rotation = rotation - 2.5
end
-- RootPart.CFrame = FaceMouse()[1]
a.Size = Vector3.new(distance, 1, 1)
a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
a2.Size = Vector3.new(distance, 1, 1)
a2.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
ba.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
a2.CFrame = a2.CFrame*CFrame.Angles(0,math.rad(90),0)
sphereMK(5,5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25*3,25*3,75*3,-0.25*3,MAINRUINCOLOR,0)
sphereMK(5,5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25*3,25*3,75*3,-0.25*3,MAINRUINCOLOR,0)
MagniDamage(ba, 100, 500,60000, 0, "Normal")
end
xd:Destroy()
a:Destroy()
a2:Destroy()
ba:Destroy()
orb:Destroy()
orbe:Destroy()
attack = false
end

function UniversalCollapse()
attack = true
local speedearn = 0
hum.WalkSpeed = 0
        local sbs = Instance.new("BodyPosition", root)
        sbs.P = 3000
        sbs.D = 1000
        sbs.maxForce = Vector3.new(50000000000, 10e10, 50000000000)
        sbs.position = RootPart.CFrame.p + Vector3.new(0, 200, 0)
CFuncs["LongSound"].Create("rbxassetid://489657591", char, 5, 1)
CFuncs["Sound"].Create("rbxassetid://1208650519", char, 5, 1)
for i = 0, 110, 0.1 do
swait()
speedearn = speedearn + 0.1
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphere(25,"Add",root.CFrame,vt(speedearn*2,speedearn*2,speedearn*2),0.01,MAINRUINCOLOR)
RH.C0=clerp(RH.C0,cf(1,-0.05,-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.1)
LH.C0=clerp(LH.C0,cf(-1,-0.5,-0.25)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(20 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(-20 + 2.5 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(20 - 2.5 * math.cos(sine / 28))),.1)
end
CameraEnshaking(5,50)
sphere(5,"Add",root.CFrame,vt(0,0,0),25,MAINRUINCOLOR)
for i = 0, 2 do 
CFuncs["Sound"].Create("rbxassetid://1177785010", char, 10, 1)
CFuncs["Sound"].Create("rbxassetid://533636230", char, 10, 0.75)
CFuncs["Sound"].Create("rbxassetid://419447292", char, 5,1)
CFuncs["Sound"].Create("rbxassetid://421328847", char, 5,1)
end
for i = 0, 49 do
sphereMK(1,3,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,200,-1,MAINRUINCOLOR,0)
sphereMK(2,6,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,150,-0.5,MAINRUINCOLOR,0)
sphereMK(3,9,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,100,-0.5,MAINRUINCOLOR,0)
sphereMK(4,12,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,50,-0.5,MAINRUINCOLOR,0)
end
sphere(1,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(2,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(3,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(4,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(5,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(6,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(1,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(2,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(3,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(4,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(5,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(6,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
for i = 0, 99 do
PixelBlock(1,math.random(50,1000),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),20,20,20,0.4,MAINRUINCOLOR,0)
PixelBlock(2,math.random(250,1000),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,10,0.2,MAINRUINCOLOR,0)
end
for i, v in pairs(FindNearestHead(root.CFrame.p, 9999999)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
MagniDamage(root, 9999999, 1000000,9999999, 0, "Normal")
sbs:Destroy()
hum.WalkSpeed = storehumanoidWS
attack = false
end

function FuckMeSidewaysAndCallMeGay()
	local whom = (mouse.Target and mouse.Target.Parent)
    --[[ local fuckThisBoi = false
    if(whom and whom:FindFirstChildOfClass'Humanoid')then
        for _,v in next, ODers do
            if(v == whom)then
                fuckThisBoi = false
            end
        end
    end
    if(not fuckThisBoi)then
        attack = false
        warn'to fuck that boi you need to target them with z'
    else --]]
	if(whom and whom:FindFirstChildOfClass'Humanoid' and whom:FindFirstChild'Torso' or whom:FindFirstChild'UpperTorso')then
		local hed = whom:FindFirstChild'Torso' or whom:FindFirstChild'UpperTorso'
		local hum = whom:FindFirstChildOfClass'Humanoid'
		local ocf = RootPart.CFrame
		-- hum.WalkSpeed = 0
		-- hum.JumpPower = 0
		-- hed.Anchored = true
		-- RootPart.Anchored = true
		Humanoid.WalkSpeed = 0
		Humanoid.JumpPower = 0
		RootPart.CFrame = hed.CFrame*cf(0,0,1.35)
		CFuncs["Sound"].Create("rbxassetid://847061203", root, 2.5,1)
		for i = 0, 9 do
			sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Pink"),0)
		end
		for i = 0, 24 do
			PixelBlock(1,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.06,BrickColor.new("Pink"),0)
		end
		sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Pink"))
		attack = true
		local speed = 1
		local heck;
		local stopitlol = false;
		heck = mouse.KeyUp:connect(function(k)
			if(k:lower() == 'm')then
				stopitlol = true
				heck:disconnect()
			end
		end)
		local times = 0
		repeat swait()
			speed = speed - .01
			times = times + 1
			if(speed < .1)then
				speed = .1
			end
			for i = 0, speed, .05 do
				RootPart.CFrame = hed.CFrame*cf(0,0,1.35)
				swait()
				RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(50),0,0)*angles(0,math.rad(90),0),.4)
				LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(50),0,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.4)
				RootJoint.C0=clerp(RootJoint.C0,cf(0,-.1,0)*angles(math.rad(-25),0,0)*RootCF,.4)   
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(0,0,0),.8)
				RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(75),0,0),.4)
				LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(75),0,0),.4)
			end
			CameraEnshaking(5,5)

			CFuncs["Sound"].Create("rbxassetid://836796971", Torso, 10,1)  

			for i = 0, speed, .05 do
				RootPart.CFrame = hed.CFrame*cf(0,0,1.35)
				swait()
				RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-50),0,0)*angles(0,math.rad(90),0),.4)
				LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-50),0,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.4)
				RootJoint.C0=clerp(RootJoint.C0,cf(0,-.1,0)*angles(math.rad(25),0,0)*RootCF,.4)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(0,0,0),.8)
				RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-75),0,0),.4)
				LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-75),0,0),.4)
			end
		until stopitlol and times >= 3
		
		for i = 1, 3 do
			for i = 0, 1.5, .05 do
				RootPart.CFrame = hed.CFrame*cf(0,0,1.35)
				swait()
				RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(50),0,0)*angles(0,math.rad(90),0),.4)
				LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(50),0,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.4)
				RootJoint.C0=clerp(RootJoint.C0,cf(0,-.1,0)*angles(math.rad(-25),0,0)*RootCF,.4)   
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(0,0,0),.8)
				RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(75),0,0),.4)
				LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(75),0,0),.4)
			end
			CameraEnshaking(5,25)

			CFuncs["Sound"].Create("rbxassetid://1430568042", Torso, 10,.75)


			coroutine.resume(coroutine.create(function()
				bld = Instance.new("ParticleEmitter",whom:WaitForChild("Torso"))
				bld.LightEmission = 0.1
				bld.Texture = "rbxassetid://284205403"
				bld.Color = ColorSequence.new(Color3.new(1,1,1))
				bld.Rate = 500
				bld.Lifetime = NumberRange.new(1)
				bld.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(1,0,0)})
				bld.Acceleration = vt(0,-25,0)
				bld.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
				bld.Speed = NumberRange.new(10,50)
				bld.EmissionDirection = "Back"
				bld.VelocitySpread = 25
				bld.Rotation = NumberRange.new(-500,500)
				bld.RotSpeed = NumberRange.new(-500,500)
				bld.Enabled = false
				bld:Emit(250)

				wait(10)

				bld:Destroy()
			end))
			
			coroutine.resume(coroutine.create(function()
				bld = Instance.new("ParticleEmitter",whom:WaitForChild("LowerTorso"))
				bld.LightEmission = 0.1
				bld.Texture = "rbxassetid://284205403"
				bld.Color = ColorSequence.new(Color3.new(1,1,1))
				bld.Rate = 500
				bld.Lifetime = NumberRange.new(1)
				bld.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(1,0,0)})
				bld.Acceleration = vt(0,-25,0)
				bld.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
				bld.Speed = NumberRange.new(10,50)
				bld.EmissionDirection = "Back"
				bld.VelocitySpread = 25
				bld.Rotation = NumberRange.new(-500,500)
				bld.RotSpeed = NumberRange.new(-500,500)
				bld.Enabled = false
				bld:Emit(250)
				
				wait(10)

				bld:Destroy()
			end))
			for i = 0, 1.5, .05 do
				RootPart.CFrame = hed.CFrame*cf(0,0,1.35)
				swait()
				RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-50),0,0)*angles(0,math.rad(90),0),.4)
				LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-50),0,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.4)
				RootJoint.C0=clerp(RootJoint.C0,cf(0,-.1,0)*angles(math.rad(25),0,0)*RootCF,.4)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(0,0,0),.8)
				RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-75),0,0),.4)
				LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-75),0,0),.4)
			end
		end
		for i = 0, 4, .05 do
			RootPart.CFrame = hed.CFrame*cf(0,0,1.35)
			swait()
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(100),0,0)*angles(0,math.rad(90),0),.1)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(100),0,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
			RootJoint.C0=clerp(RootJoint.C0,cf(0,-.75,0)*angles(math.rad(-50),0,0)*RootCF,.1)  
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(0,0,0),.1)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(75),0,0),.1)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(75),0,0),.1)
		end
		CameraEnshaking(5,25)
		CFuncs["Sound"].Create("rbxassetid://429400881", hed, 3,1)
		CFuncs["Sound"].Create("rbxassetid://1430568042", Torso, 10,.75)

		dmg(whom)
		coroutine.resume(coroutine.create(function()
			bld = Instance.new("ParticleEmitter",whom:WaitForChild("Torso"))
			bld.LightEmission = 0.1
			bld.Texture = "rbxassetid://284205403"
			bld.Color = ColorSequence.new(Color3.new(1,1,1))
			bld.Rate = 500
			bld.Lifetime = NumberRange.new(1)
			bld.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(1,0,0)})
			bld.Acceleration = vt(0,-25,0)
			bld.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
			bld.Speed = NumberRange.new(10,50)
			bld.EmissionDirection = "Back"
			bld.VelocitySpread = 25
			bld.Rotation = NumberRange.new(-500,500)
			bld.RotSpeed = NumberRange.new(-500,500)
			bld.Enabled = true
		end))
		coroutine.resume(coroutine.create(function()
			bld = Instance.new("ParticleEmitter",whom:WaitForChild("LowerTorso"))
			bld.LightEmission = 0.1
			bld.Texture = "rbxassetid://284205403"
			bld.Color = ColorSequence.new(Color3.new(1,1,1))
			bld.Rate = 500
			bld.Lifetime = NumberRange.new(1)
			bld.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(1,0,0)})
			bld.Acceleration = vt(0,-25,0)
			bld.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
			bld.Speed = NumberRange.new(10,50)
			bld.EmissionDirection = "Back"
			bld.VelocitySpread = 25
			bld.Rotation = NumberRange.new(-500,500)
			bld.RotSpeed = NumberRange.new(-500,500)
			bld.Enabled = true
		end))
		for i = 0, 3, .05 do
			RootPart.CFrame = hed.CFrame*cf(0,0,1.35)
			swait()
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-100),0,0)*angles(0,math.rad(90),0),.4)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-100),0,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.4)
			RootJoint.C0=clerp(RootJoint.C0,cf(0,-.75,0)*angles(math.rad(50),0,0)*RootCF,.4)   
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(0,0,0),.8)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-75),0,0),.4)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-75),0,0),.4)
		end

		RootPart.CFrame = ocf
		CFuncs["Sound"].Create("rbxassetid://847061203", root, 2.5,1)
		for i = 0, 9 do
			sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Pink"),0)
		end
		for i = 0, 24 do
			PixelBlock(1,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.06,BrickColor.new("Pink"),0)
		end
		sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Pink"))
		RootPart.Anchored = false
		Humanoid.WalkSpeed = storehumanoidWS
		Humanoid.JumpPower = 50
		attack = false
	end
end

function DimensionsSword() 

	attack = true
	storehumanoidWS = hum.WalkSpeed
	hum.WalkSpeed = 0

	local hitted = false

	local orb = Instance.new("Part", char)
	orb.Anchored = true
	orb.BrickColor = MAINRUINCOLOR
	orb.CanCollide = false
	orb.FormFactor = 3
	orb.Name = "Ring"
	orb.Material = "Neon"
	orb.Size = Vector3.new(0.5, 0.5, 0.5)
	orb.Transparency = 1
	orb.TopSurface = 0
	orb.BottomSurface = 0
	local orbm = Instance.new("SpecialMesh", orb)
	orbm.MeshType = "Sphere"
	orbm.Name = "SizeMesh"
	orbm.Scale = vt(2,2,2)
	local a = Instance.new("Part",workspace)
	a.Name = "Direction"
	a.Anchored = true
	a.BrickColor = MAINRUINCOLOR
	a.Material = "Neon"
	a.Transparency = 1
	a.CanCollide = false

	local ray = Ray.new(
	    sorb.CFrame.p,                         	       -- origin
	    (mouse.Hit.p - sorb.CFrame.p).unit * 500 -- direction
	)
	
	local StarSwords = {}

	local countSword = 0

	for _,v in pairs(char:GetChildren()) do
		
		local OptionSword = v.Name:find(MagicSwordsName)
	
		if v:IsA("Accessory") and OptionSword then
	
			if v.Handle.Size == Vector3.new(4,4,1) then
				table.insert(StarSwords,v)
				countSword = countSword + 1
			end
		end
	end

	local randomNum = math.floor(math.random() * countSword) + 1

	coroutine.resume(coroutine.create(function() 

		if StarSwords[randomNum] then
		
			local StarSword = StarSwords[randomNum]
	
			originalBladePos = StarSword.Handle:FindFirstChildOfClass("AlignPosition").Attachment1
			originalBladeOri = StarSword.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1
	
			local athp = Instance.new("Attachment",orb)
			local atho = Instance.new("Attachment",orb)
			
			StarSword.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp
			StarSword.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho
		
			athp.Position = Vector3.new(5,1,0)
			atho.Rotation = Vector3.new(90, 0, 45)
		end

	end))

	for i = 0, 14 do
	
		PixelBlock(3,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.03,MAINRUINCOLOR,0)
	
	end

	local ignore = sorb
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (sorb.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(sorb.CFrame.p, position) * CFrame.new(0, 0, 0)
	orb.CFrame = a.CFrame
	a:Destroy()

	for i = 0, 2, 0.1 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(0),math.rad(0)),.1)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.6)
		LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.1 * math.cos(sine / 28),0.45)*angles(math.rad(-30),math.rad(0),math.rad(30)),.1)
	end

	wait(0.5)
	
	orb.Anchored = false
	local bv = Instance.new("BodyVelocity")
	bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
	bv.velocity = orb.CFrame.lookVector*400
	bv.Parent = orb
	
	orb.Touched:connect(function(hit)

		if hitted == false and hit.Name ~= "Part" and hit.Name ~= "Handle" and hit.Parent and hit.Parent.Name ~= game.Players.LocalPlayer.Name and hit.Parent.Name ~= "non" then

			hitted = true
			orb.Transparency = 1

			orb.Anchored = true
			game:GetService("Debris"):AddItem(orb, 5)

			CameraEnshaking(5,25)
			sphere(5,"Add",orb.CFrame,vt(0,0,0),25,MAINRUINCOLOR)
			
			for i = 0, 2 do 
				CFuncs["Sound"].Create("rbxassetid://1177785010", char, 10, 1)
				CFuncs["Sound"].Create("rbxassetid://533636230", char, 10, 0.75)
				CFuncs["Sound"].Create("rbxassetid://419447292", char, 5,1)
				CFuncs["Sound"].Create("rbxassetid://421328847", char, 5,1)
			end

			for i = 0, 49 do
				sphereMK(1,3,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,200,-1,MAINRUINCOLOR,0)
				sphereMK(2,6,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,150,-0.5,MAINRUINCOLOR,0)
				sphereMK(3,9,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,100,-0.5,MAINRUINCOLOR,0)
				sphereMK(4,12,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,50,-0.5,MAINRUINCOLOR,0)
			end
			
			for i, v in pairs(FindNearestHead(root.CFrame.p, 9999999999)) do

				if v:FindFirstChild('Head') then

					dmg(v)
				end
			end

			MagniDamage(root, 9999999999, 9999999999999999999999999999999999999999999999999999999999999999,9999999999999999999999999999999999999999999999999999999999999999, 0, "Normal")

			sphere(1,"Add",orb.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
			sphere(2,"Add",orb.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
			sphere(3,"Add",orb.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
			sphere(1,"Add",orb.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
			sphere(2,"Add",orb.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
			sphere(3,"Add",orb.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
			sphere2(2,"Add",orb.CFrame,vt(1,1,1),1,1,1,MAINRUINCOLOR,MAINRUINCOLOR.Color)
			sphere2(2,"Add",orb.CFrame,vt(1,1,1),2,2,2,MAINRUINCOLOR,MAINRUINCOLOR.Color)
			sphere2(2,"Add",orb.CFrame,vt(1,1,1),4,4,4,MAINRUINCOLOR,MAINRUINCOLOR.Color)
			CFuncs["Sound"].Create("rbxassetid://1841058541", orb, 10,1)
			CFuncs["Sound"].Create("rbxassetid://2095993595", orb, 5,0.8)
			CFuncs["Sound"].Create("rbxassetid://1841058541", orb, 5,1)
			hum.CameraOffset = vt(0,0,0)

			for i = 0, 99 do
				PixelBlock(1,math.random(50,1000),"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),20,20,20,0.4,MAINRUINCOLOR,0)
				PixelBlock(2,math.random(250,1000),"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,10,0.2,MAINRUINCOLOR,0)
				slash(math.random(25,50)/10,5,true,"Round","Add","Out",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(200,500)/250,MAINRUINCOLOR)
			end

		end
	end)

	coroutine.resume(coroutine.create(function() 
		
		wait(2.5)
	
		if StarSwords[randomNum] then

			local StarSword = StarSwords[randomNum]
			StarSword.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = originalBladePos
			StarSword.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = originalBladeOri
		end
	end))

	hum.WalkSpeed = storehumanoidWS

	wait(2.5)

	attack = false

end

function DimensionsGiantSword() 

	attack = true

	local StarSwords = {}

	local originalBladePoss = {}
	local originalBladeOris = {}

	for _, v in pairs(char:GetChildren()) do

		local OptionSword = v.Name:find(MagicSwordsName)
	
		if v:IsA("Accessory") and v.Handle.Size == Vector3.new(4, 4, 1) and OptionSword then

			table.insert(StarSwords, v)

		end

	end

	for i = 0, 14 do
	
		PixelBlock(3,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.03,MAINRUINCOLOR,0)
	
	end

	if StarSwords[1] then

		local StarSword1 = StarSwords[1]

		originalBladePos = StarSword1.Handle:FindFirstChildOfClass("AlignPosition").Attachment1
		originalBladeOri = StarSword1.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1

		table.insert(originalBladePoss, originalBladePos)
		table.insert(originalBladeOris, originalBladeOri)

		local athp1 = Instance.new("Attachment",sorb)
		local atho1 = Instance.new("Attachment",sorb)

		StarSword1.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp1
		StarSword1.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho1

		athp1.Position = Vector3.new(0,0,-3.5)
		atho1.Rotation = Vector3.new(180, 90, 45)

	end

	if StarSwords[2] then
		
		local StarSword2 = StarSwords[2]
		
		originalBladePos = StarSword2.Handle:FindFirstChildOfClass("AlignPosition").Attachment1
		originalBladeOri = StarSword2.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1

		table.insert(originalBladePoss, originalBladePos)
		table.insert(originalBladeOris, originalBladeOri)
		
		local athp1 = Instance.new("Attachment",sorb)
		local atho1 = Instance.new("Attachment",sorb)
		
		StarSword2.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp1
		StarSword2.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho1

		athp1.Position = Vector3.new(0,0,-2.5)
		atho1.Rotation = Vector3.new(180, 90, 315)

	end

	if StarSwords[3] then

		local StarSword3 = StarSwords[3]

		originalBladePos = StarSword3.Handle:FindFirstChildOfClass("AlignPosition").Attachment1
		originalBladeOri = StarSword3.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1

		table.insert(originalBladePoss, originalBladePos)
		table.insert(originalBladeOris, originalBladeOri)

		local athp2 = Instance.new("Attachment",sorb)
		local atho2 = Instance.new("Attachment",sorb)
		
		StarSword3.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp2
		StarSword3.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho2
		
		athp2.Position = Vector3.new(0,0,-7.5)
		atho2.Rotation = Vector3.new(180, 90, 315)

	end

	if StarSwords[4] then

		local StarSword4 = StarSwords[4]

		originalBladePos = StarSword4.Handle:FindFirstChildOfClass("AlignPosition").Attachment1
		originalBladeOri = StarSword4.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1

		table.insert(originalBladePoss, originalBladePos)
		table.insert(originalBladeOris, originalBladeOri)
		
		local athp3 = Instance.new("Attachment",sorb)
		local atho3 = Instance.new("Attachment",sorb)
		
		StarSword4.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp3
		StarSword4.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho3
		
		athp3.Position = Vector3.new(0,0,-12.5)
		atho3.Rotation = Vector3.new(180, 90, 315)
	end

	hum.WalkSpeed = 0

	for i = 0, 20, 1 do

		swait()
		RH.C0=clerp(RH.C0,cf(1,-0.35,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 9 * math.cos(sine / 39))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-0.5),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 5 * math.cos(sine / 51))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.01 + 0.02 * math.cos(sine / 32),1 + 0.25 * math.cos(sine / 32))*angles(math.rad(3 - 3 * math.cos(sine / 32)),math.rad(0),math.rad(22)),.1)
		-- Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(-22)),.1)
		RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(180 + 3 * math.cos(sine / 53)),math.rad(0 - 4 * math.cos(sine / 60)),math.rad(-5 + 4 * math.cos(sine / 45))),.1)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(-5 - 7 * math.cos(sine / 58)),math.rad(1 - 5 * math.cos(sine / 55)),math.rad(-12 - 9 * math.cos(sine / 45))),.1)
	end

	wait(1)

	for i = 0, 10, 1 do

		swait()
		RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 7 * math.cos(sine / 56))),0.5)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 52))),0.5)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),0.5)
		-- Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),0.5)
		RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(2 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(14 + 5 * math.cos(sine / 32))),0.5)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-14 - 6 * math.cos(sine / 33))),0.5)

	end

	CameraEnshaking(5,50)
	sphere(5,"Add",root.CFrame,vt(0,0,0),25,MAINRUINCOLOR)

	for i = 0, 2 do 

		CFuncs["Sound"].Create("rbxassetid://1177785010", char, 10, 1)
		CFuncs["Sound"].Create("rbxassetid://533636230", char, 10, 0.75)
		CFuncs["Sound"].Create("rbxassetid://419447292", char, 5,1)
		CFuncs["Sound"].Create("rbxassetid://421328847", char, 5,1)
	end

	for i = 0, 49 do

		sphereMK(1,3,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,200,-1,MAINRUINCOLOR,0)
		sphereMK(2,6,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,150,-0.5,MAINRUINCOLOR,0)
		sphereMK(3,9,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,100,-0.5,MAINRUINCOLOR,0)
		sphereMK(4,12,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,50,-0.5,MAINRUINCOLOR,0)
	end

	sphere(1,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
	sphere(2,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
	sphere(3,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
	sphere(4,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
	sphere(5,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
	sphere(6,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
	sphere(1,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
	sphere(2,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
	sphere(3,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
	sphere(4,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
	sphere(5,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
	sphere(6,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)

	symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,1)
	symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,1.5)
	symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,3)

	sphere2(2,"Add",root.CFrame,vt(1,1,1),1,1,1,MAINRUINCOLOR,MAINRUINCOLOR.Color)
	sphere2(2,"Add",root.CFrame,vt(1,1,1),2,2,2,MAINRUINCOLOR,MAINRUINCOLOR.Color)
	sphere2(2,"Add",root.CFrame,vt(1,1,1),4,4,4,MAINRUINCOLOR,MAINRUINCOLOR.Color)
	sphere2(2,"Add",root.CFrame,vt(1,1,1),8,8,8,MAINRUINCOLOR,MAINRUINCOLOR.Color)

	CFuncs["Sound"].Create("rbxassetid://1841058541", root, 10,1)
	CFuncs["Sound"].Create("rbxassetid://2095993595", char, 5,0.8)
	CFuncs["Sound"].Create("rbxassetid://1841058541", char, 5,1)

	hum.CameraOffset = vt(0,0,0)

	for i = 0, 24 do

		slash(math.random(10,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(500,1500)/250,MAINRUINCOLOR)
	end

	for i = 0, 99 do

		PixelBlock(1,math.random(50,1000),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),20,20,20,0.4,MAINRUINCOLOR,0)
		PixelBlock(2,math.random(250,1000),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,10,0.2,MAINRUINCOLOR,0)
		slash(math.random(25,50)/10,5,true,"Round","Add","Out",Character.Torso.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(200,500)/250,MAINRUINCOLOR)
	end

	for i, v in pairs(FindNearestHead(root.CFrame.p, 9999999)) do
		if v:FindFirstChild('Head') then
			dmg(v)
		end
	end
	
	MagniDamage(root, 9999999999, 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999,99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 0, "Normal")
	
	hum.WalkSpeed = 16

	wait(3)
		
	for i = 1, 4, 1 do

		if StarSwords[i] then
	
			local StarSword = StarSwords[i]
			StarSword.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = originalBladePoss[i]
			StarSword.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = originalBladeOris[i]

		end

	end

	attack = false

end

function DimensionsTargetSword() 

	attack = true
	
	storehumanoidWS = hum.WalkSpeed
	hum.WalkSpeed = 0

	local hitted = {false, false, false, false}

	local orbs = {}
	local orbms = {}
	local ass = {}

	for i = 1, 4, 1 do

		local orb = Instance.new("Part", char)
		orb.Anchored = true
		orb.BrickColor = MAINRUINCOLOR
		orb.CanCollide = false
		orb.FormFactor = 3
		orb.Name = "Ring"
		orb.Material = "Neon"
		orb.Size = Vector3.new(0.5, 0.5, 0.5)
		orb.Transparency = 0
		orb.TopSurface = 0
		orb.BottomSurface = 0
		table.insert(orbs, orb)

		local orbm = Instance.new("SpecialMesh", orb)
		orbm.MeshType = "Sphere"
		orbm.Name = "SizeMesh"
		orbm.Scale = vt(2,2,2)
		table.insert(orbms, orbm)

		local a = Instance.new("Part",workspace)
		a.Name = "Direction"
		a.Anchored = true
		a.BrickColor = MAINRUINCOLOR
		a.Material = "Neon"
		a.Transparency = 1
		a.CanCollide = false
		table.insert(ass, a)
	end

	local players = {}

	for i, v in pairs(game.Players:GetChildren()) do

		if v.Name ~= game.Players.LocalPlayer.Name then

			table.insert(players, v)
		
		end

	end

	local rays = {}

	for i = 1, 4, 1 do

		pcall(function() 

			if players[i].Character and players[i].Character.Head then
	
				local ray = Ray.new(
					sorb.CFrame.p,			 		       -- origin
					(players[i].Character.Head.CFrame.p - sorb.CFrame.p).unit * 500 -- direction
				)	
	
				table.insert(rays, ray)
	
			end
		end)
	end
	
	local StarSwords = {}

	local countSword = 0

	for _,v in pairs(char:GetChildren()) do
		
		local OptionSword = v.Name:find(MagicSwordsName)
	
		if v:IsA("Accessory") and OptionSword then
	
			if v.Handle.Size == Vector3.new(4,4,1) then
				table.insert(StarSwords,v)
				countSword = countSword + 1
			end
		end
	end

	local originalBladePoss = {}
	local originalBladeOris = {}

	for i = 1, 4, 1 do

		if StarSwords[i] then
		
			local StarSword = StarSwords[i]
		
			originalBladePos = StarSword.Handle:FindFirstChildOfClass("AlignPosition").Attachment1
			originalBladeOri = StarSword.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1

			table.insert(originalBladePoss, originalBladePos)
			table.insert(originalBladeOris, originalBladeOri)
		
			local athp = Instance.new("Attachment",orbs[i])
			local atho = Instance.new("Attachment",orbs[i])
			
			StarSword.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp
			StarSword.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho
			
			athp.Position = Vector3.new(5,1,0)
			atho.Rotation = Vector3.new(90, 0, 45)
		end
	end

	for i = 0, 14 do
	
		PixelBlock(3,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.03,MAINRUINCOLOR,0)
	
	end

	local ignore = sorb

	local positions = {}
	local distances = {}
	local bodyvelocitys = {}

	for i = 1, 4, 1 do
	
		if rays[i] then

			local hit, position, normal = workspace:FindPartOnRay(rays[i], ignore)
			table.insert(positions, position)
		end
	end

	for i = 1, 4, 1 do

		ass[i].BottomSurface = 10
		ass[i].TopSurface = 10
		
		if positions[i] ~= nil then

			local distance = (sorb.CFrame.p - positions[i]).magnitude
			ass[i].CFrame = CFrame.new(sorb.CFrame.p, positions[i]) * CFrame.new(0, 0, 0)
			
		end

		ass[i].Size = Vector3.new(0.1, 0.1, 0.1)
		orbs[i].CFrame = ass[i].CFrame
		ass[i]:Destroy()

		table.insert(distances, distance)

	end

	for i = 0, 2, 0.1 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(0),math.rad(0)),.1)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.6)
		LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.1 * math.cos(sine / 28),0.45)*angles(math.rad(-30),math.rad(0),math.rad(30)),.1)
	end

	for i = 1, 4, 1 do

		orbs[i].Touched:connect(function(hit)

			if hitted[i] == false and hit.Name ~= "Part" and hit.Name ~= "Handle" and hit.Parent and hit.Parent.Name ~= game.Players.LocalPlayer.Name and hit.Parent.Name ~= "non" then
	
				hitted[i] = true
	
				orbs[i].Transparency = 1
	
				orbs[i].Anchored = true

				for i, v in pairs(FindNearestHead(orbs[i].CFrame.p, 50)) do

					if v:FindFirstChild('Head') then
	
						dmg(v)
					end
				end
	
				MagniDamage(orbs[i], 50, 9999999999999999999999999999999999999999999999999999999999999999,9999999999999999999999999999999999999999999999999999999999999999, 0, "Normal")

				CameraEnshaking(2,11)
				CFuncs["Sound"].Create("rbxassetid://1226980789", orbs[i], 4.5, 0.7)
				CFuncs["Sound"].Create("rbxassetid://178452221", orbs[i], 2.5, 0.4)
				MagniDamage(orbs[i], 25, 20,30, 0, "Normal")
				sphere2(4,"Add",orbs[i].CFrame,vt(4,4,4),0.5,0.5,0.5,MAINRUINCOLOR)
				sphere2(3,"Add",orbs[i].CFrame,vt(4,4,4),0.5,0.5,0.5,MAINRUINCOLOR)
				sphere2(2,"Add",orbs[i].CFrame,vt(4,4,4),0.5,0.5,0.5,MAINRUINCOLOR)

				for i = 0, 9 do
					sphere2(4,"Add",orbs[i].CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1.5,1,1.5),-0.005,4,-0.005,MAINRUINCOLOR)
				end

				for i = 0, 49 do
					local rsiz = math.random(10,30)
					sphereMK(math.random(1,3),1,"Add",orbs[i].CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,MAINRUINCOLOR,0)
				end

				for i = 1, 4, 1 do

					coroutine.resume(coroutine.create(function()

						wait(1.5)

						if StarSwords[i] then
			
							local StarSword = StarSwords[i]
							StarSword.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = originalBladePoss[i]
							StarSword.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = originalBladeOris[i]
			
						end

					end))

				end

				game:GetService("Debris"):AddItem(orbs[i], 5)
				
			end
			
		end)

	end

	wait(0.5)
	
	for i = 1, 4, 1 do

		if positions[i] ~= nil then

			orbs[i].Anchored = false

			local bv = Instance.new("BodyVelocity")
			bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
			bv.velocity = orbs[i].CFrame.lookVector*400
			bv.Parent = orbs[i]

			table.insert(bodyvelocitys, bv)

			wait(0.3)

		else

			orbs[i].Anchored = true

		end

	end

	local RootC0 = cf(0, 0, 0) * angles(math.rad(-90), math.rad(0), math.rad(180))
	local RIGHTSHOULDERC0 = cf(0, 0, 0) * angles(math.rad(0), math.rad(90), math.rad(0))
	local LEFTSHOULDERC0 = cf(0.2, 0, -0.2) * angles(math.rad(0), math.rad(-90), math.rad(0))

	for i = 0, 30 do
		
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootC0*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-0.05 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(30 + 3 * math.cos(sine / 40))),.1)
		-- Torso.Neck.C0=clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0 - 7 * math.cos(sine / 40)),math.rad(-30 - 3 * math.cos(sine / 40))),.1)
		RW.C0 = clerp(RW.C0, cf(1, 0.5 + 0.05 * math.sin(sine / 40), -0.8) * angles(math.rad(100), math.rad(0), math.rad(-70)) * RIGHTSHOULDERC0, 1 / 3)
		LW.C0 = clerp(LW.C0, cf(-0.9, 0.25 + 0.05 * math.sin(sine / 40), -0.7) * angles(math.rad(70), math.rad(0), math.rad(80)) * LEFTSHOULDERC0, 1 / 3)
	end

	coroutine.resume(coroutine.create(function() 
		
		wait(2.5)
		
		for i = 1, 4, 1 do

			if StarSwords[i] then
	
				local StarSword = StarSwords[i]
				StarSword.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = originalBladePoss[i]
				StarSword.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = originalBladeOris[i]

			end

		end
	end))

	wait(3)

	hum.WalkSpeed = storehumanoidWS

	attack = false

end

function DimensionsCollapse()
attack = true
local speedearn = 0
storehumanoidWS = hum.WalkSpeed
hum.WalkSpeed = 0
        local sbs = Instance.new("BodyPosition", root)
        sbs.P = 3000
        sbs.D = 1000
        sbs.maxForce = Vector3.new(50000000000, 10e10, 50000000000)
        sbs.position = RootPart.CFrame.p + Vector3.new(0, 200, 0)
CFuncs["LongSound"].Create("rbxassetid://489657591", char, 5, 1)
CFuncs["Sound"].Create("rbxassetid://1208650519", char, 5, 1)
for i = 0, 110, 0.1 do
swait()
speedearn = speedearn + 0.1
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,10*speedearn,-0.05,MAINRUINCOLOR,0)
sphere(25,"Add",root.CFrame,vt(speedearn*2,speedearn*2,speedearn*2),0.01,MAINRUINCOLOR)
RH.C0=clerp(RH.C0,cf(1,-0.05,-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.1)
LH.C0=clerp(LH.C0,cf(-1,-0.5,-0.25)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(20 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(-20 + 2.5 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(20 - 2.5 * math.cos(sine / 28))),.1)
end
CameraEnshaking(5,50)
sphere(5,"Add",root.CFrame,vt(0,0,0),25,MAINRUINCOLOR)
for i = 0, 2 do 
CFuncs["Sound"].Create("rbxassetid://1177785010", char, 10, 1)
CFuncs["Sound"].Create("rbxassetid://533636230", char, 10, 0.75)
CFuncs["Sound"].Create("rbxassetid://419447292", char, 5,1)
CFuncs["Sound"].Create("rbxassetid://421328847", char, 5,1)
end
for i = 0, 49 do
sphereMK(1,3,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,200,-1,MAINRUINCOLOR,0)
sphereMK(2,6,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,150,-0.5,MAINRUINCOLOR,0)
sphereMK(3,9,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,100,-0.5,MAINRUINCOLOR,0)
sphereMK(4,12,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,50,-0.5,MAINRUINCOLOR,0)
end
sphere(1,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(2,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(3,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(4,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(5,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(6,"Add",root.CFrame,vt(0,0,0),15,MAINRUINCOLOR)
sphere(1,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(2,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(3,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(4,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(5,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
sphere(6,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,1)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,1.5)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,3)
sphere2(2,"Add",root.CFrame,vt(1,1,1),1,1,1,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),2,2,2,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),4,4,4,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),8,8,8,MAINRUINCOLOR,MAINRUINCOLOR.Color)
CFuncs["Sound"].Create("rbxassetid://1841058541", root, 10,1)
CFuncs["Sound"].Create("rbxassetid://2095993595", char, 5,0.8)
CFuncs["Sound"].Create("rbxassetid://1841058541", char, 5,1)
hum.CameraOffset = vt(0,0,0)
for i = 0, 24 do
slash(math.random(10,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(500,1500)/250,MAINRUINCOLOR)
end
for i = 0, 99 do
PixelBlock(1,math.random(50,1000),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),20,20,20,0.4,MAINRUINCOLOR,0)
PixelBlock(2,math.random(250,1000),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,10,0.2,MAINRUINCOLOR,0)
slash(math.random(25,50)/10,5,true,"Round","Add","Out",Character.Torso.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(200,500)/250,MAINRUINCOLOR)
end
for i, v in pairs(FindNearestHead(root.CFrame.p, 9999999)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
MagniDamage(root, 9999999999, 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999,99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 0, "Normal")
local distam = 0
coroutine.resume(coroutine.create(function()
for i = 0, 99 do
	wait()
distam = distam + 1
local xa = CreateParta(char,1,1,"SmoothPlastic",MAINRUINCOLOR)
xa.Anchored = true
xa.CFrame = root.CFrame*CFrame.new(math.random(-distam,distam),math.random(-distam,distam),math.random(-distam,distam))
game:GetService("Debris"):AddItem(xa, 5)
for i = 0, 4 do
slash(math.random(25,50)/10,5,true,"Round","Add","Out",xa.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(200,500)/250,MAINRUINCOLOR)
end

-- RH.C0=clerp(RH.C0,cf(1,-1,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.4)
-- LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.4)
-- RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.4)
-- Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.4)
-- RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(30)),.4)
-- LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(-30)),.4)

coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",xa)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(1,3)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,30,0),NumberSequenceKeypoint.new(0.2,5,0),NumberSequenceKeypoint.new(0.8,5,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(50,500)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.25)
eff.Enabled = false
end))
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
end
hum.CameraOffset = vt(0,0,0)
end))
CFuncs["Sound"].Create("rbxassetid://675172759", xa, 7,math.random(100,200)/200)
sphere2(5,"Add",xa.CFrame,vt(1,1,1),1,1,1,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(5,"Add",xa.CFrame,vt(1,1,1),2,2,2,MAINRUINCOLOR,MAINRUINCOLOR.Color)

MagniDamage(xa, 99999999999999, 99999999999999, 99999999999999, 0, "Normal")

end
end))
sbs:Destroy()
hum.WalkSpeed = storehumanoidWS
attack = false
end

function theDimensions() 
	storehumanoidWS = 16
	hum.WalkSpeed = 0
	
	attack = true
	
	newThemeCust("rbxassetid://4449269937",59,1,1.5)

	local RootC0 = cf(0, 0, 0) * angles(math.rad(-90), math.rad(0), math.rad(180))
	local RIGHTSHOULDERC0 = cf(0, 0, 0) * angles(math.rad(0), math.rad(90), math.rad(0))
	local LEFTSHOULDERC0 = cf(0.2, 0, -0.2) * angles(math.rad(0), math.rad(-90), math.rad(0))

	for i = 0, 30 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootC0*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-0.05 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(30 + 3 * math.cos(sine / 40))),.1)
		-- Torso.Neck.C0=clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0 - 7 * math.cos(sine / 40)),math.rad(-30 - 3 * math.cos(sine / 40))),.1)
		RW.C0 = clerp(RW.C0, cf(1, 0.5 + 0.05 * math.sin(sine / 40), -0.8) * angles(math.rad(100), math.rad(0), math.rad(-70)) * RIGHTSHOULDERC0, 1 / 3)
		LW.C0 = clerp(LW.C0, cf(-0.9, 0.25 + 0.05 * math.sin(sine / 40), -0.7) * angles(math.rad(70), math.rad(0), math.rad(80)) * LEFTSHOULDERC0, 1 / 3)
	end

	wait(6)

	for i = 0, 5, .1 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-5.5 - 2 * math.cos(sine / 56)),math.rad(-22 - 2 * math.cos(sine / 32))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6),math.rad(22 - 2 * math.cos(sine / 56)),math.rad(-10 + 2 * math.cos(sine / 32))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.01 + 0.03 * math.cos(sine / 32),0 + 0.1 * math.cos(sine / 32))*angles(math.rad(10 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-22 + 2 * math.cos(sine / 56))),.1)
		-- Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 43) - 5 * math.cos(sine / 0.25)),math.rad(22 - 2 * math.cos(sine / 56)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
		RW.C0=clerp(RW.C0,cf(1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(95 + 3 * math.cos(sine / 43)),math.rad(-16 - 5 * math.cos(sine / 52)),math.rad(0))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
		LW.C0=clerp(LW.C0,cf(-1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 43)),math.rad(16 + 4 * math.cos(sine / 52)),math.rad(-22 - 2 * math.cos(sine / 45)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
	end
	    
	bosschatfunc("When you travel, you are trying to get somewhere.", MAINRUINCOLOR.Color, 2) 

	wait(6)

	for i = 0, 30 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootC0*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-0.05 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(30 + 3 * math.cos(sine / 40))),.1)
		-- Torso.Neck.C0=clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0 - 7 * math.cos(sine / 40)),math.rad(-30 - 3 * math.cos(sine / 40))),.1)
		RW.C0 = clerp(RW.C0, cf(1, 0.5 + 0.05 * math.sin(sine / 40), -0.8) * angles(math.rad(100), math.rad(0), math.rad(-70)) * RIGHTSHOULDERC0, 1 / 3)
		LW.C0 = clerp(LW.C0, cf(-0.9, 0.25 + 0.05 * math.sin(sine / 40), -0.7) * angles(math.rad(70), math.rad(0), math.rad(80)) * LEFTSHOULDERC0, 1 / 3)
	end

	bosschatfunc("In music, one doesn't make the end of a composition.", MAINRUINCOLOR.Color, 2) 
		
	wait(6)

	for i = 0, 30 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28) - 0.04 * math.cos(sine / 50),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1 + 4 * math.cos(sine / 50)),math.rad(0),math.rad(0 - 2 * math.cos(sine / 34))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28) + 0.04 * math.cos(sine / 50),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5 - 4 * math.cos(sine / 50)),math.rad(18),math.rad(0 + 2 * math.cos(sine / 34))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.04 * math.cos(sine / 50),0 + 0.03 * math.cos(sine / 34),0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 3 * math.cos(sine / 34)),math.rad(0 + 4 * math.cos(sine / 50)),math.rad(18)),.1)
		-- Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 1 * math.cos(sine / 28)),math.rad(-5 - 2.5 * math.cos(sine / 57)),math.rad(-18)),.1)
		RW.C0=clerp(RW.C0,cf(0.85,0.5 + 0.05 * math.cos(sine / 28),-0.65)*angles(math.rad(36 - 7 * math.cos(sine / 34)),math.rad(0 - 6 * math.cos(sine / 45)),math.rad(-80 + 2 * math.cos(sine / 28))),.1)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(0 + 3 * math.cos(sine / 49)),math.rad(10 + 2 * math.cos(sine / 52)),math.rad(-5 - 3 * math.cos(sine / 39))),.1)
	end

	bosschatfunc("We thought of life by analogy with a journey.", MAINRUINCOLOR.Color, 2)

	wait(4)

	bosschatfunc("Which had a serious purpose at the end and the thing was to get to that end..", MAINRUINCOLOR.Color, 2)

	wait(4)

	for i = 0, 30 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootC0*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-0.05 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(30 + 3 * math.cos(sine / 40))),.1)
		-- Torso.Neck.C0=clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0 - 7 * math.cos(sine / 40)),math.rad(-30 - 3 * math.cos(sine / 40))),.1)
		RW.C0 = clerp(RW.C0, cf(1, 0.5 + 0.05 * math.sin(sine / 40), -0.8) * angles(math.rad(100), math.rad(0), math.rad(-70)) * RIGHTSHOULDERC0, 1 / 3)
		LW.C0 = clerp(LW.C0, cf(-0.9, 0.25 + 0.05 * math.sin(sine / 40), -0.7) * angles(math.rad(70), math.rad(0), math.rad(80)) * LEFTSHOULDERC0, 1 / 3)
	end

	bosschatfunc("But, we missed the point the whole way along.", MAINRUINCOLOR.Color, 2)

	wait(3)

	storehumanoidWS = 16
	hum.WalkSpeed = 16
	rainbowmode = false
	chaosmode = false
	attack = true
	RecolorTextAndRename("Dimensions",BrickColor.new("Black metallic").Color,BrickColor.new("Gold").Color,"Fantasy")
	MAINRUINCOLOR = BrickColor.new("Gold")
	RecolorThing(BrickColor.new("Black metallic"),BrickColor.new("Black metallic"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0,MAINRUINCOLOR,0,MAINRUINCOLOR,true,true)
	warnedpeople("The dimensions is back.","Fantasy",BrickColor.new("Black metallic").Color,BrickColor.new("Gold").Color)

	coroutine.resume(coroutine.create(function() 

		wait(78)

		if ModeOfGlitch == 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 then
			
			attack = true

			storehumanoidWS = 16
			hum.WalkSpeed = 0

			local RootC0 = cf(0, 0, 0) * angles(math.rad(-90), math.rad(0), math.rad(180))
			local RIGHTSHOULDERC0 = cf(0, 0, 0) * angles(math.rad(0), math.rad(90), math.rad(0))
			local LEFTSHOULDERC0 = cf(0.2, 0, -0.2) * angles(math.rad(0), math.rad(-90), math.rad(0))
			
			for i = 0, 5, .1 do
	
				swait()
				RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-5.5 - 2 * math.cos(sine / 56)),math.rad(-22 - 2 * math.cos(sine / 32))),.1)
				LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6),math.rad(22 - 2 * math.cos(sine / 56)),math.rad(-10 + 2 * math.cos(sine / 32))),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.01 + 0.03 * math.cos(sine / 32),0 + 0.1 * math.cos(sine / 32))*angles(math.rad(10 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-22 + 2 * math.cos(sine / 56))),.1)
				-- Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 43) - 5 * math.cos(sine / 0.25)),math.rad(22 - 2 * math.cos(sine / 56)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
				RW.C0=clerp(RW.C0,cf(1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(95 + 3 * math.cos(sine / 43)),math.rad(-16 - 5 * math.cos(sine / 52)),math.rad(0))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
				LW.C0=clerp(LW.C0,cf(-1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 43)),math.rad(16 + 4 * math.cos(sine / 52)),math.rad(-22 - 2 * math.cos(sine / 45)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
			end	
			    
			bosschatfunc("You paid for this increased survival ability", MAINRUINCOLOR.Color, 2) 
	
			wait(5)
	
			for i = 0, 30 do
	
				swait()
				RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
				LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootC0*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-0.05 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(30 + 3 * math.cos(sine / 40))),.1)
				-- Torso.Neck.C0=clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0 - 7 * math.cos(sine / 40)),math.rad(-30 - 3 * math.cos(sine / 40))),.1)
				RW.C0 = clerp(RW.C0, cf(1, 0.5 + 0.05 * math.sin(sine / 40), -0.8) * angles(math.rad(100), math.rad(0), math.rad(-70)) * RIGHTSHOULDERC0, 1 / 3)
				LW.C0 = clerp(LW.C0, cf(-0.9, 0.25 + 0.05 * math.sin(sine / 40), -0.7) * angles(math.rad(70), math.rad(0), math.rad(80)) * LEFTSHOULDERC0, 1 / 3)
			end
	
			bosschatfunc("by knowing that in the end you won't succeed, you're all going to fall apart.", MAINRUINCOLOR.Color, 2) 
	
			wait(5)
	
			bosschatfunc("It might happen tomorrow, it might happen 50 years from now.", MAINRUINCOLOR.Color, 2) 
	
			wait(9)
	
			for i = 0, 30 do
	
				swait()
				RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28) - 0.04 * math.cos(sine / 50),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1 + 4 * math.cos(sine / 50)),math.rad(0),math.rad(0 - 2 * math.cos(sine / 34))),.1)
				LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28) + 0.04 * math.cos(sine / 50),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5 - 4 * math.cos(sine / 50)),math.rad(18),math.rad(0 + 2 * math.cos(sine / 34))),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.04 * math.cos(sine / 50),0 + 0.03 * math.cos(sine / 34),0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 3 * math.cos(sine / 34)),math.rad(0 + 4 * math.cos(sine / 50)),math.rad(18)),.1)
				-- Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 1 * math.cos(sine / 28)),math.rad(-5 - 2.5 * math.cos(sine / 57)),math.rad(-18)),.1)
				RW.C0=clerp(RW.C0,cf(0.85,0.5 + 0.05 * math.cos(sine / 28),-0.65)*angles(math.rad(36 - 7 * math.cos(sine / 34)),math.rad(0 - 6 * math.cos(sine / 45)),math.rad(-80 + 2 * math.cos(sine / 28))),.1)
				LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(0 + 3 * math.cos(sine / 49)),math.rad(10 + 2 * math.cos(sine / 52)),math.rad(-5 - 3 * math.cos(sine / 39))),.1)
			end
	
			bosschatfunc("But it all comes apart in the end, by one way or another.", MAINRUINCOLOR.Color, 2) 
	
			wait(2)

			for i = 0, 30 do
				
				swait()
				RH.C0=clerp(RH.C0,cf(1,-1 - 0.025 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(20)),.1)
				LH.C0=clerp(LH.C0,cf(-1,-1 - 0.025 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(-20)),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.025 * math.cos(sine / 32))*angles(math.rad(20 - 0.5 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30 - 5 * math.cos(sine / 0.5265)),math.rad(0 - 15 * math.cos(sine / 0.25)),math.rad(0 - 15 * math.cos(sine / 0.465))),.1)
				RW.C0=clerp(RW.C0,cf(1.3,0.5,0)*angles(math.rad(180),math.rad(-90),math.rad(15))*angles(math.rad(-35),0,0)*angles(math.rad(10 + 2.5 * math.cos(sine / 0.252)),math.rad(0 + 2.5 * math.cos(sine / 0.123)),math.rad(5 + 2.5 * math.cos(sine / 0.6)))*angles(0,math.rad(0 - 15 * math.cos(sine / 0.25)),math.rad(0 - 15 * math.cos(sine / 0.465))),.1)
				LW.C0=clerp(LW.C0,cf(-1.3,0.5,0)*angles(math.rad(180),math.rad(90),math.rad(-15))*angles(math.rad(-35),0,0)*angles(math.rad(10 + 2.5 * math.cos(sine / 0.568)),math.rad(0 + 2.5 * math.cos(sine / 0.664)),math.rad(-5 + 2.5 * math.cos(sine / 0.23)))*angles(0,math.rad(0 - 15 * math.cos(sine / 0.25)),math.rad(0 - 15 * math.cos(sine / 0.465))),.1)
			end

			wait(3)
			
			hum.WalkSpeed = storehumanoidWS

			attack = false

		end

	end))

	attack = false
end

function th1rt3en_trans()
    storehumanoidWS = 275
    hum.WalkSpeed = 0
    attack=true
    newThemeCust("rbxassetid://723652641",0,1,1.25)
   
    repeat
        swait()
        local snap = math.random(1,10)
        if snap == 1 then
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 + math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(22 + math.random(-5,5))),1)
        end
        RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-5.5 - 2 * math.cos(sine / 56)),math.rad(-12 - 2 * math.cos(sine / 32))),.1)
        LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6),math.rad(22 - 2 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.01 + 0.03 * math.cos(sine / 32),0 + 0.1 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-22 + 2 * math.cos(sine / 56))),.1)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 43) - 5 * math.cos(sine / 0.25)),math.rad(22 - 2 * math.cos(sine / 56))),.1)
        RW.C0=clerp(RW.C0,cf(1.5,.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 + 3 * math.cos(sine / 43)),math.rad(-16 - 5 * math.cos(sine / 52)),math.rad(13 + 9 * math.cos(sine / 45))),.1)
        LW.C0=clerp(LW.C0,cf(-1.35,1 + 0.025 * math.cos(sine / 45),-0.2)*angles(math.rad(148 - 2 * math.cos(sine / 51)),math.rad(0 - 4 * math.cos(sine / 64)),math.rad(22 - 2 * math.cos(sine / 45))),.1)
 
    until kan.TimePosition > 2.4
    for i = 0, 5, .1 do
        swait()
        RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.4)
        LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.4)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.15)*angles(math.rad(30),math.rad(0),math.rad(0)),.4)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30),math.rad(0),math.rad(0 - 5 * math.cos(sine / 0.2))),.4)
        RW.C0=clerp(RW.C0,cf(1.05,0.4,-0.3)*angles(math.rad(160),math.rad(0),math.rad(-20)),.4)
        LW.C0=clerp(LW.C0,cf(-1.05,0.4,-0.3)*angles(math.rad(160),math.rad(0),math.rad(20)),.4)
        modet.Position = UDim2.new(0,math.random(-15,15),0,math.random(-15,15))
        modet.Rotation = -2 * math.cos(sine / 1) + math.random(-10,10)
        fullscreenz.Position = UDim2.new(0,math.random(-15,15),0,math.random(-15,15))
    end
   
    repeat
        swait()
        modet.Position = UDim2.new(0,0,0,0)
        fullscreenz.Position = UDim2.new(0,0,0,0)
        modet.Rotation = -5 * math.cos(sine / 32)
        RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-5.5 - 2 * math.cos(sine / 56)),math.rad(-12 - 2 * math.cos(sine / 32))),.1)
        LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6),math.rad(22 - 2 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.01 + 0.03 * math.cos(sine / 32),0 + 0.1 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-22 + 2 * math.cos(sine / 56))),.1)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 43) - 5 * math.cos(sine / 0.25)),math.rad(22 - 2 * math.cos(sine / 56))),.1)
        RW.C0=clerp(RW.C0,cf(1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(5 + 3 * math.cos(sine / 43)),math.rad(-16 - 5 * math.cos(sine / 52)),math.rad(13 + 9 * math.cos(sine / 45))),.1)
        LW.C0=clerp(LW.C0,cf(-1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 43)),math.rad(16 + 4 * math.cos(sine / 52)),math.rad(-22 - 2 * math.cos(sine / 45))),.1)
    until kan.TimePosition > 6.5
    for i = 0, 5, .1 do
        swait()
        RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.4)
        LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.4)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.15)*angles(math.rad(30),math.rad(0),math.rad(0)),.4)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30),math.rad(0),math.rad(0 - 5 * math.cos(sine / 0.2))),.4)
        RW.C0=clerp(RW.C0,cf(1.05,0.4,-0.3)*angles(math.rad(160),math.rad(0),math.rad(-20)),.4)
        LW.C0=clerp(LW.C0,cf(-1.05,0.4,-0.3)*angles(math.rad(160),math.rad(0),math.rad(20)),.4)
        modet.Position = UDim2.new(0,math.random(-15,15),0,math.random(-15,15))
        modet.Rotation = -2 * math.cos(sine / 1) + math.random(-10,10)
        fullscreenz.Position = UDim2.new(0,math.random(-15,15),0,math.random(-15,15))
    end
    bosschatfunc("Look at my hands..",MAINRUINCOLOR.Color,2)
    for i = 0, 10, .1 do
        modet.Position = UDim2.new(0,0,0,0)
        modet.Rotation = -5 * math.cos(sine / 32)
        fullscreenz.Position = UDim2.new(0,0,0,0)
        swait()
        RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-5.5 - 2 * math.cos(sine / 56)),math.rad(-12 - 2 * math.cos(sine / 32))),.1)
        LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6),math.rad(22 - 2 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.01 + 0.03 * math.cos(sine / 32),0 + 0.1 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-22 + 2 * math.cos(sine / 56))),.1)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 43) - 5 * math.cos(sine / 0.25)),math.rad(22 - 2 * math.cos(sine / 56)))*angles(math.rad(math.random(-2,2)),math.rad(math.random(-2,2)),math.rad(math.random(-2,2))),.1)
        RW.C0=clerp(RW.C0,cf(1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(95 + 3 * math.cos(sine / 43)),math.rad(-16 - 5 * math.cos(sine / 52)),math.rad(-13 + 9 * math.cos(sine / 45)))*angles(math.rad(math.random(-2,2)),math.rad(math.random(-2,2)),math.rad(math.random(-2,2))),.1)
        LW.C0=clerp(LW.C0,cf(-1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(95 - 3 * math.cos(sine / 43)),math.rad(16 + 4 * math.cos(sine / 52)),math.rad(22 - 2 * math.cos(sine / 45)))*angles(math.rad(math.random(-2,2)),math.rad(math.random(-2,2)),math.rad(math.random(-2,2))),.1)
    end
    bosschatfunc("They're shaking..",MAINRUINCOLOR.Color,2)
    for i = 0, 6, .1 do
        swait()
        RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-5.5 - 2 * math.cos(sine / 56)),math.rad(-12 - 2 * math.cos(sine / 32))),.1)
        LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6),math.rad(22 - 2 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.01 + 0.03 * math.cos(sine / 32),0 + 0.1 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-22 + 2 * math.cos(sine / 56))),.1)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 43) - 5 * math.cos(sine / 0.25)),math.rad(22 - 2 * math.cos(sine / 56)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
        RW.C0=clerp(RW.C0,cf(1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(95 + 3 * math.cos(sine / 43)),math.rad(-16 - 5 * math.cos(sine / 52)),math.rad(-13 + 9 * math.cos(sine / 45)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
        LW.C0=clerp(LW.C0,cf(-1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(95 - 3 * math.cos(sine / 43)),math.rad(16 + 4 * math.cos(sine / 52)),math.rad(22 - 2 * math.cos(sine / 45)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
    end
    bosschatfunc("All my body is shaking..",MAINRUINCOLOR.Color,2)
    for i = 0, 24, .1 do
        swait()
        RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-5.5 - 2 * math.cos(sine / 56)),math.rad(-12 - 2 * math.cos(sine / 32))),.1)
        LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6),math.rad(22 - 2 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.01 + 0.03 * math.cos(sine / 32),0 + 0.1 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-22 + 2 * math.cos(sine / 56))),.1)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 43) - 5 * math.cos(sine / 0.25)),math.rad(22 - 2 * math.cos(sine / 56)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
        RW.C0=clerp(RW.C0,cf(1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(5 + 3 * math.cos(sine / 43)),math.rad(-16 - 5 * math.cos(sine / 52)),math.rad(13 + 9 * math.cos(sine / 45)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
        LW.C0=clerp(LW.C0,cf(-1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 43)),math.rad(16 + 4 * math.cos(sine / 52)),math.rad(-22 - 2 * math.cos(sine / 45)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
    end
    bosschatfunc("He was there!",MAINRUINCOLOR.Color,2)
    for i = 0, 5, .1 do
        swait()
        RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-5.5 - 2 * math.cos(sine / 56)),math.rad(-22 - 2 * math.cos(sine / 32))),.1)
        LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6),math.rad(22 - 2 * math.cos(sine / 56)),math.rad(-10 + 2 * math.cos(sine / 32))),.1)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.01 + 0.03 * math.cos(sine / 32),0 + 0.1 * math.cos(sine / 32))*angles(math.rad(10 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-22 + 2 * math.cos(sine / 56))),.1)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 43) - 5 * math.cos(sine / 0.25)),math.rad(22 - 2 * math.cos(sine / 56)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
        RW.C0=clerp(RW.C0,cf(1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(95 + 3 * math.cos(sine / 43)),math.rad(-16 - 5 * math.cos(sine / 52)),math.rad(0))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
        LW.C0=clerp(LW.C0,cf(-1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 43)),math.rad(16 + 4 * math.cos(sine / 52)),math.rad(-22 - 2 * math.cos(sine / 45)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
    end
    for i = 0, 6, .1 do
        swait()
        RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-5.5 - 2 * math.cos(sine / 56)),math.rad(-12 - 2 * math.cos(sine / 32))),.1)
        LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6),math.rad(22 - 2 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.01 + 0.03 * math.cos(sine / 32),0 + 0.1 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-22 + 2 * math.cos(sine / 56))),.1)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 43) - 5 * math.cos(sine / 0.25)),math.rad(22 - 2 * math.cos(sine / 56)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
        RW.C0=clerp(RW.C0,cf(1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(5 + 3 * math.cos(sine / 43)),math.rad(-16 - 5 * math.cos(sine / 52)),math.rad(13 + 9 * math.cos(sine / 45)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
        LW.C0=clerp(LW.C0,cf(-1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 43)),math.rad(16 + 4 * math.cos(sine / 52)),math.rad(-22 - 2 * math.cos(sine / 45)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
    end
    bosschatfunc("But I was watching him, through the mirror..",MAINRUINCOLOR.Color,2)
    for i = 0, 9, .1 do
        swait()
        RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-5.5 - 2 * math.cos(sine / 56)),math.rad(-12 - 2 * math.cos(sine / 32))),.1)
        LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6),math.rad(22 - 2 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.01 + 0.03 * math.cos(sine / 32),0 + 0.1 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-22 + 2 * math.cos(sine / 56))),.1)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 43) - 5 * math.cos(sine / 0.25)),math.rad(22 - 2 * math.cos(sine / 56)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
        RW.C0=clerp(RW.C0,cf(1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(5 + 3 * math.cos(sine / 43)),math.rad(-16 - 5 * math.cos(sine / 52)),math.rad(13 + 9 * math.cos(sine / 45)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
        LW.C0=clerp(LW.C0,cf(-1.5,.5 + 0.05 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 43)),math.rad(16 + 4 * math.cos(sine / 52)),math.rad(-22 - 2 * math.cos(sine / 45)))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),.1)
    end
    bosschatfunc("I knew he was looking at me..",MAINRUINCOLOR.Color,2)
    for i = 0, 11, .1 do
        swait()
        RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.4)
        LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.4)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.15)*angles(math.rad(30),math.rad(0),math.rad(0)),.4)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30),math.rad(0),math.rad(0 - 5 * math.cos(sine / 0.2))),.4)
        RW.C0=clerp(RW.C0,cf(1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(-50)),.4)
        LW.C0=clerp(LW.C0,cf(-1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(50)),.4)
    end
    bosschatfunc("Two invisible eyes..",MAINRUINCOLOR.Color,2)
    for i = 0, 10, .1 do
        swait()
        RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.4)
        LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.4)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.15)*angles(math.rad(30),math.rad(0),math.rad(0)),.4)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0 - 5 * math.cos(sine / 0.2))),.4)
        RW.C0=clerp(RW.C0,cf(1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(-50)),.4)
        LW.C0=clerp(LW.C0,cf(-1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(50)),.4)
    end
    local inc = 0
    bosschatfunc("Two invisible--",MAINRUINCOLOR.Color,2)
    for i = 0, 6, .1 do
        swait()
        inc=inc+1
        fullscreenz.Position = UDim2.new(0,math.random(-inc,inc)/10,0,math.random(-inc,inc)/10)
        RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(50)),.4)
        LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-50)),.4)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.15)*angles(math.rad(50),math.rad(0),math.rad(0)),.4)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0 - 5 * math.cos(sine / 0.2))),.4)
        RW.C0=clerp(RW.C0,cf(1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(-50)),.4)
        LW.C0=clerp(LW.C0,cf(-1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(50)),.4)
    end
    CFuncs.Sound.Create('rbxassetid://363808674',Head,3,1.25)
    for i = 0, 3, .1 do
        swait()
        inc=inc+1
        fullscreenz.Position = UDim2.new(0,math.random(-inc,inc)/10,0,math.random(-inc,inc)/10)
        RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.4)
        LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.4)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.15)*angles(math.rad(30),math.rad(0),math.rad(0)),.4)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30),math.rad(-20),math.rad(0 - 5 * math.cos(sine / 0.2))),.4)
        RW.C0=clerp(RW.C0,cf(1.05,0.4,-0.3)*angles(math.rad(160),math.rad(0),math.rad(20)),.4)
        LW.C0=clerp(LW.C0,cf(-1.05,0.4,-0.3)*angles(math.rad(160),math.rad(0),math.rad(40)),.4)
    end
    CFuncs.Sound.Create('rbxassetid://363808674',Head,3,1.1)
    for i = 0, 3, .1 do
        swait()
        inc=inc+1
        fullscreenz.Position = UDim2.new(0,math.random(-inc,inc)/10,0,math.random(-inc,inc)/10)
        RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.4)
        LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.4)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.15)*angles(math.rad(30),math.rad(0),math.rad(0)),.4)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30),math.rad(20),math.rad(0 - 5 * math.cos(sine / 0.2))),.4)
        RW.C0=clerp(RW.C0,cf(1.05,0.4,-0.3)*angles(math.rad(160),math.rad(0),math.rad(-40)),.4)
        LW.C0=clerp(LW.C0,cf(-1.05,0.4,-0.3)*angles(math.rad(160),math.rad(0),math.rad(-20)),.4)
    end
    for i = 0, 6, .1 do
        swait()
        inc=inc+5
        fullscreenz.Position = UDim2.new(0,math.random(-inc,inc)/10,0,math.random(-inc,inc)/10)
        RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.4)
        LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.4)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.15)*angles(math.rad(30),math.rad(0),math.rad(0)),.4)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),0,math.rad(0 - 10 * math.cos(sine / 0.03))),.4)
        RW.C0=clerp(RW.C0,cf(1.5,0.4,0)*angles(math.rad(30),math.rad(0),0),.4)
        LW.C0=clerp(LW.C0,cf(-1.5,0.4,0)*angles(math.rad(30),math.rad(0),0),.4)
    end
    fullscreenz.Position = UDim2.new(0,0,0,0)
    attack=false
    MAINRUINCOLOR = BrickColor.new("Really black")
sphere(2.5,"Add",root.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
for i = 0, 49 do
PixelBlock(1,math.random(1,20),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.04,MAINRUINCOLOR,0)
end
for i = 0, 24 do
sphere2(2,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,7,-0.01,MAINRUINCOLOR)
slash(math.random(10,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(150,350)/250,BrickColor.new("White"))
end
for i = 0,3,0.1 do
sphereMK(2.5,-1,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,25,-0.025,MAINRUINCOLOR,0)
end
currentVol=5
    Humanoid.WalkSpeed = storehumanoidWS
               ModeOfGlitch = 738
pcall(showStars)
pcall(showSStar)
pcall(showExtras)
pcall(showRing)
rainbowmode = false
chaosmode = false
RecolorTextAndRename("INFINITE",Color3.new(0.1,.1,.1),BrickColor.new("Really black").Color,"Antique")

 MAINRUINCOLOR = BrickColor.new("Really black")
warnedpeople("DEPTHS OF HELL!!!","Antique",BrickColor.new("Dark stone grey").Color,BrickColor.new("Really black").Color)
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0.9,BrickColor.new("Dark stone grey"),0,BrickColor.new("Black"),true)
end

function RiddleMeThisRiddleMeThat()-- Who's afraid of the big black IUSFGEYUI8TY8RUFETUYERFYAERFE7RFWAE9RASEVR7YTRWW65ERAY
	attack = true
	hum.WalkSpeed = 0
	storehumanoidWS = 75
	hum.JumpPower = 0
	newThemeCust("rbxassetid://1420353940",0,1,1)
	kan.TimePosition = 0
	ModeOfGlitch = 999999999556
	repeat swait() until kan.IsLoaded
	oldchatfunc("Riddle me this..",modet.TextStrokeColor3)
	for i = 0, 14, .1 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1-.2*math.cos(sine/16),0)*angles(0,math.rad(90),0),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1-.2*math.cos(sine/16),.05)*angles(0,math.rad(15),0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0+.2*math.cos(sine/16)),.1)  
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(0,0,0),.1)
		RW.C0=clerp(RW.C0,cf(1,0.5+.2*math.cos(sine/16),-.65)*angles(math.rad(45),0,math.rad(-90)),.1)
		LW.C0=clerp(LW.C0,cf(-1,0.5+.2*math.cos(sine/16),-.65)*angles(math.rad(-45),0,math.rad(100)),.1)
	end
	oldchatfunc("Riddle me that..",modet.TextStrokeColor3)
	for i = 0, 12, .1 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1-.2*math.cos(sine/16),0)*angles(0,math.rad(90),0),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1-.2*math.cos(sine/16),.05)*angles(0,math.rad(15),0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0+.2*math.cos(sine/16)),.1)  
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(0,math.rad(25),0),.1)
		RW.C0=clerp(RW.C0,cf(1,0.5+.2*math.cos(sine/16),-.65)*angles(math.rad(45),0,math.rad(-90)),.1)
		LW.C0=clerp(LW.C0,cf(-1,0.5+.2*math.cos(sine/16),-.65)*angles(math.rad(-45),0,math.rad(100)),.1)
	end
	oldchatfunc("Who's afraid of the big black..",Color3.new(1,1,1))
	for i = 0, 16, .1 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1-.2*math.cos(sine/16),0)*angles(0,math.rad(90),0),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1-.2*math.cos(sine/16),.05)*angles(0,math.rad(15),0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0+.2*math.cos(sine/16)),.1)  
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25),0,0),.1)
		RW.C0=clerp(RW.C0,cf(1,0.5+.2*math.cos(sine/16),-.65)*angles(math.rad(45),0,math.rad(-90)),.1)
		LW.C0=clerp(LW.C0,cf(-1,0.5+.2*math.cos(sine/16),-.65)*angles(math.rad(-45),0,math.rad(100)),.1)
	end
	CFuncs["Sound"].Create("rbxassetid://206082327", root, 2.5,1)
	CFuncs["Sound"].Create("rbxassetid://847061203", root, 5,1)
	CFuncs["Sound"].Create("rbxassetid://239000203", root, 2.5,1)
	CFuncs["Sound"].Create("rbxassetid://579687077", root, 2.5,0.75)
	pcall(function() Character.ReaperShadowHead.Eye1.BrickColor = BrickColor.new'Black' end)
	pcall(function() Character.ReaperShadowHead.Eye2.BrickColor = BrickColor.new'Black' end)
	RecolorTextAndRename("The Big Black",Color3.new(0,0,0),Color3.new(1,1,1),"Fantasy")
	CameraEnshaking(5,2.5)
	MAINRUINCOLOR = BrickColor.new("Really black")
	sphere(2.5,"Add",root.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
	tl1.Enabled = true
	tl2.Enabled = true
	tl3.Enabled = true
	for i = 0, 49 do
		PixelBlock(1,math.random(1,20),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.04,MAINRUINCOLOR,0)
	end
	for i = 0,3,0.1 do
		sphereMK(2.5,-1,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,25,-0.025,MAINRUINCOLOR,0)
	end
	for i, v in pairs(mw2:GetChildren()) do
		if v:IsA("Part") then
			v.BrickColor = BrickColor.new("Really black")
			v.Material = "Glass"
		end
	end
	for i, v in pairs(mw1:GetChildren()) do
		if v:IsA("Part") then
			v.Transparency = 0
			v.BrickColor = BrickColor.new("Really black")
			v.Material = "Glass"
		end
	end
	for i, v in pairs(m:GetChildren()) do
		if v:IsA("Part") then
			v.BrickColor = BrickColor.new("Really black")
			v.Material = "Glass"
		end
	end
	for i, v in pairs(m2:GetChildren()) do
		if v:IsA("Part") then
			v.BrickColor = BrickColor.new("Dark stone grey")
			v.Material = "Granite"
		end
	end
	for i, v in pairs(m3:GetChildren()) do
		if v:IsA("Part") then
			v.BrickColor = BrickColor.new("Really black")
			v.Material = "Glass"
		end
	end
	for i, v in pairs(extrawingmod1:GetChildren()) do
		if v:IsA("Part") then
			v.Transparency = 0
			v.BrickColor = BrickColor.new("Dark stone grey")
			v.Material = "Glass"
		end
	end
	for i, v in pairs(extrawingmod2:GetChildren()) do
		if v:IsA("Part") then
			v.Transparency = 0
			v.BrickColor = BrickColor.new("Dark stone grey")
			v.Material = "Glass"
		end
	end
	for i = 0,2,0.1 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.2)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.2)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(-30),math.rad(0),math.rad(0)),.2)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-30),math.rad(0),math.rad(0 - 2.5 * math.cos(sine / 0.2))),.2)
		RW.C0=clerp(RW.C0,cf(1.45,0.4,0)*angles(math.rad(-20),math.rad(0 - 2 * math.cos(sine / 0.2)),math.rad(80 + 2 * math.cos(sine / 0.2))),.2)
		LW.C0=clerp(LW.C0,cf(-1.45,0.4,0)*angles(math.rad(-20),math.rad(0 + 2 * math.cos(sine / 0.2)),math.rad(-80 - 2 * math.cos(sine / 0.2))),.2)
	end
	hum.JumpPower = 50
	hum.WalkSpeed = storehumanoidWS
	attack = false
end

function hugg()
attack = true
hum.WalkSpeed = 5
local rsiz = math.random(5,15)
for i = 0, 2, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(7.5),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 28)),math.rad(10),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(110),math.rad(0),math.rad(40)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(110),math.rad(0),math.rad(-40)),.3)
end
CFuncs["Sound"].Create("rbxassetid://444895479", root, 0.5,1)
	local hb = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
	hb.Anchored = true
	hb.CFrame = root.CFrame*CFrame.new(0,1,0) + root.CFrame.lookVector*2
local huggedperson = nil
local act = false
local alreadydid = false
for i = 0, 3, 0.1 do
swait()
if act == false then
for i, v in pairs(FindNearestHead(hb.CFrame.p, 1.25)) do
if v:FindFirstChild('Head') then
if alreadydid == false then
huggedperson = v
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://294861193", root, 1,1)
CFuncs["Sound"].Create("rbxassetid://200632821", root, 1,1.15)
CFuncs["Sound"].Create("rbxassetid://1042716828", root, 1.5,1)
CFuncs["Sound"].Create("rbxassetid://884155627", root, 2,1)
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc2("I'm sorry.. if I hurt you..",MAINRUINCOLOR.Color,1)
elseif radm == 2 then
bosschatfunc2("I..I'm interested in you..",MAINRUINCOLOR.Color,1)
elseif radm == 3 then
bosschatfunc2("Don't worry.. I'm with you..",MAINRUINCOLOR.Color,1)
end
root.Anchored = true
coroutine.resume(coroutine.create(function()
huggedperson:FindFirstChildOfClass("Humanoid").WalkSpeed = 0
huggedperson:WaitForChild("HumanoidRootPart").Anchored = true
end))
chatfunc(string.lower(huggedperson.Name).. "~~",BrickColor.new("Pink").Color,"Normal","SourceSansBold",1)
alreadydid = true
act = true
print(huggedperson.Name)
end
end
end
hb.CFrame = root.CFrame*CFrame.new(0,1,0) + root.CFrame.lookVector*2
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 28)),math.rad(10),math.rad(0)),.3)
elseif act == true then
coroutine.resume(coroutine.create(function()
huggedperson:FindFirstChildOfClass("Humanoid").Health = huggedperson:FindFirstChildOfClass("Humanoid").Health + 0.2
end))
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 28)),math.rad(10),math.rad(40)),.1)
huggedperson.Head.CFrame = root.CFrame*CFrame.new(0,1.25,-1.25)*CFrame.Angles(0,math.rad(180),0)
end
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(7.5),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1,0.7,-1)*angles(math.rad(120),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.7,-1)*angles(math.rad(100),math.rad(0),math.rad(50)),.3)
end
hb:Destroy()
if act == true then
for x = 0, 2 do
for i = 0, 2, 0.1 do
swait()
coroutine.resume(coroutine.create(function()
huggedperson:FindFirstChildOfClass("Humanoid").Health = huggedperson:FindFirstChildOfClass("Humanoid").Health + 0.2
end))
rsiz = math.random(5,15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 28)),math.rad(10),math.rad(45)),.1)
huggedperson.Head.CFrame = root.CFrame*CFrame.new(0,1.25,-1.25)*CFrame.Angles(0,math.rad(180),0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(7.5),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1,0.7,-1)*angles(math.rad(120),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.7,-1)*angles(math.rad(100),math.rad(0),math.rad(50)),.3)
end
for i = 0, 2, 0.1 do
swait()
coroutine.resume(coroutine.create(function()
huggedperson:FindFirstChildOfClass("Humanoid").Health = huggedperson:FindFirstChildOfClass("Humanoid").Health + 0.2
end))
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 28)),math.rad(10),math.rad(35)),.1)
huggedperson.Head.CFrame = root.CFrame*CFrame.new(0,1.25,-1.25)*CFrame.Angles(0,math.rad(180),0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(7.5),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1,0.7,-1)*angles(math.rad(120),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.7,-1)*angles(math.rad(100),math.rad(0),math.rad(50)),.3)
end
end
end
hum.WalkSpeed = storehumanoidWS
root.Anchored = false
if act == true then
coroutine.resume(coroutine.create(function()
huggedperson:FindFirstChildOfClass("Humanoid").WalkSpeed = 16
huggedperson:WaitForChild("HumanoidRootPart").Anchored = false
end))
end
hum.WalkSpeed = storehumanoidWS
attack = false
end

function lovesqueal()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://2500548008", root, 1, 1)
local blush = Instance.new("Decal",hed)
blush.Texture = "rbxassetid://898404027"
blush.Face = "Front"
for i = 0, 11, 0.1 do
	swait()
	RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(20 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(6),math.rad(0),math.rad(-20 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.2 + 0.02 * math.cos(sine / 32),0 + 0.05 * math.cos(sine / 32))*angles(math.rad(20 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20 - 5 * math.cos(sine / 37)),math.rad(0 + 14 * math.cos(sine / 58)),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(33 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(3 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(23 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-3 - 3 * math.cos(sine / 45))),.1)
end
for x = 0, 1 do
for i = 0, 1, 0.2 do
	swait()
	RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(-5 - 2 * math.cos(sine / 32))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(6),math.rad(0),math.rad(5 + 2 * math.cos(sine / 32))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.05 + 0.02 * math.cos(sine / 32),0 + 0.05 * math.cos(sine / 32))*angles(math.rad(-5 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5 - 5 * math.cos(sine / 37)),math.rad(0 + 14 * math.cos(sine / 58)),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(33 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(3 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.75 + 0.025 * math.cos(sine / 45),-0.6)*angles(math.rad(140 - 3 * math.cos(sine / 73)),math.rad(5 - 1 * math.cos(sine / 55)),math.rad(80 - 3 * math.cos(sine / 45))),.3)
end
for i = 0, 1, 0.2 do
	swait()
	RH.C0=clerp(RH.C0,cf(1,-1.025 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(-5 - 2 * math.cos(sine / 32))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1.025 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(6),math.rad(0),math.rad(5 + 2 * math.cos(sine / 32))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.05 + 0.02 * math.cos(sine / 32),0.025 + 0.05 * math.cos(sine / 32))*angles(math.rad(-5 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5 - 5 * math.cos(sine / 37)),math.rad(0 + 14 * math.cos(sine / 58)),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(33 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(3 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.8 + 0.025 * math.cos(sine / 45),-0.6)*angles(math.rad(140 - 3 * math.cos(sine / 73)),math.rad(5 - 1 * math.cos(sine / 55)),math.rad(80 - 3 * math.cos(sine / 45))),.3)
end
end
coroutine.resume(coroutine.create(function()
for i = 0, 49 do
swait()
blush.Transparency = blush.Transparency + 0.02
end
blush:Destroy()
end))
attack = false
hum.WalkSpeed = storehumanoidWS	
end

function cutesigh()
attack = true
hum.WalkSpeed = 0
hum.JumpPower = 0
bosschatfunc2("sigh~~",MAINRUINCOLOR.Color,1)
local blush = Instance.new("Decal",hed)
blush.Texture = "rbxassetid://898404027"
blush.Face = "Front"
CFuncs["Sound"].Create("rbxassetid://294861193", root, 1,1)
for i = 0, 9, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(6),math.rad(0),math.rad(25 + 1 * math.cos(sine / 34))),.2)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(-35 + 1 * math.cos(sine / 34))),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.35,-0.175 + 0.05 * math.cos(sine / 28))*angles(math.rad(35),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-35 - 2.5 * math.cos(sine / 28)),math.rad(10 + 2.5 * math.cos(sine / 75)),math.rad(0)),.2)
RW.C0=clerp(RW.C0,cf(1.35,0.45 + 0.025 * math.cos(sine / 28),-0.2)*angles(math.rad(40),math.rad(0),math.rad(-1)),.2)
LW.C0=clerp(LW.C0,cf(-1.35,0.45 + 0.025 * math.cos(sine / 28),-0.2)*angles(math.rad(40),math.rad(0),math.rad(3)),.2)
end
coroutine.resume(coroutine.create(function()
for i = 0, 49 do
swait()
blush.Transparency = blush.Transparency + 0.02
end
blush:Destroy()
end))
hum.WalkSpeed = storehumanoidWS
hum.JumpPower = 50
attack = false
end



function ChaosEND()
attack = true
local speedearn = 0
CFuncs["Sound"].Create("rbxassetid://1208650519", char, 10, 0.5)
for i = 0, 15, 0.1 do
swait()
speedearn = speedearn + 0.25
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,10*speedearn,-0.25,BrickColor.random(),0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,10*speedearn,-0.25,BrickColor.random(),0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,10*speedearn,-0.25,BrickColor.random(),0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,10*speedearn,-0.25,BrickColor.random(),0)
sphereMK(1+speedearn,speedearn,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,10*speedearn,-0.25,BrickColor.random(),0)
RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(140),math.rad(0),math.rad(-20)),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(140),math.rad(0),math.rad(20)),.2)
end
CFuncs["Sound"].Create("rbxassetid://438666141", char, 7.5,1)
CFuncs["Sound"].Create("rbxassetid://1208650519", char, 10, 1)
CFuncs["Sound"].Create("rbxassetid://1208650519", char, 7.5, 0.75)
CFuncs["Sound"].Create("rbxassetid://1208650519", char, 5, 0.5)
CameraEnshaking(5,25)
for i, v in pairs(FindNearestHead(Torso.CFrame.p, 1234567890)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
sphere(5,"Add",root.CFrame*CFrame.new(0,-2.9,0),vt(0,0,0),1*1000,BrickColor.random())
sphere(10,"Add",root.CFrame*CFrame.new(0,-2.9,0),vt(0,0,0),2*1000,BrickColor.random())
sphere(1,"Add",root.CFrame*CFrame.new(0,-2.9,0),vt(100*1000,0.1,100*1000),0.01,BrickColor.random())
for i = 0, 3, 0.1 do
swait()
sphereMK(2.5,0.75,"Add",root.CFrame*CFrame.new(math.random(-52.5*10,52.5*10),-5,math.random(-52.5*10,52.5*10))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),25,25,250,-0.25,BrickColor.random(),0)
sphereMK(2.5,0.75,"Add",root.CFrame*CFrame.new(math.random(-52.5*10,52.5*10),-5,math.random(-52.5*10,52.5*10))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),25,25,250,-0.25,BrickColor.random(),0)
sphereMK(2.5,0.75,"Add",root.CFrame*CFrame.new(math.random(-52.5*10,52.5*10),-5,math.random(-52.5*10,52.5*10))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),25,25,250,-0.25,BrickColor.random(),0)
sphereMK(2.5,0.75,"Add",root.CFrame*CFrame.new(math.random(-52.5*10,52.5*10),-5,math.random(-52.5*10,52.5*10))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),25,25,250,-0.25,BrickColor.random(),0)
RH.C0=clerp(RH.C0,cf(1,-1,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(30)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(-30)),.4)
end
attack = false
end

function createBGCircle(size,parent,color) 
	
	local bgui = Instance.new("BillboardGui",parent)
	bgui.Size = UDim2.new(size, 0, size, 0)
	local imgc = Instance.new("ImageLabel",bgui)
	
	imgc.BackgroundTransparency = 1
	imgc.ImageTransparency = 0
	imgc.Size = UDim2.new(1,0,1,0)
	imgc.Image = "rbxassetid://997291547" --997291547,521073910
	imgc.ImageColor3 = color
	return bgui,imgc
end


function symbolizeBlink(guipar,size,img,color,bonussize,vol,pit,soundid,spar,rotationenabled,rotsp,delay) 
	
	local bgui,imgc = createBGCircle(size,guipar,color)
	bgui.AlwaysOnTop = true
	imgc.Image = "rbxassetid://" ..img
	
	local rrot = math.random(1,2)
	
	CFuncs["Sound"].Create("rbxassetid://" ..soundid, spar, vol,pit)
	
	coroutine.resume(coroutine.create(function()
		
		for i = 0, 24*delay do
			
			swait()
			
			if rotationenabled == true then
				
				if rrot == 1 then
					
					imgc.Rotation = imgc.Rotation + rotsp
					
				elseif rrot == 2 then
					
					imgc.Rotation = imgc.Rotation - rotsp
				end
			end
			
			bgui.Size = bgui.Size + UDim2.new(1*bonussize/delay,0,1*bonussize/delay,0)
			imgc.ImageTransparency = imgc.ImageTransparency + 0.04/delay
		end
		
		bgui:Destroy()
	end))
end

local BeforeAttack = false

function RecolorThing(one,two,three,four,five,exonetran,exone,extwotran,extwo,secondaryenabled) 
	
	storehumanoidWS = hum.WalkSpeed
	hum.WalkSpeed = 0
	
	if ModeOfGlitch ~= 6666666666666666 then
		ring1Atho.Rotation = Vector3.new(0, 0, 0)
	end
	
	if ModeOfGlitch ~= 6666666666666666 then
		ring2Atho.Rotation = Vector3.new(-90, 0, 0)
	end
	
	if ModeOfGlitch == 1 then
		glitchermode = "Shadow"
	end
	
	if ModeOfGlitch == 1234567890 then
		glitchermode = "Diversial"
	end
	
	BeforeAttack = attack
	attack = true
	
	for i = 0,3,0.1 do
		
		swait()
		sphereMK(2.5,-1.5,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3.5,3.5,45,-0.035,MAINRUINCOLOR,100)
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.2)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.2)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(30),math.rad(0),math.rad(0)),.2)
		-- Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30),math.rad(0),math.rad(0 - 5 * math.cos(sine / 0.2))),.2)
		RW.C0=clerp(RW.C0,cf(1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(-50)),.2)
		LW.C0=clerp(LW.C0,cf(-1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(50)),.2)
	end
	
	sphere(2.5,"Add",root.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
	
	for i = 0, 49 do
		
		PixelBlock(1,math.random(1,20),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.04,MAINRUINCOLOR,0)
	end
	
	for i = 0, 49 do
		
		PixelBlock(1,math.random(1,20),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.04,MAINRUINCOLOR,0)
	end

	CFuncs["Sound"].Create("rbxassetid://763717897", root, 4, 0.75)
	CFuncs["Sound"].Create("rbxassetid://763717897", root, 8, 0.5)
	CFuncs["Sound"].Create("rbxassetid://1192402877", root, 10, 0.5)
	CFuncs["Sound"].Create("rbxassetid://1664711478", root, 6, 0.5)
	
	local trl = Instance.new('Trail',root)
	trl.Attachment0 = at1
	trl.FaceCamera = true
	trl.Attachment1 = at2
	trl.Texture = "rbxassetid://2342682798"
	trl.LightEmission = 1
	trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
	trl.Color = ColorSequence.new(one.Color)
	trl.Lifetime = 0.5

	coroutine.resume(coroutine.create(function() 
		
		local eff = Instance.new("ParticleEmitter",root)
		eff.Texture = "rbxassetid://2273224484"
		eff.LightEmission = 1
		eff.Color = ColorSequence.new(one.Color)
		eff.Rate = 500000
		eff.Lifetime = NumberRange.new(0.5,2)
		eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
		eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
		eff.Speed = NumberRange.new(20,250)
		eff.Drag = 5
		eff.Rotation = NumberRange.new(-500,500)
		eff.VelocitySpread = 9000
		eff.RotSpeed = NumberRange.new(-50,50)
		wait(0.25)
		eff.Enabled = false
	end))
	
	sphere2(4,"Add",root.CFrame,vt(4,4,4),0.5,0.5,0.5,MAINRUINCOLOR)
	sphere2(3,"Add",root.CFrame,vt(4,4,4),0.5,0.5,0.5,MAINRUINCOLOR)
	sphere2(2,"Add",root.CFrame,vt(4,4,4),0.5,0.5,0.5,MAINRUINCOLOR)
	
	for i = 0, 9 do
		
		sphere2(4,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1.5,1,1.5),-0.005,4,-0.005,MAINRUINCOLOR)
	end
	
	for i = 0, 49 do
		
		local rsiz = math.random(10,30)
		sphereMK(math.random(1,3),1,"Add",root.CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,MAINRUINCOLOR,0)
	end
	
	CFuncs["EchoSound"].Create("rbxassetid://847061203", root, 1, 1,0,10,0.25,0.25,1)
	symbolizeBlink(root,0,2092248396,one.Color,5,3,1,847061203,root,true,10,1)
	symbolizeBlink(root,0,2092248396,one.Color,4,0,0,0,root,true,-5,1)

	for i = 0,2,0.1 do
		
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.2)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.2)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(-30),math.rad(0),math.rad(0)),.2)
		-- Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-30),math.rad(0),math.rad(0 - 10 * math.cos(sine / 0.2))),.2)
		RW.C0=clerp(RW.C0,cf(1.45,0.4,0)*angles(math.rad(-20),math.rad(0 - 2 * math.cos(sine / 0.2)),math.rad(80 + 2 * math.cos(sine / 0.2)))*angles(0,0,math.rad(0 - 10 * math.cos(sine / 0.2))),.2)
		LW.C0=clerp(LW.C0,cf(-1.45,0.4,0)*angles(math.rad(-20),math.rad(0 + 2 * math.cos(sine / 0.2)),math.rad(-80 - 2 * math.cos(sine / 0.2)))*angles(0,0,math.rad(0 - 10 * math.cos(sine / 0.2))),.2)
	end
	
	if secondaryenabled then
		
		pcall(showStars)
		
	elseif not secondaryenabled then
		
		pcall(hideStars)
	end
	
	if exonetran <= 0.5 then
		
		pcall(showExtras)
		pcall(showRing)
		
	elseif exonetran > 0.5 then
		
		pcall(hideExtras)
		pcall(hideRing)
	end
	
	attack = BeforeAttack
	
	for i, v in pairs(mw2:GetChildren()) do
		if v:IsA("Part") then
			v.BrickColor = one
			v.Material = "Neon"
		end
	end
	
	tr1.Color = ColorSequence.new(one.Color)
	tr2.Color = ColorSequence.new(one.Color)
	tr3.Color = ColorSequence.new(one.Color)
	
	for i, v in pairs(mw1:GetChildren()) do
		
		if v:IsA("Part") then
			
			if secondaryenabled == false then
				
				v.Transparency = 1
				
			elseif secondaryenabled == true then
				
				v.Transparency = 0
			end
			
			v.BrickColor = two
			v.Material = "Neon"
		end
	end
	
	if secondaryenabled == false then
		
		tl1.Enabled = false
		tl2.Enabled = false
		tl3.Enabled = false
		
	elseif secondaryenabled == true then
		
		tl1.Enabled = true
		tl2.Enabled = true
		tl3.Enabled = true
	end
	
	tl1.Color = ColorSequence.new(two.Color)
	tl2.Color = ColorSequence.new(two.Color)
	tl3.Color = ColorSequence.new(two.Color)
	
	for i, v in pairs(m:GetChildren()) do
		
		if v:IsA("Part") then
			
			v.BrickColor = three
			v.Material = "Ice"
		end
	end
	
	for i, v in pairs(m2:GetChildren()) do
		
		if v:IsA("Part") then
			
			v.BrickColor = four
			v.Material = "Ice"
		end
	end
	
	for i, v in pairs(m3:GetChildren()) do
		if v:IsA("Part") then
			v.BrickColor = five
			v.Material = "Neon"
		end
	end
	
	for i, v in pairs(extrawingmod1:GetChildren()) do
		
		if v:IsA("Part") then
			
			v.Transparency = exonetran
			v.BrickColor = exone
			v.Material = "Neon"
		end
	end
	
	for i, v in pairs(extrawingmod2:GetChildren()) do
		
		if v:IsA("Part") then
			
			v.Transparency = extwotran
			v.BrickColor = extwo
			v.Material = "Neon"
		end
	end
	
	hum.WalkSpeed = storehumanoidWS
end

ModeOfGlitch = 1

pcall(hideStars)
pcall(hideSStar)
pcall(hideExtras)
pcall(hideRing)

storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false

MAINRUINCOLOR = BrickColor.new("Really red")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,false)

function normalmog()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://136007472", root, 5, 1.25)
for i = 0,6,0.1 do
swait()
sphereMK(2.5,-1.5,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3.5,3.5,45,-0.035,MAINRUINCOLOR,100)
slash(math.random(30,60)/10,5,true,"Round","Add","In",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.01,0.5),-0.5,MAINRUINCOLOR)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.15)*angles(math.rad(30),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30),math.rad(0),math.rad(0 - 5 * math.cos(sine / 0.2))),.2)
RW.C0=clerp(RW.C0,cf(1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(-50)),.2)
LW.C0=clerp(LW.C0,cf(-1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(50)),.2)
end
CFuncs["Sound"].Create("rbxassetid://206082327", root, 7.5,1)
CFuncs["Sound"].Create("rbxassetid://847061203", root, 10,1)
CFuncs["Sound"].Create("rbxassetid://239000203", root, 7.5,1)
CFuncs["Sound"].Create("rbxassetid://579687077", root, 7.5,0.75)
CFuncs["Sound"].Create("rbxassetid://1368637781", root, 10,1)
CFuncs["Sound"].Create("rbxassetid://763718160", root, 7.5, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", root, 7.5, 1)
rainbowmode = false
chaosmode = false
ModeOfGlitch = 1
storehumanoidWS = 16
newTheme("rbxassetid://614032233",48.6,1,1.25)
RecolorTextAndRename("MAYHEM",Color3.new(0.25,0,0),Color3.new(1,0,0),"Antique")
CameraEnshaking(5,2.5)
MAINRUINCOLOR = BrickColor.new("Really red")
sphere(2.5,"Add",root.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
for i = 0, 49 do
PixelBlock(1,math.random(1,20),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.04,MAINRUINCOLOR,0)
end
for i = 0, 24 do
sphere2(2,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,7,-0.01,MAINRUINCOLOR)
slash(math.random(10,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(150,350)/250,BrickColor.new("White"))
end
for i = 0,3,0.1 do
sphereMK(2.5,-1,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,25,-0.025,MAINRUINCOLOR,0)
end
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,false)
for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.5)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.3,-0.15)*angles(math.rad(-30),math.rad(0),math.rad(0)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-30),math.rad(0),math.rad(0 - 2.5 * math.cos(sine / 0.2))),.5)
RW.C0=clerp(RW.C0,cf(1.45,0.4,0)*angles(math.rad(-20),math.rad(0 - 2 * math.cos(sine / 0.2)),math.rad(80 + 2 * math.cos(sine / 0.2))),.5)
LW.C0=clerp(LW.C0,cf(-1.45,0.4,0)*angles(math.rad(-20),math.rad(0 + 2 * math.cos(sine / 0.2)),math.rad(-80 - 2 * math.cos(sine / 0.2))),.5)
end
hum.WalkSpeed = storehumanoidWS
attack = false
end

function attackone() 

	attack = true
	storehumanoidWS = hum.WalkSpeed
	hum.WalkSpeed = 8
	
	CFuncs["Sound"].Create("rbxassetid://136007472", root, 1, 1)

	local ROOTC0 = cf(0, 0, 0) * angles(math.rad(-90), math.rad(0), math.rad(180))
	
	for i = 0,2,0.1 do
		swait()
		slash(math.random(30,60)/10,5,true,"Round","Add","In",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.01,0.5),-0.5,MAINRUINCOLOR)
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.2)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.2)
		RootJoint.C0=clerp(RootJoint.C0,ROOTC0*cf(0,-0.3,-0.15)*angles(math.rad(30),math.rad(0),math.rad(0)),.2)
		RW.C0=clerp(RW.C0,cf(1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(-50)),.2)
		LW.C0=clerp(LW.C0,cf(-1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(50)),.2)
	end

	for i = 0, 24 do
		sphere2(2,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,7,-0.01,MAINRUINCOLOR)
		slash(math.random(10,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(150,350)/250,MAINRUINCOLOR)
	end

	for i = 0, 24 do
		sphere2(2,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,7,-0.01,MAINRUINCOLOR)
		slash(math.random(10,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(150,350)/250,MAINRUINCOLOR)
	end

	CameraEnshaking(1,10)
	CFuncs["Sound"].Create("rbxassetid://206082327", root, 1, 1)
	CFuncs["Sound"].Create("rbxassetid://847061203", root, 1, 1)
	CFuncs["Sound"].Create("rbxassetid://239000203", root, 1, 1)
	CFuncs["Sound"].Create("rbxassetid://579687077", root, 1, 1)
	CFuncs["Sound"].Create("rbxassetid://1368637781", root, 1, 1)
	CFuncs["Sound"].Create("rbxassetid://763718160", root, 1, 1)
	CFuncs["Sound"].Create("rbxassetid://782353443", root, 1, 1)
	MagniDamage(root, 30, 45,50, 0, "Normal")
	
	for i = 0,2,0.1 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.5)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.5)
		RootJoint.C0=clerp(RootJoint.C0,ROOTC0*cf(0,0.3,-0.15)*angles(math.rad(-30),math.rad(0),math.rad(0)),.5)
		RW.C0=clerp(RW.C0,cf(1.45,0.4,0)*angles(math.rad(-20),math.rad(0 - 2 * math.cos(sine / 0.2)),math.rad(80 + 2 * math.cos(sine / 0.2))),.5)
		LW.C0=clerp(LW.C0,cf(-1.45,0.4,0)*angles(math.rad(-20),math.rad(0 + 2 * math.cos(sine / 0.2)),math.rad(-80 - 2 * math.cos(sine / 0.2))),.5)
	end
	
	hum.WalkSpeed = storehumanoidWS
	attack = false
end

function attacktwo() 
	
	attack = true
	local keptcolor = MAINRUINCOLOR
	
	for i = 0,1,0.1 do
		swait()
            	RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(-10),math.rad(-20)),0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(10),math.rad(20)),.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(30)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(2.5),math.rad(0),math.rad(0)),.3)
	end

	local distlook = 5
	
	coroutine.resume(coroutine.create(function()
		
		for i = 0, 4 do
			
			swait(2)
			CameraEnshaking(2,3)
			local hite = Instance.new("Part", char)
			        hite.Anchored = true
			        hite.CanCollide = false
			        hite.FormFactor = 3
			        hite.Name = "Ring"
			        hite.Material = "Neon"
			        hite.Size = Vector3.new(1, 1, 1)
			        hite.Transparency = 1
			        hite.TopSurface = 0
			        hite.BottomSurface = 0
			
			hite.CFrame = root.CFrame*CFrame.new(0,-3,-distlook)

			if char:FindFirstChild(MagicLeftExtraSwordName) then
				
				local athp = Instance.new("Attachment",hite)
				local atho = Instance.new("Attachment",hite)
				
				local StarSword = char:FindFirstChild(MagicLeftExtraSwordName)
				StarSword.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp
				StarSword.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho
				
				athp.Position = Vector3.new(0,2.5,0)
				atho.Rotation = Vector3.new(-200,90,45)
			end

			sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(0,1,0),0.2,0.001,0.2,keptcolor)
			sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),vt(8,1,8),-0.045,0.15,-0.045,keptcolor)
			sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),vt(4,1,4),-0.025,0.25,-0.025,keptcolor)
			sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),vt(2,1,2),-0.015,0.35,-0.015,keptcolor)
			MagniDamage(hite, 9, 10,25, 0, "Normal")

			for i = 0, 14 do
				local rsiz = math.random(5,20)
				sphereMK(math.random(1,3),0.25,"Add",hite.CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,keptcolor,0)
			end
			
			CFuncs["Sound"].Create("rbxassetid://178452221", hite, 1, 1)
			CFuncs["Sound"].Create("rbxassetid://1042722746", hite, 0.5, 1)
			game:GetService("Debris"):AddItem(hite, 5)
			distlook = distlook + 10
		end
	
		if char:FindFirstChild(MagicLeftExtraSwordName) then
	
			local StarSword = char:FindFirstChild(MagicLeftExtraSwordName)
			StarSword.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = lwing3Athp
			StarSword.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = lwing3Atho
		end
	
	end))
	
	for i = 0,1,0.1 do
		swait()
	            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(5),math.rad(90)),0.5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-90)),.5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(120)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.5)
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-0.5),math.rad(0),math.rad(-10)),.5)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.5)
	end

	attack = false
end

function attackthree() 
	
	attack = true
	hum.WalkSpeed = 2
	local keptcolor = MAINRUINCOLOR

	CFuncs["Sound"].Create("rbxassetid://847061203", root, 2, 1)
	sphere2(5,"Add",rarm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(1,1,1),0.1,0.1,0.1,keptcolor,keptcolor.Color)
	sphere2(5,"Add",rarm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(1,1,1),0.2,0.2,0.2,keptcolor,keptcolor.Color)

	for i = 0, 14 do
		
	end
	
	for i = 0,1,0.1 do
		swait()
		sphere2(8,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(60)),.3)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-30)),.3)
		RW.C0=clerp(RW.C0,cf(1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
		LW.C0=clerp(LW.C0,cf(-1.15,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-10)),.3)
	end
	
	for i = 0, 1 do
		
		CFuncs["Sound"].Create("rbxassetid://763755889", root, 3,1.1)
	
		for i = 0,1,0.6 do
			swait()
			sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.6)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-30)),.6)
			RW.C0=clerp(RW.C0,cf(1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(-60)),.6)
			LW.C0=clerp(LW.C0,cf(-1.15,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-10)),.6)
		end

		for i = 0,1,0.6 do
			swait()
			sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.6)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-30)),.6)
			RW.C0=clerp(RW.C0,cf(1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(-60)),.6)
			LW.C0=clerp(LW.C0,cf(-1.15,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-10)),.6)
		end
		
		for i = 0,1,0.6 do
			swait()
			sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-180)),.6)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-30)),.6)
			RW.C0=clerp(RW.C0,cf(1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(-60)),.6)
			LW.C0=clerp(LW.C0,cf(-1.15,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-10)),.6)
		end
		
		for i = 0,1,0.6 do
			swait()
			sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-270)),.6)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-30)),.6)
			RW.C0=clerp(RW.C0,cf(1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(-60)),.6)
			LW.C0=clerp(LW.C0,cf(-1.15,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-10)),.6)
		end
		
		local rot = 0
		local dis = CreateParta(char,0.5,1,"Neon",keptcolor)
		
		if char:FindFirstChild(MagicAccessory) then
			local athp = Instance.new("Attachment",dis)
			local atho = Instance.new("Attachment",dis)
			
			local hatFire = char:FindFirstChild(MagicAccessory)
			hatFire.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp
			hatFire.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho
		end
		
		if secondWing then
			local athp = Instance.new("Attachment",dis)
			local atho = Instance.new("Attachment",dis)
			
			secondWing.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp
			secondWing.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho
			
			atho.Rotation = Vector3.new(-90, 0, 0)
		end
			
		CFuncs["EchoSound"].Create("rbxassetid://763718160", dis, 3, 1.1,0,10,0.15,0.5,1)
		
		dis.CFrame = root.CFrame*CFrame.new(0,2,-3)
		CreateMesh(dis,"Sphere",10,1,10)

		local at1 = Instance.new("Attachment",dis)
		at1.Position = vt(-5,0,0)
		local at2 = Instance.new("Attachment",dis)
		at2.Position = vt(5,0,0)
		
		local trl = Instance.new('Trail',wed)
		trl.Attachment0 = at1
		trl.Attachment1 = at2
		trl.Texture = "rbxassetid://1049219073"
		trl.LightEmission = 1
		trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
		trl.Color = ColorSequence.new(dis.Color)
		trl.Lifetime = 0.6
		
		local a = Instance.new("Part",workspace)
		a.Name = "Direction"	
		a.Anchored = true
		a.BrickColor = bc("Bright red")
		a.Material = "Neon"
		a.Transparency = 1
		a.CanCollide = false

		local ray = Ray.new(
			dis.CFrame.p,                                 -- origin
			(mouse.Hit.p - dis.CFrame.p).unit * 500 -- direction
		) 
		
		local ignore = dis
		local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
		
		a.BottomSurface = 10
		a.TopSurface = 10
		
		local distance = (dis.CFrame.p - position).magnitude
		
		a.Size = Vector3.new(0.1, 0.1, 0.1)
		a.CFrame = CFrame.new(dis.CFrame.p, position) * CFrame.new(0, 0, 0)
		
		dis.CFrame = a.CFrame
		dis.CFrame = dis.CFrame*CFrame.Angles(0,math.rad(rot),0)
		
		a:Destroy()
	
		local bv = Instance.new("BodyVelocity")
		bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
		bv.velocity = dis.CFrame.lookVector*250
		bv.Parent = dis
		
		game:GetService("Debris"):AddItem(dis, 5)
		
		local hitted = false
		
		coroutine.resume(coroutine.create(function()
			
			dis.Touched:connect(function(hit) 
				
				if hitted == false and hit.Parent ~= char then
					
					hitted = true
					
					CFuncs["EchoSound"].Create("rbxassetid://782200047", dis, 7, 1.1,0,10,0.15,0.5,1)
					
					MagniDamage(dis, 30, 33,56, 0, "Normal")
					sphere2(8,"Add",dis.CFrame,vt(10,1,10),1,0.1,1,keptcolor,keptcolor.Color)
					sphere2(4,"Add",dis.CFrame,vt(1,1,1),0.5,0.5,0.5,keptcolor,keptcolor.Color)
					sphere2(3,"Add",dis.CFrame,vt(1,1,1),0.5,0.5,0.5,keptcolor,keptcolor.Color)
					
					coroutine.resume(coroutine.create(function()
						for i = 0, 9 do
							local disr = CreateParta(char,1,1,"Neon",keptcolor)
							disr.CFrame = dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
		
							local at1 = Instance.new("Attachment",disr)
							at1.Position = vt(-5,0,0)
							local at2 = Instance.new("Attachment",disr)
							at2.Position = vt(5,0,0)
		
							local trl = Instance.new('Trail',disr)
							trl.Attachment0 = at1
							trl.FaceCamera = true
							trl.Attachment1 = at2
							trl.Texture = "rbxassetid://2342682798"
							trl.LightEmission = 1
							trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
							trl.Color = ColorSequence.new(keptcolor.Color)
							trl.Lifetime = 0.5
		
							local bv = Instance.new("BodyVelocity")
							bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
							bv.velocity = disr.CFrame.lookVector*math.random(50,200)
							bv.Parent = disr
		
							local val = 0
							
							coroutine.resume(coroutine.create(function()
								swait(30)
								
								for i = 0, 9 do
									swait()
									val = val + 0.1
									trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, val),NumberSequenceKeypoint.new(1, 1)})
								end
								
								game:GetService("Debris"):AddItem(disr, 3)
							end))
						end
						
						local eff = Instance.new("ParticleEmitter",dis)
						eff.Texture = "rbxassetid://2273224484"
						eff.LightEmission = 1
						eff.Color = ColorSequence.new(keptcolor.Color)
						eff.Rate = 50
						eff.Lifetime = NumberRange.new(0.5,2)
						eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
						eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
						eff.Speed = NumberRange.new(20,250)
						eff.Drag = 5
						eff.Rotation = NumberRange.new(-500,500)
						eff.VelocitySpread = 9000
						eff.RotSpeed = NumberRange.new(-50,50)
						
						local eff2 = Instance.new("ParticleEmitter",dis)
						eff2.Texture = "rbxassetid://2273224484"
						eff2.LightEmission = 1
						eff2.Color = ColorSequence.new(dis.Color)
						eff2.Rate = 500000
						eff2.Lifetime = NumberRange.new(0.5,2)
						eff2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
						eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
						eff2.Speed = NumberRange.new(50,450)
						eff2.Drag = 5
						eff2.Rotation = NumberRange.new(-500,500)
						eff2.VelocitySpread = 9000
						eff2.RotSpeed = NumberRange.new(-50,50)
						
						wait(0.25)
						eff.Enabled = false
						eff2.Enabled = false
					end))
			
					for i = 0, 9 do
							
					end
					
					for i = 0, 19 do
						
					end
			
					coroutine.resume(coroutine.create(function()
						for i = 0, 19 do
							swait()
							hum.CameraOffset = vt(math.random(-10,10)/70,math.random(-10,10)/70,math.random(-10,10)/70)
						end
						
						hum.CameraOffset = vt(0,0,0)
					end))
					
					dis.Anchored = true
					dis.Transparency = 1
					
					wait(8)
					
					dis:Destroy()
					
				end
			end)
		end))
	
		rot = rot - 15
	end
	
	for i = 0,2,0.1 do
		
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(-30),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(5)),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(60)),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-10)),.3)
	end

	attack = false
	hum.WalkSpeed = storehumanoidWS
	
	if char:FindFirstChild(MagicAccessory) then
	
		local hatFire = char:FindFirstChild(MagicAccessory)
		hatFire.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = fireAthp
		hatFire.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = fireAtho
	end
	
	if secondWing then
		
		secondWing.Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = swingAthp
		secondWing.Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = swingAtho
	end

end

function attackfour() 
	
	attack = true
	local keptcolor = MAINRUINCOLOR
	
	CFuncs["Sound"].Create("rbxassetid://136007472", root, 2, 1.5)
	
	for i = 0,2,0.1 do
		swait()
		sphere2(5,"Add",larm.CFrame*CFrame.new(0,-1.5,0),vt(1,1,1),0.025,0.025,0.025,MAINRUINCOLOR,MAINRUINCOLOR.Color)
		RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(50)),0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-50)),.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(10), math.rad(60)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(140), math.rad(0), math.rad(-70)), 0.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(-50),math.rad(-10)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(40)),.3)
	end
	
	CFuncs["Sound"].Create("rbxassetid://763716870", root, 3,1)
	CFuncs["Sound"].Create("rbxassetid://782353443", root, 5,0.9)
	CFuncs["Sound"].Create("rbxassetid://782225570", root, 4,0.5)
	CFuncs["Sound"].Create("rbxassetid://763717569", root, 3,1)
	
	sphere2(5,"Add",root.CFrame,vt(1,1,1),1,1,1,MAINRUINCOLOR)
	sphere2(5,"Add",root.CFrame,vt(1,1,1),0.5,0.5,0.5,MAINRUINCOLOR)
	
	for i = 0, 24 do
		
	end
	
	for i = 0,4,0.1 do
		
		swait()
		root.CFrame = root.CFrame + root.CFrame.lookVector*5
		local dis = CreateParta(char,0.25,1,"Neon",MAINRUINCOLOR)
		
		CreateMesh(dis,"Sphere",1,1,1)
		dis.Anchored = true
		dis.CFrame = larm.CFrame*CFrame.new(0,-3,0)
		
		sphere2(5,"Add",dis.CFrame,vt(1,1,1),0.1,0.1,0.1,dis.BrickColor,dis.Color)
		
		coroutine.resume(coroutine.create(function()
		
			swait(30)
			dis.Transparency = 1

			coroutine.resume(coroutine.create(function() 
				
				for i = 0, 19 do
					
					swait()
					hum.CameraOffset = vt(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-10,10)/40)
				end

				hum.CameraOffset = vt(0,0,0)
			end))
			
			coroutine.resume(coroutine.create(function()

				local eff = Instance.new("ParticleEmitter",dis)
				eff.Texture = "rbxassetid://2273224484"
				eff.LightEmission = 1
				eff.Color = ColorSequence.new(dis.Color)
				eff.Rate = 500000
				eff.Lifetime = NumberRange.new(0.5,2)
				eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
				eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
				eff.Speed = NumberRange.new(50,450)
				eff.Drag = 5
				eff.Rotation = NumberRange.new(-500,500)
				eff.VelocitySpread = 9000
				eff.RotSpeed = NumberRange.new(-50,50)
				wait(0.125)
				eff.Enabled = false
			end))
			
			MagniDamage(dis, 30, 45,50, 0, "Normal")

			for i = 0, 2 do
				slash(math.random(10,80)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(50,150)/250,dis.BrickColor)
			end
			
			CFuncs["Sound"].Create("rbxassetid://782353117", dis, 1,1)
			CFuncs["Sound"].Create("rbxassetid://1666361078", dis, 1,1.5)
			CFuncs["Sound"].Create("rbxassetid://782353443", dis, 2,1.65)
			
			sphere2(3,"Add",dis.CFrame,vt(1,1,1),0.4,0.4,0.4,dis.BrickColor,dis.Color)
		end))
		
		game:GetService("Debris"):AddItem(dis, 5)
		
		RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(89),math.rad(-8),math.rad(-5)),0.5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30),math.rad(0),math.rad(8)),.5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-14), math.rad(1), math.rad(17)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.85, 0) * angles(math.rad(180), math.rad(0), math.rad(-8)), 0.5)
		RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-8),math.rad(0),math.rad(-20)),.5)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(9),math.rad(0),math.rad(20)),.5)
	end
	
	attack = false
end

local ActiveGia = false

function THEHELLITSTHATBIG() 
	
	ActiveGia = true
	attack = true
	hum.WalkSpeed = 0
	
	for i = 0,2,0.1 do
		swait()
	            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-20),math.rad(0),math.rad(0)),0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-15),math.rad(0),math.rad(0)),.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(100)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-100)), 0.2)
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-0.5),math.rad(0),math.rad(-20)),.2)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(10),math.rad(20)),.2)
	end
	
	for i = 0,1,0.1 do
		torsweld.C1=clerp(torsweld.C1,cf(0,5*4,-8)*angles(math.rad(0),math.rad(0),math.rad(0)),1)
		larmsweld.C1=clerp(larmsweld.C1,cf(1.65*8,0.45*8,0)*angles(math.rad(0),math.rad(0),math.rad(20)),1)
		rarmsweld.C1=clerp(rarmsweld.C1,cf(-1.65*8,0.45*8,0)*angles(math.rad(0),math.rad(0),math.rad(-20)),1)
		llegsweld.C1=clerp(llegsweld.C1,cf(0.5*8,2*8,0)*angles(math.rad(0),math.rad(0),math.rad(0)),1)
		rlegsweld.C1=clerp(rlegsweld.C1,cf(-0.5*8,2*8,0)*angles(math.rad(0),math.rad(0),math.rad(0)),1)
		hedsweld.C1=clerp(hedsweld.C1,cf(0,-1.5*8,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),1)
	end
	
	CFuncs["Sound"].Create("rbxassetid://528589382", sectors, 5, 1)
	
	secrleg.Transparency = 0.5
	seclleg.Transparency = 0.5
	secrarm.Transparency = 0.5
	seclarm.Transparency = 0.5
	seched.Transparency = 0.5
	sectors.Transparency = 0.5
	
	for i = 0,25,0.1 do
		swait()
		PixelBlockNeg(1,math.random(1,5),"Add",sectors.CFrame*CFrame.new(math.random(-25,25),0,math.random(-25,25))*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.1,MAINRUINCOLOR,-10)
		
		torsweld.C1=clerp(torsweld.C1,cf(0,-2 + 0.25 * math.cos(sine / 32) ,-8)*angles(math.rad(0),math.rad(0),math.rad(0)),.025)
		larmsweld.C1=clerp(larmsweld.C1,cf(1.65*8,0.45*8,0)*angles(math.rad(0),math.rad(0),math.rad(20)),0.025)
		rarmsweld.C1=clerp(rarmsweld.C1,cf(-1.65*8,0.45*8,0)*angles(math.rad(0),math.rad(0),math.rad(-20)),0.025)
		llegsweld.C1=clerp(llegsweld.C1,cf(0.5*8,2*8,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.025)
		rlegsweld.C1=clerp(rlegsweld.C1,cf(-0.5*8,2*8,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.025)
		hedsweld.C1=clerp(hedsweld.C1,cf(0,-1.5*8,0.2)*angles(math.rad(-10),math.rad(0),math.rad(0)),0.025)
	end
	
	torsweld.Part0 = root
	hum.WalkSpeed = storehumanoidWS
	attack = false
end

function removelol() 
	
	ActiveGia = false
	attack = true
	hum.WalkSpeed = 0
	
	for i = 0,2,0.1 do
		swait()
	            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-20),math.rad(0),math.rad(0)),0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-15),math.rad(0),math.rad(0)),.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(100)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-100)), 0.2)
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-0.5),math.rad(0),math.rad(-20)),.2)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(10),math.rad(20)),.2)
	end
	
	CFuncs["Sound"].Create("rbxassetid://528589274", sectors, 5, 1)
	
	for i = 0,25,0.1 do
		swait()
		secrleg.Transparency = secrleg.Transparency + 0.00225
		seclleg.Transparency = secrleg.Transparency
		secrarm.Transparency = secrleg.Transparency
		seclarm.Transparency = secrleg.Transparency
		seched.Transparency = secrleg.Transparency
		sectors.Transparency = secrleg.Transparency
		
		PixelBlockNeg(1,math.random(1,5),"Add",sectors.CFrame*CFrame.new(math.random(-25,25),0,math.random(-25,25))*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.1,MAINRUINCOLOR,-10)

		torsweld.C1=clerp(torsweld.C1,cf(0,-2 + 0.25 * math.cos(sine / 32) ,-8)*angles(math.rad(0),math.rad(0),math.rad(0)),.025)
		larmsweld.C1=clerp(larmsweld.C1,cf(1.65*8,0.45*8,0)*angles(math.rad(20),math.rad(0),math.rad(20)),0.025)
		rarmsweld.C1=clerp(rarmsweld.C1,cf(-1.65*8,0.45*8,0)*angles(math.rad(20),math.rad(0),math.rad(-20)),0.025)
		llegsweld.C1=clerp(llegsweld.C1,cf(0.5*8,2*8,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.025)
		rlegsweld.C1=clerp(rlegsweld.C1,cf(-0.5*8,2*8,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.025)
		hedsweld.C1=clerp(hedsweld.C1,cf(0,-1.5*8,0.2)*angles(math.rad(-10),math.rad(0),math.rad(0)),0.025)
	end
	
	CFuncs["Sound"].Create("rbxassetid://468991944", sectors, 10, 1)
	
	sphere(1,"Add",sectors.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
	sphere(2,"Add",sectors.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
	sphere(3,"Add",sectors.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
	
	secrleg.Transparency = 1
	seclleg.Transparency = 1
	secrarm.Transparency = 1
	seclarm.Transparency = 1
	seched.Transparency = 1
	sectors.Transparency = 1
	torsweld.Part0 = root
	
	hum.WalkSpeed = storehumanoidWS
	attack = false
end

--#-------------------------------------------------------#--
 --                          ABILITIES                            --
--#-------------------------------------------------------#--

function OldExtinctiveHeartbreak()
	local targetted = nil
	
	if mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
		targetted = mouse.Target.Parent
	end
	
	if targetted ~= nil then
		attack = true
		CFuncs["Sound"].Create("rbxassetid://847061203", root, 2.5,1)
		for i = 0, 9 do
			sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Really black"),0)
		end
		for i = 0, 24 do
			PixelBlock(1,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.06,BrickColor.new("Really black"),0)
		end
		sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Really black"))
		local originalpos = root.CFrame
		RootPart.CFrame = targetted.Head.CFrame * CFrame.new(0,-2,2)
		for i = 0, 9 do
			sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Really black"),0)
		end
		for i = 0, 24 do
			PixelBlock(1,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.06,BrickColor.new("Really black"),0)
		end
		-- hum.WalkSpeed = 0
		-- targetted.Head.Anchored = true
		sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Really black"))
		for i = 0,2,0.1 do
			swait()
			RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.4)
			LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.4)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(80)),.4)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(10)),.8)
			RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(20),math.rad(0),math.rad(10)),.4)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(90),math.rad(0),math.rad(60)),.4)
		end
		coroutine.resume(coroutine.create(function()
			bld = Instance.new("ParticleEmitter",targetted:WaitForChild("Torso"))
			bld.LightEmission = 0.1
			bld.Texture = "rbxassetid://284205403"
			bld.Color = ColorSequence.new(Color3.new(0.5,0,0))
			bld.Rate = 500
			bld.Lifetime = NumberRange.new(1)
			bld.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(1,0,0)})
			bld.Acceleration = vt(0,-25,0)
			bld.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
			bld.Speed = NumberRange.new(10,50)
			bld.EmissionDirection = "Front"
			bld.VelocitySpread = 25
			bld.Rotation = NumberRange.new(-500,500)
			bld.RotSpeed = NumberRange.new(-500,500)
		end))
		coroutine.resume(coroutine.create(function()
			bld = Instance.new("ParticleEmitter",targetted:WaitForChild("UpperTorso"))
			bld.LightEmission = 0.1
			bld.Texture = "rbxassetid://284205403"
			bld.Color = ColorSequence.new(Color3.new(0.5,0,0))
			bld.Rate = 500
			bld.Lifetime = NumberRange.new(1)
			bld.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(1,0,0)})
			bld.Acceleration = vt(0,-25,0)
			bld.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
			bld.Speed = NumberRange.new(10,50)
			bld.EmissionDirection = "Front"
			bld.VelocitySpread = 25
			bld.Rotation = NumberRange.new(-500,500)
			bld.RotSpeed = NumberRange.new(-500,500)
		end))
		CameraEnshaking(5,5)
		game:GetService("Debris"):AddItem(bld,3)
		dmg(targetted)
		pcall(function() CFuncs["Sound"].Create("rbxassetid://429400881", targetted.Head, 1,1) end)
		for i = 0,1,0.1 do
			swait()
			RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.8)
			LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.8)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(-80)),.8)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(80)),.8)
			RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(20),math.rad(0),math.rad(10)),.8)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(90),math.rad(0),math.rad(-80)),.8)
		end
		CFuncs["Sound"].Create("rbxassetid://847061203", root, 2.5,1)
		for i = 0, 9 do
			sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Really black"),0)
		end
		for i = 0, 24 do
			PixelBlock(1,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.06,BrickColor.new("Really black"),0)
		end
		sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Really black"))
		root.CFrame = originalpos
		for i = 0, 9 do
			sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Really black"),0)
		end
		for i = 0, 24 do
			PixelBlock(1,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.06,BrickColor.new("Really black"),0)
		end
		sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Really black"))
		bld.Enabled = false
		attack = false
		hum.WalkSpeed = storehumanoidWS
	end
end

function ExtinctiveHeartbreak()
local targetted = nil
if mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
targetted = mouse.Target.Parent
end
if targetted ~= nil then
attack = true
CFuncs["Sound"].Create("rbxassetid://847061203", root, 2.5,1)
for i = 0, 9 do
sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Really red"),0)
end
for i = 0, 24 do

end
sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Really red"))
local originalpos = root.CFrame
RootPart.CFrame = targetted.Head.CFrame * CFrame.new(0,-2,2)
for i = 0, 9 do
sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Really red"),0)
end
for i = 0, 24 do
end
hum.WalkSpeed = 0
sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Really red"))
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("👎□ ⍓□◆ ⧫♒♓■& ⍓□◆ ♍♋■ ♏⬧♍♋◻♏✍",MAINRUINCOLOR.Color,2)
elseif radm == 2 then
bosschatfunc("GOTCHA!",MAINRUINCOLOR.Color,2)
elseif radm == 3 then
bosschatfunc("DIE!",MAINRUINCOLOR.Color,2)
end
for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(-10),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(80)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(10)),.8)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(20),math.rad(0),math.rad(10)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(90),math.rad(0),math.rad(60)),.4)
end
CFuncs["Sound"].Create("rbxassetid://153092227", root, 5,1)
CFuncs["EchoSound"].Create("rbxassetid://153092227", root, 10, 1,0,10,0.25,0.5,1)
for i = 0,2,0.1 do
swait()
coroutine.resume(coroutine.create(function()
targetted.Head.CFrame = larm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-90),0,0)
for i,v in pairs(targetted:GetChildren()) do
if v:IsA("Part") or v:IsA("MeshPart") then
v.Velocity = vt(0,0,0)
end
end
end))
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.8)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(10),math.rad(0)),.8)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(-80)),.8)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(80)),.8)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(20),math.rad(0),math.rad(10)),.8)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(90),math.rad(0),math.rad(-80)),.8)
end
CFuncs["EchoSound"].Create("rbxassetid://824687369", char, 1.5, 1,0,10,0.25,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://153092227", char, 1.5, 0.9,0,10,0.25,0.5,1)
for i = 0, 1 do
CFuncs["EchoSound"].Create("rbxassetid://1690476035", char, 1.5, 1,0.1,10,0.15,0.5,1)
end
CFuncs["EchoSound"].Create("rbxassetid://1690476035", root, 10, 1,0.1,10,0.15,0.5,1)
chatfunc("RRRRROOAGHH!",Color3.new(1,0,0),"Inverted","Antique",0.75)
for i = 0,4,0.1 do
swait()
coroutine.resume(coroutine.create(function()
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = targetted.Head.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-25000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(25000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(Color3.new(1,0,0))
trl.Lifetime = 5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(500,2500)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
targetted.Head.CFrame = larm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-90),0,0)
CFuncs["Sound"].Create("rbxassetid://782353443", targetted.Head, 4,1)
CFuncs["Sound"].Create("rbxassetid://824687369", targetted.Head, 6, 1)
CFuncs["Sound"].Create("rbxassetid://153092227", targetted.Head,6,math.random(75,150)/150)
CFuncs["Sound"].Create("rbxassetid://163680447", targetted.Head, 3,math.random(75,150)/150)
CFuncs["Sound"].Create("rbxassetid://782354021", targetted.Head, 2.5,0.75)
sphere2(5,"Add",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(3,3,3),-0.03,15,-0.03,MAINRUINCOLOR)
targetted:FindFirstChildOfClass("Humanoid").CameraOffset = vt(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)
for i = 0, 2 do
slash(5,5,true,"Round","Add","Out",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(50,350)/250,BrickColor.new("Crimson"))
end
symbolizeBlink(targetted.Head,0,2092248396,Color3.new(1,0,0),math.random(3,35),0,0,0,targetted.Head,true,math.random(3,9),0.25)
for i,v in pairs(targetted:GetChildren()) do
if v:IsA("Part") or v:IsA("MeshPart") then
v.Velocity = vt(0,0,0)
end
end
end))
hum.CameraOffset = vt(math.random(-10,10)/25,math.random(-10,10)/25,math.random(-10,10)/25)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.8)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(10),math.rad(0)),.8)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(-80)),.8)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(80)),.8)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(20),math.rad(0),math.rad(40)),.8)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(170),math.rad(0),math.rad(-30)),.8)
end
hum.CameraOffset = vt(0,0,0)
for i = 0, 49 do
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = targetted.Head.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-50000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(50000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(Color3.new(1,0.1,0.1))
trl.Lifetime = 5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(500,2500)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
end
for i = 0, 49 do
sphere2(math.random(10,75)/10,"Add",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(5,5,5),-0.05,50,-0.05,MAINRUINCOLOR)
slash(math.random(10,30)/15,5,true,"Round","Add","Out",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(40,500)/250,BrickColor.new("Really red"))
end
CFuncs["EchoSound"].Create("rbxassetid://824687369", char, 2, 0.9,0,10,0.25,0.5,1)
for i = 0, 1 do
CFuncs["Sound"].Create("rbxassetid://221920821", targetted.Head, 5,0.9)
CFuncs["Sound"].Create("rbxassetid://221920821", targetted.Head, 7.5,0.75)
end
for i = 0, 4 do
CFuncs["Sound"].Create("rbxassetid://824687369", targetted.Head, 10, 1)
end
symbolizeBlink(targetted.Head,0,2109052855,Color3.new(1,0,0),30,0,0,0,root,false,0,1)
symbolizeBlink(targetted.Head,0,2109052855,Color3.new(1,0,0),30,0,0,0,root,false,0,2)
symbolizeBlink(targetted.Head,0,2109052855,Color3.new(1,0,0),30,0,0,0,root,false,0,4)
dmg(targetted)
CFuncs["Sound"].Create("rbxassetid://847061203", root, 2.5,1)
for i = 0, 9 do
sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Really red"),0)
end
for i = 0, 24 do
end
sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Really red"))
root.CFrame = originalpos
for i = 0, 9 do
sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Really red"),0)
end
for i = 0, 24 do
end
sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Really red"))
attack = false
hum.WalkSpeed = storehumanoidWS
end
end


function CorruptionEvent()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://838392947", root, 10, 1)
CFuncs["Sound"].Create("rbxassetid://1368598393", root, 10, 1)
local keptcolor = MAINRUINCOLOR
for i = 0,4,0.1 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
block(10,"Add",rleg.CFrame*CFrame.new(0,-1,0),vt(1,1,1),0.01,0.01,0.01,MAINRUINCOLOR,MAINRUINCOLOR.Color)
RH.C0=clerp(RH.C0,cf(1,-0.15,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-5),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(1),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,-0.05)*angles(math.rad(-20),math.rad(0),math.rad(10)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-10)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(-5),math.rad(-10),math.rad(20)),.1)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,0.1)*angles(math.rad(-5),math.rad(10),math.rad(-20)),.1)
end
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,25,0,0,0,root,false,0,1)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,25,0,0,0,root,false,0,1.5)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,25,0,0,0,root,false,0,3)
CFuncs["Sound"].Create("rbxassetid://1368637781", root, 3,1)
CFuncs["Sound"].Create("rbxassetid://763718160", root, 4, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", root, 6, 1)
CFuncs["EchoSound"].Create("rbxassetid://824687369", root, 10, 1.1,0,10,0.25,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://824687369", char, 1.5, 1.1,0,10,0.25,0.5,1)
hum.CameraOffset = vt(0,0,0)
sphere2(5,"Add",root.CFrame*CFrame.new(0,-3,0),vt(10,1,10),1,0.01,1,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(5,"Add",root.CFrame*CFrame.new(0,-3,0),vt(10,1,10),2,0.01,2,MAINRUINCOLOR,MAINRUINCOLOR.Color)
for i = 0, 24 do
slash(math.random(15,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(200,500)/250,BrickColor.new("Really black"))
end
local rrot = 0
coroutine.resume(coroutine.create(function()
for i = 0, 4 do
rrot = rrot + 45
local xa = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
xa.Anchored = true
local xb = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
xb.Anchored = true
local xc = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
xc.Anchored = true
local xd = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
xd.Anchored = true
CFuncs["Sound"].Create("rbxassetid://824687369", xa, 1,0.75)
CFuncs["Sound"].Create("rbxassetid://822968467", xa, 2,0.95)
CFuncs["Sound"].Create("rbxassetid://822969951", xa, 3,1)
CFuncs["Sound"].Create("rbxassetid://824687369", xb, 1,0.75)
CFuncs["Sound"].Create("rbxassetid://822968467", xb, 2,0.95)
CFuncs["Sound"].Create("rbxassetid://822969951", xb, 3,1)
CFuncs["Sound"].Create("rbxassetid://824687369", xc, 1,0.75)
CFuncs["Sound"].Create("rbxassetid://822968467", xc, 2,0.95)
CFuncs["Sound"].Create("rbxassetid://822969951", xc, 3,1)
CFuncs["Sound"].Create("rbxassetid://824687369", xd, 1,0.75)
CFuncs["Sound"].Create("rbxassetid://822968467", xd, 2,0.95)
CFuncs["Sound"].Create("rbxassetid://822969951", xd, 3,1)
xa.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rrot),0)*CFrame.new(0,-3,-rrot/1.75)
xb.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rrot),0)*CFrame.new(0,-3,rrot/1.75)
xc.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rrot),0)*CFrame.new(-rrot/1.75,-3,0)
xd.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rrot),0)*CFrame.new(rrot/1.75,-3,0)
MagniDamage(xa, 30, 39*rrot/5,65*rrot/2.5, 0, "Normal")
MagniDamage(xb, 30, 39*rrot/5,65*rrot/2.5, 0, "Normal")
MagniDamage(xc, 30, 39*rrot/5,65*rrot/2.5, 0, "Normal")
MagniDamage(xd, 30, 39*rrot/5,65*rrot/2.5, 0, "Normal")
block(1.5,"Add",xa.CFrame*CFrame.new(0,-10,0),vt(30,30,30),0.3,0.3,0.3,keptcolor,keptcolor.Color)
block(1.5,"Add",xb.CFrame*CFrame.new(0,-10,0),vt(30,30,30),0.3,0.3,0.3,keptcolor,keptcolor.Color)
block(1.5,"Add",xc.CFrame*CFrame.new(0,-10,0),vt(30,30,30),0.3,0.3,0.3,keptcolor,keptcolor.Color)
block(1.5,"Add",xd.CFrame*CFrame.new(0,-10,0),vt(30,30,30),0.3,0.3,0.3,keptcolor,keptcolor.Color)
sphere2(2,"Add",xa.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(25,1,25),0.05,1.5,0.05,keptcolor,keptcolor.Color)
sphere2(2,"Add",xb.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(25,1,25),0.05,1.5,0.05,keptcolor,keptcolor.Color)
sphere2(2,"Add",xc.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(25,1,25),0.05,1.5,0.05,keptcolor,keptcolor.Color)
sphere2(2,"Add",xd.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(25,1,25),0.05,1.5,0.05,keptcolor,keptcolor.Color)
sphere2(4,"Add",xa.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(30,1,30),0.05,1.5,0.05,BrickColor.new("Really black"),Color3.new(0,0,0))
sphere2(4,"Add",xb.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(30,1,30),0.05,1.5,0.05,BrickColor.new("Really black"),Color3.new(0,0,0))
sphere2(4,"Add",xc.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(30,1,30),0.05,1.5,0.05,BrickColor.new("Really black"),Color3.new(0,0,0))
sphere2(4,"Add",xd.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(30,1,30),0.05,1.5,0.05,BrickColor.new("Really black"),Color3.new(0,0,0))
game:GetService("Debris"):AddItem(xa, 5)
game:GetService("Debris"):AddItem(xb, 5)
game:GetService("Debris"):AddItem(xc, 5)
game:GetService("Debris"):AddItem(xd, 5)
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/50,math.random(-10,10)/50,math.random(-10,10)/50)
end
hum.CameraOffset = vt(0,0,0)
end))
swait(9)
end
end))
for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(10)),.8)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(1),math.rad(10)),.8)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.25,-0.05)*angles(math.rad(10),math.rad(0),math.rad(0)),.8)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(40),math.rad(0),math.rad(0)),.8)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(-35),math.rad(-10),math.rad(60)),.8)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,0.1)*angles(math.rad(-35),math.rad(10),math.rad(-50)),.8)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end

function EndGROUND()
	attack = true
hum.WalkSpeed = 0
bosschatfunc("THIS IS IT!",MAINRUINCOLOR.Color,1)
-- CFuncs["Sound"].Create("rbxassetid://838392947", root, 10, 1)
CFuncs["Sound"].Create("rbxassetid://1368598393", root, 10, 1)
CFuncs["EchoSound"].Create("rbxassetid://1690475123", char, 1.5, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1690475123", root, 10, 1,0,10,0.15,0.5,1)
local keptcolor = MAINRUINCOLOR
for i = 0,4,0.1 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
block(10,"Add",rarm.CFrame*CFrame.new(0,-6,0),vt(4,4,4),0.05,0.05,0.05,MAINRUINCOLOR,MAINRUINCOLOR.Color)
--slash(math.random(25,50)/10,5,true,"Round","Add","Out",rarm.CFrame*CFrame.new(0,-6,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.1,0.01,0.1),-0.1,BrickColor.new("Really black"))
RH.C0=clerp(RH.C0,cf(1,-0.15,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-15),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(1),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,-0.05)*angles(math.rad(-20),math.rad(0),math.rad(30)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-30)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(170),math.rad(-5),math.rad(10)),.1)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,0.1)*angles(math.rad(-5),math.rad(10),math.rad(-20)),.1)
end
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,25,0,0,0,root,false,0,1)
CFuncs["Sound"].Create("rbxassetid://1368637781", root, 3,1)
CFuncs["Sound"].Create("rbxassetid://763718160", root, 4, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", root, 6, 1)
CFuncs["EchoSound"].Create("rbxassetid://824687369", root, 10, 1,0,10,0.25,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://824687369", char, 2, 1,0,10,0.25,0.5,1)
coroutine.resume(coroutine.create(function()
	local shval = 10
	for i = 0, 99 do
		swait()
		shval = shval - 0.1
		hum.CameraOffset = vt(math.random(-shval,shval)/15,math.random(-shval,shval)/15,math.random(-shval,shval)/15)
	end
	hum.CameraOffset = vt(0,0,0)
end))
sphere2(5,"Add",root.CFrame*CFrame.new(0,-3,0),vt(10,1,10),1,0.01,1,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(5,"Add",root.CFrame*CFrame.new(0,-3,0),vt(10,1,10),2,0.01,2,MAINRUINCOLOR,MAINRUINCOLOR.Color)
for i = 0, 24 do
slash(math.random(15,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(200,500)/250,BrickColor.new("Really black"))
end
local rrot = 0
local xam = 1
coroutine.resume(coroutine.create(function()
for i = 0, 14 do
-- swait()
rrot = rrot + 40*xam
xam = xam + 0.25
local bonus = xam
local xa = CreateParta(char,0.5,1,"Neon",BrickColor.random())
xa.Anchored = true
xa.Color = Color3.new(0,0,0)
xa.CFrame = root.CFrame*CFrame.new(0,-3,-rrot/1.75)
CreateMesh(xa,"Sphere",30*bonus,1,30*bonus)
local xc = 0
coroutine.resume(coroutine.create(function()
for i = 0, 99 do
	swait()
	xc = xc + 0.01
	xa.Color = Color3.new(xc,0,0)
end
xa.Transparency = 1
CFuncs["Sound"].Create("rbxassetid://331666100", xa, 5,0.75)
MagniDamage(xa, 30*bonus, 78*bonus,99*bonus, 0, "Normal")
for i = 0, 9 do
slash(math.random(15,50)/10,5,true,"Round","Add","Out",xa.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(0.01*bonus,0.01,0.01*bonus),math.random(50,125)/250*bonus,BrickColor.new("Really black"))
end
block(1.5,"Add",xa.CFrame*CFrame.new(0,-10,0),vt(30*bonus,30*bonus,30*bonus),0.3,0.3,0.3,keptcolor,keptcolor.Color)
sphere2(2,"Add",xa.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(25*bonus,1,25*bonus),0.05*bonus,1.5*bonus,0.05*bonus,keptcolor,keptcolor.Color)
sphere2(4,"Add",xa.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(30*bonus,1,30*bonus),0.05*bonus,1.5*bonus,0.05*bonus,BrickColor.new("Really black"),Color3.new(0,0,0))
game:GetService("Debris"):AddItem(xa, 5)
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/50,math.random(-10,10)/50,math.random(-10,10)/50)
end
hum.CameraOffset = vt(0,0,0)
end))
end))
end
end))
for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-25),math.rad(30)),.8)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(1),math.rad(20)),.8)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.25,-0.5)*angles(math.rad(30),math.rad(0),math.rad(50)),.8)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-50)),.8)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(35),math.rad(-10),math.rad(30)),.8)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,0.1)*angles(math.rad(-35),math.rad(10),math.rad(-50)),.8)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end

function HeavenlyDisk()
attack = true
hum.WalkSpeed = 2
local keptcolor = MAINRUINCOLOR
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("DONT COME TO ME CLOSER!",MAINRUINCOLOR.Color,1)
elseif radm == 2 then
bosschatfunc("LEAVE ME ALONE!",MAINRUINCOLOR.Color,1)
elseif radm == 3 then
bosschatfunc("WHY YOU REDUSE?!",MAINRUINCOLOR.Color,1)
end
CFuncs["Sound"].Create("rbxassetid://847061203", root, 2, 1)
CFuncs["EchoSound"].Create("rbxassetid://1625448638", root, 4, 1,0,10,0.15,0.5,1)
for i = 0, 14 do

end
for i = 0,2,0.1 do
swait()
sphere2(8,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.3)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.3)
end
CFuncs["Sound"].Create("rbxassetid://763755889", root, 2.5,1.1)
for i = 0,1,0.6 do
swait()
sphere2(8,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.6)
end
for i = 0,1,0.6 do
swait()
sphere2(8,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.6)
end
for i = 0,1,0.6 do
swait()
sphere2(8,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(180)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.6)
end
for i = 0,1,0.6 do
swait()
sphere2(8,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(270)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.6)
end
local rot = 15
for i = 0, 2 do
local dis = CreateParta(char,0.5,1,"Neon",BrickColor.new("Really black"))
CFuncs["EchoSound"].Create("rbxassetid://763718160", dis, 3, 1.1,0,10,0.15,0.5,1)
dis.CFrame = root.CFrame*CFrame.new(0,2,-3)
CreateMesh(dis,"Sphere",10,1,10)
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-5,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(5,0,0)
local trl = Instance.new('Trail',wed)
trl.Attachment0 = at1
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(dis.Color)
trl.Lifetime = 0.6
local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    dis.CFrame.p,                           -- origin
	    (mouse.Hit.p - dis.CFrame.p).unit * 500 -- direction
	) 
	local ignore = dis
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (dis.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(dis.CFrame.p, position) * CFrame.new(0, 0, 0)
dis.CFrame = a.CFrame
dis.CFrame = dis.CFrame*CFrame.Angles(0,math.rad(rot),0)
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*250
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
local hitted = false
coroutine.resume(coroutine.create(function()
dis.Touched:connect(function(hit) 
	if hitted == false and hit.Parent ~= char then
	hitted = true
	CFuncs["EchoSound"].Create("rbxassetid://782200047", dis, 7, 1.1,0,10,0.15,0.5,1)
	MagniDamage(dis, 30, 82,34575, 0, "Normal")
	--sphere2(8,"Add",dis.CFrame,vt(10,1,10),1,0.1,1,keptcolor,keptcolor.Color)
	--sphere2(4,"Add",dis.CFrame,vt(1,1,1),0.5,0.5,0.5,keptcolor,keptcolor.Color)
	--sphere2(3,"Add",dis.CFrame,vt(1,1,1),0.5,0.5,0.5,BrickColor.new("White"),Color3.new(1,1,1))
	coroutine.resume(coroutine.create(function()
		for i = 0, 9 do
local disr = CreateParta(char,1,1,"Neon",keptcolor)
disr.CFrame = dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",disr)
at1.Position = vt(-2,0,0)
local at2 = Instance.new("Attachment",disr)
at2.Position = vt(2,0,0)
local trl = Instance.new('Trail',disr)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://2342682798"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(Color3.new(0.3,1,1))
trl.Lifetime = 0.5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = disr.CFrame.lookVector*math.random(50,200)
bv.Parent = disr
local val = 0
coroutine.resume(coroutine.create(function()
	swait(30)
	for i = 0, 9 do
		swait()
		val = val + 0.1
		trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, val),NumberSequenceKeypoint.new(1, 1)})
	end
game:GetService("Debris"):AddItem(disr, 3)
end))
end
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(Color3.new(0.3,1,1))
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.25)
eff.Enabled = false
end))
	for i = 0, 9 do
		slash(math.random(10,20)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(100,200)/250,BrickColor.new("White"))
	end
for i = 0, 19 do

end
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/70,math.random(-10,10)/70,math.random(-10,10)/70)
end
hum.CameraOffset = vt(0,0,0)
end))
dis.Anchored = true
dis.Transparency = 1
wait(8)
dis:Destroy()
end
end)
end))
rot = rot - 15
end
for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(-30),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(5)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end

function RapidBurst()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://1368598393", char, 2.5, 0.5)
CFuncs["Sound"].Create("rbxassetid://1368598393", root, 10, 0.5)
CFuncs["EchoSound"].Create("rbxassetid://1718412034", char, 4, 1,0,10,0.15,0.5,1)
bosschatfunc("SHATTER!",MAINRUINCOLOR.Color,2)
local keptcolor = MAINRUINCOLOR
for i = 0,8,0.1 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
slash(math.random(25,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,25,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(2,0.01,2),-2,BrickColor.random())
block(10,"Add",root.CFrame*CFrame.new(0,25,0),vt(0,0,0),0.5,0.5,0.5,BrickColor.random(),BrickColor.random().Color)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-15 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(15 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.15 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(-15 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-25 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.35,1 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(165 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(-10 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.35,1 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(165 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(13 - 3 * math.cos(sine / 45))),.1)
end
for i = 0, 99 do
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = root.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-25000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(25000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(BrickColor.random().Color)
trl.Lifetime = 5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(500,2500)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
end
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,1)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,1.5)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,3)
sphere2(2,"Add",root.CFrame,vt(1,1,1),1,1,1,BrickColor.random(),BrickColor.random().Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),2,2,2,BrickColor.random(),BrickColor.random().Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),4,4,4,BrickColor.random(),BrickColor.random().Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),8,8,8,BrickColor.random(),BrickColor.random().Color)
CFuncs["Sound"].Create("rbxassetid://1841058541", root, 10,1)
CFuncs["Sound"].Create("rbxassetid://2095993595", char, 5,0.8)
CFuncs["Sound"].Create("rbxassetid://1841058541", char, 5,1)
hum.CameraOffset = vt(0,0,0)
for i = 0, 24 do
slash(math.random(10,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(500,1500)/250,BrickColor.random())
end
local distam = 0
coroutine.resume(coroutine.create(function()
for i = 0, 99 do
	wait()
distam = distam + 1
local xa = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
xa.Anchored = true
xa.CFrame = root.CFrame*CFrame.new(math.random(-distam,distam),math.random(-distam,distam),math.random(-distam,distam))
game:GetService("Debris"):AddItem(xa, 5)
for i = 0, 4 do
slash(math.random(25,50)/10,5,true,"Round","Add","Out",xa.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(200,500)/250,BrickColor.random())
end
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",xa)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(BrickColor.random().Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(1,3)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,30,0),NumberSequenceKeypoint.new(0.2,5,0),NumberSequenceKeypoint.new(0.8,5,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(50,500)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.25)
eff.Enabled = false
end))
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
end
hum.CameraOffset = vt(0,0,0)
end))
CFuncs["Sound"].Create("rbxassetid://675172759", xa, 7,math.random(100,200)/200)
sphere2(5,"Add",xa.CFrame,vt(1,1,1),1,1,1,BrickColor.random(),BrickColor.random().Color)
sphere2(5,"Add",xa.CFrame,vt(1,1,1),2,2,2,BrickColor.random(),BrickColor.random().Color)
MagniDamage(xa, 60, 9999,99999, 0, "Normal")
end
end))
attack = false
hum.WalkSpeed = storehumanoidWS
end

function CrazedClear()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://1368598393", char, 2.5, 0.5)
CFuncs["Sound"].Create("rbxassetid://1368598393", root, 10, 0.5)
-- CFuncs["EchoSound"].Create("rbxassetid://1718412034", char, 4, 1,0,10,0.15,0.5,1)
bosschatfunc("ALL OF YOUR EXISTANCE WILL BE GONE.",MAINRUINCOLOR.Color,2)
local keptcolor = MAINRUINCOLOR
for i = 0,8,0.1 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
slash(math.random(25,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,0,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(2,0.01,2),-2,MAINRUINCOLOR)
block(10,"Add",root.CFrame*CFrame.new(0,0,0),vt(0,0,0),0.5,0.5,0.5,MAINRUINCOLOR,MAINRUINCOLOR.Color)
RH.C0=clerp(RH.C0,cf(1,-0.05,-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.1)
LH.C0=clerp(LH.C0,cf(-1,-0.5,-0.25)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(20 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(-20 + 2.5 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(20 - 2.5 * math.cos(sine / 28))),.1)
end
for i = 0, 99 do
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = root.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-25000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(25000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(MAINRUINCOLOR.Color)
trl.Lifetime = 5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(500,2500)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
end
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,1)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,1.5)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,3)
sphere2(2,"Add",root.CFrame,vt(1,1,1),1,1,1,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),2,2,2,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),4,4,4,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),8,8,8,MAINRUINCOLOR,MAINRUINCOLOR.Color)
CFuncs["Sound"].Create("rbxassetid://1841058541", root, 10,1)
CFuncs["Sound"].Create("rbxassetid://2095993595", char, 5,0.8)
CFuncs["Sound"].Create("rbxassetid://1841058541", char, 5,1)
hum.CameraOffset = vt(0,0,0)
for i = 0, 24 do
slash(math.random(10,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(500,1500)/250,MAINRUINCOLOR)
end
local distam = 0
coroutine.resume(coroutine.create(function()
for i = 0, 99 do
	wait()
distam = distam + 1
local xa = CreateParta(char,1,1,"SmoothPlastic",MAINRUINCOLOR)
xa.Anchored = true
xa.CFrame = root.CFrame*CFrame.new(math.random(-distam,distam),math.random(-distam,distam),math.random(-distam,distam))
game:GetService("Debris"):AddItem(xa, 5)
for i = 0, 4 do
slash(math.random(25,50)/10,5,true,"Round","Add","Out",xa.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(200,500)/250,MAINRUINCOLOR)
end

RH.C0=clerp(RH.C0,cf(1,-1,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.4)
-- RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(30)),.4)
-- LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(-30)),.4)

coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",xa)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(1,3)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,30,0),NumberSequenceKeypoint.new(0.2,5,0),NumberSequenceKeypoint.new(0.8,5,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(50,500)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.25)
eff.Enabled = false
end))
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
end
hum.CameraOffset = vt(0,0,0)
end))
CFuncs["Sound"].Create("rbxassetid://675172759", xa, 7,math.random(100,200)/200)
sphere2(5,"Add",xa.CFrame,vt(1,1,1),1,1,1,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(5,"Add",xa.CFrame,vt(1,1,1),2,2,2,MAINRUINCOLOR,MAINRUINCOLOR.Color)

for i, v in pairs(FindNearestHead(root.CFrame.p, 99999999999999)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end

MagniDamage(xa, 99999999999999, 99999999999999, 99999999999999, 0, "Normal")
end
end))
attack = false
hum.WalkSpeed = storehumanoidWS

end

function FallenOrbs()
attack = true
hum.WalkSpeed = 2
local keptcolor = MAINRUINCOLOR
CFuncs["EchoSound"].Create("rbxassetid://1448033299", char, 1.5, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1448033299", root, 10, 1,0,10,0.15,0.5,1)
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("SWARM!",MAINRUINCOLOR.Color,1)
elseif radm == 2 then
bosschatfunc("Weakling!",MAINRUINCOLOR.Color,1)
elseif radm == 3 then
bosschatfunc("RAAAAAGGGGGGHHHHHH!!!!!",MAINRUINCOLOR.Color,1)
end
coroutine.resume(coroutine.create(function()
for i = 0, 29 do
swait(2)
local dis = CreateParta(char,0.5,1,"Neon",MAINRUINCOLOR)
dis.Anchored = true
CFuncs["Sound"].Create("rbxassetid://137463716", dis, 2.5,1.5)
dis.CFrame = root.CFrame*CFrame.new(math.random(-35,35),math.random(5,35),math.random(-35,35))
CreateMesh(dis,"Sphere",2,2,2)
sphere2(5,"Add",dis.CFrame,vt(1,1,1),0.1,0.1,0.1,keptcolor,keptcolor.Color)
slash(math.random(10,20)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(10,50)/250,BrickColor.new("White"))
coroutine.resume(coroutine.create(function()
wait(0.5)
dis.Anchored = false
CFuncs["EchoSound"].Create("rbxassetid://1602800656", dis, 5, 1,0,2,0.15,0.1,1)
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-1,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(1,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(dis.Color)
trl.Lifetime = 0.6
local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    dis.CFrame.p,                           -- origin
	    (mouse.Hit.p - dis.CFrame.p).unit * 500 -- direction
	) 
	local ignore = dis
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (dis.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(dis.CFrame.p, position) * CFrame.new(0, 0, 0)
dis.CFrame = a.CFrame
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*500
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
local hitted = false
coroutine.resume(coroutine.create(function()
dis.Touched:connect(function(hit) 
	if hitted == false and hit.Parent ~= char then
	hitted = true
	CFuncs["EchoSound"].Create("rbxassetid://675172759", dis, 2.5, 0.8,0,10,0.15,0.5,1)
	MagniDamage(dis, 60, 25456,124672, 0, "Normal")
	--sphere2(1,"Add",dis.CFrame,vt(1,1,1),1,1,1,keptcolor,keptcolor.Color)
	--sphere2(8,"Add",dis.CFrame,vt(1,1,1),1.25,1.25,1.25,BrickColor.new("White"),Color3.new(1,1,1))
	coroutine.resume(coroutine.create(function()
for i = 0, 4 do
local disr = CreateParta(char,1,1,"Neon",keptcolor)
disr.CFrame = dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",disr)
at1.Position = vt(-10,0,0)
local at2 = Instance.new("Attachment",disr)
at2.Position = vt(10,0,0)
local trl = Instance.new('Trail',disr)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://2342682798"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(disr.Color)
trl.Lifetime = 0.5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = disr.CFrame.lookVector*math.random(125,250)
bv.Parent = disr
local val = 0
coroutine.resume(coroutine.create(function()
	swait(30)
	for i = 0, 9 do
		swait()
		val = val + 0.1
		trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, val),NumberSequenceKeypoint.new(1, 1)})
	end
game:GetService("Debris"):AddItem(disr, 3)
end))
end
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(dis.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.5)
eff.Enabled = false
end))
	for i = 0, 4 do
		--slash(math.random(20,50)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(100,200)/250,BrickColor.new("White"))
	end
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/70,math.random(-10,10)/70,math.random(-10,10)/70)
end
hum.CameraOffset = vt(0,0,0)
end))
dis.Anchored = true
dis.Transparency = 1
wait(8)
dis:Destroy()
end
end)
end))
end))
end
end))
for i = 0,9,0.1 do
swait()
sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,MAINRUINCOLOR,MAINRUINCOLOR.Color)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 32))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 2 * math.cos(sine / 32))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(-15 + 1 * math.cos(sine / 58)),math.rad(-90 + 2 * math.cos(sine / 53))),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(90 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(90 + 2 * math.cos(sine / 45))),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(8 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(-9 - 4 * math.cos(sine / 45))),.3)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end

function EquinoxOrbs()
hum.WalkSpeed = 0
attack = true
for i = 0,1,0.1 do
swait()
	RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0.5)*angles(math.rad(90),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17),math.rad(0),math.rad(0)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(5),math.rad(40)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-5),math.rad(-40)),.3)
end
sphere2(5,"Add",root.CFrame,vt(1,1,1),1.5,1.5,1.5,MAINRUINCOLOR)
sphere2(5,"Add",root.CFrame,vt(1,1,1),1,1,1,MAINRUINCOLOR)
for i = 0, 24 do
	slash(math.random(10,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(90),math.rad(math.random(-360,360)),math.rad(0)),vt(0.01,0.01,0.01),math.random(100,400)/250,BrickColor.new("White"))
end
CFuncs["Sound"].Create("rbxassetid://763716870", root, 8,1)
CFuncs["Sound"].Create("rbxassetid://782353443", root, 10,0.8)
CFuncs["Sound"].Create("rbxassetid://782225570", root, 9,0.5)
CFuncs["Sound"].Create("rbxassetid://763717569", root, 8,0.9)
for i = 0,4,0.1 do
swait()
root.CFrame = root.CFrame + root.CFrame.lookVector*7.5
local dis = CreateParta(char,0.25,1,"Neon",MAINRUINCOLOR)
CreateMesh(dis,"Sphere",1,1,1)
dis.Anchored = true
dis.CFrame = larm.CFrame*CFrame.new(0,-3,0)
local dis2 = CreateParta(char,0.25,1,"Neon",BrickColor.new("Really black"))
CreateMesh(dis2,"Sphere",1,1,1)
dis2.Anchored = true
dis2.CFrame = rarm.CFrame*CFrame.new(0,-3,0)
sphere2(5,"Add",dis.CFrame,vt(1,1,1),0.1,0.1,0.1,dis.BrickColor,dis.Color)
sphere2(5,"Add",dis2.CFrame,vt(1,1,1),0.1,0.1,0.1,dis2.BrickColor,dis2.Color)
coroutine.resume(coroutine.create(function()
	swait(60)
	dis.Transparency = 1
	dis2.Transparency = 1
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-10,10)/40)
end
hum.CameraOffset = vt(0,0,0)
end))
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(dis.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(50,450)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
local eff2 = eff:Clone()
eff2.Parent = dis2
eff2.LightEmission = 0
eff2.Color = ColorSequence.new(dis2.Color)
wait(0.25)
eff.Enabled = false
eff2.Enabled = false
end))
MagniDamage(dis, 55, 89,219788936, 0, "Normal")
MagniDamage(dis2, 55, 89,219788936, 0, "Normal")
	CFuncs["Sound"].Create("rbxassetid://782353117", dis, 1,0.75)
	CFuncs["Sound"].Create("rbxassetid://782353117", dis2, 1,0.75)
	CFuncs["Sound"].Create("rbxassetid://1666361078", dis, 1,1.25)
	CFuncs["Sound"].Create("rbxassetid://1666361078", dis2, 1,1.25)
	CFuncs["Sound"].Create("rbxassetid://782353443", dis, 2,1.15)
	CFuncs["Sound"].Create("rbxassetid://782353443", dis2, 2,1.15)
	sphere2(3,"Add",dis.CFrame,vt(1,1,1),0.8,0.8,0.8,dis.BrickColor,dis.Color)
	sphere2(3,"Add",dis2.CFrame,vt(1,1,1),0.8,0.8,0.8,dis2.BrickColor,dis2.Color)
end))
game:GetService("Debris"):AddItem(dis, 5)
game:GetService("Debris"):AddItem(dis2, 5)
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0.5)*angles(math.rad(90),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17),math.rad(0),math.rad(0)),.2)
RW.C0=clerp(RW.C0,cf(1.4,1.5,0)*angles(math.rad(0),math.rad(5),math.rad(210)),.1)
LW.C0=clerp(LW.C0,cf(-1.4,1.5,0)*angles(math.rad(0),math.rad(-5),math.rad(-210)),.1)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end
function FallenDEMISE()
attack = true
hum.WalkSpeed = 0
local keptcolor = MAINRUINCOLOR
bosschatfunc("LEAVE THE DEATH WHERE THEY FALL!!!",MAINRUINCOLOR.Color,3)
CFuncs["Sound"].Create("rbxassetid://289315275", char, 2.5,0.75)
CFuncs["Sound"].Create("rbxassetid://136007472", char, 2,0.5)
for i = 0, 15, 0.1 do
swait()
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = root.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-25000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(25000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(dis.Color)
trl.Lifetime = 5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(500,2500)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 1)
sphere2(15,"Add",root.CFrame,vt(8,8,8),2,2,2,MAINRUINCOLOR)
slash(math.random(30,150)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(1,0.01,1),math.random(100,500)/250,BrickColor.new("Toothpaste"))
slash(math.random(30,150)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(1,0.01,1),math.random(100,500)/250,BrickColor.new("Deep orange"))
RH.C0=clerp(RH.C0,cf(1,-0.35,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-35)),.1)
LH.C0=clerp(LH.C0,cf(-1,-0.45,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(35)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.15,0.5,-0.5)*angles(math.rad(92),math.rad(0),math.rad(-67)),.1)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(68)),.1)
end
-- CFuncs["Sound"].Create("rbxassetid://294188875", char, 10,1)
for i = 0, 30, 0.1 do
swait()
coroutine.resume(coroutine.create(function()
for i, v in pairs(FindNearestHead(root.CFrame.p, 10000000)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
end))
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = root.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-50000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(50000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(dis.Color)
trl.Lifetime = 10
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(1500,10000)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, math.random(1,4))
sphere2(15,"Add",root.CFrame,vt(8,80000,8),5,1,5,MAINRUINCOLOR)
sphere2(15,"Add",root.CFrame,vt(8,8,8),8,8,8,MAINRUINCOLOR)
sphere2(2,"Add",root.CFrame*CFrame.new(math.random(-2000,2000),math.random(-2000,2000),math.random(-2000,2000)),vt(0,0,0),5,5,5,BrickColor.new("Deep orange"))
sphere2(2,"Add",root.CFrame*CFrame.new(math.random(-2000,2000),math.random(-2000,2000),math.random(-2000,2000)),vt(0,0,0),5,5,5,BrickColor.new("Toothpaste"))
slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(5,0.01,5),math.random(500,5000)/250,BrickColor.new("Deep orange"))
slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(5,0.01,5),math.random(500,5000)/250,BrickColor.new("Toothpaste"))
for i = 0, 2 do
slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,math.random(-3,1000),0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(2,0.01,2),math.random(250,750)/250,MAINRUINCOLOR)
end
RH.C0=clerp(RH.C0,cf(1,-0.35,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-35)),.1)
LH.C0=clerp(LH.C0,cf(-1,-0.45,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(35)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.15,0.5,-0.5)*angles(math.rad(92),math.rad(0),math.rad(-67)),.1)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(68)),.1)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end

if MITZ_REANIMATE then

	Humanoid.Animator.Parent = nil
end

--#-------------------------------------------------------#--
 --                        KEY EVENTS                          --
--#-------------------------------------------------------#--

mouse.KeyUp:connect(function(k) 
	
	if k == "v" and ModeOfGlitch == 5 then
		
		shielding = false
	end
	
	if k == "z" and ModeOfGlitch == 5 then
		
		judgement = false
	end
end)

local attacktype = 1

mouse.Button1Down:connect(function() 
	
	if not scriptDisabled then
		
		if attack == false and attacktype == 1 then
			
			attacktype = 2
			attackone()
		elseif attack == false and attacktype == 2 then
			
			attacktype = 3
			attacktwo()
		elseif attack == false and attacktype == 3 then
			
			attacktype = 4
			attackthree()
		elseif attack == false and attacktype == 4 then
			
			attacktype = 1
			attackfour()
		end
	end
end)

mouse.KeyDown:connect(function(k) 
	
	if not scriptDisabled then
		
		if k == "q" and attack == false and ModeOfGlitch ~= 1 then
			
			ModeOfGlitch = 1
			pcall(hideSStar)
			storehumanoidWS = 16
			hum.WalkSpeed = 16
			rainbowmode = false
			chaosmode = false
			newTheme("rbxassetid://614032233",0,1,1)
			RecolorTextAndRename("MAYHEM",Color3.new(0.25,0,0),Color3.new(1,0,0),"Antique")
			MAINRUINCOLOR = BrickColor.new("Really red")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,false)
		end
		
		if k == "b" and attack == false and ModeOfGlitch == 1 and ModeOfGlitch ~= 808080808080808080808080 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 808080808080808080808080
			pcall(showSStar)
			storehumanoidWS = 250
			hum.WalkSpeed = 250
			rainbowmode = false
			chaosmode = false
			CRAZED = true
			CFuncs["Sound"].Create("rbxassetid://763717897", char, 4, 0.75)
			CFuncs["Sound"].Create("rbxassetid://763717897", char, 8, 0.5)
			CFuncs["Sound"].Create("rbxassetid://1192402877", char, 10, 0.5)
			CFuncs["Sound"].Create("rbxassetid://1664711478", char, 6, 0.5)
			RecolorTextAndRename("GALAXY",BrickColor.new("Dark indigo").Color,BrickColor.new("Really blue").Color,"Bodoni")
			newTheme("rbxassetid://250408242",0,1,10)
			MAINRUINCOLOR = BrickColor.new("Really blue")
			bosschatfunc("I'M BACK!",MAINRUINCOLOR.Color,1)
			disably = false
			warnedpeople("GALAXY?!","Arcade",BrickColor.new("Alder").Color,BrickColor.new("Pastel light blue").Color)
			disably = false
			RecolorThing(MAINRUINCOLOR,BrickColor.new("Toothpaste"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0.,BrickColor.new("Deep orange"),0,BrickColor.new("Pastel light blue"),true,true)
		end
		
		if k == "e" and attack == false and ModeOfGlitch ~= 2 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 2
			pcall(hideSStar)
			storehumanoidWS = 16
			hum.WalkSpeed = 16
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("Purity",Color3.new(0,1,1),Color3.new(1,1,1),"Code")
			newTheme("rbxassetid://1539245059",0,1,1.25)
			MAINRUINCOLOR = BrickColor.new("Toothpaste")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,false)
		
		elseif k == "e" and attack == false and ModeOfGlitch ~= 4268 and glitchermode == "Diversial" then
			
			ModeOfGlitch = 4268
			pcall(hideSStar)
			storehumanoidWS = 16
			hum.WalkSpeed = 16
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("CLARITY",BrickColor.new("Pastel light blue").Color,Color3.new(1,1,1),"Fantasy")
			newTheme("rbxassetid://5618312885",0,1,1.5)
			MAINRUINCOLOR = BrickColor.new("Pastel light blue")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,false)
		end	
		
		if k == "b" and attack == false and ModeOfGlitch == 2 and ModeOfGlitch ~= 242424 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 242424
			pcall(hideSStar)
			storehumanoidWS = 16
			hum.WalkSpeed = 16
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("VIRTUAL",Color3.new(0,0,0.65),Color3.new(0,0,2),"Code")
			newTheme("rbxassetid://2650791818",0,0.97,0.97)
			MAINRUINCOLOR = BrickColor.new("Really blue")
			RecolorThing(MAINRUINCOLOR,BrickColor.new("Baby blue"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR)
		end
		
		if k == "n" and attack == false and ModeOfGlitch == 2 and ModeOfGlitch ~= 4367677813 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 4367677813
			storehumanoidWS = 225
			hum.WalkSpeed = 225
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("SHD",Color3.new(0.75,0.9,1),BrickColor.new("Pink").Color,"Arcade")
			newTheme("rbxassetid://363284685",0,1.01,1.25)
			MAINRUINCOLOR = BrickColor.new("Baby blue")
			RecolorThing(MAINRUINCOLOR,BrickColor.new("Pink"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
		end
		
		if k == "m" and attack == false and ModeOfGlitch == 2 and ModeOfGlitch ~= 11111 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 11111
			pcall(hideSStar)
			storehumanoidWS = 50
			hum.WalkSpeed = 50
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("CRYSTAL",Color3.new(1,1,1),BrickColor.new("Pastel light blue").Color,"Code")
			newTheme("rbxassetid://1861780345",0,1,1)
			MAINRUINCOLOR = BrickColor.new("Pastel light blue")
			RecolorThing(MAINRUINCOLOR,BrickColor.new("White"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR)
		end
		
		if k == "r" and attack == false and ModeOfGlitch ~= 3 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 3
			pcall(hideSStar)
			storehumanoidWS = 16
			hum.WalkSpeed = 16
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("CORRUPTION",Color3.new(0,0,0),Color3.new(0.35,0,1),"Antique")
			newTheme("rbxassetid://303570180",0.6,0.6,0.6)
			MAINRUINCOLOR = BrickColor.new("Royal purple")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,false)
			
		elseif k == "r" and attack == false and ModeOfGlitch ~= 1005 and glitchermode == "Diversial" then
			
			ModeOfGlitch = 1005
			pcall(hideSStar)
			storehumanoidWS = 16
			hum.WalkSpeed = 16
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("Memer",BrickColor.new("Really blue").Color,BrickColor.new("Toothpaste").Color,"Fantasy")
			newTheme("rbxassetid://0",0,1,1.5)
			MAINRUINCOLOR = BrickColor.new("Really blue")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,false)
		end
			
		
		if k == "n" and attack == false and ModeOfGlitch == 3 and ModeOfGlitch ~= 103 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 103
			pcall(showSStar)
			storehumanoidWS = 200
			hum.WalkSpeed = 200
			rainbowmode = false
			chaosmode = false
			CRAZED = false
			RecolorTextAndRename("ANCIENT",BrickColor.new("Really black").Color,BrickColor.new("New Yeller").Color,"SciFi")
			newTheme("rbxassetid://256251217",0,1.02,1.2)
			MAINRUINCOLOR = BrickColor.new("Gold")
			disably = false
			warnedpeople("PAST PRESENT AND FUTURE","Arcade",BrickColor.new("White").Color,BrickColor.new("New Yeller").Color)
			disably = true
			RecolorThing(MAINRUINCOLOR,BrickColor.new("New Yeller"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0,BrickColor.new("White"),0,BrickColor.new("Black"),true,true)
		end
		
		if k == "m" and attack == false and ModeOfGlitch == 3 and glitchermode == "Shadow" then
			
			attack = true
			ModeOfGlitch = 3
			hum.WalkSpeed = 0
			newTheme("rbxassetid://2368327428",9,1,1.25)
			wait(2)
			
			for i = 0, 15, 0.1 do
				
				swait()
				RH.C0=clerp(RH.C0,cf(1, -1 - 0.025 * math.cos(sine/12), -0.01)*angles(math.rad(0),math.rad(83),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.1)
				LH.C0=clerp(LH.C0,cf(-1, -1 - 0.05 * math.cos(sine/12), -0.01)*angles(math.rad(0),math.rad(-83),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0, 0, 0 + 0.05 * math.cos(sine / 12))*angles(math.rad(0),math.rad(0),math.rad(0)),0.1)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0, 0, 0 + ((1) - 1))*angles(math.rad(15 - 2.5 * math.sin(sine / 12)),math.rad(0),math.rad(0)),0.1)
				RW.C0=clerp(RW.C0,cf(1,0.35 + 0.125 * math.cos(sine / 12),-0.45)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
				LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.125 * math.cos(sine / 12),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
			end
			
			sphere(2,"Add",root.CFrame,vt(0,0,0),12.5,MAINRUINCOLOR)
			sphere(3,"Add",root.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
			sphere(1,"Add",root.CFrame,vt(0,0,0),7.5,MAINRUINCOLOR)
			sphere(2,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
			sphere(3,"Add",root.CFrame,vt(0,0,0),2.5,MAINRUINCOLOR)
			CFuncs["Sound"].Create("rbxassetid://847061203", char, 2,1)
			ModeOfGlitch = 146536
			pcall(hideSStar)
			storehumanoidWS = 12
			hum.WalkSpeed = 12
			rainbowmode = false
			chaosmode = false
			CRAZED = false
			RecolorTextAndRename("VANTA-X",Color3.new(0.15,0.15,0.15),Color3.new(0.35,0,1),"Fantasy")
			MAINRUINCOLOR = BrickColor.new("Gold")
			RecolorThing(MAINRUINCOLOR,BrickColor.new("Gold"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
			attack = false
		end
		
		if k == "t" and attack == false and ModeOfGlitch ~= 4 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 4
			pcall(hideSStar)
			storehumanoidWS = 16
			hum.WalkSpeed = 16
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("SOLITUDE",Color3.new(0,0,0),Color3.new(0,0,0),"Antique")
			newTheme("rbxassetid://723652641",0,1,1.5)
			MAINRUINCOLOR = BrickColor.new("Really black")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,false)
		
		elseif k == "t" and attack == false and ModeOfGlitch ~= 6 and glitchermode == "Diversial" then
			
			ModeOfGlitch = 10110
			pcall(hideSStar)
			storehumanoidWS = 16
			hum.WalkSpeed = 16
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("BINARY",Color3.new(0,1,0),Color3.new(1,1,1),"Fantasy")
			newTheme("rbxassetid://1847815456",0,1,1.5)
			MAINRUINCOLOR = BrickColor.new("Lime green")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
		end
		
		if k == "b" and attack == false and ModeOfGlitch == 4 and ModeOfGlitch ~= 453453484635345 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 453453484635345
			storehumanoidWS = 25
			hum.WalkSpeed = 25
			rainbowmode = false
			chaosmode = false
			CRAZED = false
			RecolorTextAndRename("DEATH",Color3.new(0.2,0.2,0.2),Color3.new(0,0,0),"Bodoni")
			newTheme("rbxassetid://318062766",0,1.01,0.85)
			MAINRUINCOLOR = BrickColor.new("Really black")
			chatfunc("Death is not an escape..",MAINRUINCOLOR.Color,"Inverted","Arcade",1.2)
			RecolorThing(MAINRUINCOLOR,BrickColor.new("Dark stone grey"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
		end
		
		if k == "n" and attack == false and ModeOfGlitch == 4 and ModeOfGlitch ~= 999999999556 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 999999999556
			
			RiddleMeThisRiddleMeThat()
			
			pcall(showStars)
			pcall(showSStar)
			pcall(showRing)
			pcall(showExtras)
		end
		
		if k == "m" and attack == false and ModeOfGlitch ==  4 and ModeOfGlitch ~= 6666666666666666 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 6666666666666666
			pcall(showSStar)
			storehumanoidWS = 1024
			hum.WalkSpeed = 1024
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("Shattered",BrickColor.new("Black metallic").Color,Color3.new(0.75,0,1), "Fantasy")
			newThemeCust("rbxassetid://4755976868",0,1,5)
			MAINRUINCOLOR = BrickColor.new("Royal purple")
			warnedpeople("BLACKMAGIK POWER!","Fantasy",BrickColor.new("Black metallic").Color,MAINRUINCOLOR.Color)
			bosschatfunc("I'M GOING TO SHRED THE WHOLE WORLD!", MAINRUINCOLOR.Color, 2) 
			RecolorThing(BrickColor.new("Black metallic"),BrickColor.new("Black metallic"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0,MAINRUINCOLOR,0,MAINRUINCOLOR,true)

		end
		
		if k == "n" and attack == false and ModeOfGlitch == 6666666666666666 and ModeOfGlitch ~= 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999

			theDimensions()

			pcall(showSStar)

		end
		
		if k == "n" and attack == false and ModeOfGlitch ~= 66669746666974 and ModeOfGlitch == 10110 and glitchermode == "Diversial" then
			
			ModeOfGlitch = 66669746666974
			pcall(hideSStar)
			storehumanoidWS = 200
			hum.WalkSpeed = 200
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("error",Color3.new(1,1,1),Color3.new(1,1,1),"Fantasy")
			newTheme("rbxassetid://1138145518",0,1,1.5)
			MAINRUINCOLOR = BrickColor.new("White")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0,MAINRUINCOLOR,0,MAINRUINCOLOR,true)
		end
		
		if k == "y" and attack == false and ModeOfGlitch ~= 5 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 5
			pcall(hideSStar)
			storehumanoidWS = 16
			hum.WalkSpeed = 16
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("DIVINITY",Color3.new(1,1,1),Color3.new(1,1,0.5),"SciFi")
			newTheme("rbxassetid://661079869",0,1,1)
			MAINRUINCOLOR = BrickColor.new("Bright yellow")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
		end

		if k == "n" and attack == false and ModeOfGlitch == 5 and ModeOfGlitch ~= 1264532489 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 1264532489
			pcall(showSStar)
			storehumanoidWS = 250
			hum.WalkSpeed = 250
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("FALLEN",Color3.new(0.5,1,1),BrickColor.new("Deep orange").Color,"Antique")
			newTheme("rbxassetid://1505487022",0,1.01,1.25)
			MAINRUINCOLOR = BrickColor.new("Pastel green")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0.5,BrickColor.new("Deep orange"),0.5,BrickColor.new("Gold"),true,true)
		end
		
		if k == "m" and attack == false and ModeOfGlitch == 5 and ModeOfGlitch ~= 18446744073709551615 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 18446744073709551615
			pcall(showSStar)
			storehumanoidWS = 15
			hum.WalkSpeed = 15
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("AURATE",BrickColor.new("New Yeller").Color,Color3.new(1, 1, 1),"Fantasy")
			newTheme("rbxassetid://5534043927",0,1.01,1.25)
			MAINRUINCOLOR = BrickColor.new("New Yeller")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0,MAINRUINCOLOR,0,MAINRUINCOLOR,true)
			bosschatfunc("That was fun.",MAINRUINCOLOR.Color,1)
		end
		
		if k == "u" and attack == false and ModeOfGlitch ~= 6 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 6
			pcall(hideSStar)
			storehumanoidWS = 100
			hum.WalkSpeed = 100
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("EQUINOX",Color3.new(0,0,0),Color3.new(1,1,1),"Fantasy")
			newTheme("rbxassetid://1347011178",0,1.01,1.25)
			MAINRUINCOLOR = BrickColor.new("White")
			RecolorThing(MAINRUINCOLOR,BrickColor.new("Really black"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
		end

		if k == "m" and attack == false and ModeOfGlitch == 6 and ModeOfGlitch ~= 420 and glitchermode == "Shadow" then
			
			attack = true
			newTheme("rbxassetid://1369263130",0,1,1.25)
			attack = false
			ModeOfGlitch = 420
			pcall(showSStar)
			storehumanoidWS = 12
			hum.WalkSpeed = 12
			rainbowmode = false
			chaosmode = false
			Error = false
			RecolorTextAndRename("UNSTABLE",Color3.new(0,0,0),Color3.new(1,1,1),"Antique")
			disably = true
			warnedpeople("AAAAAAGH!","Arcade",BrickColor.new("Red").Color,MAINRUINCOLOR.Color)
			disably = false
			MAINRUINCOLOR = BrickColor.new("Really black")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0,MAINRUINCOLOR,0,MAINRUINCOLOR,true,true)
		end

		if k == "n" and attack == false and ModeOfGlitch == 420 and ModeOfGlitch ~= 99999999999999999999999999 and glitchermode == "Shadow" then
			
			attack = true
			ModeOfGlitch = 99999999999999999999999999
			storehumanoidWS = 150
			hum.WalkSpeed = 150
			rainbowmode = false
			chaosmode = false
			Error = false
			RecolorTextAndRename("EXTIRPATE",Color3.new(0,0,0),Color3.new(1,1,1),"Fantasy")
			newTheme("rbxassetid://6044311928",0,1,5)
			MAINRUINCOLOR = BrickColor.new("Really black")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0,MAINRUINCOLOR,0,MAINRUINCOLOR,true,true)
			attack = false
		end

		if k == "p" and attack == false and ModeOfGlitch ~= 10 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 10
			pcall(hideSStar)
			storehumanoidWS = 16
			hum.WalkSpeed = 16
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("gLiTcHy",Color3.new(0,0,0),Color3.new(1,1,1), "Fantasy")
			newTheme("rbxassetid://474074203",0,.93,1.25) -- 474074203, 2656505560
			MAINRUINCOLOR = BrickColor.new("Really black")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
		end

		if k == "f" and attack == false and ModeOfGlitch ~= 8 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 8
			pcall(hideSStar)
			storehumanoidWS = 140
			hum.WalkSpeed = 140
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("DESTINY",Color3.new(1,1,1),BrickColor.new("Alder").Color,"Code")
			newTheme("rbxassetid://1495032271",0,1.01,1.25)
			MAINRUINCOLOR = BrickColor.new("Alder")
			warnedpeople("Destiny is here!","Fantasy",BrickColor.new("White").Color,MAINRUINCOLOR)
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
		end
		
		if k == "n" and attack == false and ModeOfGlitch == 8 and ModeOfGlitch ~= 676767 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 676767
			pcall(showSStar)
			storehumanoidWS = 200
			hum.WalkSpeed = 200
			rainbowmode = false
			chaosmode = false
			ASTRA = false
			dragon = true
			vis = false
			RecolorTextAndRename("OMEGA",BrickColor.new("Really black").Color,BrickColor.new("Bright bluish green").Color,"SciFi")
			newTheme("rbxassetid://643309199",0,1.01,1.25)
			MAINRUINCOLOR = BrickColor.new("Bright bluish green")
			RecolorThing(BrickColor.new("Bright bluish green"),BrickColor.new("Black"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0.3,BrickColor.new("Bright bluish green"),0.3,BrickColor.new("Black"),true,true)
		end
		
		if k == "m" and attack == false and ModeOfGlitch == 8 and ModeOfGlitch ~= 8889 and glitchermode == "Shadow" then
			
			attack = true
			ModeOfGlitch = 8889
			storehumanoidWS = 180
			hum.WalkSpeed = 180
			rainbowmode = false
			chaosmode = false
			newThemeCust("rbxassetid://1359036559",0,1.01,1.25)
			MAINRUINCOLOR = BrickColor.new("Lilac")
			
			for i = 0, 30 do
				
				PixelBlockNeg(1,math.random(1,2),"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
				PixelBlockNeg(1,math.random(1,2),"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,MAINRUINCOLOR,0)
				
				RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
				LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(-5 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.1)
				RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(70 + 2.5 * math.cos(sine / 28))),.1)
				LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(-70 - 2.5 * math.cos(sine / 28))),.1)
				
				wait()
			end

			local orbm = Instance.new("SpecialMesh", orb)
			orbm.MeshType = "Sphere"
			orbm.Name = "SizeMesh"
			orbm.Scale = vt(0,0,0)
			
			CameraEnshaking(10,2.5)
			CFuncs["Sound"].Create("rbxassetid://741272936", char, 1, 1)
			CFuncs["Sound"].Create("rbxassetid://164881112", char, 1, 1)
			CFuncs["Sound"].Create("rbxassetid://1192402877", char, 1, 1)
			CFuncs["Sound"].Create("rbxassetid://429123896", char, 1, 0.85)
			CFuncs["Sound"].Create("rbxassetid://1208650519", char, 1, 1)

			sphere(1,"Add",char.Torso.CFrame,vt(orbm.Scale.x,orbm.Scale.y,orbm.Scale.z),1,MAINRUINCOLOR)
			sphere(2,"Add",char.Torso.CFrame,vt(orbm.Scale.x,orbm.Scale.y,orbm.Scale.z),2,MAINRUINCOLOR)

			for i = 0, 49 do
				
				PixelBlock(1,math.random(1,30),"Add",char.Torso.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,0.08,MAINRUINCOLOR,0)
			end

			for i = 0, 9 do

				sphereMK(1,2.5,"Add",char.Torso.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,50,-0.05,MAINRUINCOLOR,0)
				sphereMK(2,5,"Add",char.Torso.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,50,-0.05,MAINRUINCOLOR,0)
			end

			for i = 0, 49 do

				sphereMK(1,3,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,200,-1,MAINRUINCOLOR,0)
				sphereMK(2,6,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,150,-0.5,MAINRUINCOLOR,0)
				sphereMK(3,9,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,100,-0.5,MAINRUINCOLOR,0)
				sphereMK(4,12,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,50,-0.5,MAINRUINCOLOR,0)
			end

			RecolorTextAndRename("CALAMITY",BrickColor.new("Alder").Color,BrickColor.new("Lilac").Color,"Antique")
			bosschatfunc("It's not over yet!",MAINRUINCOLOR.Color,1)
			RecolorThing(MAINRUINCOLOR,BrickColor.new("Alder"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
			attack = false
		end
		
		if k == "n" and attack == false and ModeOfGlitch == 8889 and glitchermode == "Shadow" then
			
			attack = true
			bosschatfunc("It's not over yet, kid.",MAINRUINCOLOR.Color,1)
			wait(2)
			newThemeCust("rbxassetid://1504604335",0,1,1)
			hum.WalkSpeed = 0
			MAINRUINCOLOR = BrickColor.new("Royal purple")
			
			for i = 0, 24, 0.1 do
				
				swait()
				sphereMK(1,-2,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,15,-0.025,MAINRUINCOLOR,100)
				RH.C0=clerp(RH.C0,cf(1,-0.05,-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.1)
				LH.C0=clerp(LH.C0,cf(-1,-0.5,-0.25)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(20 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0)),.1)
				RW.C0=clerp(RW.C0,cf(0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(-20 + 2.5 * math.cos(sine / 28))),.1)
				LW.C0=clerp(LW.C0,cf(-0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(20 - 2.5 * math.cos(sine / 28))),.1)
			end
			
			CameraEnshaking(1,1)
			sphere(5,"Add",root.CFrame,vt(0,0,0),2.5,MAINRUINCOLOR)
			CFuncs["Sound"].Create("rbxassetid://847061203", char, 0.5,1)
			
			wait(0.55)
			
			CameraEnshaking(1,2)
			sphere(5,"Add",root.CFrame,vt(0,0,0),7.5,MAINRUINCOLOR)
			sphere(5,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
			sphere(5,"Add",root.CFrame,vt(0,0,0),2.5,MAINRUINCOLOR)
			CFuncs["Sound"].Create("rbxassetid://847061203", char, 1,1)
			
			wait(0.55)
			
			CameraEnshaking(1,3)
			sphere(5,"Add",root.CFrame,vt(0,0,0),12.5,MAINRUINCOLOR)
			sphere(5,"Add",root.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
			sphere(5,"Add",root.CFrame,vt(0,0,0),7.5,MAINRUINCOLOR)
			sphere(5,"Add",root.CFrame,vt(0,0,0),5,MAINRUINCOLOR)
			sphere(5,"Add",root.CFrame,vt(0,0,0),2.5,MAINRUINCOLOR)
			CFuncs["Sound"].Create("rbxassetid://847061203", char, 2,1)
			
			wait(0.55)
			
			CameraEnshaking(10,5)
			CFuncs["Sound"].Create("rbxassetid://741272936", char, 1, 1)
			CFuncs["Sound"].Create("rbxassetid://164881112", char, 1, 1)
			CFuncs["Sound"].Create("rbxassetid://1192402877", char, 1, 1)
			CFuncs["Sound"].Create("rbxassetid://429123896", char, 1, 0.85)
			CFuncs["Sound"].Create("rbxassetid://1208650519", char, 1, 1)
			
			sphere(1,"Add",root.CFrame,vt(0,0,0),2,MAINRUINCOLOR)
			sphere(2,"Add",root.CFrame,vt(0,0,0),4,MAINRUINCOLOR)
			sphere(3,"Add",root.CFrame,vt(0,0,0),6,MAINRUINCOLOR)
			sphere(4,"Add",root.CFrame,vt(0,0,0),8,MAINRUINCOLOR)
			sphere(5,"Add",root.CFrame,vt(0,0,0),10,MAINRUINCOLOR)
			sphere(6,"Add",root.CFrame,vt(0,0,0),12,MAINRUINCOLOR)
			sphere(7,"Add",root.CFrame,vt(0,0,0),14,MAINRUINCOLOR)
			sphere(8,"Add",root.CFrame,vt(0,0,0),16,MAINRUINCOLOR)
			sphere(9,"Add",root.CFrame,vt(0,0,0),18,MAINRUINCOLOR)
			sphere(10,"Add",root.CFrame,vt(0,0,0),20,MAINRUINCOLOR)
			
			for i = 0, 49 do
				
				sphereMK(1,3,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,200,-1,MAINRUINCOLOR,0)
				sphereMK(2,6,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,150,-0.5,MAINRUINCOLOR,0)
				sphereMK(3,9,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,100,-0.5,MAINRUINCOLOR,0)
				sphereMK(4,12,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),50,50,50,-0.5,MAINRUINCOLOR,0)
			end
			
			ModeOfGlitch = 88893333388
			pcall(showSStar)
			
			wait(1.2)
			
			storehumanoidWS = 200
			hum.WalkSpeed = 200
			rainbowmode = false
			chaosmode = false
			CRAZED = false
			RecolorTextAndRename("CATASTROPHE",Color3.new(0.5,0,1),Color3.new(0.75,0,1), "Fantasy")
			bosschatfunc("CATASTROPHIC ACSEND!",MAINRUINCOLOR.Color,1)
			MAINRUINCOLOR = BrickColor.new("Royal purple")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0,BrickColor.new("Lilac"),0,BrickColor.new("Really blue"),0,BrickColor.new("Navy blue"),true,true)
			attack = false
		end

		if k == "g" and attack == false and ModeOfGlitch ~= 9 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 9
			pcall(hideSStar)
			storehumanoidWS = 150
			hum.WalkSpeed = 150
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("INFESTATION",Color3.new(0,1,0),Color3.new(0.8,1,0.5),"Bodoni")
			newTheme("rbxassetid://2573921783",0,1.01,1.25)
			MAINRUINCOLOR = BrickColor.new("Lime green")
			RecolorThing(MAINRUINCOLOR,BrickColor.new("Forest green"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
		end
		
		if k == "n" and attack == false and ModeOfGlitch == 9 and ModeOfGlitch ~= 1055 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 1055
			storehumanoidWS = 50
			hum.WalkSpeed = 50
			rainbowmode = false
			chaosmode = false
			insanitymode = false
			glitching = false
			RecolorTextAndRename("Pandora",BrickColor.new("White").Color,BrickColor.new("Lavender").Color,"Code")
			newTheme("rbxassetid://1382488262",0,1,1.25)
			MAINRUINCOLOR = BrickColor.new("Lavender")
			RecolorThing(MAINRUINCOLOR,BrickColor.new("White"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,false,false)
		end
		
		if k == "m" and attack == false and ModeOfGlitch == 9 and ModeOfGlitch ~= 55469696922 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 55469696922
			storehumanoidWS = 12
			hum.WalkSpeed = 12
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("PLAGUES",Color3.new(0,0.3,0),BrickColor.new("Lime green").Color,"Code")
			newTheme("rbxassetid://577543579",0,1.005,1.25)
			MAINRUINCOLOR = BrickColor.new("Lime green")
			chatfunc("The plague is already inside..",MAINRUINCOLOR.Color,"Inverted","Arcade",1.7)
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
		end
		
		if k == "h" and attack == false and ModeOfGlitch ~= 10100110110010101100011011100100110010101110100 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 10100110110010101100011011100100110010101110100
			rainbowmode = false
			chaosmode = true
			attack = true
			newTheme("rbxassetid://1369263130",0,1,1.25)
			attack = false
			pcall(hideSStar)
			storehumanoidWS = 16
			hum.WalkSpeed = 16
			tl1.Color = ColorSequence.new(MAINRUINCOLOR.Color)
			tl2.Color = ColorSequence.new(MAINRUINCOLOR.Color)
			tl3.Color = ColorSequence.new(MAINRUINCOLOR.Color)
			RecolorTextAndRename("CHAOS",Color3.new(0,0,0),BrickColor.random().Color,"Arcade")
			MAINRUINCOLOR = BrickColor.new("Really black")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
			
			for i, v in pairs(mw1:GetChildren()) do
				if v:IsA("Part") then
					v.Transparency = 0.75
					v.BrickColor = BrickColor.random()
					v.Material = "Neon"
				end
			end

			for i, v in pairs(m2:GetChildren()) do
				if v:IsA("Part") then
					v.BrickColor = BrickColor.random()
					v.Material = "Neon"
				end
			end
		end

		if k == "n" and attack == false and ModeOfGlitch == 10100110110010101100011011100100110010101110100 and ModeOfGlitch ~= 23897456237845 and glitchermode == "Shadow" then
			
			attack = true
			ModeOfGlitch = 23897456237845
			pcall(showSStar)
			
			storehumanoidWS = 500
			hum.WalkSpeed = 500
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("CRAZED",BrickColor.new("Really black").Color,BrickColor.new("Navy blue").Color,"Code")
			newTheme("rbxassetid://719008519",0,1.02,1.25)
			MAINRUINCOLOR = BrickColor.new("Navy blue")
			RecolorThing(MAINRUINCOLOR,BrickColor.new("Really black"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0,MAINRUINCOLOR,0,MAINRUINCOLOR,true)
			
			Crazed = true
			
			warnedpeople("IT'S ALL OVER NOW!","Fantasy",BrickColor.new("Black").Color,MAINRUINCOLOR.Color)
			
			wait(2)
			
			Crazed = false
			
			attack = false
			
		end

		if k == "m" and attack == false and ModeOfGlitch == 10100110110010101100011011100100110010101110100 and ModeOfGlitch ~= 666666 and glitchermode == "Shadow" then
			
			storehumanoidWS = 16
			hum.WalkSpeed = 16
			rainbowmode = false
			chaosmode = true
			attack = true
			tl1.Color = ColorSequence.new(BrickColor.random().Color)
			tl2.Color = ColorSequence.new(BrickColor.random().Color)
			tl3.Color = ColorSequence.new(BrickColor.random().Color)
			newTheme("rbxassetid://919231299",0,1,1)
			hum.WalkSpeed = 0
			CFuncs["Sound"].Create("rbxassetid://136007472", root, 2.5, 1.25)
			
			for i = 0,4,0.1 do
				
				swait()
				sphereMK(2.5,-1.5,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3.5,3.5,45,-0.035,MAINRUINCOLOR,100)
				RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.2)
				LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.2)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(30),math.rad(0),math.rad(0)),.2)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30),math.rad(0),math.rad(0 - 5 * math.cos(sine / 0.2))),.2)
				RW.C0=clerp(RW.C0,cf(1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(-50)),.2)
				LW.C0=clerp(LW.C0,cf(-1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(50)),.2)
			end
			
			for i = 0,8,0.1 do
				
				swait()
				sphereMK(2.5,-1.5,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3.5,3.5,45,-0.035,MAINRUINCOLOR,100)
				sphereMK(2.5,-1.5,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3.5,3.5,45,.035,MAINRUINCOLOR,0)
				RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.2)
				LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.2)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(30),math.rad(0),math.rad(0)),.2)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30),math.rad(0),math.rad(0 - 5 * math.cos(sine / 0.2))),.2)
				RW.C0=clerp(RW.C0,cf(1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(-50)),.2)
				LW.C0=clerp(LW.C0,cf(-1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(50)),.2)
			end

			for i = 0,3,0.1 do
				
				swait()
				sphereMK(2.5,-1.5,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3.5,3.5,45,-0.035,MAINRUINCOLOR,100)
				RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.2)
				LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.2)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(30),math.rad(0),math.rad(0)),.2)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30),math.rad(0),math.rad(0 - 5 * math.cos(sine / 0.2))),.2)
				RW.C0=clerp(RW.C0,cf(1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(-50)),.2)
				LW.C0=clerp(LW.C0,cf(-1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(50)),.2)
			end
			
			CFuncs["Sound"].Create("rbxassetid://206082327", root, 2.5,1)
			CFuncs["Sound"].Create("rbxassetid://847061203", root, 5,1)
			CFuncs["Sound"].Create("rbxassetid://239000203", root, 2.5,1)
			CFuncs["Sound"].Create("rbxassetid://579687077", root, 2.5,0.75)
			CameraEnshaking(5,2.5)
			MAINRUINCOLOR = BrickColor.new("Black")
			sphere(2.5,"Add",root.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
			
			for i = 0, 49 do
				
				PixelBlock(1,math.random(1,20),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.04,MAINRUINCOLOR,0)
			end
			
			for i = 0,3,0.1 do
				
				sphereMK(2.5,-1,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,25,-0.025,MAINRUINCOLOR,0)
			end
			
			for i = 0,2,0.1 do
				
				swait()
				RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.2)
				LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.2)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(-30),math.rad(0),math.rad(0)),.2)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-30),math.rad(0),math.rad(0 - 10 * math.cos(sine / 0.2))),.2)
				RW.C0=clerp(RW.C0,cf(1.45,0.4,0)*angles(math.rad(-20),math.rad(0 - 2 * math.cos(sine / 0.2)),math.rad(80 + 2 * math.cos(sine / 0.2)))*angles(0,0,math.rad(0 - 10 * math.cos(sine / 0.2))),.2)
				LW.C0=clerp(LW.C0,cf(-1.45,0.4,0)*angles(math.rad(-20),math.rad(0 + 2 * math.cos(sine / 0.2)),math.rad(-80 - 2 * math.cos(sine / 0.2)))*angles(0,0,math.rad(0 - 10 * math.cos(sine / 0.2))),.2)
			end
			
			hum.WalkSpeed = storehumanoidWS
			ModeOfGlitch = 666666
			RecolorTextAndRename((ModeOfGlitch == 666666 and "INSANITY" or "CHAOS"),Color3.new(0,0,0),BrickColor.random().Color, (ModeOfGlitch == 666666 and "Fantasy" or "Arcade"))
			MAINRUINCOLOR = BrickColor.new("Really black")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0,MAINRUINCOLOR,0,MAINRUINCOLOR,true)
			pcall(hideSStar)
			attack = false
		end

		if k == "j" and attack == false and ModeOfGlitch ~= 67966 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 67966
			pcall(hideSStar)
			storehumanoidWS = 16
			hum.WalkSpeed = 16
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("LOVE",Color3.new(1,0,1),Color3.new(1,0.5,1),"Highway")
			newTheme("rbxassetid://736003449",0,1,1.75)
			MAINRUINCOLOR = BrickColor.new("Hot pink")
			disably = false
			warnedpeople("Love","Antique",BrickColor.new("White").Color,BrickColor.new("Pink").Color)
			disably = true
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,false)
		end

		if k == "n" and attack == false and ModeOfGlitch == 67966 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 69746974
			hum.WalkSpeed = 16
			rainbowmode = false
			chaosmode = false
			Error = false
			CRAZED = false
			RecolorTextAndRename("Lust",BrickColor.new("Hot pink").Color,BrickColor.new("Hot pink").Color,"Fantasy")
			newTheme("rbxassetid://391089144",0,1,1.25)
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
		end
		
		if k == "m" and attack == false and ModeOfGlitch == 67966 and ModeOfGlitch ~= 61 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 61
			pcall(hideSStar)
			storehumanoidWS = 16
			hum.WalkSpeed = 16
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("NANODEATH",Color3.new(0.25,0,0.1),BrickColor.new("Hot pink").Color,"Antique")
			newTheme("rbxassetid://2234873423",0,1,1)
			MAINRUINCOLOR = BrickColor.new("Pink")
			RecolorThing(MAINRUINCOLOR,BrickColor.new("Hot pink"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
		end
		
		if k == "b" and attack == false and ModeOfGlitch == 69746974 and glitchermode == "Shadow" then
			
			ModeOfGlitch = -5
			storehumanoidWS = 16
			hum.WalkSpeed = 16
			rainbowmode = false
			chaosmode = false
			Error = false
			CRAZED = false
			RecolorTextAndRename("Loost",Color3.new(1,1,1),BrickColor.new("Hot pink").Color,"Fantasy")
			newTheme("rbxassetid://4496584715",0,1,1.25) -- 685323634
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
		end
		
		if k == "k" and attack == false and ModeOfGlitch ~= 2335 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 2335
			pcall(hideSStar)
			storehumanoidWS = 250
			hum.WalkSpeed = 250
			rainbowmode = true
			chaosmode = false
			RecolorTextAndRename("RAINBOW",Color3.new(0.5,1,1),BrickColor.new("White").Color,"Fantasy")
			newTheme("rbxassetid://1747430851",0,1,1.15)
			MAINRUINCOLOR = BrickColor.new("Pastel green")
			RecolorThing(BrickColor.new("Deep orange"),BrickColor.new("Toothpaste"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,BrickColor.new("Deep orange"),true,false)
		end
		
		if k == "m" and attack == false and ModeOfGlitch == 2335 and ModeOfGlitch ~= 911 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 911
			storehumanoidWS = 250
			hum.WalkSpeed = 250
			rainbowmode = true
			chaosmode = false
			disably = false
			warnedpeople("RAINBOW X","Highway",Color3.new(1,0,1),Color3.new(1,1,1))
			disably = true
			RecolorTextAndRename("RAINBOW X",Color3.new(0.5,1,1),BrickColor.new("Really red").Color,"Fantasy")
			newTheme("rbxassetid://147930134",0,1,1.15)
			MAINRUINCOLOR = BrickColor.new("Pastel green")
			RecolorThing(BrickColor.new("Deep orange"),BrickColor.new("Toothpaste"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,BrickColor.new("Deep orange"),true,false)
		end
		
		if k == "l" and attack == false and ModeOfGlitch ~= 11 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 11
			pcall(hideSStar)
			storehumanoidWS = 100
			hum.WalkSpeed = 100
			rainbowmode = false
			chaosmode = false
			RecolorTextAndRename("BRILLIANCE",Color3.new(0,0,0),Color3.new(1,1,1),"Fantasy")
			newTheme("rbxassetid://286050652",0,1.01,1.25)
			MAINRUINCOLOR = BrickColor.new("White")
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true)
		end

		if k == "]" and attack == false and ModeOfGlitch ~= 1234567890 and glitchermode == "Shadow" then
			
			ModeOfGlitch = 1234567890
			attack = true
			pcall(showSStar)
			storehumanoidWS = 200
			hum.WalkSpeed = 200
			rainbowmode = false
			chaosmode = false
			CRAZED = false
			RecolorTextAndRename("MULTI-DIVERSIAL",Color3.new(0.5,0,1),Color3.new(1,1,1), "Fantasy")
			MAINRUINCOLOR = BrickColor.new("Royal purple")
			newTheme("rbxassetid://4791931504",0,1,2.5)
			RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0,MAINRUINCOLOR,0,MAINRUINCOLOR,0,MAINRUINCOLOR,true,true)
			attack = false
		end
		
		if rainbowmode == true then
			
			if ModeOfGlitch == 2335 then
				
				RecolorTextAndRename("RAINBOW",Color3.new(r/255,g/255,b/255),Color3.new(r/255,g/255,b/255),"Fantasy")
			
			elseif ModeOfGlitch == 911 then
				
				RecolorTextAndRename("RAINBOW X",Color3.new(r/255,g/255,b/255),Color3.new(r/255,g/255,b/255),"Fantasy")
			end
			
			MAINRUINCOLOR = BrickColor.new(r/255,g/255,b/255)
			modet.TextColor3 = Color3.new(r/255,g/255,b/255)
			refec.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
			
			tr1.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
			tr2.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
			tr3.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
			tl1.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
			tl2.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
			tl3.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
			
			for i, v in pairs(m:GetChildren()) do
				
				if v:IsA("Part") then
					
					v.Color = Color3.new(r/255,g/255,b/255)
				end
			end
			
			for i, v in pairs(m2:GetChildren()) do
				
				if v:IsA("Part") then
					
					v.Color = Color3.new(r/255,g/255,b/255)
				end
			end
			
			for i, v in pairs(m3:GetChildren()) do
				
				if v:IsA("Part") then
					
					v.Color = Color3.new(r/255,g/255,b/255)
				end
			end
			
			for i, v in pairs(mw1:GetChildren()) do
				
				if v:IsA("Part") then
					
					v.Color = Color3.new(r/255,g/255,b/255)
					v.Material = "Neon"
				end
			end
			
			for i, v in pairs(mw2:GetChildren()) do
				
				if v:IsA("Part") then
					
					v.Color = Color3.new(r/255,g/255,b/255)
					v.Material = "Neon"
				end
			end
			
		end

		if k == "m" and attack == false and ModeOfGlitch == 1 and ActiveGia == false then
			
			THEHELLITSTHATBIG()
			
		elseif k == "m" and attack == false and ModeOfGlitch == 1 and ActiveGia == true then
			
			removelol()
		end

		
		
		if k == "m" and attack == false and ModeOfGlitch == -5 then
			
			FuckMeSidewaysAndCallMeGay()
			
		elseif k == "m" and attack == false and ModeOfGlitch == 1 then
			
			ExtinctiveHeartbreak()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 2 then
			
			HeavenlyDisk()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 6666666666666666 then
			
			StarfallEX()
			
		elseif k == "x" and attack == false and ModeOfGlitch == 6666666666666666 then
			
			bosschatfunc("TAKE THIS!", MAINRUINCOLOR.Color, 2)

			StarDivision()
			
		elseif k == "c" and attack == false and ModeOfGlitch == 6666666666666666 then
			
			bosschatfunc("DARKNESS SWORD!", MAINRUINCOLOR.Color, 2)

			DimensionsSword()
			
		elseif k == "v" and attack == false and ModeOfGlitch == 6666666666666666 then
			
			bosschatfunc("BLACK MAGIK SWORDS!", MAINRUINCOLOR.Color, 2)

			DimensionsTargetSword()
			
		elseif k == "b" and attack == false and ModeOfGlitch == 6666666666666666 then
			
			bosschatfunc("LET'S SHRED THIS WORLD.", MAINRUINCOLOR.Color, 2)

			DimensionsCollapse()
			
		elseif k == "x" and attack == false and ModeOfGlitch == 2 then
			
			Fireball()
			
		elseif k == "v" and attack == false and ModeOfGlitch == 18446744073709551615 then
			
			Fireball()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 3 then
			
			CorruptionEvent()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 10100110110010101100011011100100110010101110100 then
			
			ChaosGroundStrike()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 666666 then
			
			InsaneGroundStrike()
			
		elseif k == "x" and attack == false and ModeOfGlitch == 3 then
			
			CorruptBlink()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 4 then
			
			RapidBurst()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 146536 then
			
			HeavenlyDisk()
			
		elseif k == "x" and attack == false and ModeOfGlitch == 146536 then
			
			CorruptBlink()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 5 then
			
			Judgement()
			
		elseif k == "v" and attack == false and ModeOfGlitch == 5 then
			
			HolyBarrier()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 6 then
			
			EquinoxOrbs()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 67966 then
			
			cutesigh()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 420 then
			
			EquinoxOrbs()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 738 then
			
			EquinoxOrbs()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 8889 then
			
			Starfall()
			
		elseif k == "x" and attack == false and ModeOfGlitch == 8889 then
			
			StarDivision()
			
		elseif k == "x" and attack == false and ModeOfGlitch == 67966 then
			
			hugg()
			
		elseif k == "c" and attack == false and ModeOfGlitch == 67966 then
			
			lovesqueal()
			
		elseif k == "x" and attack == false and ModeOfGlitch == 420 then
			
			FallenOrbs()
			
		elseif k == "x" and attack == false and ModeOfGlitch == 10100110110010101100011011100100110010101110100 then
			
			FallenOrbs()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 1264532489 then
			
			FallenOrbs()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 103 then
			
			smiter()
			
		elseif k == "c" and attack == false and ModeOfGlitch == 420 then
			
			smiter()
			
		elseif k == "x" and attack == false and ModeOfGlitch == 242424 then
			
			BinaryE()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 242424 then
			
			BinaryBLINK()
			
		elseif k == "c" and attack == false and ModeOfGlitch == 738 then
			
			BinaryE()
			
		elseif k == "v" and attack == false and ModeOfGlitch == 1 then
			
			HolyBarrier()
			
		elseif k == "v" and attack == false and ModeOfGlitch == 1264532489 then
			
			FallenDEMISE()
			
		elseif k == "b" and attack == false and ModeOfGlitch == 18446744073709551615 then
			
			CrazedClear()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 999999999556 then
			
			OldExtinctiveHeartbreak()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 88893333388 then
			
			StarfallEX()
			
		elseif k == "c" and attack == false and ModeOfGlitch == 88893333388 then
			
			FinalCalam()
			
		elseif k == "v" and attack == false and ModeOfGlitch == 88893333388 then
			
			UniversalCollapse()
			
		elseif k == "b" and attack == false and ModeOfGlitch == 88893333388 then
			
			StarDivision()
			
		elseif k == "m" and attack == false and ModeOfGlitch == 88893333388 then
			
			CrazedClear()
			
		elseif k == "x" and attack == false and ModeOfGlitch == 88893333388 then
			
			UniversalSpark()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 18446744073709551615 then
			
			BinaryE()
			
		elseif k == "v" and attack == false and ModeOfGlitch == 738 then
			
			FallenDEMISE()
			
		elseif k == "x" and attack == false and ModeOfGlitch == 4 then
			
			ChaosGroundStrike()
			
		elseif k == "c" and attack == false and ModeOfGlitch == 18446744073709551615 then
			
			bosschatfunc("Let's crush you.",MAINRUINCOLOR.Color,1)
			
			ChaosGroundStrike()
			
		elseif k == "b" and attack == false and ModeOfGlitch == 420 then
			
			ChaosEND()
			
		elseif k == "v" and attack == false and ModeOfGlitch == 10100110110010101100011011100100110010101110100 then
			
			ChaosEND()
			
		elseif k == "v" and attack == false and ModeOfGlitch == 23897456237845 then
			
			CrazedClear()
			
		elseif k == "n" and attack == false and ModeOfGlitch == 18446744073709551615 then
			
			bosschatfunc("Die.",MAINRUINCOLOR.Color,1)
			
			ChaosEND()
			ChaosEND()
			ChaosEND()
			
		elseif k == "m" and attack == false and ModeOfGlitch == 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 then
			
			bosschatfunc("Let's finish this.",MAINRUINCOLOR.Color,1)
			
			DimensionsCollapse()
			
		elseif k == "z" and attack == false and ModeOfGlitch == 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 then
			
			bosschatfunc("Begone.",MAINRUINCOLOR.Color,1)
			
			StarDivision()
			
		elseif k == "x" and attack == false and ModeOfGlitch == 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 then
			
			bosschatfunc("Sword make peace.",MAINRUINCOLOR.Color,1)
			
			DimensionsSword()
			
		elseif k == "c" and attack == false and ModeOfGlitch == 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 then
			
			bosschatfunc("Swords makes peace.",MAINRUINCOLOR.Color,1)
			
			DimensionsTargetSword() 
			
		elseif k == "v" and attack == false and ModeOfGlitch == 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 then
			
			bosschatfunc("Also, giant sword make piece.",MAINRUINCOLOR.Color,1)
			
			DimensionsGiantSword() 
			
		elseif k == "x" and attack == false and ModeOfGlitch == 18446744073709551615 then
			
			EndGROUND()
			
		elseif k == "c" and attack == false and ModeOfGlitch == 4 then
			
			ChaosEND()
			
		elseif k == "v" and attack == false and ModeOfGlitch == 4 then
			
			th1rt3en_trans()
			
		elseif k == "v" and attack == false and ModeOfGlitch == 420 then
			
			EndGROUND()
			
		elseif k == "x" and attack == false and ModeOfGlitch == 1 then
			
			EndGROUND()
			
		elseif k == "x" and attack == false and ModeOfGlitch == 738 then
			
			EndGROUND()
			
		end
	end
end)

plr.Chatted:connect(function(message)
	
	if ModeOfGlitch == 911 then
		
		if message:sub(1,5) == "play/" then
			
			OVMID = message:sub(6)
			newThemeCust("rbxassetid://"..OVMID,0,OVMPIT,OVMVOL)
			
		elseif message:sub(1,6) == "pitch/" then
			
			OVMPIT = message:sub(7)
			newTheme("rbxassetid://"..OVMID,0,OVMPIT,OVMVOL)
			
		elseif message:sub(1,4) == "vol/" then
			
			OVMVOL = message:sub(5)
			newTheme("rbxassetid://"..OVMID,0,OVMPIT,OVMVOL)
			
		elseif message:sub(1,7) == "skipto/" then
			
			chatfunc("Skipped to "..message:sub(8).." out of "..math.floor(kan.TimeLength).." seconds.",MAINRUINCOLOR.Color,"Inverted","Arcade",1)
			newThemeCust("rbxassetid://"..OVMID,message:sub(8),OVMPIT,OVMVOL)
			
		elseif message:sub(1,9) == "telltime/" then
			
			chatfunc("Current time pos: "..math.floor(kan.TimePosition).." out of "..math.floor(kan.TimeLength).." seconds.",MAINRUINCOLOR.Color,"Inverted","Arcade",1)
		end
	end
end)

coroutine.resume(coroutine.create(function() 
	
	while true do
		
		swait(1)
		
		if ModeOfGlitch == 66669746666974 or ModeOfGlitch == 99999999999999999999999999 or ModeOfGlitch == 6666666666666666 or ModeOfGlitch == 23897456237845 or ModeOfGlitch == 999999999556 or ModeOfGlitch == 103 or ModeOfGlitch == 738 or ModeOfGlitch == 18446744073709551615 and ModeOfGlitch == 1264532489 or ModeOfGlitch == 808080808080808080808080 or ModeOfGlitch == 88893333388 or ModeOfGlitch == 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 then

			sphereMK(10,2,"Add",root.CFrame*CFrame.new(math.random(-52.5*10,52.5*10),-5,math.random(-52.5*10,52.5*10))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),25,25,250,-0.25,MAINRUINCOLOR,0)
			sphereMK(10,2,"Add",root.CFrame*CFrame.new(math.random(-52.5*10,52.5*10),-5,math.random(-52.5*10,52.5*10))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),25,25,250,-0.25,MAINRUINCOLOR,0)
			sphereMK(10,2,"Add",root.CFrame*CFrame.new(math.random(-52.5*10,52.5*10),-5,math.random(-52.5*10,52.5*10))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),25,25,250,-0.25,MAINRUINCOLOR,0)
			sphereMK(10,2,"Add",root.CFrame*CFrame.new(math.random(-52.5*10,52.5*10),-5,math.random(-52.5*10,52.5*10))*CFrame.Angles(math.rad(90 + math.rad(math.random(-45,45))),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),25,25,250,-0.25,MAINRUINCOLOR,0)

		else
			sphereMK(5,0.5,"Add",root.CFrame*CFrame.new(math.random(-25,25),-10,math.random(-25,25))*CFrame.Angles(math.rad(90 + math.random(-15,15)),math.rad(math.random(-15,15)),0),1,1,15,-0.01,MAINRUINCOLOR,0)
		end
	end
end))

coroutine.resume(coroutine.create(function() 
	
	while true do
		
		swait(2)
		
		if ModeOfGlitch == 66669746666974 or ModeOfGlitch == 99999999999999999999999999 or ModeOfGlitch == 6666666666666666 or ModeOfGlitch == 23897456237845 or ModeOfGlitch == 999999999556 or ModeOfGlitch == 103 or ModeOfGlitch == 738 or ModeOfGlitch == 18446744073709551615 and ModeOfGlitch == 1264532489 or ModeOfGlitch == 808080808080808080808080 or ModeOfGlitch == 88893333388 or ModeOfGlitch == 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 then
			
			slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(100,200)/250,BrickColor.new("Gray"))
			
			if not KeyAnim then

				slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0, -2.75, 0)*CFrame.Angles(math.rad(math.random(-15,15)),0,math.rad(math.random(-15,15))),vt(0.01,0.01,0.01),math.random(25,50)/250,BrickColor.new("White"))
				slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0, -2.75, 0)*CFrame.Angles(math.rad(math.random(-15,15)),0,math.rad(math.random(-15,15))),vt(0.01,0.01,0.01),math.random(25,50)/250,MAINRUINCOLOR)
				sphere(3,"Add",root.CFrame*CFrame.new(0,-2.9,0),vt(math.random(5,10),0.1,math.random(5,10)),0.01,MAINRUINCOLOR)
			end
		end
	end
end))

--- Humanoid.Name = "STARGLITCHER"
Humanoid.MaxHealth = math.huge
Humanoid.Health = math.huge

Instance.new("ForceField",char).Visible = false

local bguis = Instance.new("BillboardGui",tors)
bguis.Size = UDim2.new(25, 0, 25, 0)

local bguis2 = Instance.new("BillboardGui",tors)
bguis2.Size = UDim2.new(25, 0, 25, 0)

local imgca = Instance.new("ImageLabel",bguis)
imgca.BackgroundTransparency = 1
imgca.ImageTransparency = 1
imgca.Size = UDim2.new(1,0,1,0)
imgca.Image = "rbxassetid://2076458450" --997291547,521073910,2312119891
imgca.ImageColor3 = Color3.new(0,0,0)

local imgca2 = Instance.new("ImageLabel",bguis2)
imgca2.BackgroundTransparency = 1
imgca2.ImageTransparency = 1
imgca2.Size = UDim2.new(1,0,1,0)
imgca2.Image = "rbxassetid://2312119891" --997291547,521073910,2312119891,2344830904
imgca2.ImageColor3 = Color3.new(0,0,0)

local imgca3 = Instance.new("ImageLabel",bguis2)
imgca3.BackgroundTransparency = 1
imgca3.BorderSizePixel = 0
imgca3.ImageTransparency = 1
imgca3.Size = UDim2.new(1,0,1,0)
imgca3.Image = "rbxassetid://2344830904"
imgca3.ImageColor3 = Color3.new(0.25,0,0)

idleanim=.4

while true do

	if not scriptDisabled then
	
		if mutedtog == false then
				
			kan.Volume = currentVol
				
		elseif mutedtog == true then
				
			kan.Volume = 0
		end
			
		kan.PlaybackSpeed = currentPitch
		kan.Pitch = currentPitch
		kan.SoundId = currentThemePlaying
		kan.Looped = true
		kan.Parent = char
		kan:Resume()
		
		if ModeOfGlitch ~= 6666666666666666 and ModeOfGlitch ~= 23897456237845 and ModeOfGlitch ~= 18446744073709551615 and ModeOfGlitch ~= 55469696922 and ModeOfGlitch ~= 4367677813 and ModeOfGlitch ~= 9999999921111 and ModeOfGlitch ~= 999999999556 and ModeOfGlitch ~= 738 and ModeOfGlitch ~= 61 and ModeOfGlitch ~= 88893333388 and ModeOfGlitch ~= 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 then
				
			imgca.ImageTransparency = 1
			imgca2.ImageTransparency = 1
			imgca3.ImageTransparency = 1
					
		elseif ModeOfGlitch == 6666666666666666 or ModeOfGlitch == 18446744073709551615 or ModeOfGlitch == 88893333388 or ModeOfGlitch == 23897456237845 or ModeOfGlitch == 23897456237845 or ModeOfGlitch == 1264532489 or ModeOfGlitch == 55469696922 or ModeOfGlitch == 4367677813 or ModeOfGlitch == 9999999921111 or ModeOfGlitch == 999999999556 or ModeOfGlitch == 738 or ModeOfGlitch == 61 or ModeOfGlitch == 88893333388 or ModeOfGlitch == 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 then
		
			imgca.ImageColor3 = MAINRUINCOLOR.Color
			imgca.ImageTransparency = 0 + 0.25 * math.cos(sine / 30)
			imgca2.ImageColor3 = MAINRUINCOLOR.Color
			imgca2.ImageTransparency = 0 + 0.25 * math.cos(sine / 30)
			imgca3.ImageColor3 = MAINRUINCOLOR.Color
			imgca3.ImageTransparency = 0 + 0.25 * math.cos(sine / 30)
		
		elseif ModeOfGlitch ~= 11111 and ModeOfGlitch ~= 676767 and ModeOfGlitch ~= 55469696922 and ModeOfGlitch ~= 738 then
		
			imgca2.ImageTransparency = 1
			imgca3.ImageTransparency = 1
			
		elseif ModeOfGlitch == 11111 or ModeOfGlitch == 738 then
				
			imgca2.ImageColor3 = MAINRUINCOLOR.Color
			imgca2.ImageTransparency = 0 + 0.25 * math.cos(sine / 30)

		elseif ModeOfGlitch == 676767 or ModeOfGlitch == 55469696922 then
			
			imgca2.ImageColor3 = MAINRUINCOLOR.Color
			imgca2.ImageTransparency = 0 + 0.25 * math.cos(sine / 30)
		end
		
		imgca.Rotation = imgca.Rotation + 5 + kan.PlaybackLoudness/25
		imgca2.Rotation = imgca.Rotation - 5 - kan.PlaybackLoudness/100
		imgca3.Rotation = imgca.Rotation - 5 - kan.PlaybackLoudness/75
		
		bguis.Size = UDim2.new(12 + 3 * math.cos(sine / 30),0, 12 + 3 * math.cos(sine / 30),0)
		
		coroutine.resume(coroutine.create(function() 
			
			if chaosmode == true then
				
				for i, v in pairs(mw1:GetChildren()) do
			
					if v:IsA("Part") then
			
						v.Transparency = 0
						v.BrickColor = BrickColor.random()
						v.Material = "Neon"
					end
				end
			
				tl1.Color = ColorSequence.new(BrickColor.random().Color)
				tl2.Color = ColorSequence.new(BrickColor.random().Color)
				tl3.Color = ColorSequence.new(BrickColor.random().Color)
					
				RecolorTextAndRename((ModeOfGlitch == 666666 and "INSANITY" or "CHAOS"),Color3.new(0,0,0),BrickColor.random().Color, (ModeOfGlitch == 666666 and "Fantasy" or "Arcade"))
				
			end
			
			if ModeOfGlitch == 10 or ModeOfGlitch == 99999999999999999999999999 then
				
				local val = math.random(1,255)
				local color = Color3.fromRGB(val,val,val)
					
				pcall(function() Character.ReaperShadowHead.Eye1.Color = color end)
				pcall(function() Character.ReaperShadowHead.Eye2.Color = color end)
					
				tl1.Color = ColorSequence.new(color)
				tl2.Color = ColorSequence.new(color)
				tl3.Color = ColorSequence.new(color)
				tr1.Color = ColorSequence.new(color)
				tr2.Color = ColorSequence.new(color)
				tr3.Color = ColorSequence.new(color)
					
				for i, v in pairs(mw1:GetChildren()) do
						
					if v:IsA("Part") then
							
						v.Transparency = 0
						v.Color = color
						v.Material = "Neon"
					end
				end
					
				for i, v in pairs(mw2:GetChildren()) do
						
					if v:IsA("Part") then
							
						v.Color = color
						v.Material = "Neon"
					end
				end
					
				for i, v in pairs(m2:GetChildren()) do
					
					if v:IsA("Part") then
						
						v.Color = color
						v.Material = "Neon"
					end
				end

				if ModeOfGlitch ~= 99999999999999999999999999 then
					
					RecolorTextAndRename((ModeOfGlitch == 10 and RandomCaps"glitchy"),Color3.new(0,0,0),color, "Fantasy")

				elseif ModeOfGlitch == 99999999999999999999999999 then
					
					RecolorTextAndRename(RandomCaps("extirpate"),Color3.new(0,0,0),color, "Fantasy")
				end
			end
			
			if ModeOfGlitch == 66669746666974 then
				
				MAINRUINCOLOR = BrickColor.random()
				
				tl1.Color = ColorSequence.new(BrickColor.random().Color)
				tl2.Color = ColorSequence.new(BrickColor.random().Color)
				tl3.Color = ColorSequence.new(BrickColor.random().Color)
				tr1.Color = ColorSequence.new(BrickColor.random().Color)
				tr2.Color = ColorSequence.new(BrickColor.random().Color)
				tr3.Color = ColorSequence.new(BrickColor.random().Color)
				
				for i, v in pairs(mw1:GetChildren()) do
						
					if v:IsA("Part") then
							
						v.Transparency = 0
						v.Color = BrickColor.random().Color
						v.Material = "Neon"
					end
				end
					
				for i, v in pairs(mw2:GetChildren()) do
						
					if v:IsA("Part") then
							
						v.Color = BrickColor.random().Color
						v.Material = "Neon"
					end
				end
					
				for i, v in pairs(m2:GetChildren()) do
					
					if v:IsA("Part") then
						
						v.Color = BrickColor.random().Color
						v.Material = "Neon"
					end
				end
				
				RecolorTextAndRename(RandomCaps("error"),BrickColor.random().Color,BrickColor.random().Color, "Fantasy")
			end
		end))
		
		if chaosmode == false and ModeOfGlitch ~= 66669746666974 and ModeOfGlitch ~= 23897456237845 and ModeOfGlitch ~= 6666666666666666 and ModeOfGlitch ~= 99999999999999999999999999 then
			
			modet.Position = UDim2.new(0,0,0,0)
			modet.Rotation = -5 * math.cos(sine / 32)
			techc.Rotation = techc.Rotation + 1
			circl.Rotation = circl.Rotation - kan.PlaybackLoudness/75 - 1
			circl2.Rotation = circl2.Rotation + kan.PlaybackLoudness/50 + 1
			imgl2.Rotation = imgl2.Rotation - kan.PlaybackLoudness/50 + 1
			imgl2b.Rotation = imgl2b.Rotation + kan.PlaybackLoudness/25 - 1
			ned.Rotation = 0 - 2 * math.cos(sine / 24)
			ned.Position = UDim2.new(0.38,0 - 10 * math.cos(sine / 32),0.85,0 - 10 * math.cos(sine / 45))
			backFrame1.Rotation = 1 * math.cos(sine / 32)
			backFrame2.Rotation = 0.5 * math.cos(sine / 32)
			rotateFrame.Rotation = rotateFrame.Rotation + 4
			rotateFrame2.Rotation = rotateFrame2.Rotation - 1.5
			sideText.Position = UDim2.new(0.01,0 - 10 * math.cos(sine / 32),0.9,0 - 10 * math.cos(sine / 45))
			sideText.Rotation = 0 + 2 * math.cos(sine / 24)
			sideText2.Position = UDim2.new(0.01,0 - 15 * math.cos(sine / 32),0.95,0 - 10 * math.cos(sine / 45))
			sideText2.Rotation = 0 + 2 * math.cos(sine / 24)
			centerText.Position = UDim2.new(0.2,0 + 5 * math.cos(sine / 32),0.85,0 - 10 * math.cos(sine / 45))
			centerText.Rotation = 0 + 2 * math.cos(sine / 24)
			centerText2.Position = UDim2.new(0.2,0 + 20 * math.cos(sine / 32),0.92,0 - 10 * math.cos(sine / 45))
			centerText2.Rotation = 0 - 2 * math.cos(sine / 24)
			
		else
			
			techc.Rotation = techc.Rotation + 1
			circl.Rotation = circl.Rotation - kan.PlaybackLoudness/50 + math.random(-5,5)
			circl2.Rotation = circl2.Rotation + kan.PlaybackLoudness/25 + math.random(-5,5)
			imgl2.Rotation = imgl2.Rotation - kan.PlaybackLoudness/25 + math.random(-5,5)
			imgl2b.Rotation = imgl2b.Rotation + kan.PlaybackLoudness/12.5 + math.random(-5,5)
			ned.Rotation = 0 -2 * math.cos(sine / 1) + math.random(-3,3)
			ned.Position = UDim2.new(0.38,0 + math.random(-3,3),0.85,0 + math.random(-3,3))
			modet.Position = UDim2.new(0,math.random(-1,1),0,math.random(-1,1))
			modet.Rotation = -2 * math.cos(sine / 1) + math.random(-3,3)
			backFrame1.Rotation = 4 * math.cos(sine * 75 / 32)
			backFrame2.Rotation = 2 * math.cos(sine * 75 / 32)
			rotateFrame.Rotation = rotateFrame.Rotation + math.random(25,50)
			rotateFrame2.Rotation = rotateFrame2.Rotation - math.random(25,50)
			sideText.Position = UDim2.new(0.01,0 - (10 + math.random(-5,5)) * math.cos(sine / 32),0.9,0 - (10 + math.random(-5,5)) * math.cos(sine / 45))
			sideText.Rotation = 2 * math.cos(sine / 1) + math.random(-3,3)
			sideText2.Position = UDim2.new(0.01,0 - (15 + math.random(-5,5)) * math.cos(sine / 32),0.95,0 - (10 + math.random(-5,5)) * math.cos(sine / 45))
			sideText2.Rotation = 2 * math.cos(sine / 1) + math.random(-3,3)
			centerText.Position = UDim2.new(0.2,0 + (5 + math.random(-5,5)) * math.cos(sine / 32),0.85,0 - (10 + math.random(-5,5)) * math.cos(sine / 45))
			centerText.Rotation = 2 * math.cos(sine / 1) + math.random(-3,3)
			centerText2.Position = UDim2.new(0.2,0 + (20 + math.random(-5,5)) * math.cos(sine / 32),0.92,0 - (10 + math.random(-5,5)) * math.cos(sine / 45))
			centerText2.Rotation = -2 * math.cos(sine / 1) + math.random(-3,3)
		end
			
		CameraManager()
			
		swait()
			
		sectors.BrickColor = MAINRUINCOLOR
		seclarm.BrickColor = MAINRUINCOLOR
		secrarm.BrickColor = MAINRUINCOLOR
		seclleg.BrickColor = MAINRUINCOLOR
		secrleg.BrickColor = MAINRUINCOLOR
		seched.BrickColor = MAINRUINCOLOR
		
		if attack == false and ActiveGia == false then
				
			torsweld.C1=clerp(torsweld.C1,cf(2,5*4,-8)*angles(math.rad(0),math.rad(0),math.rad(0)),1)
			larmsweld.C1=clerp(larmsweld.C1,cf(1.65*8,0.25*8,0)*angles(math.rad(0),math.rad(0),math.rad(20)),1)
			rarmsweld.C1=clerp(rarmsweld.C1,cf(-1.65*8,0.25*8,0)*angles(math.rad(0),math.rad(0),math.rad(-20)),1)
			llegsweld.C1=clerp(llegsweld.C1,cf(0.5*8,2*8,0)*angles(math.rad(0),math.rad(0),math.rad(0)),1)
			rlegsweld.C1=clerp(rlegsweld.C1,cf(-0.5*8,2*8,0)*angles(math.rad(0),math.rad(0),math.rad(0)),1)
			hedsweld.C1=clerp(hedsweld.C1,cf(0,-1.5*8,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),1)
			
		elseif attack == false and ActiveGia == true then
			
			if ModeOfGlitch ~= 67966 and ModeOfGlitch > 15 then
	
				torsweld.C1=clerp(torsweld.C1,cf(0,-25 + 0.5 * math.cos(sine / 32) ,-8)*angles(math.rad(20),math.rad(0),math.rad(0)),.025)
				larmsweld.C1=clerp(larmsweld.C1,cf(1.65*8,0.45*8,0)*angles(math.rad(10),math.rad(0),math.rad(20)),0.025)
				rarmsweld.C1=clerp(rarmsweld.C1,cf(-1.65*8,0.45*8,0)*angles(math.rad(10),math.rad(0),math.rad(-20)),0.025)
				llegsweld.C1=clerp(llegsweld.C1,cf(0.5*8,1.5*8,0.6*8)*angles(math.rad(20),math.rad(0),math.rad(0)),0.025)
				rlegsweld.C1=clerp(rlegsweld.C1,cf(-0.5*8,2*8,0.11*8)*angles(math.rad(10),math.rad(0),math.rad(0)),0.025)
				hedsweld.C1=clerp(hedsweld.C1,cf(0,-1.5*8,-0.2)*angles(math.rad(5),math.rad(0),math.rad(0)),0.025)
					
			else
				
				torsweld.C1=clerp(torsweld.C1,cf(0,-2 + 0.25 * math.cos(sine / 32) ,-8)*angles(math.rad(0),math.rad(0),math.rad(0)),.025)
				larmsweld.C1=clerp(larmsweld.C1,cf(1.65*8,0.45*8,0)*angles(math.rad(10),math.rad(0),math.rad(20)),0.025)
				rarmsweld.C1=clerp(rarmsweld.C1,cf(-1.65*8,0.45*8,0)*angles(math.rad(10),math.rad(0),math.rad(-20)),0.025)
				llegsweld.C1=clerp(llegsweld.C1,cf(0.5*8,2*8,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.025)
				rlegsweld.C1=clerp(rlegsweld.C1,cf(-0.5*8,2*8,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.025)
				hedsweld.C1=clerp(hedsweld.C1,cf(0,-1.5*8,-0.2)*angles(math.rad(10),math.rad(0),math.rad(0)),0.025)
			end
		end

		if attack then
			
			KeyAnim = true
			
		elseif not attack and charSpeed < 5 then
			
			KeyAnim = false
		end

		if ModeOfGlitch == 6666666666666666 then

			if char:FindFirstChild(MagicLittleRing) then
	
				ring1Athp.Position = Vector3.new(0, 0.8, -1)
			end
			
		elseif ModeOfGlitch == 99999999999999999999999999 then
			
			if char:FindFirstChild(MagicLittleRing) then
	
				ring1Athp.Position = Vector3.new(0, -5, -1)
			end
			
		else
			
			if char:FindFirstChild(MagicLittleRing) then
	
				ring1Athp.Position = Vector3.new(0, 0, 0)
			end
		end

		if ModeOfGlitch == 6666666666666666 then

			if StarRings[1] then
	
				ring2Athp.Position = Vector3.new(1, 1.2, -4.3)
			end

		elseif shownRing then

			if StarRings[1] then
	
				ring2Athp.Position = Vector3.new(0,0,-1.3)
			end

		elseif not shownRing then

			if StarRings[1] then
	
				ring2Athp.Position = Vector3.new(0,0,-1.3) + Vector3.new(20, -20, -20)
			end
		end

		if ModeOfGlitch ~= 11 and ModeOfGlitch ~= 1234567890 and ModeOfGlitch ~= 676767 and ModeOfGlitch ~= 3444 and ModeOfGlitch ~= -666666 and ModeOfGlitch ~= 666666666 and ModeOfGlitch ~= 112 and glitchermode ~= "universal" and ModeOfGlitch ~= 246758 and ModeOfGlitch ~= 46874 and ModeOfGlitch ~= 738 and ModeOfGlitch ~= 55846 and ModeOfGlitch ~= 74532 and ModeOfGlitch ~= 18273 and ModeOfGlitch ~= 404 and ModeOfGlitch ~= 146536 and ModeOfGlitch ~= 55469696922 and ModeOfGlitch ~= 101010 and ModeOfGlitch ~= 124 and ModeOfGlitch ~= 81 and ModeOfGlitch ~= 88893333388 and ModeOfGlitch ~= 808080808080808080808080 and ModeOfGlitch ~= 6518594185 and ModeOfGlitch ~= 7888 and ModeOfGlitch ~= 555 and ModeOfGlitch ~= 6868 and ModeOfGlitch ~= 412 and ModeOfGlitch ~= 2335 and ModeOfGlitch ~= 727 and ModeOfGlitch ~= 2019 and ModeOfGlitch ~= 841 and ModeOfGlitch ~= 728 and ModeOfGlitch ~= 8799 and ModeOfGlitch ~= 2102 and ModeOfGlitch ~= 906 and ModeOfGlitch ~= 2000 and ModeOfGlitch ~= 2222222 and ModeOfGlitch ~= 911 and ModeOfGlitch ~= -5 and ModeOfGlitch ~= 2304 and ModeOfGlitch ~= 102 and ModeOfGlitch ~= 4434 and ModeOfGlitch ~= -99 and ModeOfGlitch ~= -999 and ModeOfGlitch ~= 78213 and ModeOfGlitch ~= 3141 and ModeOfGlitch ~= 763 and ModeOfGlitch ~= 1264532489 and ModeOfGlitch ~= 147 and ModeOfGlitch ~= 888 and ModeOfGlitch ~= 69746974 and ModeOfGlitch ~= 18446744073709551615 and ModeOfGlitch ~= 23897456237845 and ModeOfGlitch ~= 6666666666666666 and ModeOfGlitch ~= 99999999999999999999999999 and ModeOfGlitch ~= 66669746666974 and ModeOfGlitch ~= 10110 then
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)

			if FancyWings then
				
				lwing1weld.C1=clerp(lwing1weld.C1,cf(2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 20 * math.cos(sine / 12)),math.rad(0),math.rad(12.5 + 8 * math.cos(sine / 12))),.3)
				lwing2weld.C1=clerp(lwing2weld.C1,cf(3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 25 * math.cos(sine / 16)),math.rad(0),math.rad(25 + 11.5 * math.cos(sine / 16))),.3)
				lwing3weld.C1=clerp(lwing3weld.C1,cf(3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 35 * math.cos(sine / 20)),math.rad(0),math.rad(37.5 + 14 * math.cos(sine / 20))),.3)
				rwing1weld.C1=clerp(rwing1weld.C1,cf(-2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 20 * math.cos(sine / 12)),math.rad(0),math.rad(-12.5 - 8 * math.cos(sine / 12))),.3)
				rwing2weld.C1=clerp(rwing2weld.C1,cf(-3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 25 * math.cos(sine / 16)),math.rad(0),math.rad(-25 - 11.5 * math.cos(sine / 16))),.3)
				rwing3weld.C1=clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 30 * math.cos(sine / 20)),math.rad(0),math.rad(-37.5 - 14 * math.cos(sine / 20))),.3)
			
			else
			
				lwing1weld.C1=clerp(lwing1weld.C1,cf(2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(sine / 32))),.3)
				lwing2weld.C1=clerp(lwing2weld.C1,cf(3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(sine / 32))),.3)
				lwing3weld.C1=clerp(lwing3weld.C1,cf(3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(sine / 32))),.3)
				lwing4weld.C1=clerp(lwing4weld.C1,cf(4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos(sine / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(sine / 32))),.3)
				lwing5weld.C1=clerp(lwing5weld.C1,cf(5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos(sine / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(sine / 32))),.3)
				lwing6weld.C1=clerp(lwing6weld.C1,cf(6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos(sine / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(sine / 32))),.3)
				rwing1weld.C1=clerp(rwing1weld.C1,cf(-2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(sine / 32))),.3)
				rwing2weld.C1=clerp(rwing2weld.C1,cf(-3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(sine / 32))),.3)
				rwing3weld.C1=clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(sine / 32))),.3)
				rwing4weld.C1=clerp(rwing4weld.C1,cf(-4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos(sine / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(sine / 32))),.3)
				rwing5weld.C1=clerp(rwing5weld.C1,cf(-5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos(sine / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(sine / 32))),.3)
				rwing6weld.C1=clerp(rwing6weld.C1,cf(-6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos(sine / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(sine / 32))),.3)
			end
		
			sine = sine + change

		elseif ModeOfGlitch == 11 then
			
			lwing1weld.C1=clerp(lwing1weld.C1,cf(2,2,0)*angles(math.rad(0 + 3 * math.cos(sine * 2.5 / 50)),math.rad(0 - 3 * math.cos(sine * 2.5 / 50)),math.rad(90 + 500 * (sine * 2.5 / 50))),1.5)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(2,2,0)*angles(math.rad(0 + 3 * math.cos(sine * 2.5 / 50)),math.rad(0 - 3 * math.cos(sine * 2.5 / 50)),math.rad(147.5 + 500 * (sine * 2.5 / 50))),1.5)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(2,2,0)*angles(math.rad(0 + 3 * math.cos(sine * 2.5 / 50)),math.rad(0 - 3 * math.cos(sine * 2.5 / 50)),math.rad(32.5 + 500 * (sine * 2.5 / 50))),1.5)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(2,2,0)*angles(math.rad(0 + 3 * math.cos(sine * 2.5 / 50)),math.rad(0 - 3 * math.cos(sine * 2.5 / 50)),math.rad(-90 + 500 * (sine * 2.5 / 50))),1.5)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(2,2,0)*angles(math.rad(0 + 3 * math.cos(sine * 2.5 / 50)),math.rad(0 - 3 * math.cos(sine * 2.5 / 50)),math.rad(-147.5 + 500 * (sine * 2.5 / 50))),1.5)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(2,2,0)*angles(math.rad(0 + 3 * math.cos(sine * 2.5 / 50)),math.rad(0 - 3 * math.cos(sine * 2.5 / 50)),math.rad(-32.5 + 500 * (sine * 2.5 / 50))),1.5)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 + 1.5 * math.cos(sine * 2 / 180),1.5 + 0.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 50)),math.rad(0 - 3 * math.cos(sine * 2 / 36)),math.rad(90 - 3600 * math.cos(sine * 2 / 360))),1.5)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 + 1.5 * math.cos(sine * 2 / 180),1.5 + 0.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 70)),math.rad(0 - 3 * math.cos(sine * 2 / 37)),math.rad(147.5 - 3600 * math.cos(sine * 2 / 360))),1.5)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 + 1.5 * math.cos(sine * 2 / 180),1.5 + 0.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 60)),math.rad(0 - 3 * math.cos(sine * 2 / 51)),math.rad(32.5 - 3600 * math.cos(sine * 2 / 360))),1.5)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 + 1.5 * math.cos(sine * 2 / 180),1.5 + 0.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 50)),math.rad(0 - 3 * math.cos(sine * 2 / 36)),math.rad(-90 - 3600 * math.cos(sine * 2 / 360))),1.5)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 + 1.5 * math.cos(sine * 2 / 180),1.5 + 0.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 70)),math.rad(0 - 3 * math.cos(sine * 2 / 37)),math.rad(-147.5 - 3600 * math.cos(sine * 2 / 360))),1.5)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 + 1.5 * math.cos(sine * 2 / 180),1.5 + 0.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 60)),math.rad(0 - 3 * math.cos(sine * 2 / 51)),math.rad(-32.5 - 3600 * math.cos(sine * 2 / 360))),1.5)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 66669746666974 then
			
			lwing1weld.C1=clerp(lwing1weld.C1,cf(3.5,3.5,0)*angles(math.rad(0 + 3 * math.cos(sine * 5 / 50)),math.rad(0 - 3 * math.cos(sine * 5 / 50)),math.rad(90 + 500 * (sine * 5 / 50))),1.5)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(3.5,3.5,0)*angles(math.rad(0 + 3 * math.cos(sine * 5 / 50)),math.rad(0 - 3 * math.cos(sine * 5 / 50)),math.rad(147.5 + 500 * (sine * 5 / 50))),1.5)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(3.5,3.5,0)*angles(math.rad(0 + 3 * math.cos(sine * 5 / 50)),math.rad(0 - 3 * math.cos(sine * 5 / 50)),math.rad(32.5 + 500 * (sine * 5 / 50))),1.5)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(3.5,3.5,0)*angles(math.rad(0 + 3 * math.cos(sine * 5 / 50)),math.rad(0 - 3 * math.cos(sine * 5 / 50)),math.rad(-90 + 500 * (sine * 5 / 50))),1.5)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(3.5,3.5,0)*angles(math.rad(0 + 3 * math.cos(sine * 5 / 50)),math.rad(0 - 3 * math.cos(sine * 5 / 50)),math.rad(-147.5 + 500 * (sine * 5 / 50))),1.5)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(3.5,3.5,0)*angles(math.rad(0 + 3 * math.cos(sine * 5 / 50)),math.rad(0 - 3 * math.cos(sine * 5 / 50)),math.rad(-32.5 + 500 * (sine * 5 / 50))),1.5)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 + 1.5 * math.cos(sine * 5 / 180),1.5 + 0.75 * math.cos(sine * 5 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 5 / 50)),math.rad(0 - 3 * math.cos(sine * 5 / 36)),math.rad(90 - 3600 * math.cos(sine * 5 / 360))),1.5)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 + 1.5 * math.cos(sine * 5 / 180),1.5 + 0.75 * math.cos(sine * 5 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 5 / 70)),math.rad(0 - 3 * math.cos(sine * 5 / 37)),math.rad(147.5 - 3600 * math.cos(sine * 5 / 360))),1.5)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 + 1.5 * math.cos(sine * 5 / 180),1.5 + 0.75 * math.cos(sine * 5 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 5 / 60)),math.rad(0 - 3 * math.cos(sine * 5 / 51)),math.rad(32.5 - 3600 * math.cos(sine * 5 / 360))),1.5)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 + 1.5 * math.cos(sine * 5 / 180),1.5 + 0.75 * math.cos(sine * 5 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 5 / 50)),math.rad(0 - 3 * math.cos(sine * 5 / 36)),math.rad(-90 - 3600 * math.cos(sine * 5 / 360))),1.5)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 + 1.5 * math.cos(sine * 5 / 180),1.5 + 0.75 * math.cos(sine * 5 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 5 / 70)),math.rad(0 - 3 * math.cos(sine * 5 / 37)),math.rad(-147.5 - 3600 * math.cos(sine * 5 / 360))),1.5)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 + 1.5 * math.cos(sine * 5 / 180),1.5 + 0.75 * math.cos(sine * 5 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 5 / 60)),math.rad(0 - 3 * math.cos(sine * 5 / 51)),math.rad(-32.5 - 3600 * math.cos(sine * 5 / 360))),1.5)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 6666666666666666 then 

			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handlexweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)

			if not KeyAnim then

				lwing1weld.C1 = clerp(lwing1weld.C1, cf(0,2.5,1)*angles(0,math.rad(0+2.5*math.cos(sine*50/36)),math.rad(120+sine*50))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,3,1.5),.2)
				lwing2weld.C1 = clerp(lwing2weld.C1, cf(0,3,1)*angles(0,math.rad(0+7.5*math.cos(sine*50/32)),math.rad(240+sine*50))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,3,1.5),.2)
				lwing3weld.C1 = clerp(lwing3weld.C1, cf(0,3.5,1)*angles(0,math.rad(0+5*math.cos(sine*50/39)),math.rad(360+sine*50))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,3,1.5),.2)
				rwing1weld.C1 = clerp(rwing1weld.C1, cf(0,2.5,1)*angles(0,math.rad(0+2.5*math.cos(sine*50/36)),math.rad(120-sine*50))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,3,1.5),.2)
				rwing2weld.C1 = clerp(rwing2weld.C1, cf(0,3,1)*angles(0,math.rad(0+7.5*math.cos(sine*50/32)),math.rad(240-sine*50))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,3,1.5),.2)
				rwing3weld.C1 = clerp(rwing3weld.C1, cf(0,3.5,1)*angles(0,math.rad(0+5*math.cos(sine*50/39)),math.rad(360-sine*50))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,3,1.5),.2)
			
				lwing4weld.C1 = clerp(lwing4weld.C1,cf(0 + -5 * math.sin(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.sin(sine / 36)),math.rad(90 - 1000 * math.cos(sine / 360))),.3)
				lwing5weld.C1 = clerp(lwing5weld.C1, cf(0,5,1)*angles(0,math.rad(0-5*math.cos(sine*10/39)),math.rad(180-sine*10))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,0,1.5),.2)
				lwing6weld.C1 = clerp(lwing6weld.C1,cf(0 + -5 * math.sin(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.sin(sine / 51)),math.rad(32.5 - 1000 * math.cos(sine / 360))),.3)
				rwing4weld.C1 = clerp(rwing4weld.C1,cf(0 + -5 * math.sin(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.sin(sine / 36)),math.rad(-90 - 1000 * math.cos(sine / 360))),.3)
				rwing5weld.C1 = clerp(rwing5weld.C1, cf(0,5,1)*angles(0,math.rad(0-5*math.cos(sine*10/39)),math.rad(360-sine*10))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,0,1.5),.2)
				rwing6weld.C1 = clerp(rwing6weld.C1,cf(0 + -5 * math.sin(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.sin(sine / 51)),math.rad(-32.5 - 1000 * math.cos(sine / 360))),.3)
				
			else
				
				lwing1weld.C1=clerp(lwing1weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 + 3600 * math.cos(sine / 360))),.3)
				lwing2weld.C1=clerp(lwing2weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 + 3600 * math.cos(sine / 360))),.3)
				lwing3weld.C1=clerp(lwing3weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 + 3600 * math.cos(sine / 360))),.3)
				rwing1weld.C1=clerp(rwing1weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 + 3600 * math.cos(sine / 360))),.3)
				rwing2weld.C1=clerp(rwing2weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 + 3600 * math.cos(sine / 360))),.3)
				rwing3weld.C1=clerp(rwing3weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 + 3600 * math.cos(sine / 360))),.3)
				lwing4weld.C1=clerp(lwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 - 3600 * math.cos(sine / 360))),.3)
				lwing5weld.C1=clerp(lwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 - 3600 * math.cos(sine / 360))),.3)
				lwing6weld.C1=clerp(lwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 - 3600 * math.cos(sine / 360))),.3)
				rwing4weld.C1=clerp(rwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 3600 * math.cos(sine / 360))),.3)
				rwing5weld.C1=clerp(rwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 - 3600 * math.cos(sine / 360))),.3)
				rwing6weld.C1=clerp(rwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 - 3600 * math.cos(sine / 360))),.3)

			end
		
			sine = sine + change
		
		elseif ModeOfGlitch == 99999999999999999999999999 then
			
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handlexweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)

			if not KeyAnim then

				lwing1weld.C1 = clerp(lwing1weld.C1, cf(0,4,1)*angles(0,math.rad(0+2.5*math.cos(sine*10/36)),math.rad(120+sine*10))*angles(math.rad(-90),math.rad(-180),math.rad(0))*cf(0,2,1.5),.2)
				lwing2weld.C1 = clerp(lwing2weld.C1, cf(0,4.5,1)*angles(0,math.rad(0+7.5*math.cos(sine*10/32)),math.rad(240+sine*10))*angles(math.rad(0),math.rad(-180),math.rad(0))*cf(0,2,1.5),.2)
				lwing3weld.C1 = clerp(lwing3weld.C1, cf(0,5,1)*angles(0,math.rad(0+5*math.cos(sine*10/39)),math.rad(360+sine*10))*angles(math.rad(-90),math.rad(-180),math.rad(0))*cf(0,2,1.5),.2)
				rwing1weld.C1 = clerp(rwing1weld.C1, cf(0,4,1)*angles(0,math.rad(0+2.5*math.cos(sine*10/36)),math.rad(120-sine*10))*angles(math.rad(0),math.rad(-180),math.rad(0))*cf(0,2,1.5),.2)
				rwing2weld.C1 = clerp(rwing2weld.C1, cf(0,4.5,1)*angles(0,math.rad(0+7.5*math.cos(sine*10/32)),math.rad(240-sine*10))*angles(math.rad(-90),math.rad(-180),math.rad(0))*cf(0,2,1.5),.2)
				rwing3weld.C1 = clerp(rwing3weld.C1, cf(0,5,1)*angles(0,math.rad(0+5*math.cos(sine*10/39)),math.rad(360-sine*10))*angles(math.rad(-90),math.rad(-180),math.rad(0))*cf(0,2,1.5),.2)
			
				lwing4weld.C1 = clerp(lwing4weld.C1,cf(0 + -5 * math.sin(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.sin(sine / 36)),math.rad(90 - 1000 * math.cos(sine / 360))),.3)
				lwing5weld.C1 = clerp(lwing5weld.C1, cf(0,5,1)*angles(0,math.rad(0-5*math.cos(sine*10/39)),math.rad(180-sine*10))*angles(math.rad(-90),math.rad(-180),math.rad(45))*cf(0,2,2.5),.2)
				lwing6weld.C1 = clerp(lwing6weld.C1,cf(0 + -5 * math.sin(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.sin(sine / 51)),math.rad(32.5 - 1000 * math.cos(sine / 360))),.3)
				rwing4weld.C1 = clerp(rwing4weld.C1,cf(0 + -5 * math.sin(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.sin(sine / 36)),math.rad(-90 - 1000 * math.cos(sine / 360))),.3)
				rwing5weld.C1 = clerp(rwing5weld.C1, cf(0,5,1)*angles(0,math.rad(0-5*math.cos(sine*10/39)),math.rad(360-sine*10))*angles(math.rad(-90),math.rad(-180),math.rad(45))*cf(0,2,2.5),.2)
				rwing6weld.C1 = clerp(rwing6weld.C1,cf(0 + -5 * math.sin(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.sin(sine / 51)),math.rad(-32.5 - 1000 * math.cos(sine / 360))),.3)
				
			else
				
				lwing1weld.C1=clerp(lwing1weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 + 3600 * math.cos(sine / 360))),.3)
				lwing2weld.C1=clerp(lwing2weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 + 3600 * math.cos(sine / 360))),.3)
				lwing3weld.C1=clerp(lwing3weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 + 3600 * math.cos(sine / 360))),.3)
				rwing1weld.C1=clerp(rwing1weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 + 3600 * math.cos(sine / 360))),.3)
				rwing2weld.C1=clerp(rwing2weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 + 3600 * math.cos(sine / 360))),.3)
				rwing3weld.C1=clerp(rwing3weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 + 3600 * math.cos(sine / 360))),.3)
				lwing4weld.C1=clerp(lwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 - 3600 * math.cos(sine / 360))),.3)
				lwing5weld.C1=clerp(lwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 - 3600 * math.cos(sine / 360))),.3)
				lwing6weld.C1=clerp(lwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 - 3600 * math.cos(sine / 360))),.3)
				rwing4weld.C1=clerp(rwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 3600 * math.cos(sine / 360))),.3)
				rwing5weld.C1=clerp(rwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 - 3600 * math.cos(sine / 360))),.3)
				rwing6weld.C1=clerp(rwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 - 3600 * math.cos(sine / 360))),.3)

			end
		
			sine = sine + change
			
		elseif ModeOfGlitch == 1234567890 then
			
			lwing1weld.C1=clerp(lwing1weld.C1,cf(1 + 5 * math.cos(sine * 2 / 180),4 + 2.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 50)),math.rad(0 - 3 * math.cos(sine * 2 / 36)),math.rad(90 + 3600 * math.cos(sine * 2 / 360))),1.5)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(1 + 5 * math.cos(sine * 2 / 180),4 + 2.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 70)),math.rad(0 - 3 * math.cos(sine * 2 / 37)),math.rad(147.5 + 3600 * math.cos(sine * 2 / 360))),1.5)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(1 + 5 * math.cos(sine * 2 / 180),4 + 2.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 60)),math.rad(0 - 3 * math.cos(sine * 2 / 51)),math.rad(32.5 + 3600 * math.cos(sine * 2 / 360))),1.5)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(1 + 5 * math.cos(sine * 2 / 180),4 + 2.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 50)),math.rad(0 - 3 * math.cos(sine * 2 / 36)),math.rad(-90 + 3600 * math.cos(sine * 2 / 360))),1.5)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(1 + 5 * math.cos(sine * 2 / 180),4 + 2.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 70)),math.rad(0 - 3 * math.cos(sine * 2 / 37)),math.rad(-147.5 + 3600 * math.cos(sine * 2 / 360))),1.5)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(1 + 5 * math.cos(sine * 2 / 180),4 + 2.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 60)),math.rad(0 - 3 * math.cos(sine * 2 / 51)),math.rad(-32.5 + 3600 * math.cos(sine * 2 / 360))),1.5)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 + 2.5 * math.cos(sine * 2 / 180),1.5 + 0.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 50)),math.rad(0 - 3 * math.cos(sine * 2 / 36)),math.rad(90 - 3600 * math.cos(sine * 2 / 360))),1.5)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 + 2.5 * math.cos(sine * 2 / 180),1.5 + 0.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 70)),math.rad(0 - 3 * math.cos(sine * 2 / 37)),math.rad(147.5 - 3600 * math.cos(sine * 2 / 360))),1.5)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 + 2.5 * math.cos(sine * 2 / 180),1.5 + 0.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 60)),math.rad(0 - 3 * math.cos(sine * 2 / 51)),math.rad(32.5 - 3600 * math.cos(sine * 2 / 360))),1.5)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 + 2.5 * math.cos(sine * 2 / 180),1.5 + 0.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 50)),math.rad(0 - 3 * math.cos(sine * 2 / 36)),math.rad(-90 - 3600 * math.cos(sine * 2 / 360))),1.5)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 + 2.5 * math.cos(sine * 2 / 180),1.5 + 0.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 70)),math.rad(0 - 3 * math.cos(sine * 2 / 37)),math.rad(-147.5 - 3600 * math.cos(sine * 2 / 360))),1.5)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 + 2.5 * math.cos(sine * 2 / 180),1.5 + 0.75 * math.cos(sine * 2 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 2 / 60)),math.rad(0 - 3 * math.cos(sine * 2 / 51)),math.rad(-32.5 - 3600 * math.cos(sine * 2 / 360))),1.5)
			
			sine = sine + change

		elseif ModeOfGlitch == 3444 then
			
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos((sine+math.random(-100,100)) / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(sine / 32))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos((sine+math.random(-100,100)) / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(sine / 32))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos((sine+math.random(-100,100)) / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(sine / 32))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 *  math.cos((sine+math.random(-100,100)) / 32)),math.rad(0),math.rad(50 + 12.5 *  math.cos(sine / 32))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 *  math.cos((sine+math.random(-100,100)) / 32)),math.rad(0),math.rad(62.5 + 15 *  math.cos(sine / 32))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 *  math.cos((sine+math.random(-100,100)) / 32)),math.rad(0),math.rad(75 + 17.5 *  math.cos(sine / 32))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(-2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos((sine+math.random(-100,100)) / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(sine / 32))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(-3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos((sine+math.random(-100,100)) / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(sine / 32))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos((sine+math.random(-100,100)) / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(sine / 32))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(-4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos((sine+math.random(-100,100)) / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(sine / 32))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(-5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos((sine+math.random(-100,100)) / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(sine / 32))),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(-6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos((sine+math.random(-100,100)) / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(sine / 32))),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 3 then
			
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(sine / 32))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(sine / 32))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(sine / 32))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos(sine / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(sine / 32))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos(sine / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(sine / 32))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos(sine / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(sine / 32))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(-2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(sine / 32))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(-3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(sine / 32))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(sine / 32))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(-4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos(sine / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(sine / 32))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(-5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos(sine / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(sine / 32))),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(-6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos(sine / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(sine / 32))),.3)
			
			sine = sine + change

		elseif ModeOfGlitch == -666666 then
			
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(2,0,0)*angles(math.rad(0),math.rad(0),math.rad(45 * sine/36)),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(-2,0,0)*angles(math.rad(0),math.rad(0),math.rad(180 * sine/36)),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(0,2,0)*angles(math.rad(0),math.rad(0),math.rad(90 * sine/36)),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(5,0,0)*angles(math.rad(0),math.rad(0),math.rad(22.5 * sine/36)),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(-5,0,0)*angles(math.rad(0),math.rad(0),math.rad(90 * sine/36)),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0,5,0)*angles(math.rad(0),math.rad(0),math.rad(65 * sine/36)),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(-2,0,0)*angles(math.rad(0),math.rad(0),math.rad(-45 * sine/36)),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(2,0,0)*angles(math.rad(0),math.rad(0),math.rad(-180 * sine/36)),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(0,2,0)*angles(math.rad(0),math.rad(0),math.rad(-90 * sine/36)),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(-5,0,0)*angles(math.rad(0),math.rad(0),math.rad(-22.5 * sine/36)),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(5,0,0)*angles(math.rad(0),math.rad(0),math.rad(-90 * sine/36)),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0,5,0)*angles(math.rad(0),math.rad(0),math.rad(-65 * sine/36)),.3)
			
			sine = sine + change

		elseif ModeOfGlitch == 112 then
			
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(2,0,0)*angles(math.rad(0),math.rad(0),math.rad(45 * sine/36)),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(-2,0,0)*angles(math.rad(0),math.rad(0),math.rad(180 * sine/36)),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(0,2,0)*angles(math.rad(0),math.rad(0),math.rad(90 * sine/36)),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(5,0,0)*angles(math.rad(0),math.rad(0),math.rad(22.5 * sine/36)),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(-5,0,0)*angles(math.rad(0),math.rad(0),math.rad(90 * sine/36)),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0,5,0)*angles(math.rad(0),math.rad(0),math.rad(65 * sine/36)),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(-2,0,0)*angles(math.rad(0),math.rad(0),math.rad(-45 * sine/36)),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(2,0,0)*angles(math.rad(0),math.rad(0),math.rad(-180 * sine/36)),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(0,2,0)*angles(math.rad(0),math.rad(0),math.rad(-90 * sine/36)),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(-5,0,0)*angles(math.rad(0),math.rad(0),math.rad(-22.5 * sine/36)),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(5,0,0)*angles(math.rad(0),math.rad(0),math.rad(-90 * sine/36)),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0,5,0)*angles(math.rad(0),math.rad(0),math.rad(-65 * sine/36)),.3)
			
			sine = sine + change

		elseif ModeOfGlitch == 46874 then
			
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(0,math.sin(sine/15)-1,0)*angles(math.rad(0),math.rad(180),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(0,math.sin(sine/15)-2,0)*angles(math.rad(0),math.rad(180),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(0,math.sin(sine/15)-3,0)*angles(math.rad(0),math.rad(180),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(0,math.sin(sine/15)+2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(0,math.sin(sine/15)+1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(0,math.sin(sine/15)+0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 146536 then
			
			handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(0,1.5 + 0.75 * math.cos(sine / 21),0)*angles(math.rad(0 + 1 + 1 * math.cos(sine / 1)),math.rad(0 - 1),1 + 1),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(0,1.5 + 0.75 * math.cos(sine / 21),0)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 2),1 + 2),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(0,1.5 + 0.75 * math.cos(sine / 21),0)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 3),1 + 3),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(0,1.5 + 0.75 * math.cos(sine / 21),0)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 4),1 + 4),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(0,1.5 + 0.75 * math.cos(sine / 21),0)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 5),1 + 5),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(0,1.5 + 0.75 * math.cos(sine / 21),0)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 6),1 + 6),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 27),-1)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 7),1 + 7),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 28),-1)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 8),1 + 8),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 29),-1)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 9),1 + 9),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 30),-1)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 10),1 + 10),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 31),-1)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 11),1 + 11),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 32),-1)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 12),1 + 12),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 10110 then
			
			handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(0,1.5,0)*angles(math.rad(0 + 1),math.rad(0 - 1),1 + 1)*angles(math.rad(5 + 10 * math.cos(sine / 25)),math.rad(5 + 10 * math.cos(sine / 25)),math.rad(-50)),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(0,1.5,0)*angles(math.rad(0 + 1),math.rad(0 - 2),1 + 2)*angles(math.rad(5 + 10 * math.cos(sine / 25)),math.rad(5 + 10 * math.cos(sine / 25)),math.rad(-50)),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(0,1.5,0)*angles(math.rad(0 + 1),math.rad(0 - 3),1 + 3)*angles(0,math.rad(-5 - 10 * math.cos(sine / 25)),math.rad(-135)),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(0,1.5,0)*angles(math.rad(0 + 1),math.rad(0 - 4),1 + 4)*angles(math.rad(-5 - 10 * math.cos(sine / 25)),math.rad(-5 - 10 * math.cos(sine / 25)),math.rad(-50)),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(0,1.5,0)*angles(math.rad(0 + 1),math.rad(0 - 5),1 + 5)*angles(math.rad(-5 - 10 * math.cos(sine / 25)),math.rad(-5 - 10 * math.cos(sine / 25)),math.rad(-50)),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(0,1.5,0)*angles(math.rad(0 + 1),math.rad(0 - 6),1 + 6)*angles(0,math.rad(5 + 10 * math.cos(sine / 25)),math.rad(-135)),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 27),-1)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 7),1 + 7),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 28),-1)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 8),1 + 8),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 29),-1)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 9),1 + 9),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 30),-1)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 10),1 + 10),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 31),-1)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 11),1 + 11),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 32),-1)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 12),1 + 12),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 124 then
			
			handleweld.C0=clerp(handleweld.C0,cf(-2,1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handleweld.C0,cf(-2,1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 + 3600 * math.cos(sine / 360))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 + 3600 * math.cos(sine / 360))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 + 3600 * math.cos(sine / 360))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 + 3600 * math.cos(sine / 360))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 + 3600 * math.cos(sine / 360))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 + 3600 * math.cos(sine / 360))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 - 3600 * math.cos(sine / 360))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 - 3600 * math.cos(sine / 360))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 - 3600 * math.cos(sine / 360))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 3600 * math.cos(sine / 360))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 - 3600 * math.cos(sine / 360))),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 - 3600 * math.cos(sine / 360))),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 7888 then
			
			lwing1weld.C1=clerp(lwing1weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 + 3600 * math.cos(sine / 360))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 + 3600 * math.cos(sine / 360))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 + 3600 * math.cos(sine / 360))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 + 3600 * math.cos(sine / 360))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 + 3600 * math.cos(sine / 360))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 + 3600 * math.cos(sine / 360))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(0 + 3600 * math.cos(sine / 360))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(120 + 3600 * math.cos(sine / 360))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-120 + 3600 * math.cos(sine / 360))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 3600 * math.cos(sine / 360))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 - 3600 * math.cos(sine / 360))),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 - 3600 * math.cos(sine / 360))),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 666666666 then
			
			lwing1weld.C1=clerp(lwing1weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 + 3600 * math.cos(sine / 360))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 + 3600 * math.cos(sine / 360))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 + 3600 * math.cos(sine / 360))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 + 3600 * math.cos(sine / 360))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 + 3600 * math.cos(sine / 360))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 + 3600 * math.cos(sine / 360))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(0 + 3600 * math.cos(sine / 360))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(120 + 3600 * math.cos(sine / 360))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-120 + 3600 * math.cos(sine / 360))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 3600 * math.cos(sine / 360))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 - 3600 * math.cos(sine / 360))),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 - 3600 * math.cos(sine / 360))),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 78213 then
			
			handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 + 3600 * math.cos(sine / 360))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 + 3600 * math.cos(sine / 360))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 + 3600 * math.cos(sine / 360))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 3600 * math.cos(sine / 360))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 - 3600 * math.cos(sine / 360))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 - 3600 * math.cos(sine / 360))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 - 3600 * math.cos(sine / 360))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 - 3600 * math.cos(sine / 360))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 - 3600 * math.cos(sine / 360))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 + 1.5 * math.cos(sine / 360),-0.25 - 0.5 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(0 - 3600 * math.cos(sine / 720))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 + 1.5 * math.cos(sine / 360),-0.25 - 0.5 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(120 - 3600 * math.cos(sine / 720))),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 + 1.5 * math.cos(sine / 360),-0.25 - 0.5 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-120 - 3600 * math.cos(sine / 720))),.3)
			
			sine =  sine + change
			
		elseif ModeOfGlitch == -99 then
			
			lwing1weld.C1=clerp(lwing1weld.C1,cf(2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(sine / 32))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(sine / 32))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(sine / 32))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos(sine / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(sine / 32))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos(sine / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(sine / 32))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos(sine / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(sine / 32))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(-2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(sine / 32))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(-3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(sine / 32))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(sine / 32))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(-4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos(sine / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(sine / 32))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(-5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos(sine / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(sine / 32))),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(-6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos(sine / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(sine / 32))),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 102 or ModeOfGlitch == 4434 then
			
			lwing1weld.C1=clerp(lwing1weld.C1,cf(2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(sine / 32))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(sine / 16))),.5)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(sine / 8))),.7)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 - 3600 * math.cos(sine / 360))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 - 3600 * math.cos(sine / 360))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 - 3600 * math.cos(sine / 360))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(-2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(sine / 32))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(-3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(sine / 16))),.5)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(sine / 8))),.7)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 3600 * math.cos(sine / 360))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 - 3600 * math.cos(sine / 360))),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 - 3600 * math.cos(sine / 360))),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 906 or glitchermode == "universal" then
			
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handlexweld.C0,cf(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.05 * math.cos(sine / 57))*angles(math.rad(0 + 2 * math.cos(sine / 55)),math.rad(0 + 2 * math.cos(sine / 46)),math.rad(0 + 2 * math.cos(sine / 32))),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 36),0)*angles(math.rad(0 + 3 * math.cos(sine / 42)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 + 5 * math.cos(sine / 56))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 38),0)*angles(math.rad(0 + 3 * math.cos(sine / 45)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(130 + 5 * math.cos(sine / 56))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 41),0)*angles(math.rad(0 + 3 * math.cos(sine / 48)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(50 + 5 * math.cos(sine / 56))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 36),0)*angles(math.rad(0 + 3 * math.cos(sine / 46)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 5 * math.cos(sine / 56))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 38),0)*angles(math.rad(0 + 3 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-130 - 5 * math.cos(sine / 56))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 41),0)*angles(math.rad(0 + 3 * math.cos(sine / 40)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-50 - 5 * math.cos(sine / 56))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(0 + 3600 * math.cos(sine / 360))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(120 + 3600 * math.cos(sine / 360))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-120 + 3600 * math.cos(sine / 360))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 3600 * math.cos(sine / 360))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 - 3600 * math.cos(sine / 360))),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 - 3600 * math.cos(sine / 360))),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == -5 or ModeOfGlitch == 665 or ModeOfGlitch == 8889 then
			
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handlexweld.C0,cf(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.05 * math.cos(sine / 57))*angles(math.rad(0 + 2 * math.cos(sine / 55)),math.rad(0 + 2 * math.cos(sine / 46)),math.rad(0 + 2 * math.cos(sine / 32))),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 36),0)*angles(math.rad(0 + 3 * math.cos(sine / 42)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 + 5 * math.cos(sine / 56))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 38),0)*angles(math.rad(0 + 3 * math.cos(sine / 45)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(130 + 5 * math.cos(sine / 56))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 41),0)*angles(math.rad(0 + 3 * math.cos(sine / 48)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(50 + 5 * math.cos(sine / 56))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 36),0)*angles(math.rad(0 + 3 * math.cos(sine / 46)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 5 * math.cos(sine / 56))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 38),0)*angles(math.rad(0 + 3 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-130 - 5 * math.cos(sine / 56))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 41),0)*angles(math.rad(0 + 3 * math.cos(sine / 40)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-50 - 5 * math.cos(sine / 56))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(0 + 3600 * math.cos(sine / 360))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(120 + 3600 * math.cos(sine / 360))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-120 + 3600 * math.cos(sine / 360))),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 2102 then
			
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(0 + 3600 * math.cos(sine / 360))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(120 + 3600 * math.cos(sine / 360))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-120 + 3600 * math.cos(sine / 360))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(0 + 1.5 * math.cos(sine / 360),-0.25 - 0.5 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(0 - 3600 * math.cos(sine / 720))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(0 + 1.5 * math.cos(sine / 360),-0.25 - 0.5 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(120 - 3600 * math.cos(sine / 720))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(0 + 1.5 * math.cos(sine / 360),-0.25 - 0.5 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-120 - 3600 * math.cos(sine / 720))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 - 3600 * math.cos(sine / 360))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 - 3600 * math.cos(sine / 360))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 - 3600 * math.cos(sine / 360))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 3600 * math.cos(sine / 360))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 - 3600 * math.cos(sine / 360))),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 - 3600 * math.cos(sine / 360))),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 555 or ModeOfGlitch == 7621 or ModeOfGlitch == 3141 or ModeOfGlitch == 101010 or ModeOfGlitch == 44444 or ModeOfGlitch == 404 or ModeOfGlitch == 55846 then
			
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(0 + 3600 * math.cos(sine / 360))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(120 + 3600 * math.cos(sine / 360))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-120 + 3600 * math.cos(sine / 360))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos(sine / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(sine / 32))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos(sine / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(sine / 32))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos(sine / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(sine / 32))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(0 + 1.5 * math.cos(sine / 360),-0.25 - 0.5 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(0 - 3600 * math.cos(sine / 720))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(0 + 1.5 * math.cos(sine / 360),-0.25 - 0.5 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(120 - 3600 * math.cos(sine / 720))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(0 + 1.5 * math.cos(sine / 360),-0.25 - 0.5 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-120 - 3600 * math.cos(sine / 720))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(-4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos(sine / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(sine / 32))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(-5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos(sine / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(sine / 32))),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(-6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos(sine / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(sine / 32))),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 2019 then
			
			lwing1weld.C1=clerp(lwing1weld.C1,cf(2,0,-0.4)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(sine / 32))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(3,1,-0.4)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(sine / 32))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(3.75,2,-0.4)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(sine / 32))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(-2,0,-0.4)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(sine / 32))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(-3,1,-0.4)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(sine / 32))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(-3.75,2,-0.3)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(sine / 32))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0,2 - 1.5 * math.cos(sine / 32.5),0)*angles(math.rad(0),math.rad(0),math.rad(360 + 720 * math.cos(sine / 65))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0,0 - 1 * math.cos(sine / 32.5),-0.8)*angles(math.rad(0 + 5 * math.cos(sine / 32.5)),math.rad(0),math.rad(360)),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0,2 - 1.5 * math.cos(sine / 32.5),0)*angles(math.rad(0),math.rad(0),math.rad(180 + 720 * math.cos(sine / 65))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0,2 - 1.5 * math.cos(sine / 32.5),0)*angles(math.rad(0),math.rad(0),math.rad(-90 + 720 * math.cos(sine / 65))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0,-1 + 1 * math.cos(sine / 32.5),-0.9)*angles(math.rad(0 + 5 * math.cos(sine / 32.5)),math.rad(0),math.rad(180)),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0,2 - 1.5 * math.cos(sine / 32.5),-0.9)*angles(math.rad(0),math.rad(0),math.rad(90 + 720 * math.cos(sine / 65))),.3)

			sine = sine + change
			
		elseif ModeOfGlitch == 81 then
			
			handleweld.C0=clerp(handleweld.C0,cf(0,-6.5,-1.5)*angles(math.rad(90),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(0 + 3600 * math.cos(sine / 360))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(120 + 3600 * math.cos(sine / 360))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-120 + 3600 * math.cos(sine / 360))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(0 + 1.5 * math.cos(sine / 360),-0.25 - 0.5 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(0 - 3600 * math.cos(sine / 720))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(0 + 1.5 * math.cos(sine / 360),-0.25 - 0.5 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(120 - 3600 * math.cos(sine / 720))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(0 + 1.5 * math.cos(sine / 360),-0.25 - 0.5 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-120 - 3600 * math.cos(sine / 720))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 - 3600 * math.cos(sine / 360))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 - 3600 * math.cos(sine / 360))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 - 3600 * math.cos(sine / 360))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 3600 * math.cos(sine / 360))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 - 3600 * math.cos(sine / 360))),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 - 3600 * math.cos(sine / 360))),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 841 or ModeOfGlitch == 2222222 or ModeOfGlitch == -3 or ModeOfGlitch == -4 then
			
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 + 3600 * math.cos(sine / 360))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 + 3600 * math.cos(sine / 360))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 + 3600 * math.cos(sine / 360))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 + 3600 * math.cos(sine / 360))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 + 3600 * math.cos(sine / 360))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 + 3600 * math.cos(sine / 360))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0,2 - 1.5 * math.cos(sine / 32.5),0)*angles(math.rad(0),math.rad(0),math.rad(360 + 720 * math.cos(sine / 65))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0,0 - 1 * math.cos(sine / 32.5),-0.8)*angles(math.rad(0 + 5 * math.cos(sine / 32.5)),math.rad(0),math.rad(360)),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0,2 - 1.5 * math.cos(sine / 32.5),0)*angles(math.rad(0),math.rad(0),math.rad(180 + 720 * math.cos(sine / 65))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0,2 - 1.5 * math.cos(sine / 32.5),0)*angles(math.rad(0),math.rad(0),math.rad(-90 + 720 * math.cos(sine / 65))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0,-1 + 1 * math.cos(sine / 32.5),-0.9)*angles(math.rad(0 + 5 * math.cos(sine / 32.5)),math.rad(0),math.rad(180)),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0,2 - 1.5 * math.cos(sine / 32.5),-0.9)*angles(math.rad(0),math.rad(0),math.rad(90 + 720 * math.cos(sine / 65))),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 69746974 then
			
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			
			if not KeyAnim then
				
				lwing1weld.C1 = clerp(lwing1weld.C1, cf(0,1.5,0)*angles(0,math.rad(0+2.5*math.cos(sine/36)),math.rad(0+sine))*angles(0,math.rad(90),0)*cf(-2,0,0),.2)
				lwing2weld.C1 = clerp(lwing2weld.C1, cf(0,1.5,0)*angles(0,math.rad(0+7.5*math.cos(sine/32)),math.rad(135+sine))*angles(0,math.rad(90),0)*cf(-2,0,0),.2)
				lwing3weld.C1 = clerp(lwing3weld.C1, cf(0,1.5,0)*angles(0,math.rad(0+5*math.cos(sine/39)),math.rad(225+sine))*angles(0,math.rad(90),0)*cf(-2,0,0),.2)
				rwing1weld.C1 = clerp(rwing1weld.C1, cf(0,1.5,0)*angles(0,math.rad(0+2.5*math.cos(sine/36)),math.rad(0-sine))*angles(0,math.rad(90),0)*cf(-2,0,0),.2)
				rwing2weld.C1 = clerp(rwing2weld.C1, cf(0,1.5,0)*angles(0,math.rad(0+7.5*math.cos(sine/32)),math.rad(135-sine))*angles(0,math.rad(90),0)*cf(-2,0,0),.2)
				rwing3weld.C1 = clerp(rwing3weld.C1, cf(0,1.5,0)*angles(0,math.rad(0+5*math.cos(sine/39)),math.rad(225-sine))*angles(0,math.rad(90),0)*cf(-2,0,0),.2)
				
			else
				
				lwing1weld.C1=clerp(lwing1weld.C1,cf(2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(sine / 32))),.3)
				lwing2weld.C1=clerp(lwing2weld.C1,cf(3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(sine / 32))),.3)
				lwing3weld.C1=clerp(lwing3weld.C1,cf(3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(sine / 32))),.3)
				lwing4weld.C1=clerp(lwing4weld.C1,cf(4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos(sine / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(sine / 32))),.3)
				lwing5weld.C1=clerp(lwing5weld.C1,cf(5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos(sine / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(sine / 32))),.3)
				lwing6weld.C1=clerp(lwing6weld.C1,cf(6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos(sine / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(sine / 32))),.3)
				rwing1weld.C1=clerp(rwing1weld.C1,cf(-2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(sine / 32))),.3)
				rwing2weld.C1=clerp(rwing2weld.C1,cf(-3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(sine / 32))),.3)
				rwing3weld.C1=clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(sine / 32))),.3)
				rwing4weld.C1=clerp(rwing4weld.C1,cf(-4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos(sine / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(sine / 32))),.3)
				rwing5weld.C1=clerp(rwing5weld.C1,cf(-5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos(sine / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(sine / 32))),.3)
				rwing6weld.C1=clerp(rwing6weld.C1,cf(-6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos(sine / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(sine / 32))),.3)
			end
			
			sine = sine + change

		elseif ModeOfGlitch == 23897456237845 then

			lwing1weld.C1=clerp(lwing1weld.C1,cf(1 + 5 * math.cos(sine * 3 / 180),4 + 2.75 * math.cos(sine * 3 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 3 / 50)),math.rad(0 - 3 * math.cos(sine * 3 / 36)),math.rad(90 + 3600 * math.cos(sine * 3 / 360))),1.5)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(1 + 5 * math.cos(sine * 3 / 180),4 + 2.75 * math.cos(sine * 3 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 3 / 70)),math.rad(0 - 3 * math.cos(sine * 3 / 37)),math.rad(147.5 + 3600 * math.cos(sine * 3 / 360))),1.5)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(1 + 5 * math.cos(sine * 3 / 180),4 + 2.75 * math.cos(sine * 3 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 3 / 60)),math.rad(0 - 3 * math.cos(sine * 3 / 51)),math.rad(32.5 + 3600 * math.cos(sine * 3 / 360))),1.5)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(1 + 5 * math.cos(sine * 3 / 180),4 + 2.75 * math.cos(sine * 3 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 3 / 50)),math.rad(0 - 3 * math.cos(sine * 3 / 36)),math.rad(-90 + 3600 * math.cos(sine * 3 / 360))),1.5)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(1 + 5 * math.cos(sine * 3 / 180),4 + 2.75 * math.cos(sine * 3 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 3 / 70)),math.rad(0 - 3 * math.cos(sine * 3 / 37)),math.rad(-147.5 + 3600 * math.cos(sine * 3 / 360))),1.5)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(1 + 5 * math.cos(sine * 3 / 180),4 + 2.75 * math.cos(sine * 3 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 3 / 60)),math.rad(0 - 3 * math.cos(sine * 3 / 51)),math.rad(-32.5 + 3600 * math.cos(sine * 3 / 360))),1.5)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 + 2.5 * math.cos(sine * 3 / 180),1.5 + 0.75 * math.cos(sine * 3 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 3 / 50)),math.rad(0 - 3 * math.cos(sine * 3 / 36)),math.rad(90 - 3600 * math.cos(sine * 3 / 360))),1.5)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 + 2.5 * math.cos(sine * 3 / 180),1.5 + 0.75 * math.cos(sine * 3 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 3 / 70)),math.rad(0 - 3 * math.cos(sine * 3 / 37)),math.rad(147.5 - 3600 * math.cos(sine * 3 / 360))),1.5)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 + 2.5 * math.cos(sine * 3 / 180),1.5 + 0.75 * math.cos(sine * 3 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 3 / 60)),math.rad(0 - 3 * math.cos(sine * 3 / 51)),math.rad(32.5 - 3600 * math.cos(sine * 3 / 360))),1.5)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 + 2.5 * math.cos(sine * 3 / 180),1.5 + 0.75 * math.cos(sine * 3 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 3 / 50)),math.rad(0 - 3 * math.cos(sine * 3 / 36)),math.rad(-90 - 3600 * math.cos(sine * 3 / 360))),1.5)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 + 2.5 * math.cos(sine * 3 / 180),1.5 + 0.75 * math.cos(sine * 3 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 3 / 70)),math.rad(0 - 3 * math.cos(sine * 3 / 37)),math.rad(-147.5 - 3600 * math.cos(sine * 3 / 360))),1.5)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 + 2.5 * math.cos(sine * 2 / 180),1.5 + 0.75 * math.cos(sine * 3 / 25),0)*angles(math.rad(0 + 3 * math.cos(sine * 3 / 60)),math.rad(0 - 3 * math.cos(sine * 3 / 51)),math.rad(-32.5 - 3600 * math.cos(sine * 3 / 360))),1.5)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 18446744073709551615 then
			
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handlexweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)

			if not KeyAnim then

				lwing1weld.C1 = clerp(lwing1weld.C1, cf(0,3.5,1)*angles(0,math.rad(0+2.5*math.cos(sine/36)),math.rad(120+sine))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,0,1.5),.2)
				lwing2weld.C1 = clerp(lwing2weld.C1, cf(0,4,1)*angles(0,math.rad(0+7.5*math.cos(sine/32)),math.rad(240+sine))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,0,1.5),.2)
				lwing3weld.C1 = clerp(lwing3weld.C1, cf(0,4.5,1)*angles(0,math.rad(0+5*math.cos(sine/39)),math.rad(360+sine))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,0,1.5),.2)
				rwing1weld.C1 = clerp(rwing1weld.C1, cf(0,3.5,1)*angles(0,math.rad(0+2.5*math.cos(sine/36)),math.rad(120-sine))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,0,1.5),.2)
				rwing2weld.C1 = clerp(rwing2weld.C1, cf(0,4,1)*angles(0,math.rad(0+7.5*math.cos(sine/32)),math.rad(240-sine))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,0,1.5),.2)
				rwing3weld.C1 = clerp(rwing3weld.C1, cf(0,4.5,1)*angles(0,math.rad(0+5*math.cos(sine/39)),math.rad(360-sine))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,0,1.5),.2)
				
				lwing4weld.C1 = clerp(lwing4weld.C1,cf(0 + -5 * math.sin(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.sin(sine / 36)),math.rad(90 - 1000 * math.cos(sine / 360))),.3)
				lwing5weld.C1 = clerp(lwing5weld.C1,cf(0 + -5 * math.sin(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.sin(sine / 37)),math.rad(147.5 - 1000 * math.cos(sine / 360))),.3)
				lwing6weld.C1 = clerp(lwing6weld.C1,cf(0 + -5 * math.sin(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.sin(sine / 51)),math.rad(32.5 - 1000 * math.cos(sine / 360))),.3)
				rwing4weld.C1 = clerp(rwing4weld.C1,cf(0 + -5 * math.sin(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.sin(sine / 36)),math.rad(-90 - 1000 * math.cos(sine / 360))),.3)
				rwing5weld.C1 = clerp(rwing5weld.C1,cf(0 + -5 * math.sin(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.sin(sine / 37)),math.rad(-147.5 - 1000 * math.cos(sine / 360))),.3)
				rwing6weld.C1 = clerp(rwing6weld.C1,cf(0 + -5 * math.sin(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.sin(sine / 51)),math.rad(-32.5 - 1000 * math.cos(sine / 360))),.3)
				
			else
				
				lwing1weld.C1=clerp(lwing1weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 + 3600 * math.cos(sine / 360))),.3)
				lwing2weld.C1=clerp(lwing2weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 + 3600 * math.cos(sine / 360))),.3)
				lwing3weld.C1=clerp(lwing3weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 + 3600 * math.cos(sine / 360))),.3)
				rwing1weld.C1=clerp(rwing1weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 + 3600 * math.cos(sine / 360))),.3)
				rwing2weld.C1=clerp(rwing2weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 + 3600 * math.cos(sine / 360))),.3)
				rwing3weld.C1=clerp(rwing3weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 + 3600 * math.cos(sine / 360))),.3)
				lwing4weld.C1=clerp(lwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 - 3600 * math.cos(sine / 360))),.3)
				lwing5weld.C1=clerp(lwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 - 3600 * math.cos(sine / 360))),.3)
				lwing6weld.C1=clerp(lwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 - 3600 * math.cos(sine / 360))),.3)
				rwing4weld.C1=clerp(rwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 3600 * math.cos(sine / 360))),.3)
				rwing5weld.C1=clerp(rwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 - 3600 * math.cos(sine / 360))),.3)
				rwing6weld.C1=clerp(rwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 - 3600 * math.cos(sine / 360))),.3)
				
			end
			
			sine = sine + change
			
		elseif ModeOfGlitch == 2335 then
			
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(sine / 32))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(sine / 32))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(sine / 32))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(-2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(sine / 32))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(-3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(sine / 32))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(sine / 32))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 - 3600 * math.cos(sine / 360))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 - 3600 * math.cos(sine / 360))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 - 3600 * math.cos(sine / 360))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 3600 * math.cos(sine / 360))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 - 3600 * math.cos(sine / 360))),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 - 3600 * math.cos(sine / 360))),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 412 or ModeOfGlitch == 738  then
			
			handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(0,1.5 + 0.75 * math.cos(sine / 21),0)*angles(math.rad(0 + 1 + 1 * math.cos(sine / 1)),math.rad(0 - 1),1 + 1),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(0,1.5 + 0.75 * math.cos(sine / 21),0)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 2),1 + 2),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(0,1.5 + 0.75 * math.cos(sine / 21),0)*angles(math.rad(0 + 1 * math.cos(sine / 1)),math.rad(0 - 3),1 + 3),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(0 - 7 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-0.75)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 3600 * math.cos(sine / 360))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(0 - 7 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-0.75)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 - 3600 * math.cos(sine / 360))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(0 - 7 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-0.75)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 - 3600 * math.cos(sine / 360))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 + 3600 * math.cos(sine / 360))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 + 3600 * math.cos(sine / 360))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 + 3600 * math.cos(sine / 360))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 + 3600 * math.cos(sine / 1800))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 + 3600 * math.cos(sine / 1800))),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 + 3600 * math.cos(sine / 1800))),.3)
			
			sine = sine + change
			
		elseif ModeOfGlitch == 2304 or ModeOfGlitch == 765688533321 then
			
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(1 + 5 * math.cos(sine / 45),4 + 2.75 * math.cos(sine / 6.25),0)*angles(math.rad(0 + 1 * math.cos(sine / 12.5)),math.rad(0 + 2 * math.cos(sine / 9)),math.rad(90 + 3600 * math.cos(sine / 90))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(sine / 32))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(sine / 32))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos(sine / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(sine / 32))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos(sine / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(sine / 32))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos(sine / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(sine / 32))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(1 + 5 * math.cos(sine / 45),4 + 2.75 * math.cos(sine / 6.25),0)*angles(math.rad(0 + 1 * math.cos(sine / 12.5)),math.rad(0 - 2 * math.cos(sine / 9)),math.rad(-90 + 3600 * math.cos(sine / 90))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(-3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(sine / 32))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(sine / 32))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(-4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos(sine / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(sine / 32))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(-5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos(sine / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(sine / 32))),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(-6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos(sine / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(sine / 32))),.3)
			
			sine = sine + change 
			
		else
			
			handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			handlexweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			lwing1weld.C1=clerp(lwing1weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 + 3600 * math.cos(sine / 360))),.3)
			lwing2weld.C1=clerp(lwing2weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 + 3600 * math.cos(sine / 360))),.3)
			lwing3weld.C1=clerp(lwing3weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 + 3600 * math.cos(sine / 360))),.3)
			rwing1weld.C1=clerp(rwing1weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 + 3600 * math.cos(sine / 360))),.3)
			rwing2weld.C1=clerp(rwing2weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 + 3600 * math.cos(sine / 360))),.3)
			rwing3weld.C1=clerp(rwing3weld.C1,cf(1 + 5 * math.cos(sine / 180),4 + 2.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 + 3600 * math.cos(sine / 360))),.3)
			lwing4weld.C1=clerp(lwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 - 3600 * math.cos(sine / 360))),.3)
			lwing5weld.C1=clerp(lwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 - 3600 * math.cos(sine / 360))),.3)
			lwing6weld.C1=clerp(lwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 - 3600 * math.cos(sine / 360))),.3)
			rwing4weld.C1=clerp(rwing4weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 3600 * math.cos(sine / 360))),.3)
			rwing5weld.C1=clerp(rwing5weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 - 3600 * math.cos(sine / 360))),.3)
			rwing6weld.C1=clerp(rwing6weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 - 3600 * math.cos(sine / 360))),.3)
			
			sine = sine + change
		end

		local fireSpeed = 0
		local fireYValue = 0
		
		if HorizontalAudioMove then
			
			fireSpeed = 3 + kan.PlaybackLoudness / 3500
			
		else
			
			fireSpeed = 3
		end
		
		if VerticalAudioMove then
			
			fireYValue = 2.5 - kan.PlaybackLoudness / 125
			
		else
			
			fireYValue = 0
		end
		
		fireWeld1.C1 = clerp(fireWeld1.C1, cf(0,3,1)*angles(0,math.rad(0+2.5*math.cos(sine*fireSpeed/36)),math.rad(120+sine*fireSpeed))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,fireYValue,1.25),.2)
		fireWeld2.C1 = clerp(fireWeld2.C1, cf(0,3,1)*angles(0,math.rad(0+2.5*math.cos(sine*fireSpeed/36)),math.rad(240+sine*fireSpeed))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,fireYValue,1.25),.2)
		fireWeld3.C1 = clerp(fireWeld3.C1, cf(0,3,1)*angles(0,math.rad(0+2.5*math.cos(sine*fireSpeed/36)),math.rad(360+sine*fireSpeed))*angles(math.rad(-90),math.rad(-180),math.rad(-180))*cf(0,fireYValue,1.25),.2)
		
		local torvel = (RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
		local velderp = RootPart.Velocity.y
		
		hitfloor,posfloor = rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
		
		if equipped == true or equipped == false then
			
			if attack==false then
				
				idle=idle+1
				
			else
				
				idle=0
			end

		if idle >= 500 then
			
			if attack == false then
				
				-- Sheath()
			end
		end
		
		if RootPart.Velocity.y > 1 and hitfloor==nil then 
			
			Anim="Jump"

			if attack==false then
				
				RH.C0=clerp(RH.C0,cf(1,-0.35 - 0.05 * math.cos(sine / 25),-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
				LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(-10),math.rad(0),math.rad(0)),.1)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.1)
				RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(25)),.1)
				LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(-25)),.1)
			end
			
		elseif RootPart.Velocity.y < -1 and hitfloor==nil then
			
			Anim="Fall"
			
			if attack==false then
				
				RH.C0=clerp(RH.C0,cf(1,-0.35 - 0.05 * math.cos(sine / 25),-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
				LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(10),math.rad(0),math.rad(0)),.1)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2.5),math.rad(0),math.rad(0)),.1)
				RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-15),math.rad(0),math.rad(55)),.1)
				LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-15),math.rad(0),math.rad(-55)),.1)
			end
		
		elseif torvel<1 and hitfloor~=nil then
			
			Anim="Idle"
			
			if attack==false then
				
				if ModeOfGlitch == 1 or ModeOfGlitch == 4 then
					
					local snap = math.random(1,10)
						
						if snap == 1 then
							
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 + math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(22 + math.random(-5,5))),1)
						end
						
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-5.5 - 2 * math.cos(sine / 56)),math.rad(-12 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6),math.rad(22 - 2 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.01 + 0.03 * math.cos(sine / 32),0 + 0.1 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-22 + 2 * math.cos(sine / 56))),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 43) - 5 * math.cos(sine / 0.25)),math.rad(22 - 2 * math.cos(sine / 56))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 + 3 * math.cos(sine / 43)),math.rad(-16 - 5 * math.cos(sine / 52)),math.rad(13 + 9 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1.35,1 + 0.025 * math.cos(sine / 45),-0.2)*angles(math.rad(148 - 2 * math.cos(sine / 51)),math.rad(0 - 4 * math.cos(sine / 64)),math.rad(22 - 2 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 69746974 then
					
					RootJoint.C0 = clerp(RootJoint.C0, cf(0,0.7+.1*math.cos(sine/36),0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(90-2.5*math.sin(sine/36))),0.1)
					LW.C0 = clerp(LW.C0, cf(-1.2,0.1,0.1)*angles(math.rad(23),math.rad(16.5),math.rad(22.6)),0.1)
					RW.C0 = clerp(RW.C0, cf(1,0.7,-0.4)*angles(math.rad(-162),math.rad(-11.2),math.rad(-10)),0.1)
					LH.C0 = clerp(LH.C0, cf(-0.9,-1.1,-0.2)*angles(math.rad(-19.3),math.rad(6.5),math.rad(54.3-7.5*math.sin(sine/36))),0.1)
					RH.C0 = clerp(RH.C0, cf(0.4,-0.9,0)*angles(math.rad(0),math.rad(0),math.rad(25.9-7.5*math.sin(sine/36))),0.1)
					-- NK.C0 = clerp(NK.C0, cf(-0.2,1.4,0)*angles(math.rad(0),math.rad(0),math.rad(48.9)),0.1)
					
				elseif ModeOfGlitch == 2335 then
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-4 - 2 * math.cos(sine / 53)),math.rad(0 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(9 - 2 * math.cos(sine / 53)),math.rad(0 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0 - 2 * math.cos(sine / 53))),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(19 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(2 + 5 * math.cos(sine / 74)),math.rad(18 - 3 * math.cos(sine / 53)),math.rad(17 + 3 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 73)),math.rad(-11 - 1 * math.cos(sine / 55)),math.rad(-14 - 3 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == -5 or ModeOfGlitch == 665 then
					
					LH.C0 = clerp(LH.C0,cf(-1-math.rad(0+5*math.cos(sine/16)),-1+math.rad(0+5*math.cos(sine/16)),0)*angles(0,0,-math.rad(0+5*math.cos(sine/16)))*angles(math.rad(-15),math.rad(25),0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
					RH.C0 = clerp(RH.C0,cf(1-math.rad(0+5*math.cos(sine/16)),-1-math.rad(0+5*math.cos(sine/16)),0)*angles(0,0,-math.rad(0+5*math.cos(sine/16)))*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
					RootJoint.C0 = clerp(RootJoint.C0,cf(0,0,0)*angles(0,0,math.rad(0+5*math.cos(sine/16)))*RootCF,.1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(0,0,-math.rad(0+5*math.cos(sine/16))),.1)
					LW.C0 = clerp(LW.C0,cf(-1.5,0.5,0)*cf(0,-.15,0)*angles(math.rad(15),0,math.rad(20)),.1)
					RW.C0 = clerp(RW.C0,cf(1.5,0.5,0)*angles(0,0,math.rad(5+5*math.sin(sine/16))),.1)
					
				elseif ModeOfGlitch == 5 or ModeOfGlitch == 9 then
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(0 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(0 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(10 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(2 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(8 + 3 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-14 - 3 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 10 then
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 - 1 * math.cos(sine / 34))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(20),math.rad(0 + 1 * math.cos(sine / 34))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(-20)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 15 * math.cos(sine / 0.5265)),math.rad(0 - 15 * math.cos(sine / 0.25)),math.rad(0 - 15 * math.cos(sine / 0.465)))*angles(math.rad(10 - 2.5 * math.cos(sine / 28)),math.rad(0),math.rad(20)),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(15 - 15 * math.cos(sine / 0.5265)),math.rad(0 - 15 * math.cos(sine / 0.25)),math.rad(0 - 15 * math.cos(sine / 0.465)))*angles(math.rad(math.random(5,15)),math.rad(-5),math.rad(15 + 7.5 * math.cos(sine / 12.5))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(15 - 15 * math.cos(sine / 0.5265)),math.rad(0 - 15 * math.cos(sine / 0.25)),math.rad(0 - 15 * math.cos(sine / 0.465)))*angles(math.rad(math.random(5,15)),math.rad(5),math.rad(-15 - 7.5 * math.cos(sine / 12.5))),.1)
					
				elseif ModeOfGlitch == 738 then
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-10 - 2.5 * math.cos(sine / 32)),math.rad(-20),math.rad(0)),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-10 + 2.5 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 32))*angles(math.rad(10 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(20)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0)),.1)
					RW.C0=clerp(RW.C0,cf(0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(-20 + 2.5 * math.cos(sine / 28))),.1)
					LW.C0=clerp(LW.C0,cf(-0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(20 - 2.5 * math.cos(sine / 28))),.1)
					
				elseif ModeOfGlitch == 666666 then 
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.025 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(20)),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.025 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(-20)),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.025 * math.cos(sine / 32))*angles(math.rad(20 - 0.5 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30 - 5 * math.cos(sine / 0.5265)),math.rad(0 - 15 * math.cos(sine / 0.25)),math.rad(0 - 15 * math.cos(sine / 0.465))),.1)
					RW.C0=clerp(RW.C0,cf(1.3,0.5,0)*angles(math.rad(180),math.rad(-90),math.rad(15))*angles(math.rad(-35),0,0)*angles(math.rad(10 + 2.5 * math.cos(sine / 0.252)),math.rad(0 + 2.5 * math.cos(sine / 0.123)),math.rad(5 + 2.5 * math.cos(sine / 0.6)))*angles(0,math.rad(0 - 15 * math.cos(sine / 0.25)),math.rad(0 - 15 * math.cos(sine / 0.465))),.1)
					LW.C0=clerp(LW.C0,cf(-1.3,0.5,0)*angles(math.rad(180),math.rad(90),math.rad(-15))*angles(math.rad(-35),0,0)*angles(math.rad(10 + 2.5 * math.cos(sine / 0.568)),math.rad(0 + 2.5 * math.cos(sine / 0.664)),math.rad(-5 + 2.5 * math.cos(sine / 0.23)))*angles(0,math.rad(0 - 15 * math.cos(sine / 0.25)),math.rad(0 - 15 * math.cos(sine / 0.465))),.1)
					
				elseif ModeOfGlitch == 666666666 then
					
					local snap = math.random(1,3)
					
					if snap == 1 then
						
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 + math.random(-30,30)),math.rad(math.random(-30,30)),math.rad(math.random(-30,30))),0.6)
					end
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(83),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(25 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-25 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.25 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(25 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 + 13 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(1 + 3 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-3 - 3 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 67966 then
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(3),math.rad(0 + 3 * math.cos(sine / 56)),math.rad(1 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(6),math.rad(0 + 3 * math.cos(sine / 56)),math.rad(3 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.02 + 0.02 * math.cos(sine / 32),0 + 0.05 * math.cos(sine / 32))*angles(math.rad(2 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0 - 6 * math.cos(sine / 56))),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-3 - 5 * math.cos(sine / 37)),math.rad(0 + 14 * math.cos(sine / 58)),math.rad(0 + 3 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1,0.5 + 0.025 * math.cos(sine / 45),-0.45)*angles(math.rad(33 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(-33 + 3 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.45)*angles(math.rad(23 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(33 - 3 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 11 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 5 * math.cos(sine / 51))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 44))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-36)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(36 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(3 + 7 * math.cos(sine / 79)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(33 + 10 * math.cos(sine / 73))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(15 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-27 - 6 * math.cos(sine / 33))),.1)
					
				elseif ModeOfGlitch == 1055 then
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6),math.rad(-20 - 1 * math.cos(sine / 56)),math.rad(1 - 2 * math.cos(sine / 32))),.2)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-0.5),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(3 + 2 * math.cos(sine / 32))),.2)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.01 + 0.02 * math.cos(sine / 32),0 + 0.05 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(30)),.2)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(-10 + 2 * math.cos(sine / 58)),math.rad(-30)),.2)
					RW.C0=clerp(RW.C0,cf(1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(90 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.2)
					LW.C0=clerp(LW.C0,cf(-1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(67 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.2)
					
				elseif ModeOfGlitch == -666666 then
					
					local snap = math.random(1,30)
					
					if snap == 1 then
						
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 + math.random(-45,0)),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),1)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.4 * math.cos(sine / 30),0 + 0.4 * math.cos(sine / 32),5.2 + 0.4 * math.cos(sine / 26))*angles(math.rad(20 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(math.random(-5,5))),1)
						RW.C0=clerp(RW.C0,cf(1.35,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(math.random(40,185) + 6 * math.cos(sine / 72)),math.rad(2 - 4 * math.cos(sine / 58)),math.rad(math.random(-35,-7) + 1 * math.cos(sine / 45))),1)
						LW.C0=clerp(LW.C0,cf(-1.35,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(math.random(40,187) - 7 * math.cos(sine / 66)),math.rad(6 - 5 * math.cos(sine / 59)),math.rad(math.random(9,31) - 3 * math.cos(sine / 45))),1)
					end
					
				elseif ModeOfGlitch == 10100110110010101100011011100100110010101110100 then
					
					local snap = math.random(1,5)
					
					if snap == 1 then
						
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 + math.random(-1,1)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),0.6)
						RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 + 5 * math.cos(sine / 74) + math.random(-1,1)),math.rad(1 - 3 * math.cos(sine / 53) + math.random(-1,1)),math.rad(1 + 3 * math.cos(sine / 45) + math.random(-1,1))),.6)
						LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 - 3 * math.cos(sine / 73) + math.random(-1,1)),math.rad(2 - 1 * math.cos(sine / 55) + math.random(-1,1)),math.rad(-3 - 3 * math.cos(sine / 45) + math.random(-1,1))),.6)
					end
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(25 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-25 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.25 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(25 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(1 + 3 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-3 - 3 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 676767 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(8 - 6 * math.cos(sine / 67)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-18 - 5 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-15 - 8 * math.cos(sine / 74)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(31 + 8 * math.cos(sine / 38))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(-21 - 2 * math.cos(sine / 32)),math.rad(8),math.rad(0)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 - 6 * math.cos(sine / 37)),math.rad(-14 + 5 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(-24 + 9 * math.cos(sine / 72)),math.rad(3 - 5 * math.cos(sine / 58)),math.rad(38 + 7 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-0.8,0.35 + 0.025 * math.cos(sine / 45),-0.75)*angles(math.rad(160 - 2 * math.cos(sine / 66)),math.rad(5 - 8 * math.cos(sine / 59)),math.rad(87 - 3 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 11111 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.35,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 9 * math.cos(sine / 39))),.2)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-0.5),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 5 * math.cos(sine / 51))),.2)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.01 + 0.02 * math.cos(sine / 32),1 + 0.25 * math.cos(sine / 32))*angles(math.rad(3 - 3 * math.cos(sine / 32)),math.rad(0),math.rad(22)),.2)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(-22)),.2)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(180 + 3 * math.cos(sine / 53)),math.rad(0 - 4 * math.cos(sine / 60)),math.rad(-5 + 4 * math.cos(sine / 45))),.2)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(-5 - 7 * math.cos(sine / 58)),math.rad(1 - 5 * math.cos(sine / 55)),math.rad(-12 - 9 * math.cos(sine / 45))),.2)
					
				elseif ModeOfGlitch == 6666666666666666 then
					
					sphere2(8,"Add",larm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,MAINRUINCOLOR,MAINRUINCOLOR.Color)
					RH.C0=clerp(RH.C0,cf(1,-0.7,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 9 * math.cos(sine / 39)))*angles(0, 0, math.rad(90)),.2)
					LH.C0=clerp(LH.C0,cf(-1,-1,-0.2)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-0.5),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 5 * math.cos(sine / 51)))*angles(0, 0, math.rad(-90)),.2)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.01 + 0.02 * math.cos(sine / 32),1 + 0.25 * math.cos(sine / 32))*angles(math.rad(3 - 3 * math.cos(sine / 32)),math.rad(0),math.rad(22))*angles(math.rad(-10), 0, 0),.2)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(-22)),.2)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(180 + 3 * math.cos(sine / 53)),math.rad(0 - 4 * math.cos(sine / 60)),math.rad(-5 + 4 * math.cos(sine / 45)))*angles(math.rad(-30), 0, 0),.2)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(-5 - 7 * math.cos(sine / 58)),math.rad(1 - 5 * math.cos(sine / 55)),math.rad(-12 - 9 * math.cos(sine / 45))),.2)
					
				elseif ModeOfGlitch == 242424 then
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5 - 2 * math.cos(sine / 34))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5),math.rad(20 - 2 * math.cos(sine / 72)),math.rad(0 + 2 * math.cos(sine / 34))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 34),0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0),math.rad(-20 + 2 * math.cos(sine / 72))),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(0 + 4 * math.cos(sine / 55)),math.rad(20 - 2 * math.cos(sine / 72))),.1)
					RW.C0=clerp(RW.C0,cf(1.15,0.5 + 0.1 * math.cos(sine / 28),0.25)*angles(math.rad(-22 + 2 * math.cos(sine / 38)),math.rad(0),math.rad(-15 - 2 * math.cos(sine / 41))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(10 - 6 * math.cos(sine / 28)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(-20 + 5 * math.cos(sine / 34))),.1)
					
				elseif ModeOfGlitch == 420 then
					
					local snap = math.random(1,5)
					
					if snap == 1 then
						
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 + math.random(-1,1)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),0.6)
						RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 + 5 * math.cos(sine / 74) + math.random(-1,1)),math.rad(1 - 3 * math.cos(sine / 53) + math.random(-1,1)),math.rad(1 + 3 * math.cos(sine / 45) + math.random(-1,1))),.6)
						LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 - 3 * math.cos(sine / 73) + math.random(-1,1)),math.rad(2 - 1 * math.cos(sine / 55) + math.random(-1,1)),math.rad(-3 - 3 * math.cos(sine / 45) + math.random(-1,1))),.6)
					end
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(25 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-25 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.25 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(25 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(1 + 3 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-3 - 3 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 99999999999999999999999999 then
					
					sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,BrickColor.new("Institutional white"),BrickColor.new("Dark stone grey").Color)
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 39))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 6 * math.cos(sine / 31))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-20)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(20 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 + 3 * math.cos(sine / 43)),math.rad(-16 - 5 * math.cos(sine / 52)),math.rad(13 + 9 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(90 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(90 - 4 * math.cos(sine / 45)))*angles(math.rad(50),math.rad(30),math.rad(20)),.1)
					
				elseif ModeOfGlitch == 676767 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(8 - 6 * math.cos(sine / 67)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-18 - 5 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-15 - 8 * math.cos(sine / 74)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(31 + 8 * math.cos(sine / 38))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(-21 - 2 * math.cos(sine / 32)),math.rad(8),math.rad(0)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 - 6 * math.cos(sine / 37)),math.rad(-14 + 5 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(-24 + 9 * math.cos(sine / 72)),math.rad(3 - 5 * math.cos(sine / 58)),math.rad(38 + 7 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-0.8,0.35 + 0.025 * math.cos(sine / 45),-0.75)*angles(math.rad(160 - 2 * math.cos(sine / 66)),math.rad(5 - 8 * math.cos(sine / 59)),math.rad(87 - 3 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 11111 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.35,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 9 * math.cos(sine / 39))),.2)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-0.5),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 5 * math.cos(sine / 51))),.2)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.01 + 0.02 * math.cos(sine / 32),1 + 0.25 * math.cos(sine / 32))*angles(math.rad(3 - 3 * math.cos(sine / 32)),math.rad(0),math.rad(22)),.2)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(-22)),.2)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(180 + 3 * math.cos(sine / 53)),math.rad(0 - 4 * math.cos(sine / 60)),math.rad(-5 + 4 * math.cos(sine / 45))),.2)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(-5 - 7 * math.cos(sine / 58)),math.rad(1 - 5 * math.cos(sine / 55)),math.rad(-12 - 9 * math.cos(sine / 45))),.2)
					
				elseif ModeOfGlitch == 242424 then
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5 - 2 * math.cos(sine / 34))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5),math.rad(20 - 2 * math.cos(sine / 72)),math.rad(0 + 2 * math.cos(sine / 34))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 34),0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0),math.rad(-20 + 2 * math.cos(sine / 72))),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(0 + 4 * math.cos(sine / 55)),math.rad(20 - 2 * math.cos(sine / 72))),.1)
					RW.C0=clerp(RW.C0,cf(1.15,0.5 + 0.1 * math.cos(sine / 28),0.25)*angles(math.rad(-22 + 2 * math.cos(sine / 38)),math.rad(0),math.rad(-15 - 2 * math.cos(sine / 41))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(10 - 6 * math.cos(sine / 28)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(-20 + 5 * math.cos(sine / 34))),.1)
					
				elseif ModeOfGlitch == 3 or ModeOfGlitch == -2 or ModeOfGlitch == 25 or ModeOfGlitch == 3141 or ModeOfGlitch == 146536 then
					
					local snap = math.random(1,32)
					
					if snap == 1 then
					
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(22 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),1)
					end
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(1 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.02 + 0.02 * math.cos(sine / 32),0 + 0.05 * math.cos(sine / 32))*angles(math.rad(2 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0 - 1 * math.cos(sine / 44))),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(22 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1,0.5 + 0.025 * math.cos(sine / 45),0.45)*angles(math.rad(-33 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(-33 + 3 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),0.45)*angles(math.rad(-23 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(33 - 3 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 3 or ModeOfGlitch == -2 or ModeOfGlitch == 25 or ModeOfGlitch == 3141 or ModeOfGlitch == 146536 then
					
					local snap = math.random(1,32)
					
					if snap == 1 then
						
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(22 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),1)
					end
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(1 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.02 + 0.02 * math.cos(sine / 32),0 + 0.05 * math.cos(sine / 32))*angles(math.rad(2 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0 - 1 * math.cos(sine / 44))),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(22 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1,0.5 + 0.025 * math.cos(sine / 45),0.45)*angles(math.rad(-33 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(-33 + 3 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),0.45)*angles(math.rad(-23 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(33 - 3 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 3 then
					
					local snap = math.random(1,32)
					
				elseif ModeOfGlitch == 1234567890 then
					
					sphere2(8,"Add",larm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,MAINRUINCOLOR,MAINRUINCOLOR.Color)
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 9 * math.cos(sine / 51))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 7 * math.cos(sine / 44))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1.5 + 0.25 * math.cos(sine / 32))*angles(math.rad(2 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(13)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(24 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(-13 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(68 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(82 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45)))*cf(0.5, 0.3, -0.3)*angles(math.rad(110), math.rad(-90), math.rad(0)),.1)
					
				elseif ModeOfGlitch == 88893333388 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 9 * math.cos(sine / 51))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 7 * math.cos(sine / 44))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1.5 + 0.25 * math.cos(sine / 32))*angles(math.rad(2 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(13)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(24 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(-13 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(68 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(82 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 66669746666974 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*cf(0, 0.2, 0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 9 * math.cos(sine / 51))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*cf(0, 0.2, 0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 7 * math.cos(sine / 44))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0, 0, 15)*cf(0,0 + 0.02 * math.cos(sine / 32),1.5 + 0.25 * math.cos(sine / 32))*angles(math.rad(2 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(13)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(24 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(-13 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(0, 0.2, 0)*cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(68 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45)))*angles(0, math.rad(115 - 5 * math.cos(sine / 0.465)), math.rad(62)),1)
					LW.C0=clerp(LW.C0,cf(0, 0.2, 0)*cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(82 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45)))*angles(0, math.rad(70 - 5 * math.cos(sine / 0.254)), math.rad(60)),1)
					
				elseif ModeOfGlitch == 4268 then
					
					local RootC0 = cf(0, 0, 0) * angles(math.rad(-90), math.rad(0), math.rad(180))
					local RIGHTSHOULDERC0 = cf(0, 0, 0) * angles(math.rad(0), math.rad(90), math.rad(0))
					local LEFTSHOULDERC0 = cf(0.2, 0, -0.2) * angles(math.rad(0), math.rad(-90), math.rad(0))
					
					RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootC0*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-0.05 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(30 + 3 * math.cos(sine / 40))),.1)
					-- Torso.Neck.C0=clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0 - 7 * math.cos(sine / 40)),math.rad(-30 - 3 * math.cos(sine / 40))),.1)
					RW.C0 = clerp(RW.C0, cf(0.75, 0.5 + 0.05 * math.sin(sine / 40), -0.8) * angles(math.rad(100), math.rad(0), math.rad(-85)) * RIGHTSHOULDERC0, 1 / 3)
					LW.C0 = clerp(LW.C0, cf(-0.75, 0.25 + 0.05 * math.sin(sine / 40), -0.7) * angles(math.rad(70), math.rad(0), math.rad(85)) * LEFTSHOULDERC0, 1 / 3)
					
				elseif ModeOfGlitch == 1005 then
					
					local RootC0 = cf(0, 0, 0) * angles(math.rad(-90), math.rad(0), math.rad(180))
					local RIGHTSHOULDERC0 = cf(0, 0, 0) * angles(math.rad(0), math.rad(90), math.rad(0))
					local LEFTSHOULDERC0 = cf(0.2, 0, -0.2) * angles(math.rad(0), math.rad(-90), math.rad(0))
					
					RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootC0*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-0.05 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(30 + 3 * math.cos(sine / 40))),.1)
					-- Torso.Neck.C0=clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0 - 7 * math.cos(sine / 40)),math.rad(-30 - 3 * math.cos(sine / 40))),.1)
					RW.C0 = clerp(RW.C0, cf(0.8, 0.4 + 0.05 * math.sin(sine / 40), -0.6) * angles(math.rad(85), math.rad(0), math.rad(-70)) * RIGHTSHOULDERC0, 1 / 3)
					LW.C0 = clerp(LW.C0, cf(-0.8, 0.2 + 0.05 * math.sin(sine / 40), -0.7) * angles(math.rad(110), math.rad(75), math.rad(80)) * LEFTSHOULDERC0, 1 / 3)
					
				elseif ModeOfGlitch == 10110 then
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(0 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(0 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(10 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(2 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(8 + 3 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-14 - 3 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 103 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 9 * math.cos(sine / 51))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 7 * math.cos(sine / 44))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.25 * math.cos(sine / 47),0 + 0.25 * math.cos(sine / 35),7 + 1 * math.cos(sine / 32))*angles(math.rad(2 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(13)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(24 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(-13 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(68 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(149 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(-17 - 4 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 1264532489 or ModeOfGlitch == 808080808080808080808080 or ModeOfGlitch == 81 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-14 - 5 * math.cos(sine / 48))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(15 + 7 * math.cos(sine / 51))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),20 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(21 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(13 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(28 + 2 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 2 then
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(1 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-0.5),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.01 + 0.02 * math.cos(sine / 32),0 + 0.05 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0 + 3 * math.cos(sine / 42))),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 58)),math.rad(0 + 1 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 3 then
					
					local snap = math.random(1,32)
					
					if snap == 1 then
						
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(22 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),1)
					end
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(1 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.02 + 0.02 * math.cos(sine / 32),0 + 0.05 * math.cos(sine / 32))*angles(math.rad(2 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0 - 1 * math.cos(sine / 44))),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(22 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1,0.5 + 0.025 * math.cos(sine / 45),0.45)*angles(math.rad(-33 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(-33 + 3 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),0.45)*angles(math.rad(-23 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(33 - 3 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 453453484635345 then
					
					sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,BrickColor.new("Institutional white"),BrickColor.new("Dark stone grey").Color)
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 39))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 6 * math.cos(sine / 31))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-20)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(20 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 + 3 * math.cos(sine / 43)),math.rad(-16 - 5 * math.cos(sine / 52)),math.rad(13 + 9 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(90 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(90 - 4 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 4 then
					
					if CleanIdle then
						
						RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-5.5 - 2 * math.cos(sine / 56)),math.rad(-12 - 2 * math.cos(sine / 32))),.1)
						LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6),math.rad(22 - 2 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.01 + 0.03 * math.cos(sine / 32),0 + 0.1 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-22 + 2 * math.cos(sine / 56))),.1)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 43) - 5 * math.cos(sine / 0.25)),math.rad(22 - 2 * math.cos(sine / 56))),.1)
						RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 + 3 * math.cos(sine / 43)),math.rad(-16 - 5 * math.cos(sine / 52)),math.rad(13 + 9 * math.cos(sine / 45))),.1)
						LW.C0=clerp(LW.C0,cf(-1.35,1 + 0.025 * math.cos(sine / 45),-0.2)*angles(math.rad(148 - 2 * math.cos(sine / 51)),math.rad(0 - 4 * math.cos(sine / 64)),math.rad(22 - 2 * math.cos(sine / 45))),.1)
						
					else
						
						RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(1 - 2 * math.cos(sine / 32))),.1)
						LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-0.5),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.01 + 0.02 * math.cos(sine / 32),0 + 0.05 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0 + 3 * math.cos(sine / 42))),.1)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 58)),math.rad(0 + 1 * math.cos(sine / 53))),.1)
						RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
						LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
					end
					
				elseif ModeOfGlitch == 765688533321 then
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(0 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(0 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.01 + 0.03 * math.cos(sine / 32),0 + 0.1 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-22 + 2 * math.cos(sine / 56))),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 43) - 5 * math.cos(sine / 0.25)),math.rad(22 - 2 * math.cos(sine / 56))),.1)
					RW.C0=clerp(RW.C0,CFrame.new(1.5,0.55+0.05*math.cos(sine/25)+ -math.sin(sine/25)/40,0)*angles(math.rad(5-2.5*math.cos(sine/25)),math.rad(0),math.rad(10+5*math.cos(sine/25))+ math.sin(sine/25)/20),0.15)
					LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.55+0.05*math.cos(sine/25)+ -math.sin(sine/25)/40,0)*angles(math.rad(5-2.5*math.cos(sine/25)),math.rad(0),math.rad(-10-5*math.cos(sine/25))+ -math.sin(sine/25)/20),0.15)
					
				elseif ModeOfGlitch == 146536 then
					
					RH.C0=clerp(RH.C0,cf(1, -1 - 0.025 * math.cos(sine/12), -0.01)*angles(math.rad(0),math.rad(83),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.1)
					LH.C0=clerp(LH.C0,cf(-1, -1 - 0.05 * math.cos(sine/12), -0.01)*angles(math.rad(0),math.rad(-83),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0, 0, 0 + 0.05 * math.cos(sine / 12))*angles(math.rad(0),math.rad(0),math.rad(0)),0.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0, 0, 0 + ((1) - 1))*angles(math.rad(15 - 2.5 * math.sin(sine / 12)),math.rad(0),math.rad(0)),0.1)
					RW.C0=clerp(RW.C0,cf(1,0.35 + 0.125 * math.cos(sine / 12),-0.45)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.125 * math.cos(sine / 12),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 2339 then
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(25 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-25 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.25 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(25 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(1 + 3 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-3 - 3 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 5 then
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(0 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(0 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(10 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(2 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(8 + 3 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-14 - 3 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 6 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 7 * math.cos(sine / 56))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 52))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(2 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(14 + 5 * math.cos(sine / 32))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-14 - 6 * math.cos(sine / 33))),.1)
					
				elseif ModeOfGlitch == 8 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 39))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 6 * math.cos(sine / 31))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-20)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(20 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 10100110110010101100011011100100110010101110100 then
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-4 - 2 * math.cos(sine / 53)),math.rad(0 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(9 - 2 * math.cos(sine / 53)),math.rad(0 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0 - 2 * math.cos(sine / 53))),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(19 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(2 + 5 * math.cos(sine / 74)),math.rad(18 - 3 * math.cos(sine / 53)),math.rad(17 + 3 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 73)),math.rad(-11 - 1 * math.cos(sine / 55)),math.rad(-14 - 3 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 1264532489 or ModeOfGlitch == 808080808080808080808080 or ModeOfGlitch == 81 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20 - 5 * math.cos(sine / 34))),.2)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20 + 2 * math.cos(sine / 38))),.2)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.15 * math.cos(sine / 47),-0.5,20.5 + 0.25 * math.cos(sine / 28))*angles(math.rad(70),math.rad(0 - root.RotVelocity.Y),math.rad(0 - root.RotVelocity.Y *4.5 + 3 * math.cos(sine / 47))),.05)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17 - 5 * math.cos(sine / 52)),math.rad(0 - 3 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 78))),.2)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(-8 - 4 * math.cos(sine / 59)),math.rad(-20 + 7 * math.cos(sine / 62)),math.rad(20 + 5 * math.cos(sine / 50))),.2)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(-8 - 3 * math.cos(sine / 55)),math.rad(20 + 8 * math.cos(sine / 67)),math.rad(-20 - 4 * math.cos(sine / 29))),.2)
					
				elseif ModeOfGlitch == 999999999 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 32))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(10)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 58)),math.rad(-10 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0, cf(-1.1, 0.4 + 0.05 * math.cos(sine / 30), 0.025 * math.cos(sine / 20)) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.1)
					
				elseif ModeOfGlitch == 8889 or ModeOfGlitch == 911  then
					
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 5 * math.cos(sine / 51))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 44))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-36)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(36 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(3 + 7 * math.cos(sine / 79)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(33 + 10 * math.cos(sine / 73))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(15 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-27 - 6 * math.cos(sine / 33))),.1)
					
				elseif ModeOfGlitch == 1264532489 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-14 - 5 * math.cos(sine / 48))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(15 + 7 * math.cos(sine / 51))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(21 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(13 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(28 + 2 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 9999999921111 then
					
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(6),math.rad(0),math.rad(25 + 1 * math.cos(sine / 34))),.2)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(-35 + 1 * math.cos(sine / 34))),.2)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.25 * math.cos(sine / 47),0 + 0.25 * math.cos(sine / 35),7 + 1 * math.cos(sine / 32))*angles(math.rad(27 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(13)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-35 - 2.5 * math.cos(sine / 28)),math.rad(10 + 2.5 * math.cos(sine / 75)),math.rad(0)),.2)
					RW.C0=clerp(RW.C0,cf(1.35,0.45 + 0.025 * math.cos(sine / 28),-0.2)*angles(math.rad(40),math.rad(0),math.rad(-1)),.2)
					LW.C0=clerp(LW.C0,cf(-1.35,0.45 + 0.025 * math.cos(sine / 28),-0.2)*angles(math.rad(40),math.rad(0),math.rad(3)),.2)
					
				elseif ModeOfGlitch == 4367677813 then
					
					RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-0.05 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(30 + 3 * math.cos(sine / 40))),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2),math.rad(0 - 7 * math.cos(sine / 40)),math.rad(-30 - 3 * math.cos(sine / 40))),.1)
					RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-6 + 5 * math.cos(sine / 26)),math.rad(-10 - 6 * math.cos(sine / 24)),math.rad(13 - 5 * math.cos(sine / 34))),.1)
					LW.C0=clerp(LW.C0,cf(-1.4,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-13 - 1 * math.cos(sine / 25)),math.rad(10 + 2 * math.cos(sine / 24)),math.rad(10 + 2 * math.cos(sine / 34))),.1)
					
				elseif ModeOfGlitch == 61 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(19 + 8 * math.cos(sine / 62)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-20 - 3 * math.cos(sine / 34))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3 - 1 * math.cos(sine / 55)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(26 + 5 * math.cos(sine / 41))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(-13 - 2 * math.cos(sine / 32)),math.rad(3),math.rad(10 - 4 * math.cos(sine / 67))),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 8 * math.cos(sine / 37)),math.rad(-21 + 2 * math.cos(sine / 58)),math.rad(-10 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1,0.5 + 0.025 * math.cos(sine / 45),0.45)*angles(math.rad(-33 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(-33 + 14 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),0.45)*angles(math.rad(-23 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(35 - 8 * math.cos(sine / 51))),.1)
					
				elseif ModeOfGlitch == 55469696922 or ModeOfGlitch == 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 then
					
					sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,MAINRUINCOLOR,MAINRUINCOLOR.Color)
					RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28) - 0.04 * math.cos(sine / 50),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1 + 4 * math.cos(sine / 50)),math.rad(0),math.rad(0 - 2 * math.cos(sine / 34))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28) + 0.04 * math.cos(sine / 50),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5 - 4 * math.cos(sine / 50)),math.rad(18),math.rad(0 + 2 * math.cos(sine / 34))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.04 * math.cos(sine / 50),0 + 0.03 * math.cos(sine / 34),0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 3 * math.cos(sine / 34)),math.rad(0 + 4 * math.cos(sine / 50)),math.rad(18)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 1 * math.cos(sine / 28)),math.rad(-5 - 2.5 * math.cos(sine / 57)),math.rad(-18)),.1)
					RW.C0=clerp(RW.C0,cf(0.85,0.5 + 0.05 * math.cos(sine / 28),-0.65)*angles(math.rad(36 - 7 * math.cos(sine / 34)),math.rad(0 - 6 * math.cos(sine / 45)),math.rad(-80 + 2 * math.cos(sine / 28))),.1)
					LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(0 + 3 * math.cos(sine / 49)),math.rad(10 + 2 * math.cos(sine / 52)),math.rad(-5 - 3 * math.cos(sine / 39))),.1)
					
				elseif ModeOfGlitch == 999999999556 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 6 * math.cos(sine / 39))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 45))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(17)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(29 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(-17 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
					
				elseif ModeOfGlitch == 18446744073709551615 then
					
					local RootC0 = cf(0, 0, 0) * angles(math.rad(-90), math.rad(0), math.rad(180))
					local RIGHTSHOULDERC0 = cf(0, 0, 0) * angles(math.rad(0), math.rad(90), math.rad(0))
					local LEFTSHOULDERC0 = cf(0.2, 0, -0.2) * angles(math.rad(0), math.rad(-90), math.rad(0))
					
					RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootC0*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-0.05 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(30 + 3 * math.cos(sine / 40))),.1)
					-- Torso.Neck.C0=clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0 - 7 * math.cos(sine / 40)),math.rad(-30 - 3 * math.cos(sine / 40))),.1)
					RW.C0 = clerp(RW.C0, cf(1, 0.5 + 0.05 * math.sin(sine / 40), -0.8) * angles(math.rad(100), math.rad(0), math.rad(-70)) * RIGHTSHOULDERC0, 1 / 3)
					LW.C0 = clerp(LW.C0, cf(-0.9, 0.25 + 0.05 * math.sin(sine / 40), -0.7) * angles(math.rad(70), math.rad(0), math.rad(80)) * LEFTSHOULDERC0, 1 / 3)
					
				elseif ModeOfGlitch == 23897456237845 then
					
					RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 6 * math.cos(sine / 39))),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 45))),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(17)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(29 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(-17 + 2 * math.cos(sine / 53))),.1)
					RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
					LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
				end
			end
			
		elseif torvel>2 and torvel<22 and hitfloor~=nil then
			
			Anim = "Walk"
				
				if attack == false then
					
					if ModeOfGlitch == 666666 then
						
						RH.C0=clerp(RH.C0,cf(1,-.9-.4*math.cos(sine/8)/2,.4*math.cos(sine/8)/2)*angles(math.rad(2-2*math.cos(sine/10))-math.sin(sine/8)/2,0,0)*angles(0,math.rad(90),0),.1)
						LH.C0=clerp(LH.C0,cf(-1,-.9+.4*math.cos(sine/8)/2,-.4*math.cos(sine/8)/2)*angles(math.rad(2+2*math.cos(sine/10))+math.sin(sine/8)/2,0,0)*angles(0,math.rad(-90),0),.1)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.15 - 0.1 * math.cos(sine / 8))*angles(math.rad(12.5),math.rad(0),math.rad(0 - 5 * math.cos(sine / 12))),.1)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30 - 5 * math.cos(sine / 0.5265)),math.rad(0 - 15 * math.cos(sine / 0.25)),math.rad(0 - 15 * math.cos(sine / 0.465))),.1)
						RW.C0=clerp(RW.C0,cf(1.3,0.5,0)*angles(math.rad(180),math.rad(-90),math.rad(15))*angles(math.rad(-35),0,0)*angles(math.rad(10 + 2.5 * math.cos(sine / 0.252)),math.rad(0 + 2.5 * math.cos(sine / 0.123)),math.rad(5 + 2.5 * math.cos(sine / 0.6)))*angles(0,math.rad(0 - 15 * math.cos(sine / 0.25)),math.rad(0 - 15 * math.cos(sine / 0.465))),.1)
						LW.C0=clerp(LW.C0,cf(-1.3,0.5,0)*angles(math.rad(180),math.rad(90),math.rad(-15))*angles(math.rad(-35),0,0)*angles(math.rad(10 + 2.5 * math.cos(sine / 0.568)),math.rad(0 + 2.5 * math.cos(sine / 0.664)),math.rad(-5 + 2.5 * math.cos(sine / 0.23)))*angles(0,math.rad(0 - 15 * math.cos(sine / 0.25)),math.rad(0 - 15 * math.cos(sine / 0.465))),.1)
						
					elseif ModeOfGlitch ~= 102 and ModeOfGlitch ~= 2334 then
						
						RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 35 * math.cos(sine / 8))),.1)
						LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 35 * math.cos(sine / 8))),.1)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 - 0.05 * math.cos(sine / 4))*angles(math.rad(5 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 5 * math.cos(sine / 8))),.1)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 5 * math.cos(sine / 8))),.1)
						RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 8))*angles(math.rad(0 - 50 * math.cos(sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 4))),.1)
						LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 8))*angles(math.rad(0 + 50 * math.cos(sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 4))),.1)
						
						if ModeOfGlitch == 71 then
							
							sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,MAINRUINCOLOR,MAINRUINCOLOR.Color)
						end
						
					elseif ModeOfGlitch == 2334 then
						
						rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(9-2.5 * Cos(sine / 3.5)), Rad(0), Rad(10 * Cos(sine / 7))), 0.15)
						tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
						RH.C0 = clerp(RH.C0, CFrame.new(1, -0.925 - 0.5 * math.cos(sine / 7) / 2, 0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-15 - 35 * math.cos(sine / 7)) + -math.sin(sine / 7) / 2.5, math.rad(90 - 2 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 + 2.5 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
						LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.925 + 0.5 * math.cos(sine / 7) / 2, -0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-15 + 35 * math.cos(sine / 7)) + math.sin(sine / 7) / 2.5, math.rad(-90 - 2 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 - 2.5 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
						RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(70) * Cos(sine / 7) , Rad(0), Rad(5)), 0.1)
						LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-70) * Cos(sine / 7) , Rad(0),	Rad(-5)), 0.1)
							
					elseif ModeOfGlitch == 102 then
						
						RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 35 * math.cos(sine / 8))),.1)
						LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 35 * math.cos(sine / 8))),.1)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 - 0.05 * math.cos(sine / 4))*angles(math.rad(5 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 5 * math.cos(sine / 8))),.1)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 5 * math.cos(sine / 8))),.1)
						RW.C0=clerp(RW.C0,cf(1,0.5 + 0.025 * math.cos(sine / 45),-0.25)*angles(math.rad(33 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(-33 + 3 * math.cos(sine / 45))),.1)
						LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.25)*angles(math.rad(23 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(33 - 3 * math.cos(sine / 45))),.1)
					end		
				end
				
			elseif torvel>=22 and hitfloor~=nil then
				
				Anim="Run"
				
				if attack == false then
					
					if ModeOfGlitch ~= 10100110110010101100011011100100110010101110100 and ModeOfGlitch ~= 6 and ModeOfGlitch ~= 43433434 and ModeOfGlitch ~= 8686 and ModeOfGlitch ~= 74532 and ModeOfGlitch ~= -666666 and ModeOfGlitch ~= 45743 and ModeOfGlitch ~= 246758 and ModeOfGlitch ~= 18273 and ModeOfGlitch ~= 116 and ModeOfGlitch ~= 88893333388 and ModeOfGlitch ~= 911 and ModeOfGlitch ~= 8 and ModeOfGlitch ~= 1264532489 and ModeOfGlitch ~= 55469696922 and ModeOfGlitch ~= 11 and ModeOfGlitch ~= 4367677813 and ModeOfGlitch ~= 7652 and ModeOfGlitch ~= 8008135 and ModeOfGlitch ~= 9999999921111 and ModeOfGlitch ~= 999999999556 and ModeOfGlitch ~= 2019 and ModeOfGlitch ~= 6868 and ModeOfGlitch ~= 3444 and ModeOfGlitch ~= 1999 and ModeOfGlitch ~= 8889 and ModeOfGlitch ~= 676767 and ModeOfGlitch ~= 55846 and ModeOfGlitch ~= 808080808080808080808080 and ModeOfGlitch ~= 6518594185 and ModeOfGlitch ~= 2000 and ModeOfGlitch ~= 906 and ModeOfGlitch ~= 841 and ModeOfGlitch ~= 8799 and ModeOfGlitch ~= 61 and ModeOfGlitch ~= 765688533321 and ModeOfGlitch ~= 666666 and ModeOfGlitch ~= 4 and ModeOfGlitch ~= 727 and ModeOfGlitch ~= 2102 and ModeOfGlitch ~= 2222222 and ModeOfGlitch ~= -3 and ModeOfGlitch ~= -4 and ModeOfGlitch ~= 2304 and ModeOfGlitch ~= 4434 and ModeOfGlitch ~= 78213 and ModeOfGlitch ~= 1264532489 and ModeOfGlitch ~= 763 and ModeOfGlitch ~= 7888 and ModeOfGlitch ~= 147 and ModeOfGlitch ~= 888 and ModeOfGlitch ~= 1055 and ModeOfGlitch ~= 81 and ModeOfGlitch ~= 404 then
						
						if CleanRun then
							
							RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20 - 5 * math.cos(sine / 34))),.2)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20 + 2 * math.cos(sine / 38))),.2)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.15 * math.cos(sine / 47),-0.5,0.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(70),math.rad(0 - root.RotVelocity.Y),math.rad(0 - root.RotVelocity.Y *4.5 + 3 * math.cos(sine / 47))),.2)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17 - 5 * math.cos(sine / 52)),math.rad(0 - 3 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 78))),.2)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(-8 - 4 * math.cos(sine / 59)),math.rad(-20 + 7 * math.cos(sine / 62)),math.rad(20 + 5 * math.cos(sine / 50))),.2)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(-8 - 3 * math.cos(sine / 55)),math.rad(20 + 8 * math.cos(sine / 67)),math.rad(-20 - 4 * math.cos(sine / 29))),.2)
						else
							
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.15 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 95 * math.cos(sine / 6))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.15 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 95 * math.cos(sine / 6))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.05 + 0.15 * math.cos(sine / 3))*angles(math.rad(25 - 4 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - root.RotVelocity.Y - 1 * math.cos(sine / 6))),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-6 + 2 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 1 * math.cos(sine / 6))),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5,0.3)*angles(math.rad(-50 + 10 * math.cos(sine / 3)),math.rad(-10),math.rad(7 + 5 * math.cos(sine / 6))),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5,0.3)*angles(math.rad(-50 + 10 * math.cos(sine / 3)),math.rad(10),math.rad(-7 - 5 * math.cos(sine / 6))),.1)
							
						end
							
					elseif ModeOfGlitch == 10100110110010101100011011100100110010101110100 then
						
						RH.C0=clerp(RH.C0,cf(1,-0.85,-0.15 - 0.15 * math.cos(sine / 8))*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 12)),math.rad(5 + 25 * math.cos(sine / 12))),.1)
						LH.C0=clerp(LH.C0,cf(-1,-0.85,-0.15 + 0.15 * math.cos(sine / 8))*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 12)),math.rad(-5 + 25 * math.cos(sine / 12))),.1)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.15 - 0.1 * math.cos(sine / 8))*angles(math.rad(12.5),math.rad(0),math.rad(0 - 5 * math.cos(sine / 12))),.1)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30 - 5 * math.cos(sine / 0.5265)),math.rad(0 - 5 * math.cos(sine / 0.25)),math.rad(0 - 5 * math.cos(sine / 0.465))),.1)
						RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(10 - 15 * math.cos(sine / 12)),math.rad(0 + 2.5 * math.cos(sine / 0.123)),math.rad(5 + 2.5 * math.cos(sine / 0.6))),.1)
						LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(10 + 15 * math.cos(sine / 12)),math.rad(0 + 2.5 * math.cos(sine / 0.664)),math.rad(-5 + 2.5 * math.cos(sine / 0.23))),.1)
						
					elseif ModeOfGlitch == 666666 then
						
						RH.C0=clerp(RH.C0,cf(1,-0.75 - 0.25 * math.cos(sine / 3),-0.25 - 0.25 * math.cos(sine / 3))*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 95 * math.cos(sine / 6))),.1)
						LH.C0=clerp(LH.C0,cf(-1,-0.75 + 0.25 * math.cos(sine / 3),-0.25 + 0.25 * math.cos(sine / 3))*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 95 * math.cos(sine / 6))),.1)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.125 + .125 * math.cos(sine / 3))*angles(math.rad(25),math.rad(0),math.rad(0 - 5 * math.cos(sine / 6))),.1)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30 - 5 * math.cos(sine / 0.5265)),math.rad(0 - 15 * math.cos(sine / 0.25)),math.rad(0 - 15 * math.cos(sine / 0.465))),.1)
						RW.C0=clerp(RW.C0,cf(1.3,0.5,0)*angles(math.rad(180),math.rad(-90),math.rad(15))*angles(math.rad(-35),0,0)*angles(math.rad(10 + 2.5 * math.cos(sine / 0.252)),math.rad(0 + 2.5 * math.cos(sine / 0.123)),math.rad(5 + 2.5 * math.cos(sine / 0.6)))*angles(0,math.rad(0 - 15 * math.cos(sine / 0.25)),math.rad(0 - 15 * math.cos(sine / 0.465))),.1)
						LW.C0=clerp(LW.C0,cf(-1.3,0.5,0)*angles(math.rad(180),math.rad(90),math.rad(-15))*angles(math.rad(-35),0,0)*angles(math.rad(10 + 2.5 * math.cos(sine / 0.568)),math.rad(0 + 2.5 * math.cos(sine / 0.664)),math.rad(-5 + 2.5 * math.cos(sine / 0.23)))*angles(0,math.rad(0 - 15 * math.cos(sine / 0.25)),math.rad(0 - 15 * math.cos(sine / 0.465))),.1)
						
					elseif ModeOfGlitch == 4 then
						
						RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 35 * math.cos(sine / 8))),.1)
						LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 35 * math.cos(sine / 8))),.1)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 - 0.05 * math.cos(sine / 4))*angles(math.rad(5 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 5 * math.cos(sine / 8))),.1)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 5 * math.cos(sine / 8))),.1)
						RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 8))*angles(math.rad(0 - 50 * math.cos(sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 4))),.1)
						LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 8))*angles(math.rad(0 + 50 * math.cos(sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 4))),.1)
						
					elseif ModeOfGlitch == -666666 then
						
						local snap = math.random(1,30)
						
						if snap == 1 then
							
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 + math.random(-45,0)),math.rad(math.random(-45,45)),math.rad(math.random(-45,45))),1)
						end
						
						RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(-15 - 5 * math.cos(sine / 32)),math.rad(100- 5 * math.cos(sine / 32)),math.rad(0))*angles(math.rad(-3 + math.random(-5,5)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 39))),.1)
						LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-15 - 2.5 * math.cos(sine / 32)),math.rad(-95),math.rad(0))*angles(math.rad(-3 + math.random(-5,5)),math.rad(0 - 1 * math.cos(sine / 56)+ math.random(-5,5)),math.rad(10 + 6 * math.cos(sine / 31) + math.random(-5,5))),.1)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.2 * math.cos(sine / 30),0 + 0.2 * math.cos(sine / 34),5.2 + 0.4 * math.cos(sine / 26))*angles(math.rad(50 - 2 * math.cos(sine / 32) + math.random(-5,5)),math.rad(0 + math.random(-5,5)),math.rad(math.random(-5,5))),.1)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 - 2 * math.cos(sine / 37) + math.random(-5,5)),math.rad(0 + 1 * math.cos(sine / 58) + math.random(-5,5)),math.rad(0 + 2 * math.cos(sine / 53) + math.random(-5,5))),.1)
						RW.C0=clerp(RW.C0,cf(0.9,0.5 + 0.1 * math.cos(sine / 34),-0.5)*angles(math.rad(0 + math.random(-5,5)),math.rad(-20 - 7.5 * math.cos(sine / 26) + math.random(-5,5)),math.rad(-90 - 5 * math.cos(sine / 34) + math.random(-5,5))),.3)
						LW.C0=clerp(LW.C0,cf(-0.9,0.4 + 0.1 * math.cos(sine / 34),-0.5)*angles(math.rad(0 + math.random(-5,5)),math.rad(20 + 7.5 * math.cos(sine / 32) + math.random(-5,5)),math.rad(87.5 + 5 * math.cos(sine / 34) + math.random(-5,5))),.3)
						
					elseif ModeOfGlitch == 404 or ModeOfGlitch == 246758 then
						
						RH.C0=clerp(RH.C0,cf(1,-1 - 0.15 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 95 * math.cos(sine / 6))),.1)
						LH.C0=clerp(LH.C0,cf(-1,-1 - 0.15 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 95 * math.cos(sine / 6))),.1)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.05 + 0.15 * math.cos(sine / 3))*angles(math.rad(25 - 4 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - root.RotVelocity.Y - 1 * math.cos(sine / 6))),.1)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-6 + 2 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 1 * math.cos(sine / 6))),.1)
						RW.C0 = clerp(RW.C0, CFrame.new(.9, 0.5, -0.5) * angles(math.rad(90), math.rad(-80), math.rad(-40)),.2)
						LW.C0 = clerp(LW.C0, CFrame.new(-.7, 0.5, -0.7) * angles(math.rad(50), math.rad(0), math.rad(90)),.2)
						
					elseif ModeOfGlitch == 8686 then
							
						RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20 - 5 * math.cos(sine / 34))),.2)
						LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20 + 2 * math.cos(sine / 38))),.2)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(math.sin(sine/23),math.cos(sine/31)*0.5,6 + 0.5 * math.cos(sine / 24))*angles(math.rad(70),math.rad(0 - root.RotVelocity.Y),math.rad(0 - root.RotVelocity.Y *4.5 + 3 * math.cos(sine / 47))),.05)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17 - 5 * math.cos(sine / 52)),math.rad(0 - 3 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 78))),.2)
						RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(-8 - 4 * math.cos(sine / 59)),math.rad(-20 + 7 * math.cos(sine / 62)),math.rad(20 + 5 * math.cos(sine / 50))),.2)
						LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(-8 - 3 * math.cos(sine / 55)),math.rad(20 + 8 * math.cos(sine / 67)),math.rad(-20 - 4 * math.cos(sine / 29))),.2)
						
					elseif ModeOfGlitch == 23897456237845 or ModeOfGlitch == 676767 or ModeOfGlitch == 55846 or ModeOfGlitch == 18273 or ModeOfGlitch == 74532 or ModeOfGlitch == 116 or ModeOfGlitch == 88893333388 or ModeOfGlitch == 147 or ModeOfGlitch == 78213 or ModeOfGlitch == 2102 or ModeOfGlitch == 8799 or ModeOfGlitch == 841 or ModeOfGlitch == 765688533321 or ModeOfGlitch == 61 or ModeOfGlitch == 727 or ModeOfGlitch == 420 or ModeOfGlitch == 906 or ModeOfGlitch == 2000 or ModeOfGlitch == 2222222 or ModeOfGlitch == 2304 or ModeOfGlitch == -3 or ModeOfGlitch == -4 or ModeOfGlitch == 7888 or ModeOfGlitch == 763 or ModeOfGlitch == 888 or ModeOfGlitch == 88893333388 or ModeOfGlitch == 6518594185 then
						
						if CleanRun then
							
							RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20 - 5 * math.cos(sine / 34))),.2)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20 + 2 * math.cos(sine / 38))),.2)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.15 * math.cos(sine / 47),-0.5,0.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(70),math.rad(0 - root.RotVelocity.Y),math.rad(0 - root.RotVelocity.Y *4.5 + 3 * math.cos(sine / 47))),.2)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17 - 5 * math.cos(sine / 52)),math.rad(0 - 3 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 78))),.2)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(-8 - 4 * math.cos(sine / 59)),math.rad(-20 + 7 * math.cos(sine / 62)),math.rad(20 + 5 * math.cos(sine / 50))),.2)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(-8 - 3 * math.cos(sine / 55)),math.rad(20 + 8 * math.cos(sine / 67)),math.rad(-20 - 4 * math.cos(sine / 29))),.2)
						else
							
							RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20 - 5 * math.cos(sine / 34))),.2)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20 + 2 * math.cos(sine / 38))),.2)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17 - 5 * math.cos(sine / 52)),math.rad(0 - 3 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 78))),.2)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(-8 - 4 * math.cos(sine / 59)),math.rad(-20 + 7 * math.cos(sine / 62)),math.rad(20 + 5 * math.cos(sine / 50))),.2)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(-8 - 3 * math.cos(sine / 55)),math.rad(20 + 8 * math.cos(sine / 67)),math.rad(-20 - 4 * math.cos(sine / 29))),.2)
						end
						
					elseif ModeOfGlitch == 1264532489 or ModeOfGlitch == 808080808080808080808080 or ModeOfGlitch == 81 then
						
						RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20 - 5 * math.cos(sine / 34))),.2)
						LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20 + 2 * math.cos(sine / 38))),.2)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.15 * math.cos(sine / 47),-0.5,20.5 + 0.25 * math.cos(sine / 28))*angles(math.rad(70),math.rad(0 - root.RotVelocity.Y),math.rad(0 - root.RotVelocity.Y *4.5 + 3 * math.cos(sine / 47))),.05)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17 - 5 * math.cos(sine / 52)),math.rad(0 - 3 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 78))),.2)
						RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(-8 - 4 * math.cos(sine / 59)),math.rad(-20 + 7 * math.cos(sine / 62)),math.rad(20 + 5 * math.cos(sine / 50))),.2)
						LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(-8 - 3 * math.cos(sine / 55)),math.rad(20 + 8 * math.cos(sine / 67)),math.rad(-20 - 4 * math.cos(sine / 29))),.2)
						
					elseif ModeOfGlitch == 6 or ModeOfGlitch == 43433434 or ModeOfGlitch == 45743 or ModeOfGlitch == 3444 or ModeOfGlitch == 412 or ModeOfGlitch == 69 or ModeOfGlitch == 8 or ModeOfGlitch == 1264532489 or ModeOfGlitch == 55469696922 or ModeOfGlitch == 1055 or ModeOfGlitch == 11 or ModeOfGlitch == 4367677813 or ModeOfGlitch == 7652 or ModeOfGlitch == 9999999921111 or ModeOfGlitch == 999999999556 or ModeOfGlitch == 2019 or ModeOfGlitch == 1999 or ModeOfGlitch == 74 or ModeOfGlitch == 8008135 or ModeOfGlitch == 4434 or ModeOfGlitch == 911 then
						
						RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20 - 5 * math.cos(sine / 34))),.2)
						LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20 + 2 * math.cos(sine / 38))),.2)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.15 * math.cos(sine / 47),-0.5,0.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(70),math.rad(0 - root.RotVelocity.Y),math.rad(0 - root.RotVelocity.Y *4.5 + 3 * math.cos(sine / 47))),.2)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17 - 5 * math.cos(sine / 52)),math.rad(0 - 3 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 78))),.2)
						RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(-8 - 4 * math.cos(sine / 59)),math.rad(-20 + 7 * math.cos(sine / 62)),math.rad(20 + 5 * math.cos(sine / 50))),.2)
						LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(-8 - 3 * math.cos(sine / 55)),math.rad(20 + 8 * math.cos(sine / 67)),math.rad(-20 - 4 * math.cos(sine / 29))),.2)
						
					elseif ModeOfGlitch == 2335 or ModeOfGlitch == 8889 or ModeOfGlitch == 88893333388 then
						
						if CleanRun then
							
							RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20 - 5 * math.cos(sine / 34))),.2)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20 + 2 * math.cos(sine / 38))),.2)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.15 * math.cos(sine / 47),-0.5,0.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(70),math.rad(0 - root.RotVelocity.Y),math.rad(0 - root.RotVelocity.Y *4.5 + 3 * math.cos(sine / 47))),.2)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17 - 5 * math.cos(sine / 52)),math.rad(0 - 3 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 78))),.2)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(-8 - 4 * math.cos(sine / 59)),math.rad(-20 + 7 * math.cos(sine / 62)),math.rad(20 + 5 * math.cos(sine / 50))),.2)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(-8 - 3 * math.cos(sine / 55)),math.rad(20 + 8 * math.cos(sine / 67)),math.rad(-20 - 4 * math.cos(sine / 29))),.2)
						else
							
							wait(0.5)
							sphereMK(5,math.random(8,14)/45,"Add",root.CFrame*CFrame.new(math.random(-15,15),-10,math.random(-15,15))*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.75,0.75,20,-0.0075,MAINRUINCOLOR,0)
						end
						
					elseif ModeOfGlitch == 5 then
						
						wait(0.5)
						local rsiz = math.random(1,3)
						sphereMK(math.random(3,6),math.random(-25,25)/750,"Add",sorb2.CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,MAINRUINCOLOR,0)
						sphereMK(math.random(6,9),math.random(-10,10)/750,"Add",sorb2.CFrame*CFrame.new(math.random(-5,5)/50,math.random(-5,5)/50,math.random(-5,5)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/3,rsiz/3,rsiz/3,0,MAINRUINCOLOR,0)
						
					elseif ModeOfGlitch == 999999999556 then
						
						handleweld.C0=clerp(handleweld.C0,cf(0,-1.5,-1.5)*angles(math.rad(90),math.rad(0),math.rad(0)),.3)
						lwing1weld.C1=clerp(lwing1weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(0 + 3600 * math.cos(sine / 360))),.3)
						lwing2weld.C1=clerp(lwing2weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(120 + 3600 * math.cos(sine / 360))),.3)
						lwing3weld.C1=clerp(lwing3weld.C1,cf(0 + 2.5 * math.cos(sine / 180),0.5 + 0.75 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-120 + 3600 * math.cos(sine / 360))),.3)
						rwing1weld.C1=clerp(rwing1weld.C1,cf(0 + 1.5 * math.cos(sine / 360),-0.25 - 0.5 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(0 - 3600 * math.cos(sine / 720))),.3)
						rwing2weld.C1=clerp(rwing2weld.C1,cf(0 + 1.5 * math.cos(sine / 360),-0.25 - 0.5 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(120 - 3600 * math.cos(sine / 720))),.3)
						rwing3weld.C1=clerp(rwing3weld.C1,cf(0 + 1.5 * math.cos(sine / 360),-0.25 - 0.5 * math.cos(sine / 25),1.5)*angles(math.rad(90 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-120 - 3600 * math.cos(sine / 720))),.3)
						lwing4weld.C1=clerp(lwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 - 3600 * math.cos(sine / 360))),.3)
						lwing5weld.C1=clerp(lwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 - 3600 * math.cos(sine / 360))),.3)
						lwing6weld.C1=clerp(lwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 - 3600 * math.cos(sine / 360))),.3)
						rwing4weld.C1=clerp(rwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 3600 * math.cos(sine / 360))),.3)
						rwing5weld.C1=clerp(rwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 - 3600 * math.cos(sine / 360))),.3)
					end
				end
			end
		end
	end
end