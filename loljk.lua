wait(0.2)
loadstring(game:HttpGet("https://raw.githubusercontent.com/GelatekWasTaken/GelatekV2/main/LoadLibrary.lua"))()
local Player, Character, Mouse = game:service("Players").LocalPlayer, game:GetService("Players").LocalPlayer.Character.Reanimate, game:GetService("Players").LocalPlayer:GetMouse()
local Torso = Character:FindFirstChild("Torso")
local rootPart = Character:FindFirstChild("HumanoidRootPart")
local Humanoid = Character:FindFirstChild("Humanoid")
local Head = Character:FindFirstChild("Head")
local Right_Arm = Character:FindFirstChild("Right Arm")
local Left_Arm = Character:FindFirstChild("Left Arm")
local Right_Leg = Character:FindFirstChild("Right Leg")
local Left_Leg = Character:FindFirstChild("Left Leg")
local Right_Shoulder = Torso:FindFirstChild("Right Shoulder")
local Left_Shoulder = Torso:FindFirstChild("Left Shoulder")
local Right_Hip = Torso:FindFirstChild("Right Hip")
local Left_Hip = Torso:FindFirstChild("Left Hip")
local Neck = Torso:FindFirstChild("Neck")
local rootPart = Character:FindFirstChild("HumanoidRootPart")
local rootJoint = rootPart:FindFirstChild("RootJoint")
local CurrentIdle = "Idling1"
local Degree = 0.0175438596491228
local canremove = false
local debounce = false
local UIService = game:GetService("UserInputService")
_G.SongName = math.random(1, 9025232)
sin = math.sin
Right_Leg.FormFactor = "Custom"
Left_Leg.FormFactor = "Custom"
rootPart.Archivable = true
rootJoint.Archivable = true
c_new = CFrame.new
c_angles = CFrame.Angles
i_new = Instance.new
Humanoid:ClearAllChildren()
local isAttacking = false
local isSprinting = false
local Animations = false
local Angle = 0
local Axis = 0
local angleSpeed = 1
local axisSpeed = angleSpeed
local currentAnim
local levetatingheight = 3
local WalkType = "Ground"
local RateP = 20
function CreateParticle(parent)

end
CreateParticle(Torso)
CreateParticle(Right_Arm)
CreateParticle(Left_Arm)
CreateParticle(Right_Leg)
CreateParticle(Left_Leg)
function CreateParticle2(parent)
	
end
CreateParticle2(Torso)
CreateParticle2(Right_Arm)
CreateParticle2(Left_Arm)
CreateParticle2(Right_Leg)
CreateParticle2(Left_Leg)
function CreateParticle3(parent)
	
end
CreateParticle3(Torso)
CreateParticle3(Right_Arm)
CreateParticle3(Left_Arm)
CreateParticle3(Right_Leg)
CreateParticle3(Left_Leg)
function CreateParticle4(parent)
	
end
CreateParticle4(Torso)
CreateParticle4(Right_Arm)
CreateParticle4(Left_Arm)
CreateParticle4(Right_Leg)
CreateParticle4(Left_Leg)
function Sound(parent, loop, vol, id)
	local s = Instance.new("Sound", parent)
	s.Looped = loop
	s.Volume = vol
	s.MaxDistance = 200
	s.EmitterSize = 20
	s.SoundId = "rbxassetid://" .. tostring(id)
	s:Play()
	if loop == false then
		wait(s.TimeLength)
		--s:Destroy()
	end
end
Theme = Instance.new("Sound")
Theme.Parent = Character
Theme.SoundId = "rbxassetid://193889412"
Theme.Volume = 10
Theme.Looped = true
Theme.Pitch = 1
Theme:Play()
function newWeld(wp0, wp1, wc0x, wc0y, wc0z)
	wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
	return wld
end
function noOutline(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
local Part = function(Name, Color, Material, Transparency, Shape, Size, CFrame, CanCollide, Anchored, parent)
	local partie = i_new("Part", parent)
	partie.Name = Name
	partie.BrickColor = BrickColor.new(Color)
	partie.Material = Material
	partie.Shape = Shape
	partie.Transparency = Transparency
	partie.Size = Size
	partie.CFrame = CFrame
	partie.CanCollide = CanCollide
	partie.Anchored = Anchored
	return partie
end
function swait(num)
	if num == 0 or num == nil then
		game:GetService("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:GetService("RunService").Stepped:wait(0)
		end
	end
end
coroutine.wrap(function()
	while true do
		Humanoid.MaxHealth = "inf"
		Humanoid.Health = "inf"
		wait(0.01)
	end
end)()
coroutine.wrap(function()
	while true do
		Humanoid.MaxHealth = "inf"
		Humanoid.Health = "inf"
		wait()
	end
end)()
coroutine.wrap(function()
	while true do
		Humanoid.MaxHealth = "inf"
		Humanoid.Health = "inf"
		swait()
	end
end)()
coroutine.wrap(function()
	while true do
		Humanoid.MaxHealth = "inf"
		Humanoid.Health = "inf"
		swait(1)
	end
end)()
Player.Character.Archivable = true
Instance.new("ForceField", Player.Character).Visible = false
function mesh(Mesh, part, meshtype, meshid, offset, scale)
	local mesh = i_new(Mesh)
	mesh.Parent = part
	if Mesh == "SpecialMesh" then
		mesh.MeshType = meshtype
		mesh.MeshId = meshid
	end
	mesh.Offset = offset
	mesh.Scale = scale
	return mesh
end

local Weld = Instance.new("Weld", Shades)
Weld.Part0 = Head
Weld.Part1 = Shades
Weld.C1 = CFrame.new(0, -0.2, 0.15)
ShadesMesh = Instance.new("FileMesh", Shades)
ShadesMesh.MeshId = "http://www.roblox.com/asset/?id=51177557"
ShadesMesh.TextureId = "http://www.roblox.com/asset/?id=51177552"
ShadesMesh.Scale = Vector3.new(1, 1, 1)
local GunModel = Instance.new("Part", game.Workspace.CurrentCamera)
GunModel.Name = "Pistol"
GunModel.Shape = Enum.PartType.Ball
GunModel.CanCollide = false
GunModel.BrickColor = BrickColor.new("Medium stone grey")
GunModel.Transparency = 1
GunModel.Material = "Grass"
GunModel.Size = Vector3.new(0.01, 0.01, 0.01)
GunModel.TopSurface = Enum.SurfaceType.Smooth
GunModel.BottomSurface = Enum.SurfaceType.Smooth
local Weld = Instance.new("Weld", GunModel)
Weld.Part0 = Right_Arm
Weld.Part1 = GunModel
Weld.C1 = CFrame.new(0, -0.3, -1.4) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(180))
GunModelMesh = Instance.new("FileMesh", GunModel)
GunModelMesh.MeshId = "http://www.roblox.com/asset/?id=441587064"
GunModelMesh.TextureId = "http://www.roblox.com/asset/?id=441587082"
GunModelMesh.Scale = Vector3.new(0.035, 0.02, 0.02)
BE = Instance.new("Part", GunModel)
BE.Anchored = false
BE.CanCollide = false
BE.Transparency = 1
BE.Size = Vector3.new(0.1, 0.1, 0.1)
Eweld = Instance.new("Weld", BE)
Eweld.Part0 = BE
Eweld.Part1 = GunModel
Eweld.C0 = CFrame.new(0, -0.3, -1)
BEX = Instance.new("Part", GunModel)
BEX.Anchored = false
BEX.CanCollide = false
BEX.Transparency = 1
BEX.Size = Vector3.new(0.1, 0.1, 0.1)
EXweld = Instance.new("Weld", BEX)
EXweld.Part0 = BEX
EXweld.Part1 = GunModel
EXweld.C0 = CFrame.new(0, -0.3, 0.05)
local Effects = Instance.new("Folder", Character)
Effects.Name = "Effects"
Debris = game:GetService("Debris")
function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end
function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CFrame.new(StartPos, EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end
function MakeForm(PART, TYPE)
	if TYPE == "Cyl" then
		local MSH = Instance.new("CylinderMesh", PART)
	elseif TYPE == "Ball" then
		local MSH = Instance.new("SpecialMesh", PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = Instance.new("SpecialMesh", PART)
		MSH.MeshType = "Wedge"
	end
end
function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = Instance.new("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BrickColor.new(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end
Blood = Instance.new("ParticleEmitter")
Blood.Parent = nil
Blood.Rate = 20
Blood.Speed = NumberRange.new(7)
Blood.VelocitySpread = 40
Blood.Lifetime = NumberRange.new(0.1, 1)
Blood.Texture = "rbxassetid://291880914"
Blood.Color = ColorSequence.new(Color3.new(0.2, 0, 0), Color3.new(0, 0, 0))
Blood.Acceleration = Vector3.new(0, -50, 0)
Blood.Size = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0.5, 0.1),
	NumberSequenceKeypoint.new(1, 0.01, 0.01)
})
Blood.RotSpeed = NumberRange.new(-180, 180)
Blood.Rotation = NumberRange.new(-360, 360)
Blood.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1),
	NumberSequenceKeypoint.new(0.2, 0),
	NumberSequenceKeypoint.new(0.8, 0),
	NumberSequenceKeypoint.new(1, 1)
})
local B = Instance.new("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND
	coroutine.resume(coroutine.create(function()
		NEWSOUND = B:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
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
function getbloody(victim, amount)
	local PART = CreatePart(3, Effects, "Metal", 0, 1, "Mid gray", "Blood", victim.Size)
	PART.CFrame = victim.CFrame
	local HITPLAYERSOUNDS = {
		"883201004",
		"883201111",
		"883201193",
		"883201270"
	}
	Debris:AddItem(PART, 5)
	CreateSound(HITPLAYERSOUNDS[math.random(1, #HITPLAYERSOUNDS)], PART, 1, math.random(8, 12) / 10)
	CreateSound(HITPLAYERSOUNDS[math.random(1, #HITPLAYERSOUNDS)], PART, 1, math.random(8, 12) / 10)
	CreateSound(HITPLAYERSOUNDS[math.random(1, #HITPLAYERSOUNDS)], PART, 1, math.random(8, 12) / 10)
	local prtcl = Blood:Clone()
	prtcl.Parent = PART
	prtcl:Emit(amount * 10)
end
function SpawnTrail(FROM, TO, BIG)
	local TRAIL = CreatePart(3, Effects, "Neon", 0, 0.5, "Deep orange", "Trail", Vector3.new(0, 0, 0))
	MakeForm(TRAIL, "Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = Vector3.new(0.5, DIST, 0.5)
	else
		TRAIL.Size = Vector3.new(0.25, DIST, 0.25)
	end
	TRAIL.CFrame = CFrame.new(FROM, TO) * CFrame.new(0, 0, -DIST / 2) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 5 do
			swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.1
		end
		TRAIL:remove()
	end))
end
function Kill(Char)
	local NewCharacter = Instance.new("Model", Effects)
	NewCharacter.Name = "Ow im ded ;-;"
	for _, c in pairs(Char:GetDescendants()) do
		if c:IsA("BasePart") and c.Transparency == 0 then
			if c.Parent == Char then
				getbloody(c, 5)
			end
			c:BreakJoints()
			c.Material = "Glass"
			c.Color = Color3.new(0.5, 0, 0)
			c.CanCollide = true
			c.Transparency = 0.3
			if c:FindFirstChildOfClass("SpecialMesh") then
				c:FindFirstChildOfClass("SpecialMesh").TextureId = ""
			end
			if c.Name == "Head" then
				c:ClearAllChildren()
				c.Size = Vector3.new(c.Size.Y, c.Size.Y, c.Size.Y)
			end
			if c.ClassName == "MeshPart" then
				c.TextureID = ""
			end
			if c:FindFirstChildOfClass("BodyPosition") then
				c:FindFirstChildOfClass("BodyPosition"):remove()
			end
			if c:FindFirstChildOfClass("ParticleEmitter") then
				c:FindFirstChildOfClass("ParticleEmitter"):remove()
			end
			c.Parent = NewCharacter
			c.Name = "DeadPart"
			c.Velocity = Vector3.new(math.random(-45, 45), math.random(-45, 45), math.random(-45, 45)) / 15
			c.RotVelocity = Vector3.new(math.random(-45, 45), math.random(-15, 85), math.random(-45, 45))
		end
	end
	Char:remove()
	Debris:AddItem(NewCharacter, 5)
end
function BulletDetection(FROM, TO, BRUTAL)
	local AIMHIT, AIMPOS, NORMAL = CastProperRay(FROM, TO, 2000, Character)
	
	SpawnTrail(FROM, AIMPOS)
	return AIMHIT, AIMPOS, NORMAL
end
function round(num)
	local a, b = math.modf(num)
	if num % 1 ~= 0 then
		return math.floor(num) + math.floor(b * 10 + 0.5) / 10
	else
		return math.floor(num)
	end
end
function basicDamage(vhum, damage, colour)
	if not (vhum and vhum.Parent:findFirstChild("Humanoid")) or vhum.Health <= 0 then
		return
	end

	local damagepart = Instance.new("Part", Effects)
	damagepart.Transparency = 1
	damagepart.Anchored = true
	damagepart.CanCollide = false
	damagepart.Size = Vector3.new(0, 0, 0)
	damagepart.Name = "DamagePart"
	damagepart.CFrame = vhum.Parent.Head.CFrame * CFrame.new(0, 1, 0)
	local g = Instance.new("BillboardGui", damagepart)
	g.Enabled = true
	g.Adornee = damagepart
	g.Size = UDim2.new(5, 0, 5, 0)
	g.ExtentsOffset = Vector3.new(0, 0, 0)
	g.StudsOffset = Vector3.new(0, 0, 0)
	local t = Instance.new("TextLabel", g)
	t.BackgroundTransparency = 1
	t.Font = "ArialBold"
	t.TextSize = 24
	t.Text = "" .. round(damage)
	if round(damage) % 1 == 0 then
		t.Text = "" .. round(damage) .. ""
	end
	t.Size = UDim2.new(1, 0, 1, 0)
	t.TextStrokeTransparency = 0
	t.TextTransparency = 0
	t.Font = "Arcade"
	t.TextScaled = true
	t.TextWrapped = true
	t.TextXAlignment = "Center"
	t.TextYAlignment = "Center"
	t.TextColor3 = colour
	coroutine.resume(coroutine.create(function()
		for i = 1, 50 do
			game:GetService("RunService").Heartbeat:wait()
			local sinewave = math.sin(i / 500) * 4
			damagepart.CFrame = damagepart.CFrame * CFrame.new(Vector3.new(0, 0.3 - sinewave, 0))
			t.TextTransparency = t.TextTransparency + 0.02
			t.TextStrokeTransparency = t.TextTransparency + 0.02
		end
		--damagepart:Destroy()
	end), t)
end
function Trace()
	local ch = Character:GetChildren()
	for i = 1, #ch do
		if ch[i].ClassName == "Part" and ch[i].Name ~= "HumanoidRootPart" then
			do
				local trace = Instance.new("Part", game.Workspace)
				trace.Size = ch[i].Size
				trace.Material = "Neon"
				trace.BrickColor = BrickColor.new("Really black")
				trace.Transparency = 0.3
				trace.CanCollide = false
				trace.Anchored = true
				trace.CFrame = ch[i].CFrame
				if ch[i].Name == "Head" then
					mehs = Instance.new("CylinderMesh", trace)
					mehs.Scale = Vector3.new(1.25, 1.25, 1.25)
				end
				tracedisappear = coroutine.wrap(function()
					for i = 1, 7 do
						wait()
						trace.Transparency = trace.Transparency + 0.1
					end
					trace:Destroy()
				end)
				tracedisappear()
			end
		end
	end
end
t = Instance.new("Part", Character)
t.Size = Vector3.new(0.01, 0.01, 0.01)
t.Anchored = false
t.CanCollide = false
t.Name = "Attatchment for Trail"
t.Transparency = 1
tweld = Instance.new("Weld", t)
tweld.Part0 = t
tweld.Part1 = Torso
tweld.C0 = CFrame.new(0, 2.5, 0)
attch = Instance.new("Attachment", Head)
attch2 = Instance.new("Attachment", t)
trail = Instance.new("Trail", Character.HumanoidRootPart)
trail.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0))
trail.TextureLength = 4
trail.TextureMode = "Stretch"
trail.Lifetime = 0.2
trail.MaxLength = 0
trail.MinLength = 0
trail.WidthScale = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1, 0),
	NumberSequenceKeypoint.new(1, 0, 0)
})
trail.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(1, 1)
})
trail.Texture = "http://www.robox.com/asset/?id=182554047"
trail.FaceCamera = true
trail.Attachment0 = attch
trail.Attachment1 = attch2
trail.Enabled = false
mouse = Player:GetMouse()
local s = ""
dashing = false
coroutine.wrap(function()
	while wait() do
		if dashing == true then
			Trace()
		else
		end
	end
end)()
local isDashing = true
mouse.KeyDown:connect(function(key)
	key = string.lower(key)
	if key == "w" or key == "\017" and dashing == false then
		s = s .. "w"
		delay(0.2, function()
			if s ~= "ww" then
				s = ""
			end
		end)
		if s == "ww" then
			s = ""
			if attack == true then
				return
			end
			dashing = true
			Animations = true
			for i = 1, 10 do
				rootPart.Velocity = rootPart.CFrame.lookVector * 200
				angleSpeed = 1
				axisSpeed = 1
				change = 0.5
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(-30), math.rad(0), math.rad(0)), 0.15)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-30), math.rad(0), math.rad(0)), 0.15)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-25), math.rad(0), math.rad(0)), 0.15)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -0.5, -0.4) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(-45), math.rad(0), math.rad(0)), 0.15)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
				for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 7)) do
					if v:FindFirstChild("HumanoidRootPart") then
						v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - math.random(0, 0)
					end
				end
				swait()
			end
			dashing = false
			Animations = false
			delay(0, function()
			end)
		end
	end
end)
mouse.KeyDown:connect(function(key)
	key = string.lower(key)
	if key == "q" or key == "\017" and dashing == false then
		s = s .. "q"
		delay(0.2, function()
			if s ~= "qq" then
				s = ""
			end
		end)
		if s == "qq" then
			s = ""
			if attack == true then
				return
			end
			if transformed == true then
				return
			end
			dashing = true
			S = Instance.new("Sound")
			S.Parent = rootPart
			S.SoundId = "rbxassetid://2767090"
			S.Volume = 10
			S.Looped = false
			S.Pitch = 0.8
			S:Play()
			for i = 1, 5 do
				rootPart.Velocity = rootPart.CFrame.rightVector * -200
				angleSpeed = 1
				axisSpeed = 1
				change = 0.5
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(80)), 0.15)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1, 0.5, -0.2) * c_angles(math.rad(80), math.rad(0), math.rad(45)), 0.15)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-25), math.rad(0), math.rad(20)), 0.15)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, -0.3) * c_angles(math.rad(25), math.rad(0), math.rad(30)), 0.15)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.15)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(10), math.rad(0), math.rad(-10)), 0.15)
				swait()
			end
			dashing = false
			Animations = false
			delay(0, function()
			end)
		end
	end
end)
mouse.KeyDown:connect(function(key)
	key = string.lower(key)
	if key == "e" or key == "\017" and dashing == false then
		s = s .. "e"
		delay(0.2, function()
			if s ~= "ee" then
				s = ""
			end
		end)
		if s == "ee" then
			s = ""
			if attack == true then
				return
			end
			if transformed == true then
				return
			end
			dashing = true
			S = Instance.new("Sound")
			S.Parent = rootPart
			S.SoundId = "rbxassetid://2767090"
			S.Volume = 10
			S.Looped = false
			S.Pitch = 0.8
			S:Play()
			for i = 1, 5 do
				rootPart.Velocity = rootPart.CFrame.rightVector * 200
				angleSpeed = 1
				axisSpeed = 1
				change = 0.5
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1, 0.5, -0.2) * c_angles(math.rad(80), math.rad(0), math.rad(-45)), 0.15)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(-80)), 0.15)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(25), math.rad(0), math.rad(-30)), 0.15)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, -0.3) * c_angles(math.rad(-25), math.rad(0), math.rad(-20)), 0.15)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(20)), 0.15)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(10), math.rad(0), math.rad(10)), 0.15)
				swait()
			end
			dashing = false
			Animations = false
			delay(0, function()
			end)
		end
	end
end)
attack = false
attack2 = false
Grabbed = false
g = Instance.new("Part", Character)
g.Size = Vector3.new(0.01, 0.01, 0.01)
g.Anchored = false
g.CanCollide = false
g.Name = "Grab"
g.Transparency = 1
gweld = Instance.new("Weld", g)
gweld.Part0 = g
gweld.Part1 = Right_Arm
gweld.C0 = CFrame.new(0, 1.25, 0)
function FindNearestTorso(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v:findFirstChild("Torso") and v ~= Character and Distance >= (v.Torso.Position - Position).magnitude then
			table.insert(List, v)
		end
	end
	return List
end
quote = 1
function Throw(mouse)
	gweld.C0 = CFrame.new(0, 1.25, 0)
	local hit = mouse.Target
	if hit ~= nil then
		if hit.Parent:FindFirstChild("Humanoid") ~= nil then
			local torsy
			if hit.Parent:FindFirstChild("Torso") ~= nil then
				torsy = hit.Parent.Torso
			end
			if 0 >= hit.Parent:FindFirstChild("Humanoid").Health then
				return
			end
			for i, v in pairs(hit.Parent:children()) do
				if v:IsA("Part") and not v.Name == "HumanoidRootPart" then
					return
				end
			end
			attack = true
			attack2 = true
			Animations = true
			Head.face.Texture = "rbxassetid://1895706696"
			local GYRO = Instance.new("BodyGyro", rootPart)
			GYRO.D = 100
			GYRO.P = 2000
			S = Instance.new("Sound")
			S.Parent = Character.Torso
			S.SoundId = "rbxassetid://391961525"
			S.Volume = 10
			S.Looped = false
			S.Pitch = 1
			S:Play()
			local LEye = Part("LEye", "Really red", "Neon", 0, "Ball", Vector3.new(0.1, 0.1, 0.1), CFrame.new(0, 0, 0), false, false, Character)
			Mesh = Instance.new("SpecialMesh", LEye)
			Mesh.MeshType = "Sphere"
			Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
			Mesh.Offset = Vector3.new(-0.2, 0.2, -0.6)
			newWeld(Head, LEye, 0, 0, 0)
			local LEGlow = Instance.new("SurfaceLight")
			LEGlow.Color = Color3.fromRGB(255, 0, 0)
			LEGlow.Range = 6
			LEGlow.Brightness = 10
			LEGlow.Parent = LEye
			local REye = Part("REye", "Really red", "Neon", 0, "Ball", Vector3.new(0.1, 0.1, 0.1), CFrame.new(0, 0, 0), false, false, Character)
			Mesh = Instance.new("SpecialMesh", REye)
			Mesh.MeshType = "Sphere"
			Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
			Mesh.Offset = Vector3.new(0.2, 0.2, -0.6)
			newWeld(Head, REye, 0, 0, 0)
			local REGlow = Instance.new("SurfaceLight")
			REGlow.Color = Color3.fromRGB(255, 0, 0)
			REGlow.Range = 6
			REGlow.Brightness = 10
			REGlow.Parent = REye
			GYRO.MaxTorque = Vector3.new(0, 4000000, 0)
			GYRO.CFrame = CFrame.new(rootPart.Position, hit.Parent:findFirstChild("HumanoidRootPart").Position)
			for i = 0, 0.3, 0.01 do
				angleSpeed = 1
				axisSpeed = 1
				change = 0.5
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1, 0.5 + math.sin(sine / 15) / 10, 0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.15)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1, 0.5 + math.sin(sine / 15) / 10, 0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(30)), 0.15)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1 + -math.sin(sine / 15) / 10, 0) * c_angles(math.rad(0) - math.sin(sine / 15) / 20, math.sin(rootPart.RotVelocity.Y / 10) / 2, -math.sin(rootPart.RotVelocity.Y / 10) / 2), 0.15)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1 + -math.sin(sine / 15) / 10, 0) * c_angles(math.rad(0) - math.sin(sine / 15) / 20, -math.sin(rootPart.RotVelocity.Y / 10) / 2, math.sin(-rootPart.RotVelocity.Y / 10) / 2), 0.15)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1 + math.sin(sine / 15) / 10, 0) * c_angles(math.rad(0) + math.sin(sine / 15) / 20, math.rad(0), math.sin(rootPart.RotVelocity.Y / 30) / 2), 0.15)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, -0.05 + math.sin(sine / 15) / 10) * c_angles(math.rad(-5) + math.sin(sine / 15) / 10, math.sin(rootPart.RotVelocity.Y / 2.5) / 2, math.rad(0)), 0.15)
				swait()
			end
			LEye:Destroy()
			REye:Destroy()
			Shades.Transparency = 1
			local Decoy = Instance.new("Part", Right_Arm)
			Decoy.Name = "Decoy"
			Decoy.Shape = Enum.PartType.Block
			Decoy.CanCollide = false
			Decoy.BrickColor = BrickColor.new("Medium stone grey")
			Decoy.Transparency = 0
			Decoy.Material = "Grass"
			Decoy.Size = Vector3.new(1, 0.35, 1)
			Decoy.TopSurface = Enum.SurfaceType.Smooth
			Decoy.BottomSurface = Enum.SurfaceType.Smooth
			local DecoyWeld = Instance.new("Weld", Decoy)
			DecoyWeld.Part0 = Right_Arm
			DecoyWeld.Part1 = Decoy
			DecoyWeld.C1 = CFrame.new(0, 0, 1.2) * CFrame.fromEulerAnglesXYZ(math.rad(100), math.rad(0), 0)
			local DecoyMesh = Instance.new("FileMesh", Decoy)
			DecoyMesh.MeshId = "http://www.roblox.com/asset/?id=51177557"
			DecoyMesh.TextureId = "http://www.roblox.com/asset/?id=51177552"
			DecoyMesh.Scale = Vector3.new(1, 1, 1)
			S = Instance.new("Sound")
			S.Parent = Character.Torso
			S.SoundId = "rbxassetid://1146552988"
			S.Volume = 10
			S.Looped = false
			S.Pitch = 1
			S:Play()
			for i = 0, 0.3, 0.01 do
				angleSpeed = 1
				axisSpeed = 5
				change = 0.5
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.2, 0.5, 0) * c_angles(math.rad(140), math.rad(0), math.rad(-30)), 0.15)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1, 0.5, 0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(30)), 0.15)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
				swait()
			end
			wait(0.25)
			Head.face.Texture = "rbxassetid://1895698679"
			DecoyWeld:Destroy()
			local Decoyed = Instance.new("BodyPosition", Decoy)
			Decoyed.D = 100
			Decoyed.P = 2000
			Decoyed.MaxForce = Vector3.new(4000000, 4000000, 4000000)
			Decoyed.Position = hit.Parent:findFirstChild("Head").Position
			for i = 0, 0.1, 0.01 do
				angleSpeed = 1
				axisSpeed = 1
				change = 0.5
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, -0.4) * c_angles(math.rad(90), math.rad(0), math.rad(0)), 0.15)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1, 0.5, 0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(30)), 0.15)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
				swait()
			end
			hit.Parent:findFirstChild("HumanoidRootPart").Anchored = true
			local DecoyWeld2 = Instance.new("Weld", Decoy)
			DecoyWeld2.Part0 = hit.Parent:findFirstChild("Head")
			DecoyWeld2.Part1 = Decoy
			DecoyWeld2.C1 = CFrame.new(0, -0.2, 0.15)
			wait(0.5)
			GYRO:Destroy()
			--Decoyed:Destroy()
			Decoy.CanCollide = true
			Trace()
			Head.face.Texture = "rbxassetid://1895670162"
			rootPart.CFrame = hit.Parent:findFirstChild("HumanoidRootPart").CFrame
			rootPart.CFrame = rootPart.CFrame + hit.Parent:findFirstChild("HumanoidRootPart").CFrame.lookVector * 2
			rootPart.CFrame = rootPart.CFrame * CFrame.fromEulerAnglesXYZ(0, math.rad(180), 0)
			local grab
			for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 7)) do
				if v:FindFirstChild("HumanoidRootPart") then
					Grabbed = true
					S = Instance.new("Sound")
					S.Parent = Character.Torso
					S.SoundId = "rbxassetid://260430060"
					S.Volume = 10
					S.Looped = false
					S.Pitch = 1
					S:Play()
					grab = v
				end
			end
			for i = 0, 1, 0.05 do
				swait()
				if Grabbed == true then
					grab.Humanoid.PlatformStand = true
					grab.HumanoidRootPart.Anchored = true
					grab.HumanoidRootPart.CFrame = g.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(150))
				end
				angleSpeed = 1
				axisSpeed = 1
				change = 0.5
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(140), math.rad(0), math.rad(30)), 0.15)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1, 0.5, 0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(30)), 0.15)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(-45), math.rad(20)), 0.15)
			end
			S = Instance.new("Sound")
			S.Parent = Character.Torso
			quote = math.random(1, 3)
			if quote == 1 then
				S.SoundId = "rbxassetid://1146553663"
			elseif quote == 2 then
				S.SoundId = "rbxassetid://1278017490"
			elseif quote == 3 then
				S.SoundId = "rbxassetid://0"
			end
			S.Volume = 10
			S.Looped = false
			S.Pitch = 1
			S:Play()
			q = Instance.new("ParticleEmitter", grab.HumanoidRootPart)
			q.Rate = 500
			q.Speed = NumberRange.new(7)
			q.VelocitySpread = 40
			q.Lifetime = NumberRange.new(0.1, 1)
			q.Texture = "rbxassetid://291880914"
			q.Color = ColorSequence.new(Color3.new(0.2, 0, 0), Color3.new(0, 0, 0))
			q.Acceleration = Vector3.new(0, -50, 0)
			q.Size = NumberSequence.new({
				NumberSequenceKeypoint.new(0, 0.5, 0.1),
				NumberSequenceKeypoint.new(1, 0.01, 0.01)
			})
			q.RotSpeed = NumberRange.new(-180, 180)
			q.Rotation = NumberRange.new(-360, 360)
			q.Transparency = NumberSequence.new({
				NumberSequenceKeypoint.new(0, 1),
				NumberSequenceKeypoint.new(0.2, 0),
				NumberSequenceKeypoint.new(0.8, 0),
				NumberSequenceKeypoint.new(1, 1)
			})
			S = Instance.new("Sound")
			S.Parent = Character.Torso
			S.SoundId = "rbxassetid://206082327"
			S.Volume = 10
			S.Looped = false
			S.Pitch = 0.8
			S:Play()
			grab.HumanoidRootPart.Anchored = false
			wait(0.2)
			local Decoy = Instance.new("Part", Right_Arm)
			Decoy.Name = "Decoy"
			Decoy.Shape = Enum.PartType.Block
			Decoy.CanCollide = false
			Decoy.BrickColor = BrickColor.new("Medium stone grey")
			Decoy.Transparency = 0
			Decoy.Material = "Grass"
			Decoy.Size = Vector3.new(1, 0.35, 1)
			Decoy.TopSurface = Enum.SurfaceType.Smooth
			Decoy.BottomSurface = Enum.SurfaceType.Smooth
			local DecoyWeld = Instance.new("Weld", Decoy)
			DecoyWeld.Part0 = Right_Arm
			DecoyWeld.Part1 = Decoy
			DecoyWeld.C1 = CFrame.new(0, 0, 1.2) * CFrame.fromEulerAnglesXYZ(math.rad(100), math.rad(0), 0)
			local DecoyMesh = Instance.new("FileMesh", Decoy)
			DecoyMesh.MeshId = "http://www.roblox.com/asset/?id=51177557"
			DecoyMesh.TextureId = "http://www.roblox.com/asset/?id=51177552"
			DecoyMesh.Scale = Vector3.new(1, 1, 1)
			for i = 0, 0.1, 0.01 do
				angleSpeed = 1
				axisSpeed = 5
				change = 0.5
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.2, 0.5, 0) * c_angles(math.rad(140), math.rad(0), math.rad(-30)), 0.15)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1, 0.5, 0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(30)), 0.15)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
				swait()
			end
			Decoy:Destroy()
			Head.face.Texture = "rbxassetid://1895706696"
			wait()
			local LEye = Part("LEye", "Really red", "Neon", 0, "Ball", Vector3.new(0.1, 0.1, 0.1), CFrame.new(0, 0, 0), false, false, Character)
			Mesh = Instance.new("SpecialMesh", LEye)
			Mesh.MeshType = "Sphere"
			Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
			Mesh.Offset = Vector3.new(-0.2, 0.2, -0.6)
			newWeld(Head, LEye, 0, 0, 0)
			local LEGlow = Instance.new("SurfaceLight")
			LEGlow.Color = Color3.fromRGB(255, 0, 0)
			LEGlow.Range = 6
			LEGlow.Brightness = 10
			LEGlow.Parent = LEye
			local REye = Part("REye", "Really red", "Neon", 0, "Ball", Vector3.new(0.1, 0.1, 0.1), CFrame.new(0, 0, 0), false, false, Character)
			Mesh = Instance.new("SpecialMesh", REye)
			Mesh.MeshType = "Sphere"
			Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
			Mesh.Offset = Vector3.new(0.2, 0.2, -0.6)
			newWeld(Head, REye, 0, 0, 0)
			local REGlow = Instance.new("SurfaceLight")
			REGlow.Color = Color3.fromRGB(255, 0, 0)
			REGlow.Range = 6
			REGlow.Brightness = 10
			REGlow.Parent = REye
			Shades.Transparency = 0
			attack2 = false
			Animations = false
			grab.Humanoid.MaxHealth = 100
			grab.Humanoid.Health = 100
			Right_Arm:findFirstChild("Decoy"):Destroy()
			wait(0.5)
			for i = 1, 10 do
				LEye.Transparency = LEye.Transparency + 0.1
				REye.Transparency = REye.Transparency + 0.1
				LEGlow.Brightness = LEGlow.Brightness - 1
				REGlow.Brightness = REGlow.Brightness - 1
				wait()
			end
			Head.face.Texture = "rbxassetid://315622231"
			LEye:Destroy()
			REye:Destroy()
			attack = false
		else
			rootPart.Anchored = false
			attack = false
			Animations = false
		end
	else
		rootPart.Anchored = false
		attack = false
		Animations = false
		return
	end
end
function Squeeze()
	gweld.C0 = CFrame.new(0, 3.6, 0)
	local hit = mouse.Target
	if hit ~= nil then
		if hit.Parent:FindFirstChild("Humanoid") ~= nil then
			local torsy
			if hit.Parent:FindFirstChild("Torso") ~= nil then
				torsy = hit.Parent.Torso
			end
			if 0 >= hit.Parent:FindFirstChild("Humanoid").Health then
				return
			end
			for i, v in pairs(hit.Parent:children()) do
				if v:IsA("Part") and not v.Name == "HumanoidRootPart" then
					return
				end
			end
			attack = true
			attack2 = true
			Animations = true
			Head.face.Texture = "rbxassetid://1895706696"
			local GYRO = Instance.new("BodyGyro", rootPart)
			GYRO.D = 175
			GYRO.P = 20000
			GYRO.MaxTorque = Vector3.new(0, 4000000, 0)
			GYRO.CFrame = CFrame.new(rootPart.Position, hit.Parent:findFirstChild("HumanoidRootPart").Position)
			hit.Parent:findFirstChild("HumanoidRootPart").Anchored = true
			GYRO:Destroy()
			Trace()
			Head.face.Texture = "rbxassetid://1895670162"
			rootPart.CFrame = hit.Parent:findFirstChild("HumanoidRootPart").CFrame
			rootPart.CFrame = rootPart.CFrame + hit.Parent:findFirstChild("HumanoidRootPart").CFrame.lookVector * 6
			rootPart.CFrame = rootPart.CFrame * CFrame.fromEulerAnglesXYZ(0, math.rad(180), 0)
			local grab
			for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 7)) do
				if v:FindFirstChild("HumanoidRootPart") then
					Grabbed = true
					S = Instance.new("Sound")
					S.Parent = Character.Torso
					S.SoundId = "rbxassetid://260430060"
					S.Volume = 10
					S.Looped = false
					S.Pitch = 1
					S:Play()
					grab = v
				end
			end
			S = Instance.new("Sound")
			S.Parent = Character.Torso
			quote = math.random(1, 3)
			if quote == 1 then
				S.SoundId = "rbxassetid://626909112"
			elseif quote == 2 then
				S.SoundId = "rbxassetid://179760759"
			elseif quote == 3 then
				S.SoundId = "rbxassetid://573395427"
			end
			S.Volume = 10
			S.Looped = false
			S.Pitch = 0.2
			S:Play()
			for i = 0, 3, 0.05 do
				swait()
				if Grabbed == true then
					grab.Humanoid.PlatformStand = true
					grab.HumanoidRootPart.Anchored = true
					grab.HumanoidRootPart.CFrame = g.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(150))
				end
				angleSpeed = 1
				axisSpeed = 1
				change = 0.5
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5 + math.sin(sine / 0.1) / 4, 0.5, 0 + math.sin(sine / 0.1) / 4) * c_angles(math.rad(140), math.rad(0), math.rad(30)), 0.15)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(10) - math.sin(sine / 15) / 10, math.rad(0), math.rad(-10) - math.sin(sine / 15) / 10), 0.15)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.55, -0.9 + -math.sin(sine / 15) / 10, -0.2) * c_angles(math.rad(10), math.rad(10), math.rad(0)), 0.15)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.55, -0.9 + -math.sin(sine / 15) / 10, -0.2) * c_angles(math.rad(10), math.rad(-10), math.rad(0)), 0.15)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1.05 + math.sin(sine / 15) / 10, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(30), math.rad(-40), math.rad(0)), 0.15)
			end
			grab.Torso:Destroy()
			q = Instance.new("ParticleEmitter", grab.HumanoidRootPart)
			q.Rate = 1000
			q.Speed = NumberRange.new(7)
			q.VelocitySpread = 40
			q.Lifetime = NumberRange.new(0.1, 1)
			q.Texture = "rbxassetid://291880914"
			q.Color = ColorSequence.new(Color3.new(0.2, 0, 0), Color3.new(0, 0, 0))
			q.Acceleration = Vector3.new(0, -50, 0)
			q.Size = NumberSequence.new({
				NumberSequenceKeypoint.new(0, 0.5, 0.1),
				NumberSequenceKeypoint.new(1, 0.01, 0.01)
			})
			q.RotSpeed = NumberRange.new(-180, 180)
			q.Rotation = NumberRange.new(-360, 360)
			q.Transparency = NumberSequence.new({
				NumberSequenceKeypoint.new(0, 1),
				NumberSequenceKeypoint.new(0.2, 0),
				NumberSequenceKeypoint.new(0.8, 0),
				NumberSequenceKeypoint.new(1, 1)
			})
			S = Instance.new("Sound")
			S.Parent = Character.Torso
			S.SoundId = "rbxassetid://206082327"
			S.Volume = 10
			S.Looped = false
			S.Pitch = 0.8
			S:Play()
			grab.HumanoidRootPart.Anchored = false
			Head.face.Texture = "rbxassetid://1895706696"
			attack2 = false
			Animations = false
			grab.Humanoid.MaxHealth = 100
			grab.Humanoid.Health = 100
			wait(0.5)
			attack = false
		else
			rootPart.Anchored = false
			attack = false
			Animations = false
		end
	else
		rootPart.Anchored = false
		attack = false
		Animations = false
		return
	end
end
function Rock()
	gweld.C0 = CFrame.new(0, 7, 0)
	local hit = mouse.Target
	if hit ~= nil then
		if hit.Parent:FindFirstChild("Humanoid") ~= nil then
			do
				local torsy
				if hit.Parent:FindFirstChild("Torso") ~= nil then
					torsy = hit.Parent.Torso
				end
				if 0 >= hit.Parent:FindFirstChild("Humanoid").Health then
					return
				end
				for i, v in pairs(hit.Parent:children()) do
					if v:IsA("Part") and not v.Name == "HumanoidRootPart" then
						return
					end
				end
				attack = true
				attack2 = true
				Animations = true
				Head.face.Texture = "rbxassetid://1895706696"
				local GYRO = Instance.new("BodyGyro", rootPart)
				GYRO.D = 175
				GYRO.P = 20000
				GYRO.MaxTorque = Vector3.new(0, 4000000, 0)
				GYRO.CFrame = CFrame.new(rootPart.Position, hit.Parent:findFirstChild("HumanoidRootPart").Position)
				hit.Parent:findFirstChild("HumanoidRootPart").Anchored = true
				local Rock = Instance.new("Part", g)
				Rock.Name = "Rock"
				Rock.Shape = Enum.PartType.Block
				Rock.CanCollide = false
				Rock.BrickColor = BrickColor.new("Medium stone grey")
				Rock.Transparency = 0
				Rock.Material = "Grass"
				Rock.Size = Vector3.new(0.1, 0.1, 0.1)
				Rock.CustomPhysicalProperties = PhysicalProperties.new(2.691, 0.4, 0.2, 1, 1)
				Rock.TopSurface = Enum.SurfaceType.Smooth
				Rock.BottomSurface = Enum.SurfaceType.Smooth
				local RockWeld = Instance.new("Weld", Rock)
				RockWeld.Part0 = g
				RockWeld.Part1 = Rock
				RockWeld.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(100), math.rad(0), 0)
				local RockMesh = Instance.new("FileMesh", Rock)
				RockMesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
				RockMesh.TextureId = "http://www.roblox.com/asset/?id=1290030"
				RockMesh.Scale = Vector3.new(3, 3, 3)
				for i = 0, 0.2, 0.01 do
					RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(20)), 0.1)
					LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(10) - math.sin(sine / 15) / 10, math.rad(0), math.rad(-10) - math.sin(sine / 15) / 10), 0.15)
					LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
					RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
					Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
					Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
				end
				for i = 0, 0.2, 0.01 do
					RA_Weld.C0 = clerp(RA_Weld.C0, c_new(0.8, 1.2, 0) * c_angles(math.rad(180), math.rad(0), math.rad(20)), 0.1)
					LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(10) - math.sin(sine / 15) / 10, math.rad(0), math.rad(-10) - math.sin(sine / 15) / 10), 0.15)
					LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
					RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
					Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
					Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
					swait()
				end
				Head.face.Texture = "rbxassetid://1895670162"
				S = Instance.new("Sound")
				S.Parent = Character.Torso
				S.SoundId = "rbxassetid://1278006076"
				S.Volume = 10
				S.Looped = false
				S.Pitch = 1
				S:Play()
				for i = 0, 0.05, 0.01 do
					RA_Weld.C0 = clerp(RA_Weld.C0, c_new(0.8, 0.5, 0.2) * c_angles(math.rad(200), math.rad(0), math.rad(20)), 0.15)
					LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(10) - math.sin(sine / 15) / 10, math.rad(0), math.rad(-10) - math.sin(sine / 15) / 10), 0.15)
					LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
					RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
					Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
					Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
					swait()
				end
				local Rocked = Instance.new("BodyPosition", Rock)
				Rocked.D = 100
				Rocked.P = 2000
				Rocked.MaxForce = Vector3.new(4000000, 4000000, 4000000)
				Rocked.Position = hit.Parent:findFirstChild("HumanoidRootPart").Position
				RockWeld:Destroy()
				for i = 0, 0.01, 0.01 do
					RA_Weld.C0 = clerp(RA_Weld.C0, c_new(0.8, 0, -0.5) * c_angles(math.rad(25), math.rad(0), math.rad(20)), 0.15)
					LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(10) - math.sin(sine / 15) / 10, math.rad(0), math.rad(-10) - math.sin(sine / 15) / 10), 0.15)
					LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
					RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
					Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
					Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
					swait()
				end
				Spawn(function()
					wait(10)
					for i = 1, 10 do
						Rock.Transparency = Rock.Transparency + 0.1
						swait()
					end
					Rock:Destroy()
				end)
				wait(0.1)
				GYRO:Destroy()
				Rocked:Destroy()
				Trace()
				Head.face.Texture = "rbxassetid://1895670162"
				local grab
				for i, v in pairs(FindNearestTorso(Rock.CFrame.p, 15)) do
					if v:FindFirstChild("HumanoidRootPart") then
						Grabbed = true
						S = Instance.new("Sound")
						S.Parent = Character.Torso
						S.SoundId = "rbxassetid://260430060"
						S.Volume = 10
						S.Looped = false
						S.Pitch = 1
						S:Play()
						grab = v
						Rock.Size = Vector3.new(3, 3, 3)
						Rock.CanCollide = true
					else
						rootPart.Anchored = false
						attack = false
						Animations = false
						return
					end
				end
				if 0 >= grab:FindFirstChild("Humanoid").Health then
					rootPart.Anchored = false
					attack = false
					Animations = false
					return
				end
				S = Instance.new("Sound")
				S.Parent = Character.Torso
				quote = math.random(1, 3)
				if quote == 1 then
					S.SoundId = "rbxassetid://626909112"
				elseif quote == 2 then
					S.SoundId = "rbxassetid://179760759"
				elseif quote == 3 then
					S.SoundId = "rbxassetid://573395427"
				end
				S.Volume = 10
				S.Looped = false
				S.Pitch = 1
				S:Play()
				grab:FindFirstChild("Head").Size = Vector3.new(2, 1, 0)
				grab:FindFirstChild("Torso").Size = Vector3.new(2, 2, 0)
				grab:FindFirstChild("Right Arm").Size = Vector3.new(1, 2, 0)
				grab:FindFirstChild("Left Arm").Size = Vector3.new(1, 2, 0)
				grab:FindFirstChild("Right Leg").Size = Vector3.new(1, 2, 0)
				grab:FindFirstChild("Left Leg").Size = Vector3.new(1, 2, 0)
				q = Instance.new("ParticleEmitter", grab:FindFirstChild("HumanoidRootPart"))
				q.Rate = 1000
				q.Speed = NumberRange.new(7)
				q.VelocitySpread = 40
				q.Lifetime = NumberRange.new(0.1, 1)
				q.Texture = "rbxassetid://291880914"
				q.Color = ColorSequence.new(Color3.new(0.2, 0, 0), Color3.new(0, 0, 0))
				q.Acceleration = Vector3.new(0, -50, 0)
				q.Size = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 0.5, 0.1),
					NumberSequenceKeypoint.new(1, 0.01, 0.01)
				})
				q.RotSpeed = NumberRange.new(-180, 180)
				q.Rotation = NumberRange.new(-360, 360)
				q.Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 1),
					NumberSequenceKeypoint.new(0.2, 0),
					NumberSequenceKeypoint.new(0.8, 0),
					NumberSequenceKeypoint.new(1, 1)
				})
				S = Instance.new("Sound")
				S.Parent = Character.Torso
				S.SoundId = "rbxassetid://206082327"
				S.Volume = 10
				S.Looped = false
				S.Pitch = 0.8
				S:Play()
				grab:FindFirstChild("HumanoidRootPart").Anchored = false
				Head.face.Texture = "rbxassetid://1895706696"
				attack2 = false
				Animations = false
				grab:FindFirstChild("Humanoid").MaxHealth = 0
				grab:FindFirstChild("Humanoid").Health = 0
				wait(0.5)
				rootPart.Anchored = false
				attack = false
			end
		else
			rootPart.Anchored = false
			attack = false
			Animations = false
		end
	else
		rootPart.Anchored = false
		attack = false
		Animations = false
		return
	end
end
mouse.KeyUp:connect(function(key)
	if key == "r" and attack == false and crouching == false then
		if transformed == false then
			Throw(mouse)
		elseif transformed == true then
			Squeeze(mouse)
		end
	end
end)
GunPoint = Instance.new("BodyGyro")
GunPoint.Parent = nil
GunPoint.D = 175
GunPoint.P = 20000
GunPoint.MaxTorque = Vector3.new(0, 4000000, 0)
Fire = Instance.new("ParticleEmitter", BE)
Fire.Name = "Light"
Fire.VelocitySpread = 0
Fire.Lifetime = NumberRange.new(0.1)
Fire.Speed = NumberRange.new(0)
Fire.Size = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1, 0),
	NumberSequenceKeypoint.new(1, 0, 0)
})
Fire.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(1, 0)
})



local AlginChar = game.Players.LocalPlayer.Character


local movers = {}
local tog = true
local move = false
local Player = game:GetService("Players").LocalPlayer
local mov = {};
local mov2 = {};
 
 





local Hats = {Ex1 = Player.Character:WaitForChild("Meshes/1911RightAccessory"),
}





for i,v in next, Hats do
	v.Handle.AccessoryWeld:Remove()
	for _,mesh in next, v:GetDescendants() do
		if mesh:IsA("Mesh") or mesh:IsA("SpecialMesh") then 
			--mesh:Remove()
		end
	end
end


local function align(i,v)
    local att0 = Instance.new("Attachment", i)
    att0.Position = Vector3.new(0,0,0)
    local att1 = Instance.new("Attachment", v)
    att1.Position = Vector3.new(0,0,0)
    local AP = Instance.new("AlignPosition", i)
    AP.Attachment0 = att0
    AP.Attachment1 = att1
    AP.RigidityEnabled = false
    AP.ReactionForceEnabled = false
    AP.ApplyAtCenterOfMass = false
    AP.MaxForce = 9999999
    AP.MaxVelocity = math.huge
    AP.Responsiveness = 200
    local AO = Instance.new("AlignOrientation", i)
    AO.Attachment0 = att0
    AO.Attachment1 = att1
    AO.ReactionTorqueEnabled = false
    AO.PrimaryAxisOnly = false
    AO.MaxTorque = 9999999
    AO.MaxAngularVelocity = math.huge
    AO.Responsiveness = 200
end
Character.Torso.Attachment:Destroy()
align(Hats.Ex1.Handle, Character.Torso)
Character["Meshes/1911RightAccessory"].Handle.Attachment:Destroy()
Hats.Ex1.Handle.Attachment.Name = "at12"
Hats.Ex1.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Character.Torso.Attachment.Position = Vector3.new(1.1, -1.2, 0)



function putt()
    
    
align(Hats.Ex1.Handle, Character.Torso)
Hats.Ex1.Handle.Attachment.Name = "at12"
Hats.Ex1.Handle.Attachment.Rotation = Vector3.new(0, 180, 0)
Character.Torso.Attachment.Position = Vector3.new(1.1, -1.2, 0)
end







function takee()
    --Character.Torso.Attachment:Destroy()
        align(Hats.Ex1.Handle, game.Workspace.CurrentCamera.Pistol)
    Hats.Ex1.Handle.Attachment.Name = "at12"
    Hats.Ex1.Handle.Attachment.Rotation = Vector3.new(90, 0, 0)
    game.Workspace.CurrentCamera.Pistol.Attachment.Position = Vector3.new(0, 0, 0)
    end
    







function cltor()

Character.Torso.Attachment:Destroy()

end

function clgun()

    game.Workspace.CurrentCamera.Pistol.Attachment:Destroy()
    
    end





















Fire.LightEmission = 0.8
Fire.LockedToPart = true
Fire.Rotation = NumberRange.new(-360, 360)
Fire.RotSpeed = NumberRange.new(-360, 360)
Fire.Texture = "http://www.roblox.com/asset/?id=248625108"
Fire.Color = ColorSequence.new(Color3.fromRGB(255, 105, 19), Color3.fromRGB(255, 255, 127))
Fire.Rate = 300
Fire.Enabled = false
local Scale = game.Players.LocalPlayer.Character.Torso.Size.X / 2 * (game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted") ~= nil and game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted").Scale.Z or 1) * 0.8
AnimFSpd = 0.2
local gun = false
local shoot = false
local putback = false
function Gunfire()
	attack = true
	attack2 = true
	Animations = true
	wait()
	gun = true
	S = Instance.new("Sound")
	S.Parent = BE
	S.SoundId = "rbxassetid://1684717155"
	S.Volume = 6
	S.Looped = false
	S.Pitch = 1
	S:Play()
    cltor()
    takee()
	GunModel.Transparency = 1
	GunPoint.Parent = rootPart
	while gun == true do
		swait()
		if currentAnim == "Idling" then
			for i = 0, 0.01, 0.01 do
				angleSpeed = 1
				axisSpeed = 1
				change = 0.5
				GunPoint.cframe = CFrame.new(rootPart.Position, mouse.Hit.Position)
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(90), math.rad(0), math.rad(80)), AnimFSpd)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1, 0.5, 0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(30)), AnimFSpd)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), AnimFSpd)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), AnimFSpd)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(80) + math.sin(rootPart.RotVelocity.Y / 30) / 2, math.rad(0)), AnimFSpd)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(-80), math.rad(0)), AnimFSpd)
			end
		elseif currentAnim == "Falling" then
			for i = 0, 0.01, 0.01 do
				angleSpeed = 1
				axisSpeed = 1
				change = 0.5
				GunPoint.cframe = CFrame.new(rootPart.Position, mouse.Hit.Position)
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1, 0.5, 0) * c_angles(math.rad(100), math.rad(0), math.rad(0)), 0.15)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-0.5, 0.5, -0.5) * c_angles(math.rad(100), math.rad(0), math.rad(45)), 0.15)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -0.5, -0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(10), math.rad(0), math.rad(0)), 0.15)
			end
		end
		if putback == true then
			S = Instance.new("Sound")
			S.Parent = BE
			S.SoundId = "rbxassetid://294710932"
			S.Volume = 10
			S.Looped = false
			S.Pitch = 1
			S:Play()
			putback = false
			shoot = false
			gun = false
			GunPoint.Parent = nil
			Animations = false
            clgun()
            putt()
			GunModel.Transparency = 1
			attack2 = false
			attack = false
		end
		if shoot == true then
			S = Instance.new("Sound")
			S.Parent = BE
			S.SoundId = "rbxassetid://1045539607"
			S.Volume = 10
			S.Looped = false
			S.Pitch = 1
			S:Play()
			Fire.Enabled = true
			BulletDetection(BE.Position, Mouse.Hit.Position, false)
			swait(1)
			Fire.Enabled = false
			do
				local Shell = Instance.new("Part", game.Workspace)
				Shell.FormFactor = "Custom"
				Shell.BrickColor = BrickColor.new("Bright yellow")
				Shell.Material = "Metal"
				Shell.CanCollide = true
				Shell.CustomPhysicalProperties = PhysicalProperties.new(0.2, 3, 1, 1, 1)
				Shell.Size = Vector3.new(0.15, 0.3, 0.15) * Scale
				Shell.CFrame = BEX.CFrame * CFrame.new(0.5, 0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0)
				Shell.Velocity = ((BEX.CFrame * CFrame.new(-5, 0, math.random(-2, 2))).p - BEX.CFrame.p) * 5 * Scale
				local Mesh = Instance.new("CylinderMesh", Shell)
				Mesh.Scale = Vector3.new(0.15, 0.3, 0.15) * Scale / Shell.Size
				Spawn(function()
					wait(0.1)
					for i = 1, 10 do
						Shell.Transparency = Shell.Transparency + 0.1
						swait()
					end
					Shell:Destroy()
				end)
				if currentAnim == "Idling" then
					for i = 0, 0.05, 0.01 do
						angleSpeed = 1
						axisSpeed = 1
						change = 0.5
						GunPoint.cframe = CFrame.new(rootPart.Position, mouse.Hit.Position)
						RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(90), math.rad(10), math.rad(85)), AnimFSpd)
						LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1, 0.5, 0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(35)), AnimFSpd)
						LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(-5), math.rad(0)), AnimFSpd)
						RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(-5), math.rad(0)), AnimFSpd)
						Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(85), math.rad(0)), AnimFSpd)
						Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(-85), math.rad(20)), AnimFSpd)
						swait()
					end
					for i = 0, 0.05, 0.01 do
						angleSpeed = 1
						axisSpeed = 1
						change = 0.5
						GunPoint.cframe = CFrame.new(rootPart.Position, mouse.Hit.Position)
						RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(90), math.rad(0), math.rad(80)), AnimFSpd)
						LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1, 0.5, 0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(30)), AnimFSpd)
						LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), AnimFSpd)
						RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), AnimFSpd)
						Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(80), math.rad(0)), AnimFSpd)
						Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(-80), math.rad(0)), AnimFSpd)
						swait()
					end
				elseif currentAnim == "Falling" then
					for i = 0, 0.05, 0.01 do
						angleSpeed = 1
						axisSpeed = 1
						change = 0.5
						GunPoint.cframe = CFrame.new(rootPart.Position, mouse.Hit.Position)
						RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1, 0.5, 0) * c_angles(math.rad(105), math.rad(0), math.rad(0)), AnimFSpd)
						LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-0.5, 0.5, -0.5) * c_angles(math.rad(105), math.rad(0), math.rad(45)), AnimFSpd)
						LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(0)), AnimFSpd)
						RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -0.5, -0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), AnimFSpd)
						Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(0)), AnimFSpd)
						Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(30), math.rad(0), math.rad(0)), AnimFSpd)
					end
					for i = 0, 0.05, 0.01 do
						angleSpeed = 1
						axisSpeed = 1
						change = 0.5
						GunPoint.cframe = CFrame.new(rootPart.Position, mouse.Hit.Position)
						RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1, 0.5, 0) * c_angles(math.rad(100), math.rad(0), math.rad(0)), AnimFSpd)
						LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-0.5, 0.5, -0.5) * c_angles(math.rad(100), math.rad(0), math.rad(45)), AnimFSpd)
						LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(0)), AnimFSpd)
						RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -0.5, -0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), AnimFSpd)
						Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(0)), AnimFSpd)
						Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(10), math.rad(0), math.rad(0)), AnimFSpd)
						swait()
					end
				end
				shoot = false
			end
		end
	end
	GunModel.Transparency = 1
	GunPoint.Parent = nil
	Animations = false
	attack2 = false
	attack = false
end












































mouse.KeyUp:connect(function(key)
	if key == "f" and attack == false and crouching == false then
		if transformed == false and transformed2 == false then
			Gunfire()
		elseif transformed == true and transformed2 == true then
			Rock(mouse)
		end
	end
end)
mouse.KeyUp:connect(function(key)
	if key == "f" and gun == true and crouching == false then
		putback = true
	end
end)
function UpperCut()
	attack = true
	attack2 = true
	Animations = true
	crouching = false
	local rng2 = Instance.new("Part", game.Workspace)
	rng2.Anchored = true
	rng2.BrickColor = BrickColor.new("Really black")
	rng2.CanCollide = false
	rng2.FormFactor = 3
	rng2.Name = "Ring"
	rng2.Size = Vector3.new(1, 1, 1)
	rng2.Transparency = 0.35
	rng2.TopSurface = 0
	rng2.BottomSurface = 0
	rng2.CFrame = rng2.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(180))
	rng2.Position = rootPart.Position - Vector3.new(0, -6, 1)
	local rngm2 = Instance.new("SpecialMesh", rng2)
	rngm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
	rngm2.Scale = Vector3.new(3, 0, 3)
	Spawn(function()
		for i = 1, 60, 2 do
			rngm2.Scale = Vector3.new(3 + i * 0.3, 10 - i * 0.1, 3 + i * 0.3)
			rng2.Transparency = i / 30
			wait()
		end
		wait()
		rng2:Destroy()
	end)
	S = Instance.new("Sound")
	S.Parent = rootPart
	S.SoundId = "rbxassetid://2767090"
	S.Volume = 10
	S.Looped = false
	S.Pitch = 0.8
	S:Play()
	S = Instance.new("Sound")
	S.Parent = Character.Torso
	S.SoundId = "rbxassetid://1146552988"
	S.Volume = 10
	S.Looped = false
	S.Pitch = 1
	S.TimePosition = 0.4
	S:Play()
	for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 14)) do
		if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
			v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - math.random(0,0)
			v:FindFirstChild("Humanoid").PlatformStand = false
			v:FindFirstChild("HumanoidRootPart").Velocity = v:FindFirstChild("HumanoidRootPart").CFrame.upVector * 165
		else
		end
	end
	if transformed == false then
		for i = 0, 0.05, 0.01 do
			angleSpeed = 1
			axisSpeed = 1
			change = 0.5
			Trace()
			rootPart.CFrame = rootPart.CFrame * CFrame.new(0, 2, 0)
			RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(100), math.rad(0), math.rad(0)), 0.4)
			LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-15), math.rad(0), math.rad(-20)), 0.4)
			LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-15), math.rad(0), math.rad(0)), 0.4)
			RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -0.5, -0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
			Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
			swait()
		end
		for i = 0, 0.2, 0.01 do
			angleSpeed = 1
			axisSpeed = 1
			change = 0.5
			Trace()
			rootPart.Velocity = rootPart.CFrame.upVector * 100
			RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(170), math.rad(0), math.rad(0)), 0.4)
			LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-15), math.rad(0), math.rad(-20)), 0.4)
			LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-15), math.rad(0), math.rad(0)), 0.4)
			RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -0.5, -0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
			Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
			swait()
		end
	elseif transformed == true then
		for i = 0, 0.05, 0.01 do
			angleSpeed = 1
			axisSpeed = 1
			change = 0.5
			rootPart.CFrame = rootPart.CFrame * CFrame.new(0, 2, 0)
			RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(100), math.rad(0), math.rad(0)), 0.4)
			LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-15), math.rad(0), math.rad(0)), 0.4)
			RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -0.5, -0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
			Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
			swait()
		end
		for i = 0, 0.2, 0.01 do
			angleSpeed = 1
			axisSpeed = 1
			change = 0.5
			rootPart.Velocity = rootPart.CFrame.upVector * 100
			RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(170), math.rad(0), math.rad(0)), 0.4)
			LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-15), math.rad(0), math.rad(0)), 0.4)
			RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -0.5, -0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
			Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
			swait()
		end
	end
	Animations = false
	attack2 = false
	attack = false
end
crouching = false
mouse.KeyDown:connect(function(key)
	if key == "c" and attack == false and crouching == false then
		crouching = true
		Animations = true
		Trace()
		while crouching == true do
			if transformed == false then
				angleSpeed = 1
				axisSpeed = 1
				change = 0.5
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.1, 0.5 + math.sin(sine / 15) / 10, 0.5) * c_angles(math.rad(-60) + -math.sin(sine / 15) / 10, math.rad(0), math.rad(45)), 0.9)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1, 0.2 + -math.sin(sine / 15) / 10, -1) * c_angles(math.rad(60), math.rad(20), math.rad(10)), 0.9)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1 - math.sin(sine / 15) / 10, 0) * c_angles(math.rad(20), math.rad(0), math.rad(-20)), 0.9)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1 - math.sin(sine / 15) / 10, 0) * c_angles(math.rad(90), math.rad(0), math.rad(40)), 0.9)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1.5 + math.sin(sine / 15) / 10, 0.5) * c_angles(math.rad(-60), math.rad(0), math.rad(-20)), 0.9)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(30), math.rad(30), math.rad(0)), 0.9)
				swait()
			elseif transformed == true then
				angleSpeed = 1
				axisSpeed = 1
				change = 0.5
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1, 0.2 + math.sin(sine / 15) / 10, 0) * c_angles(math.rad(60), math.rad(20), math.rad(10)), 0.9)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.1, 0.5 + -math.sin(sine / 15) / 10, 0.5) * c_angles(math.rad(-60) + -math.sin(sine / 15) / 10, math.rad(0), math.rad(-45)), 0.9)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1 - math.sin(sine / 15) / 10, 0) * c_angles(math.rad(20), math.rad(0), math.rad(-20)), 0.9)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1 - math.sin(sine / 15) / 10, 0) * c_angles(math.rad(90), math.rad(0), math.rad(40)), 0.9)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1.5 + math.sin(sine / 15) / 10, 0.5) * c_angles(math.rad(-60), math.rad(0), math.rad(-20)), 0.9)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(30), math.rad(30), math.rad(0)), 0.9)
				swait()
			end
		end
	end
end)
mouse.KeyUp:connect(function(key)
	if key == "c" and attack == false then
		crouching = false
		Animations = false
	end
end)
function Laugh()
	attack = true
	attack2 = true
	Animations = true
	S = Instance.new("Sound")
	S.Parent = rootPart
	S.SoundId = "rbxassetid://1278007556"
	S.Volume = 10
	S.Looped = false
	S.Pitch = 1
	S:Play()
	Head.face.Texture = "rbxassetid://853964940"
	for i = 0, 0.2, 0.01 do
		angleSpeed = 1
		axisSpeed = 1
		change = 0.5
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.4, 0.5 + math.sin(sine / 15) / 10, 0.2) * c_angles(math.rad(-10) + math.sin(sine / 15) / 10, math.rad(0), math.rad(5)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.4, 0.5 + math.sin(sine / 15) / 10, 0.2) * c_angles(math.rad(-10) + math.sin(sine / 15) / 10, math.rad(0), math.rad(-5)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1 + -math.sin(sine / 15) / 10, 0) * c_angles(math.rad(0) - math.sin(sine / 15) / 20, math.sin(rootPart.RotVelocity.Y / 10) / 2, -math.sin(rootPart.RotVelocity.Y / 10) / 2), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1 + -math.sin(sine / 15) / 10, 0) * c_angles(math.rad(0) - math.sin(sine / 15) / 20, -math.sin(rootPart.RotVelocity.Y / 10) / 2, math.sin(-rootPart.RotVelocity.Y / 10) / 2), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1 + math.sin(sine / 15) / 10, 0) * c_angles(math.rad(0) + math.sin(sine / 15) / 20, math.rad(0), math.sin(rootPart.RotVelocity.Y / 30) / 2), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, -0.2 + math.sin(sine / 15) / 10) * c_angles(math.rad(-20) + math.sin(sine / 15) / 10, math.sin(rootPart.RotVelocity.Y / 2.5) / 2, math.rad(0)), 0.15)
		swait()
	end
	Head.face.Texture = "rbxassetid://144873321"
	for i = 0, 0.7, 0.01 do
		angleSpeed = 1
		axisSpeed = 1
		change = 5
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.4, 0.5 + math.sin(sine / 15) / 10, 0.2) * c_angles(math.rad(-10) + math.sin(sine / 15) / 10, math.rad(0), math.rad(5)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.4, 0.5 + math.sin(sine / 15) / 10, 0.2) * c_angles(math.rad(-10) + math.sin(sine / 15) / 10, math.rad(0), math.rad(-5)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1 + -math.sin(sine / 15) / 10, 0) * c_angles(math.rad(0) - math.sin(sine / 15) / 20, math.sin(rootPart.RotVelocity.Y / 10) / 2, -math.sin(rootPart.RotVelocity.Y / 10) / 2), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1 + -math.sin(sine / 15) / 10, 0) * c_angles(math.rad(0) - math.sin(sine / 15) / 20, -math.sin(rootPart.RotVelocity.Y / 10) / 2, math.sin(-rootPart.RotVelocity.Y / 10) / 2), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1 + math.sin(sine / 15) / 10, 0) * c_angles(math.rad(0) + math.sin(sine / 15) / 20, math.rad(0), math.sin(rootPart.RotVelocity.Y / 30) / 2), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0 + math.sin(sine / 15) / 10) * c_angles(math.rad(15) + math.sin(sine / 15) / 10, math.sin(rootPart.RotVelocity.Y / 2.5) / 2, math.rad(0)), 0.15)
		swait()
	end
	Head.face.Texture = "rbxassetid://315622231"
	Animations = false
	attack2 = false
	attack = false
end
mouse.KeyDown:connect(function(key)
	if key == "y" and attack == false and transformed == false then
		Laugh()
	end
end)
transformed = false
transformed2 = false
transforming = false
function Uroboros()
	attack = true
	attack2 = true
	Animations = true
	transforming = true
	Theme.SoundId = "rbxassetid://856054316"
	Theme.TimePosition = 0.8
	Theme:Play()
	for i = 0, 0.5, 0.01 do
		angleSpeed = 1
		axisSpeed = 1
		change = 0.5
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1, 0.2 + math.sin(sine / 15) / 10, -1) * c_angles(math.rad(60), math.rad(20), math.rad(10)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.1, 0.5 + -math.sin(sine / 15) / 10, 0.5) * c_angles(math.rad(-60) + -math.sin(sine / 15) / 10, math.rad(0), math.rad(-45)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1 - math.sin(sine / 15) / 10, 0) * c_angles(math.rad(20), math.rad(0), math.rad(-20)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1 - math.sin(sine / 15) / 10, 0) * c_angles(math.rad(90), math.rad(0), math.rad(40)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1.5 + math.sin(sine / 15) / 10, 0.5) * c_angles(math.rad(-60), math.rad(0), math.rad(-20)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(30), math.rad(30), math.rad(0)), 0.15)
		swait()
	end
	faceinfect = Instance.new("Decal", Head)
	faceinfect.Name = "Uroboros"
	faceinfect.Face = "Front"
	faceinfect.Texture = "rbxassetid://1920646704"
	local rng2 = Instance.new("Part", Character)
	rng2.Anchored = true
	rng2.BrickColor = BrickColor.new("Really black")
	rng2.CanCollide = false
	rng2.FormFactor = 3
	rng2.Name = "Shockwave"
	rng2.Size = Vector3.new(1, 1, 1)
	rng2.Transparency = 0.35
	rng2.TopSurface = 0
	rng2.BottomSurface = 0
	rng2.CFrame = rootPart.CFrame
	local rngm2 = Instance.new("SpecialMesh", rng2)
	rngm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
	rngm2.Scale = Vector3.new(1, 0, 1)
	rngm2.Offset = Vector3.new(0, 0, -2)
	Spawn(function()
		for i = 1, 60, 2 do
			rngm2.Scale = Vector3.new(1 + i * 0.3, 5 - i * 0.1, 1 + i * 0.3)
			rng2.Transparency = i / 30
			rng2.CFrame = rng2.CFrame - Vector3.new(0, 0.2, 0)
			swait()
		end
		wait()
		rng2:Destroy()
	end)
	local rng2 = Instance.new("Part", Character)
	rng2.Anchored = true
	rng2.BrickColor = BrickColor.new("Really black")
	rng2.CanCollide = false
	rng2.FormFactor = 3
	rng2.Name = "Shockwave"
	rng2.Size = Vector3.new(1, 1, 1)
	rng2.Transparency = 0.35
	rng2.TopSurface = 0
	rng2.BottomSurface = 0
	rng2.CFrame = rootPart.CFrame
	local rngm2 = Instance.new("SpecialMesh", rng2)
	rngm2.Scale = Vector3.new(1, 0, 1)
	rngm2.Offset = Vector3.new(0, 0.5, -1)
	rngm2.MeshType = "Sphere"
	Spawn(function()
		for i = 1, 60, 2 do
			rngm2.Scale = Vector3.new(5 + i * 0.3, 5 + i * 0.3, 5 + i * 0.3)
			rng2.Transparency = i / 60
			swait()
		end
		wait()
		rng2:Destroy()
	end)
	local RArm1 = Instance.new("Part", Right_Arm)
	RArm1.Name = "Blade"
	RArm1.Shape = Enum.PartType.Ball
	RArm1.CanCollide = false
	RArm1.BrickColor = BrickColor.new("Medium stone grey")
	RArm1.Transparency = 0
	RArm1.Material = "Grass"
	RArm1.Size = Vector3.new(0.1, 0.1, 0.1)
	RArm1.TopSurface = Enum.SurfaceType.Smooth
	RArm1.BottomSurface = Enum.SurfaceType.Smooth
	local RArm1Weld = Instance.new("Weld", RArm1)
	RArm1Weld.Part0 = Right_Arm
	RArm1Weld.Part1 = RArm1
	RArm1Weld.C1 = CFrame.new(0.2, -1.3, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(90), math.rad(10))
	RArm1Mesh = Instance.new("FileMesh", RArm1)
	RArm1Mesh.MeshId = "http://www.roblox.com/asset/?id=898849476"
	RArm1Mesh.TextureId = "http://www.roblox.com/asset/?id=51177552"
	RArm1Mesh.Scale = Vector3.new(0.007, 0.0035, 0.007)
	local RArm2 = Instance.new("Part", Right_Arm)
	RArm2.Name = "Blade"
	RArm2.Shape = Enum.PartType.Ball
	RArm2.CanCollide = false
	RArm2.BrickColor = BrickColor.new("Medium stone grey")
	RArm2.Transparency = 0
	RArm2.Material = "Grass"
	RArm2.Size = Vector3.new(0.1, 0.1, 0.1)
	RArm2.TopSurface = Enum.SurfaceType.Smooth
	RArm2.BottomSurface = Enum.SurfaceType.Smooth
	local RArm2Weld = Instance.new("Weld", RArm2)
	RArm2Weld.Part0 = Right_Arm
	RArm2Weld.Part1 = RArm2
	RArm2Weld.C1 = CFrame.new(-0.2, -1.5, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(75), math.rad(90), math.rad(-10))
	RArm2Weld = Instance.new("FileMesh", RArm2)
	RArm2Weld.MeshId = "http://www.roblox.com/asset/?id=898849476"
	RArm2Weld.TextureId = "http://www.roblox.com/asset/?id=51177552"
	RArm2Weld.Scale = Vector3.new(0.007, 0.0035, 0.007)
	RArm2Mesh = Instance.new("FileMesh", RArm2)
	RArm2Mesh.MeshId = "http://www.roblox.com/asset/?id=898849476"
	RArm2Mesh.TextureId = "http://www.roblox.com/asset/?id=51177552"
	RArm2Mesh.Scale = Vector3.new(0.007, 0.0035, 0.007)
	local RArm3 = Instance.new("Part", Right_Arm)
	RArm3.Name = "Metal"
	RArm3.Shape = Enum.PartType.Ball
	RArm3.CanCollide = false
	RArm3.BrickColor = BrickColor.new("Really black")
	RArm3.Transparency = 0
	RArm3.Material = "DiamondPlate"
	RArm3.Size = Vector3.new(0.1, 0.1, 0.1)
	RArm3.TopSurface = Enum.SurfaceType.Smooth
	RArm3.BottomSurface = Enum.SurfaceType.Smooth
	local RArm3Weld = Instance.new("Weld", RArm3)
	RArm3Weld.Part0 = Right_Arm
	RArm3Weld.Part1 = RArm3
	RArm3Weld.C1 = CFrame.new(0, -0.4, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(75), math.rad(90), math.rad(0))
	RArm3Mesh = Instance.new("FileMesh", RArm3)
	RArm3Mesh.MeshId = "http://www.roblox.com/asset/?id=1188160822"
	RArm3Mesh.Scale = Vector3.new(0.01, 0.015, 0.015)
	local RArm4 = Instance.new("Part", Right_Arm)
	RArm4.Name = "Metal"
	RArm4.Shape = Enum.PartType.Ball
	RArm4.CanCollide = false
	RArm4.BrickColor = BrickColor.new("Really black")
	RArm4.Transparency = 0
	RArm4.Material = "DiamondPlate"
	RArm4.Size = Vector3.new(0.1, 0.1, 0.1)
	RArm4.TopSurface = Enum.SurfaceType.Smooth
	RArm4.BottomSurface = Enum.SurfaceType.Smooth
	local RArm4Weld = Instance.new("Weld", RArm4)
	RArm4Weld.Part0 = Right_Arm
	RArm4Weld.Part1 = RArm4
	RArm4Weld.C1 = CFrame.new(0, -0.4, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(75), math.rad(90), math.rad(0))
	RArm4Mesh = Instance.new("FileMesh", RArm4)
	RArm4Mesh.MeshId = "http://www.roblox.com/asset/?id=1188160822"
	RArm4Mesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	RArm4Mesh.Scale = Vector3.new(0.01, 0.015, 0.015)
	local RArm4 = Instance.new("Part", Right_Arm)
	RArm4.Name = "Metal"
	RArm4.Shape = Enum.PartType.Ball
	RArm4.CanCollide = false
	RArm4.BrickColor = BrickColor.new("Really black")
	RArm4.Transparency = 0
	RArm4.Material = "DiamondPlate"
	RArm4.Size = Vector3.new(0.1, 0.1, 0.1)
	RArm4.TopSurface = Enum.SurfaceType.Smooth
	RArm4.BottomSurface = Enum.SurfaceType.Smooth
	local RArm4Weld = Instance.new("Weld", RArm4)
	RArm4Weld.Part0 = Right_Arm
	RArm4Weld.Part1 = RArm4
	RArm4Weld.C1 = CFrame.new(0, -0.4, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(75), math.rad(-90), math.rad(0))
	RArm4Mesh = Instance.new("FileMesh", RArm4)
	RArm4Mesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	RArm4Mesh.MeshId = "http://www.roblox.com/asset/?id=1188160822"
	RArm4Mesh.Scale = Vector3.new(0.01, 0.015, 0.015)
	local Tentacle = Instance.new("Part", Right_Arm)
	Tentacle.Name = "Tentacle"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Right_Arm
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0, 0.5, -1.5) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(180))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(1, 1, 1)
	local Tentacle = Instance.new("Part", Right_Arm)
	Tentacle.Name = "Tentacle"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Right_Arm
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0, 0.5, -1.5) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180), math.rad(180))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(1, 1, 1)
	local Tentacle = Instance.new("Part", Right_Arm)
	Tentacle.Name = "Blade"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Right_Arm
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0, 0, -1.5) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(100), math.rad(180))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(1, 1, 1)
	local Tentacle = Instance.new("Part", Right_Arm)
	Tentacle.Name = "Blade"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Right_Arm
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0, 0.5, -1.5) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(-45), math.rad(180))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(1, 1, 1)
	local Tors = Instance.new("Part", Character)
	Tors.Name = "Toor"
	Tors.CanCollide = false
	Tors.BrickColor = BrickColor.new("Really black")
	Tors.Transparency = 0
	Tors.Material = "Metal"
	Tors.Size = Vector3.new(0.1, 0.1, 0.1)
	Tors.TopSurface = Enum.SurfaceType.Smooth
	Tors.BottomSurface = Enum.SurfaceType.Smooth
	local TorsWeld = Instance.new("Weld", Tors)
	TorsWeld.Part0 = Torso
	TorsWeld.Part1 = Tors
	TorsWeld.C1 = CFrame.new(0, 0.44, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90), math.rad(180))
	TMesh = Instance.new("SpecialMesh", Tors)
	TMesh.Scale = Vector3.new(11.6, 11.6, 11.6)
	TMesh.TextureId = "rbxassetid://74620702"
	TMesh.MeshType = "Wedge"
	local Tentacle = Instance.new("Part", Torso)
	Tentacle.Name = "Blade"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Torso
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0.5, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(90))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(0.2, 0.2, 0.2)
	local Tentacle = Instance.new("Part", Torso)
	Tentacle.Name = "Blade"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Torso
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0.5, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(45))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(0.2, 0.2, 0.2)
	local Tentacle = Instance.new("Part", Torso)
	Tentacle.Name = "Blade"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Torso
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0.6, 0.5, -0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(150))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(0.2, 0.2, 0.2)
	local Tentacle = Instance.new("Part", Torso)
	Tentacle.Name = "Blade"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Torso
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(-0.8, 0.5, 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(-90))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(0.2, 0.2, 0.2)
	local Tentacle = Instance.new("Part", Torso)
	Tentacle.Name = "Blade"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Torso
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(0))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(0.2, 0.2, 0.2)
	local Tentacle = Instance.new("Part", Torso)
	Tentacle.Name = "Blade"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Torso
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0.5, 0.5, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(60))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(0.2, 0.2, 0.2)
	local Tentacle = Instance.new("Part", Torso)
	Tentacle.Name = "Blade"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Torso
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0.5, -0.5, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(65))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(0.2, 0.2, 0.2)
	local Tentacle = Instance.new("Part", Torso)
	Tentacle.Name = "Blade"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Torso
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0.5, -0.5, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(90))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(0.2, 0.2, 0.2)
	local Tentacle = Instance.new("Part", Torso)
	Tentacle.Name = "Blade"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Torso
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0.5, -0.5, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(45))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(0.2, 0.2, 0.2)
	local Tentacle = Instance.new("Part", Torso)
	Tentacle.Name = "Blade"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Torso
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0.6, -0.5, -0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(150))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(0.2, 0.2, 0.2)
	local Tentacle = Instance.new("Part", Torso)
	Tentacle.Name = "Blade"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Torso
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0, -0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(0))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(0.2, 0.2, 0.2)
	local Tentacle = Instance.new("Part", Torso)
	Tentacle.Name = "Blade"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Torso
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(1.5, -0.35, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-85), math.rad(-20), math.rad(120))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(0.5, 0.5, 0.5)
	local Heart = Instance.new("Part", Character)
	Heart.Name = "Heart"
	Heart.Shape = Enum.PartType.Ball
	Heart.CanCollide = false
	Heart.BrickColor = BrickColor.new("Neon orange")
	Heart.Transparency = 0.5
	Heart.Material = "Neon"
	Heart.Size = Vector3.new(0.4, 0.4, 0.4)
	Heart.TopSurface = Enum.SurfaceType.Smooth
	Heart.BottomSurface = Enum.SurfaceType.Smooth
	local Weld = Instance.new("Weld", Heart)
	Weld.Part0 = Torso
	Weld.Part1 = Heart
	Weld.C1 = CFrame.new(0.1, -0.5, 0.45)
	local HeartGlow = Instance.new("SurfaceLight")
	HeartGlow.Color = Color3.fromRGB(213, 115, 61)
	HeartGlow.Range = 6
	HeartGlow.Brightness = 10
	HeartGlow.Parent = Heart
	local Heart = Instance.new("Part", Character)
	Heart.Name = "Heart"
	Heart.Shape = Enum.PartType.Ball
	Heart.CanCollide = false
	Heart.BrickColor = BrickColor.new("Really red")
	Heart.Transparency = 0
	Heart.Material = "Granite"
	Heart.Size = Vector3.new(0.35, 0.35, 0.35)
	Heart.TopSurface = Enum.SurfaceType.Smooth
	Heart.BottomSurface = Enum.SurfaceType.Smooth
	local Weld = Instance.new("Weld", Heart)
	Weld.Part0 = Torso
	Weld.Part1 = Heart
	Weld.C1 = CFrame.new(0.1, -0.5, 0.45)
	local Heart = Instance.new("Part", Character)
	Heart.Name = "Heart"
	Heart.Shape = Enum.PartType.Ball
	Heart.CanCollide = false
	Heart.BrickColor = BrickColor.new("Neon orange")
	Heart.Transparency = 0.5
	Heart.Material = "Neon"
	Heart.Size = Vector3.new(0.4, 0.4, 0.4)
	Heart.TopSurface = Enum.SurfaceType.Smooth
	Heart.BottomSurface = Enum.SurfaceType.Smooth
	local Weld = Instance.new("Weld", Heart)
	Weld.Part0 = Torso
	Weld.Part1 = Heart
	Weld.C1 = CFrame.new(0.1, -0.5, -0.45)
	local HeartGlow = Instance.new("SurfaceLight")
	HeartGlow.Color = Color3.fromRGB(213, 115, 61)
	HeartGlow.Range = 6
	HeartGlow.Brightness = 10
	HeartGlow.Parent = Heart
	local Heart = Instance.new("Part", Character)
	Heart.Name = "Heart"
	Heart.Shape = Enum.PartType.Ball
	Heart.CanCollide = false
	Heart.BrickColor = BrickColor.new("Really red")
	Heart.Transparency = 0
	Heart.Material = "Granite"
	Heart.Size = Vector3.new(0.35, 0.35, 0.35)
	Heart.TopSurface = Enum.SurfaceType.Smooth
	Heart.BottomSurface = Enum.SurfaceType.Smooth
	local Weld = Instance.new("Weld", Heart)
	Weld.Part0 = Torso
	Weld.Part1 = Heart
	Weld.C1 = CFrame.new(0.1, -0.5, -0.45)
	Character["Body Colors"].RightArmColor = BrickColor.new("Really black")
	Head.face.Texture = "rbxassetid://1895706696"
	ShadesMesh.MeshId = "rbxassetid://0"
	shirt.ShirtTemplate = "rbxassetid://1266142884"
	for i, v in pairs(Torso:GetChildren()) do
		if v:IsA("ParticleEmitter") then
			v:Destroy()
		end
	end
	for i, v in pairs(Left_Arm:GetChildren()) do
		if v:IsA("ParticleEmitter") then
			v:Destroy()
		end
	end
	S = Instance.new("Sound", rootPart)
	S.Volume = 8
	S.SoundId = "rbxassetid://658228911"
	S:Play()
	for i = 0, 0.1, 0.01 do
		angleSpeed = 1
		axisSpeed = 1
		change = 0.5
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1, 0.2 + math.sin(sine / 15) / 10, -1) * c_angles(math.rad(60), math.rad(20), math.rad(10)), 0.9)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.1, 0.5 + -math.sin(sine / 15) / 10, 0.5) * c_angles(math.rad(-60) + -math.sin(sine / 15) / 10, math.rad(0), math.rad(-45)), 0.9)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1 - math.sin(sine / 15) / 10, 0) * c_angles(math.rad(20), math.rad(0), math.rad(-20)), 0.9)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1 - math.sin(sine / 15) / 10, 0) * c_angles(math.rad(90), math.rad(0), math.rad(40)), 0.9)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1.5 + math.sin(sine / 15) / 10, 0.5) * c_angles(math.rad(-60), math.rad(0), math.rad(-20)), 0.9)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(30), math.rad(30), math.rad(0)), 0.9)
		swait()
	end
	for i = 0, 0.2, 0.01 do
		angleSpeed = 1
		axisSpeed = 1
		change = 1
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(90), math.rad(0), math.rad(45)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-30), math.rad(0), math.rad(-45)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.55, -1, 0) * c_angles(math.rad(45), math.rad(5), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.55, -1, 0) * c_angles(math.rad(45), math.rad(-5), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(-45), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(45), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	Animations = false
	transforming = false
	attack2 = false
	attack = false
	transformed = true
end
function ThirdForm()
	attack = true
	attack2 = true
	transforming = true
	transformed2 = true
	Animations = true
	Character["Body Colors"].LeftArmColor = BrickColor.new("Really black")
	S = Instance.new("Sound", rootPart)
	S.Volume = 8
	S.SoundId = "rbxassetid://658228911"
	S:Play()
	local rng2 = Instance.new("Part", Character)
	rng2.Anchored = true
	rng2.BrickColor = BrickColor.new("Really black")
	rng2.CanCollide = false
	rng2.FormFactor = 3
	rng2.Name = "Shockwave"
	rng2.Size = Vector3.new(1, 1, 1)
	rng2.Transparency = 0.35
	rng2.TopSurface = 0
	rng2.BottomSurface = 0
	rng2.CFrame = rootPart.CFrame
	local rngm2 = Instance.new("SpecialMesh", rng2)
	rngm2.Scale = Vector3.new(1, 0, 1)
	rngm2.Offset = Vector3.new(0, 0.5, -1)
	rngm2.MeshType = "Sphere"
	Spawn(function()
		for i = 1, 60, 2 do
			rngm2.Scale = Vector3.new(5 + i * 0.3, 5 + i * 0.3, 5 + i * 0.3)
			rng2.Transparency = i / 60
			swait()
		end
		wait()
		rng2:Destroy()
	end)
	Theme.SoundId = "rbxassetid://1277996008"
	Theme.TimePosition = 0.8
	Theme:Play()
	local RArm3 = Instance.new("Part", Left_Arm)
	RArm3.Name = "Metal"
	RArm3.Shape = Enum.PartType.Ball
	RArm3.CanCollide = false
	RArm3.BrickColor = BrickColor.new("Really black")
	RArm3.Transparency = 0
	RArm3.Material = "DiamondPlate"
	RArm3.Size = Vector3.new(0.1, 0.1, 0.1)
	RArm3.TopSurface = Enum.SurfaceType.Smooth
	RArm3.BottomSurface = Enum.SurfaceType.Smooth
	local RArm3Weld = Instance.new("Weld", RArm3)
	RArm3Weld.Part0 = Left_Arm
	RArm3Weld.Part1 = RArm3
	RArm3Weld.C1 = CFrame.new(0, -0.4, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(75), math.rad(90), math.rad(0))
	RArm3Mesh = Instance.new("FileMesh", RArm3)
	RArm3Mesh.MeshId = "http://www.roblox.com/asset/?id=1188160822"
	RArm3Mesh.Scale = Vector3.new(0.01, 0.015, 0.015)
	local RArm4 = Instance.new("Part", Left_Arm)
	RArm4.Name = "Metal"
	RArm4.Shape = Enum.PartType.Ball
	RArm4.CanCollide = false
	RArm4.BrickColor = BrickColor.new("Really black")
	RArm4.Transparency = 0
	RArm4.Material = "DiamondPlate"
	RArm4.Size = Vector3.new(0.1, 0.1, 0.1)
	RArm4.TopSurface = Enum.SurfaceType.Smooth
	RArm4.BottomSurface = Enum.SurfaceType.Smooth
	local RArm4Weld = Instance.new("Weld", RArm4)
	RArm4Weld.Part0 = Left_Arm
	RArm4Weld.Part1 = RArm4
	RArm4Weld.C1 = CFrame.new(0, -0.4, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(75), math.rad(90), math.rad(0))
	RArm4Mesh = Instance.new("FileMesh", RArm4)
	RArm4Mesh.MeshId = "http://www.roblox.com/asset/?id=1188160822"
	RArm4Mesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	RArm4Mesh.Scale = Vector3.new(0.01, 0.015, 0.015)
	local RArm4 = Instance.new("Part", Left_Arm)
	RArm4.Name = "Metal"
	RArm4.Shape = Enum.PartType.Ball
	RArm4.CanCollide = false
	RArm4.BrickColor = BrickColor.new("Really black")
	RArm4.Transparency = 0
	RArm4.Material = "DiamondPlate"
	RArm4.Size = Vector3.new(0.1, 0.1, 0.1)
	RArm4.TopSurface = Enum.SurfaceType.Smooth
	RArm4.BottomSurface = Enum.SurfaceType.Smooth
	local RArm4Weld = Instance.new("Weld", RArm4)
	RArm4Weld.Part0 = Left_Arm
	RArm4Weld.Part1 = RArm4
	RArm4Weld.C1 = CFrame.new(0, -0.4, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(75), math.rad(-90), math.rad(0))
	RArm4Mesh = Instance.new("FileMesh", RArm4)
	RArm4Mesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	RArm4Mesh.MeshId = "http://www.roblox.com/asset/?id=1188160822"
	RArm4Mesh.Scale = Vector3.new(0.01, 0.015, 0.015)
	local Tentacle = Instance.new("Part", Left_Arm)
	Tentacle.Name = "Tentacle"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Left_Arm
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0, 0.5, -1.5) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(180))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(1, 1, 1)
	local Tentacle = Instance.new("Part", Left_Arm)
	Tentacle.Name = "Tentacle"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Left_Arm
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0, 0.5, -1.5) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180), math.rad(180))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(1, 1, 1)
	local Tentacle = Instance.new("Part", Left_Arm)
	Tentacle.Name = "Blade"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Left_Arm
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0, 0, -1.5) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(100), math.rad(180))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(1, 1, 1)
	local Tentacle = Instance.new("Part", Left_Arm)
	Tentacle.Name = "Blade"
	Tentacle.Shape = Enum.PartType.Ball
	Tentacle.CanCollide = false
	Tentacle.BrickColor = BrickColor.new("Really black")
	Tentacle.Transparency = 0
	Tentacle.Material = "DiamondPlate"
	Tentacle.Size = Vector3.new(0.1, 0.1, 0.1)
	Tentacle.TopSurface = Enum.SurfaceType.Smooth
	Tentacle.BottomSurface = Enum.SurfaceType.Smooth
	local TentacleWeld = Instance.new("Weld", Tentacle)
	TentacleWeld.Part0 = Left_Arm
	TentacleWeld.Part1 = Tentacle
	TentacleWeld.C1 = CFrame.new(0, 0.5, -1.5) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(-45), math.rad(180))
	TentacleMesh = Instance.new("FileMesh", Tentacle)
	TentacleMesh.MeshId = "http://www.roblox.com/asset/?id=534615496"
	TentacleMesh.TextureId = "http://www.roblox.com/asset/?id=74620702"
	TentacleMesh.Scale = Vector3.new(1, 1, 1)
	local Tors = Instance.new("Part", Character)
	Tors.Name = "Toor"
	Tors.CanCollide = false
	Tors.BrickColor = BrickColor.new("Really black")
	Tors.Transparency = 0
	Tors.Material = "Metal"
	Tors.Size = Vector3.new(0.1, 0.1, 0.1)
	Tors.TopSurface = Enum.SurfaceType.Smooth
	Tors.BottomSurface = Enum.SurfaceType.Smooth
	local TorsWeld = Instance.new("Weld", Tors)
	TorsWeld.Part0 = Torso
	TorsWeld.Part1 = Tors
	TorsWeld.C1 = CFrame.new(0, 0.44, -0.44) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90), math.rad(90))
	TMesh = Instance.new("SpecialMesh", Tors)
	TMesh.Scale = Vector3.new(11.6, 11.6, 11.6)
	TMesh.TextureId = "rbxassetid://74620702"
	TMesh.MeshType = "Wedge"
	for i = 0, 0.3, 0.01 do
		angleSpeed = 1
		axisSpeed = 1
		change = 0.5
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(50) + math.sin(sine / 15) / 10, math.rad(0), math.rad(50) + math.sin(sine / 15) / 10), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(-35), math.rad(-120)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.55, -0.9 + -math.sin(sine / 15) / 10, -0.2) * c_angles(math.rad(10), math.rad(10), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.55, -0.9 + -math.sin(sine / 15) / 10, -0.2) * c_angles(math.rad(10), math.rad(-10), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1.05 + math.sin(sine / 15) / 10, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(30), math.rad(45), math.rad(0)), 0.15)
		swait()
	end
	Animations = false
	transforming = false
	attack2 = false
	attack = false
	transformed2 = true
end
mouse.KeyDown:connect(function(key)
	if key == "p" and attack == false then
		if transformed == false and transformed2 == false then
			Uroboros()
		elseif transformed == true and transformed2 == false then
			ThirdForm()
		end
	end
end)
tp = true
Player:GetMouse().KeyDown:connect(function(k)
	if k == "t" and tp == true then
		tp = false
		S = Instance.new("Sound")
		S.Parent = rootPart
		S.SoundId = "rbxassetid://2767090"
		S.Volume = 10
		S.Looped = false
		S.Pitch = 0.8
		S:Play()
		Trace()
		Character.Head.face.Parent = game.Lighting
		Character.HumanoidRootPart.CFrame = Player:GetMouse().Hit * CFrame.new(0, 3.5, 0)
		game.Lighting.face.Parent = Character.Head
		tp = true
	end
end)
talk = math.random(1, 5)
function CobraPunch()
	attack = true
	Animations = true
	talk = math.random(1, 5)
	if talk == 5 then
		Head.face.Texture = "rbxassetid://1895698679"
		Qe = Instance.new("Sound")
		Qe.Parent = Character.Torso
		Qe.SoundId = "rbxassetid://1146553450"
		Qe.Volume = 10
		Qe.Looped = false
		Qe.Pitch = 1
		Qe:Play()
	end
	if talk ~= 5 then
		for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 7)) do
			if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
				v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - math.random(0, 0)
				S = Instance.new("Sound")
				S.Parent = Character.Torso
				S.SoundId = "rbxassetid://1063050323"
				S.Volume = 8
				S.Looped = false
				S.Pitch = 1
				S:Play()
			else
			end
		end
	end
	for i = 0, 0.3, 0.01 do
		angleSpeed = 1
		axisSpeed = 1
		change = 0.5
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.2, 0.5, -0.5) * c_angles(math.rad(90), math.rad(0), math.rad(-80)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(90), math.rad(0), math.rad(-80)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-5), math.rad(0), math.rad(-5)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(5), math.rad(0), math.rad(5)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(-80), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(-10), math.rad(80), math.rad(0)), 0.15)
		swait()
	end
	if talk == 5 then
		wait(0.5)
		Head.face.Texture = "rbxassetid://1895670162"
		dashing = true
		rootPart.Velocity = rootPart.CFrame.lookVector * 150
	else
		rootPart.Velocity = rootPart.CFrame.lookVector * 100
	end
	if talk == 5 then
		for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 7)) do
			if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
				v:FindFirstChild("Humanoid").Health = 100
				S = Instance.new("Sound")
				S.Parent = Character.Torso
				S.SoundId = "rbxassetid://1063050323"
				S.Volume = 8
				S.Looped = false
				S.Pitch = 1
				S:Play()
			else
			end
		end
	else
		for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 7)) do
			if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
				v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - math.random(0, 0)
				S = Instance.new("Sound")
				S.Parent = Character.Torso
				S.SoundId = "rbxassetid://1063050323"
				S.Volume = 8
				S.Looped = false
				S.Pitch = 1
				S:Play()
			else
			end
		end
	end
	for i = 0, 0.2, 0.01 do
		angleSpeed = 1
		axisSpeed = 1
		change = 0.5
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(90), math.rad(0), math.rad(80)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.2, 0.5, -0.5) * c_angles(math.rad(90), math.rad(0), math.rad(80)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-5), math.rad(0), math.rad(-20)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(5), math.rad(0), math.rad(-10)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(80), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(-80), math.rad(0)), 0.15)
		swait()
	end
	if talk == 5 then
		wait(0.05)
		dashing = false
		wait(0.5)
		Qe:Destroy()
		Head.face.Texture = "rbxassetid://315622231"
	end
	Animations = false
	attack = false
end
function attackone()
	attack = true
	Animations = true
	Head.face.Texture = "rbxassetid://1895698679"
	for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 4)) do
		if v:FindFirstChild("HumanoidRootPart") then
			v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - math.random(0, 0)
			S = Instance.new("Sound")
			S.Parent = Character.Torso
			S.SoundId = "rbxassetid://1063050323"
			S.Volume = 2
			S.Looped = false
			S.Pitch = 1
			S:Play()
		end
	end
	S = Instance.new("Sound")
	S.Parent = Character.Torso
	s2 = math.random(1, 4)
	if s2 == 1 then
		S.SoundId = "rbxassetid://1146556706"
	elseif s2 == 2 then
		S.SoundId = "rbxassetid://1146556975"
	elseif s2 == 3 or s2 == 4 then
		S.SoundId = "rbxassetid://0"
	end
	S.Volume = 10
	S.Looped = false
	S.Pitch = 1
	S:Play()
	for i = 0, 0.08, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(120), math.rad(0), math.rad(20)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(-10)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-5), math.rad(20), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(5), math.rad(20), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(-20), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(20), math.rad(0)), 0.15)
		swait()
	end
	for i = 0, 0.08, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.2, 0.5, -0.8) * c_angles(math.rad(90), math.rad(0), math.rad(-20)), 0.5)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.5)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(5), math.rad(-20), math.rad(0)), 0.5)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.5)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(20), math.rad(0)), 0.5)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(-20), math.rad(0)), 0.5)
		swait()
	end
	Head.face.Texture = "rbxassetid://315622231"
	Animations = false
	attack = false
end
function attacktwo()
	attack = true
	Animations = true
	Head.face.Texture = "rbxassetid://1895698679"
	for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 4)) do
		if v:FindFirstChild("HumanoidRootPart") then
			v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - math.random(0,0)
			S = Instance.new("Sound")
			S.Parent = Character.Torso
			S.SoundId = "rbxassetid://1063050323"
			S.Volume = 8
			S.Looped = false
			S.Pitch = 1
			S:Play()
		end
	end
	S = Instance.new("Sound")
	S.Parent = Character.Torso
	s2 = math.random(1, 4)
	if s2 == 1 then
		S.SoundId = "rbxassetid://1146556706"
	elseif s2 == 2 then
		S.SoundId = "rbxassetid://1146556975"
	elseif s2 == 3 or s2 == 4 then
		S.SoundId = "rbxassetid://0"
	end
	S.Volume = 10
	S.Looped = false
	S.Pitch = 1
	S:Play()
	for i = 0, 0.08, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(-10)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(120), math.rad(0), math.rad(-20)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(5), math.rad(-20), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(20), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(-20), math.rad(0)), 0.15)
		swait()
	end
	for i = 0, 0.08, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.5)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.2, 0.5, -0.8) * c_angles(math.rad(90), math.rad(0), math.rad(20)), 0.5)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-5), math.rad(20), math.rad(0)), 0.5)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(5), math.rad(20), math.rad(0)), 0.5)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(-30), math.rad(0)), 0.5)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(20), math.rad(0)), 0.5)
		swait()
	end
	Head.face.Texture = "rbxassetid://315622231"
	Animations = false
	attack = false
end
function attackthree()
	attack = true
	Animations = true
	for i = 0, 0.08, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(45), math.rad(0), math.rad(0)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(45), math.rad(0), math.rad(0)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(20)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(-20), math.rad(-20), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 4)) do
		if v:FindFirstChild("HumanoidRootPart") then
			v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - math.random(0, 0)
			S = Instance.new("Sound")
			S.Parent = Character.Torso
			S.SoundId = "rbxassetid://1063050323"
			S.Volume = 8
			S.Looped = false
			S.Pitch = 1
			S:Play()
		end
	end
	for i = 0, 0.06, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(-25), math.rad(0), math.rad(0)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-25), math.rad(0), math.rad(0)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(110), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(20), math.rad(20), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, -0.2) * c_angles(math.rad(-15), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	Animations = false
	attack = false
end
function attackfour()
	attack = true
	Animations = true
	for i = 0, 0.08, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(45), math.rad(0), math.rad(0)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(45), math.rad(0), math.rad(0)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(20), math.rad(0), math.rad(-20)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(-20), math.rad(20), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 4)) do
		if v:FindFirstChild("HumanoidRootPart") then
			v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - math.random(0, 0)
			S = Instance.new("Sound")
			S.Parent = Character.Torso
			S.SoundId = "rbxassetid://1063050323"
			S.Volume = 8
			S.Looped = false
			S.Pitch = 1
			S:Play()
		end
	end
	for i = 0, 0.06, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(-25), math.rad(0), math.rad(0)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-25), math.rad(0), math.rad(0)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(110), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(20), math.rad(-20), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, -0.2) * c_angles(math.rad(-15), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	Animations = false
	attack = false
end
function attackfive()
	attack = true
	Animations = true
	Head.face.Texture = "rbxassetid://149227955"
	for i = 0, 0.01, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
	end
	for i = 0, 0.08, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(0.8, 1.2, 0) * c_angles(math.rad(180), math.rad(0), math.rad(0)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-0.8, 1.2, 0) * c_angles(math.rad(180), math.rad(0), math.rad(0)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-25), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-25), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	S = Instance.new("Sound")
	S.Parent = Character.Torso
	S.SoundId = "rbxassetid://1278006076"
	S.Volume = 10
	S.Looped = false
	S.Pitch = 1
	S:Play()
	for i = 0, 0.05, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(0.8, 0.5, 0.2) * c_angles(math.rad(200), math.rad(0), math.rad(-40)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-0.8, 0.5, 0.2) * c_angles(math.rad(200), math.rad(0), math.rad(40)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 7)) do
		if v:FindFirstChild("HumanoidRootPart") then
			v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - math.random(0, 0)
			S = Instance.new("Sound")
			S.Parent = Character.Torso
			S.SoundId = "rbxassetid://1063050323"
			S.Volume = 8
			S.Looped = false
			S.Pitch = 1
			S:Play()
		end
	end
	for i = 0, 0.01, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(0.8, 0.5, 0) * c_angles(math.rad(80), math.rad(0), math.rad(-40)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-0.8, 0.5, 0) * c_angles(math.rad(80), math.rad(0), math.rad(40)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	for i = 0, 0.04, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.2, -0.5) * c_angles(math.rad(0), math.rad(0), math.rad(-40)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.2, -0.5) * c_angles(math.rad(0), math.rad(0), math.rad(40)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	wait(0.1)
	Head.face.Texture = "rbxassetid://315622231"
	Animations = false
	attack = false
end
function attackoneA()
	attack = true
	Animations = true
	Head.face.Texture = "rbxassetid://1895698679"
	S = Instance.new("Sound")
	S.Parent = Character.Torso
	s2 = math.random(1, 4)
	if s2 == 1 then
		S.SoundId = "rbxassetid://1146556706"
	elseif s2 == 2 then
		S.SoundId = "rbxassetid://1146556975"
	elseif s2 == 3 or s2 == 4 then
		S.SoundId = "rbxassetid://0"
	end
	S.Volume = 10
	S.Looped = false
	S.Pitch = 1
	S:Play()
	for i = 0, 0.2, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(80), math.rad(0), math.rad(120)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(-10)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-5), math.rad(20), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(5), math.rad(20), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(-20), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(20), math.rad(0)), 0.15)
		swait()
	end
	for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 6)) do
		if v:FindFirstChild("HumanoidRootPart") then
			v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - math.random(0, 0)
			S = Instance.new("Sound")
			S.Parent = Character.Torso
			S.SoundId = "rbxassetid://1063050323"
			S.Volume = 2
			S.Looped = false
			S.Pitch = 1
			S:Play()
		end
	end
	for i = 0, 0.2, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.2, 0.5, -0.8) * c_angles(math.rad(75), math.rad(0), math.rad(-50)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(5), math.rad(-20), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(20), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(-20), math.rad(0)), 0.15)
		swait()
	end
	Head.face.Texture = "rbxassetid://1895706696"
	Animations = false
	attack = false
end
function attacktwoA()
	attack = true
	Animations = true
	Head.face.Texture = "rbxassetid://1895698679"
	S = Instance.new("Sound")
	S.Parent = Character.Torso
	s2 = math.random(1, 4)
	if s2 == 1 then
		S.SoundId = "rbxassetid://1146556706"
	elseif s2 == 2 then
		S.SoundId = "rbxassetid://1146556975"
	elseif s2 == 3 or s2 == 4 then
		S.SoundId = "rbxassetid://0"
	end
	S.Volume = 10
	S.Looped = false
	S.Pitch = 1
	S:Play()
	for i = 0, 0.08, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(-10)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(120), math.rad(0), math.rad(-20)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(5), math.rad(-20), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(20), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(-20), math.rad(0)), 0.15)
		swait()
	end
	for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 4)) do
		if v:FindFirstChild("HumanoidRootPart") then
			v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - math.random(0, 0)
			S = Instance.new("Sound")
			S.Parent = Character.Torso
			S.SoundId = "rbxassetid://1063050323"
			S.Volume = 8
			S.Looped = false
			S.Pitch = 1
			S:Play()
		end
	end
	for i = 0, 0.08, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.5)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.2, 0.5, -0.8) * c_angles(math.rad(90), math.rad(0), math.rad(20)), 0.5)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-5), math.rad(20), math.rad(0)), 0.5)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(5), math.rad(20), math.rad(0)), 0.5)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(-30), math.rad(0)), 0.5)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(20), math.rad(0)), 0.5)
		swait()
	end
	Head.face.Texture = "rbxassetid://1895706696"
	Animations = false
	attack = false
end
function attacktwoB()
	attack = true
	Animations = true
	Head.face.Texture = "rbxassetid://1895698679"
	S = Instance.new("Sound")
	S.Parent = Character.Torso
	s2 = math.random(1, 4)
	if s2 == 1 then
		S.SoundId = "rbxassetid://1146556706"
	elseif s2 == 2 then
		S.SoundId = "rbxassetid://1146556975"
	elseif s2 == 3 or s2 == 4 then
		S.SoundId = "rbxassetid://0"
	end
	S.Volume = 10
	S.Looped = false
	S.Pitch = 1
	S:Play()
	for i = 0, 0.2, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(10)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(80), math.rad(0), math.rad(-120)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(5), math.rad(-20), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(20), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(-20), math.rad(0)), 0.15)
		swait()
	end
	for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 6)) do
		if v:FindFirstChild("HumanoidRootPart") then
			v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - math.random(0, 0)
			S = Instance.new("Sound")
			S.Parent = Character.Torso
			S.SoundId = "rbxassetid://1063050323"
			S.Volume = 8
			S.Looped = false
			S.Pitch = 1
			S:Play()
		end
	end
	for i = 0, 0.2, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(50)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.2, 0.5, -0.8) * c_angles(math.rad(75), math.rad(0), math.rad(20)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-5), math.rad(20), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(5), math.rad(20), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(-30), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(20), math.rad(0)), 0.15)
		swait()
	end
	Head.face.Texture = "rbxassetid://1895706696"
	Animations = false
	attack = false
end
function attackthreeB()
	attack = true
	Animations = true
	Head.face.Texture = "rbxassetid://1895698679"
	for i = 0, 0.2, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(20)), 0.1)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(-20)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
	end
	for i = 0, 0.2, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(0.8, 1.2, 0) * c_angles(math.rad(180), math.rad(0), math.rad(20)), 0.1)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(180), math.rad(0), math.rad(-20)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	Head.face.Texture = "rbxassetid://1895670162"
	S = Instance.new("Sound")
	S.Parent = Character.Torso
	S.SoundId = "rbxassetid://1278006076"
	S.Volume = 10
	S.Looped = false
	S.Pitch = 1
	S:Play()
	for i = 0, 0.05, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(0.8, 0.5, 0.2) * c_angles(math.rad(200), math.rad(0), math.rad(20)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(200), math.rad(0), math.rad(-20)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	local rng2 = Instance.new("Part", Character)
	rng2.Anchored = true
	rng2.BrickColor = BrickColor.new("Really black")
	rng2.CanCollide = false
	rng2.FormFactor = 3
	rng2.Name = "Shockwave"
	rng2.Size = Vector3.new(1, 1, 1)
	rng2.Transparency = 0.35
	rng2.TopSurface = 0
	rng2.BottomSurface = 0
	rng2.CFrame = rootPart.CFrame
	local rngm2 = Instance.new("SpecialMesh", rng2)
	rngm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
	rngm2.Scale = Vector3.new(1, 0, 1)
	rngm2.Offset = Vector3.new(0, 0, -5)
	Spawn(function()
		for i = 1, 60, 2 do
			rngm2.Scale = Vector3.new(1 + i * 0.8, 5 - i * 0.1, 1 + i * 0.8)
			rng2.Transparency = i / 30
			rng2.CFrame = rng2.CFrame - Vector3.new(0, 0.2, 0)
			swait()
		end
		wait()
		rng2:Destroy()
	end)
	for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 7)) do
		if v:FindFirstChild("HumanoidRootPart") then
			v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - math.random(0, 0)
			S = Instance.new("Sound")
			S.Parent = Character.Torso
			S.SoundId = "rbxassetid://1063050323"
			S.Volume = 8
			S.Looped = false
			S.Pitch = 1
			S:Play()
		end
	end
	S = Instance.new("Sound")
	S.Parent = Character.Torso
	S.SoundId = "rbxassetid://2248511"
	S.Volume = 10
	S.Looped = false
	S.Pitch = 1
	S:Play()
	for i = 0, 0.01, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(0.8, 0, -0.5) * c_angles(math.rad(25), math.rad(0), math.rad(20)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(25), math.rad(0), math.rad(-20)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	for i = 0, 0.04, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0, -0.5) * c_angles(math.rad(0), math.rad(0), math.rad(-10)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(10)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	wait(0.1)
	Head.face.Texture = "rbxassetid://1895706696"
	Animations = false
	attack = false
end
function attackthreeA()
	attack = true
	Animations = true
	Head.face.Texture = "rbxassetid://1895698679"
	for i = 0, 0.2, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(20)), 0.1)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(10) - math.sin(sine / 15) / 10, math.rad(0), math.rad(-10) - math.sin(sine / 15) / 10), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
	end
	for i = 0, 0.2, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(0.8, 1.2, 0) * c_angles(math.rad(180), math.rad(0), math.rad(20)), 0.1)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(10) - math.sin(sine / 15) / 10, math.rad(0), math.rad(-10) - math.sin(sine / 15) / 10), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	Head.face.Texture = "rbxassetid://1895670162"
	S = Instance.new("Sound")
	S.Parent = Character.Torso
	S.SoundId = "rbxassetid://1278006076"
	S.Volume = 10
	S.Looped = false
	S.Pitch = 1
	S:Play()
	for i = 0, 0.05, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(0.8, 0.5, 0.2) * c_angles(math.rad(200), math.rad(0), math.rad(20)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(10) - math.sin(sine / 15) / 10, math.rad(0), math.rad(-10) - math.sin(sine / 15) / 10), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	local rng2 = Instance.new("Part", Character)
	rng2.Anchored = true
	rng2.BrickColor = BrickColor.new("Really black")
	rng2.CanCollide = false
	rng2.FormFactor = 3
	rng2.Name = "Shockwave"
	rng2.Size = Vector3.new(1, 1, 1)
	rng2.Transparency = 0.35
	rng2.TopSurface = 0
	rng2.BottomSurface = 0
	rng2.CFrame = rootPart.CFrame
	local rngm2 = Instance.new("SpecialMesh", rng2)
	rngm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
	rngm2.Scale = Vector3.new(1, 0, 1)
	rngm2.Offset = Vector3.new(0.5, 0, -5)
	Spawn(function()
		for i = 1, 60, 2 do
			rngm2.Scale = Vector3.new(1 + i * 0.3, 5 - i * 0.1, 1 + i * 0.3)
			rng2.Transparency = i / 30
			rng2.CFrame = rng2.CFrame - Vector3.new(0, 0.2, 0)
			swait()
		end
		wait()
		rng2:Destroy()
	end)
	for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 7)) do
		if v:FindFirstChild("HumanoidRootPart") then
			v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - math.random(0, 0)
			S = Instance.new("Sound")
			S.Parent = Character.Torso
			S.SoundId = "rbxassetid://1063050323"
			S.Volume = 8
			S.Looped = false
			S.Pitch = 1
			S:Play()
		end
	end
	S = Instance.new("Sound")
	S.Parent = Character.Torso
	S.SoundId = "rbxassetid://1310889008"
	S.Volume = 10
	S.Looped = false
	S.Pitch = 1
	S:Play()
	for i = 0, 0.01, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(0.8, 0, -0.5) * c_angles(math.rad(25), math.rad(0), math.rad(20)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(10) - math.sin(sine / 15) / 10, math.rad(0), math.rad(-10) - math.sin(sine / 15) / 10), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	for i = 0, 0.04, 0.01 do
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0, -0.5) * c_angles(math.rad(0), math.rad(0), math.rad(-10)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(10) - math.sin(sine / 15) / 10, math.rad(0), math.rad(-10) - math.sin(sine / 15) / 10), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		swait()
	end
	wait(0.1)
	Head.face.Texture = "rbxassetid://1895706696"
	Animations = false
	attack = false
end
attktype = 1
mouse.Button1Down:connect(function(key)
	if attack == false and crouching == false then
		if gun == false then
			if transformed == false then
				if attktype == 1 then
					attackone()
				elseif attktype == 2 then
					attacktwo()
				elseif attktype == 3 then
					attackthree()
				elseif attktype == 4 then
					attackfour()
				elseif attktype == 5 then
					attackfive()
				elseif attktype == 6 then
					CobraPunch()
					attktype = 0
				end
				attktype = attktype + 1
			elseif transformed == true then
				if attktype == 1 then
					attackoneA()
				elseif attktype == 2 then
					if transformed2 == false then
						attacktwoA()
					elseif transformed2 == true then
						attacktwoB()
					end
				elseif attktype == 3 then
					if transformed2 == false then
						attackthreeA()
					elseif transformed2 == true then
						attackthreeB()
					end
					attktype = 0
				end
				attktype = attktype + 1
			end
		end
	elseif gun == true then
		shoot = true
	elseif attack == false and crouching == true then
		UpperCut()
	end
end)
function findCloseHumanoid(centre, distance)
	local tab = {}
	for _, child in pairs(game.Workspace:GetChildren()) do
		if child:findFirstChild("Humanoid") and child:findFirstChild("Humanoid") ~= Humanoid and child:findFirstChild("Torso") then
			local vtors = child.Torso
			local mag = math.abs((vtors.Position - centre).magnitude)
			if distance >= mag then
				table.insert(tab, child.Humanoid)
			end
		end
	end
	return tab
end
function rayCast(Pos, Dir, Max, Ignore)
	return game:GetService("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m00 < m11 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1 / math.sin(theta)
			startInterp = math.sin((1 - t) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = math.acos(-cosTheta)
		local invSinTheta = 1 / math.sin(theta)
		startInterp = math.sin((t - 1) * theta) * invSinTheta
		finishInterp = math.sin(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
swait()
LA_Weld = newWeld(Torso, Left_Arm, -1.5, 0.5, 0)
Left_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
RA_Weld = newWeld(Torso, Right_Arm, 1.5, 0.5, 0)
Right_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
LL_Weld = newWeld(Torso, Left_Leg, -0.5, -1, 0)
Left_Leg.Weld.C1 = CFrame.new(0, 1, 0)
RL_Weld = newWeld(Torso, Right_Leg, 0.5, -1, 0)
Right_Leg.Weld.C1 = CFrame.new(0, 1, 0)
Torso_Weld = newWeld(rootPart, Torso, 0, -1, 0)
Torso.Weld.C1 = CFrame.new(0, -1, 0)
Head_Weld = newWeld(Torso, Head, 0, 1.5, 0)
for i, v in pairs(Character:GetChildren()) do
	if v:IsA("Accoutrement") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("CharacterMesh") then
		v:Destroy()
	elseif v:IsA("Part") and v.Name == "Head" then
		v.face.Texture = "rbxassetid://315622231"
	end
end
shirt = Instance.new("Shirt", Character)
pants = Instance.new("Pants", Character)
shirt.ShirtTemplate = "rbxassetid://155329817"
pants.PantsTemplate = "rbxassetid://155329869"
Character["Body Colors"].HeadColor = BrickColor.new("Cashmere")
Character["Body Colors"].TorsoColor = BrickColor.new("Cashmere")
Character["Body Colors"].RightArmColor = BrickColor.new("Cashmere")
Character["Body Colors"].LeftArmColor = BrickColor.new("Cashmere")
Character["Body Colors"].RightLegColor = BrickColor.new("Cashmere")
Character["Body Colors"].LeftLegColor = BrickColor.new("Cashmere")
Humanoid.DisplayDistanceType = "None"
sine = 0
change = 1
sprint = false
local punches = {
	a = false,
	b = false,
	c = false
}
UIService.InputBegan:connect(function(Input, GUIProcessed)
	if not GUIProcessed and Input.UserInputType == Enum.UserInputType.MouseButton1 then
		if punches.a == false then
			punches.a = true
			wait(0.4)
			punches.a = false
		else
			punches.a = true
			if punches.b == false then
				punches.b = true
				wait(0.4)
				punches.b = false
			else
				punches.b = true
				if punches.c == false then
					punches.c = true
					wait(0.4)
					punches.c = false
				else
					punches.c = true
				end
			end
		end
	elseif not GUIProcessed and Input.KeyCode == Enum.KeyCode.LeftShift then
		sprint = true
	end
end)
Humanoid.Died:connect(function()
	Theme:Destroy()
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Part") or v:IsA("Accessory") then
			v:Destroy()
		end
	end
end)
UIService.InputEnded:connect(function(Input, GUIProcessed)
	if not GUIProcessed and Input.KeyCode == Enum.KeyCode.LeftShift then
		sprint = false
	end
end)
coroutine.wrap(function()
	while true do
		if sprint == false then
			if attack2 == false and crouching == false then
				Humanoid.WalkSpeed = 8
				Humanoid.JumpPower = 50
			elseif attack2 == true or crouching == true then
				Humanoid.WalkSpeed = 0
				Humanoid.JumpPower = 0
			end
		elseif sprint == true then
			if attack2 == false and crouching == false then
				Humanoid.WalkSpeed = 25
				Humanoid.JumpPower = 100
			elseif attack2 == true or crouching == true then
				Humanoid.WalkSpeed = 0
				Humanoid.JumpPower = 0
			end
		end
		wait()
	end
end)()
game:GetService("RunService").RenderStepped:connect(function()
	Angle = Angle % 100 + angleSpeed / 10
	Axis = Axis % 100 + axisSpeed / 10
	walkingMagnitude = Vector3.new(rootPart.Velocity.X, 0, rootPart.Velocity.Z).magnitude
	jumpVel = Torso.Velocity.Y
	sine = change + sine
	if jumpVel > 1 then
		currentAnim = "Jumping"
	elseif jumpVel < -1 then
		currentAnim = "Falling"
	elseif walkingMagnitude < 2 then
		currentAnim = "Idling"
	elseif isSprinting == true then
		currentAnim = "Sprinting"
	elseif walkingMagnitude > 2 then
		currentAnim = "Walking"
	elseif isAttacking == true then
		currentAnim = "Attacking"
	end
	if currentAnim == "Jumping" and Animations == false then
		angleSpeed = 2
		axisSpeed = 2
		change = 0.5
		RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(15), math.rad(0), math.rad(20)), 0.15)
		LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-15), math.rad(0), math.rad(-20)), 0.15)
		LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-15), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -0.5, -0.5) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
	elseif currentAnim == "Falling" and Animations == false then
		if transformed == false then
			angleSpeed = 2
			axisSpeed = 2
			change = 0.5
			RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(25)), 0.15)
			LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(-25)), 0.15)
			LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -0.8, 0.2) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
			RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -0.8, -0.5) * c_angles(math.rad(15), math.rad(0), math.rad(0)), 0.15)
			Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0.5) * c_angles(math.rad(-15), math.rad(0), math.rad(0)), 0.15)
			Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, -0.3) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		elseif transformed == true and transformed2 == false then
			angleSpeed = 2
			axisSpeed = 2
			change = 0.5
			RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(80)), 0.15)
			LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(-25)), 0.15)
			LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -0.8, 0.2) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
			RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -0.8, -0.5) * c_angles(math.rad(15), math.rad(0), math.rad(0)), 0.15)
			Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0.5) * c_angles(math.rad(-15), math.rad(0), math.rad(0)), 0.15)
			Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, -0.3) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		elseif transformed == true and transformed2 == true then
			angleSpeed = 2
			axisSpeed = 2
			change = 0.5
			RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(80)), 0.15)
			LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(20), math.rad(0), math.rad(-80)), 0.15)
			LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -0.8, 0.2) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
			RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -0.8, -0.5) * c_angles(math.rad(15), math.rad(0), math.rad(0)), 0.15)
			Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0.5) * c_angles(math.rad(-15), math.rad(0), math.rad(0)), 0.15)
			Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, -0.3) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		end
	elseif currentAnim == "Idling" and Animations == false then
		if transformed == false then
			angleSpeed = 1
			axisSpeed = 1
			change = 0.5
			RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1, 0.5 + math.sin(sine / 15) / 10, 0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.15)
			LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1, 0.5 + math.sin(sine / 15) / 10, 0.5) * c_angles(math.rad(-20), math.rad(0), math.rad(30)), 0.15)
			LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1 + -math.sin(sine / 15) / 10, 0) * c_angles(math.rad(0) - math.sin(sine / 15) / 20, math.sin(rootPart.RotVelocity.Y / 10) / 2, -math.sin(rootPart.RotVelocity.Y / 10) / 2), 0.15)
			RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1 + -math.sin(sine / 15) / 10, 0) * c_angles(math.rad(0) - math.sin(sine / 15) / 20, -math.sin(rootPart.RotVelocity.Y / 10) / 2, math.sin(-rootPart.RotVelocity.Y / 10) / 2), 0.15)
			Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1 + math.sin(sine / 15) / 10, 0) * c_angles(math.rad(0) + math.sin(sine / 15) / 20, math.rad(0), math.sin(rootPart.RotVelocity.Y / 30) / 2), 0.15)
			Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, -0.2 + math.sin(sine / 15) / 10) * c_angles(math.rad(-20) + math.sin(sine / 15) / 10, math.sin(rootPart.RotVelocity.Y / 2.5) / 2, math.rad(0)), 0.15)
		elseif transformed == true and transformed2 == false then
			angleSpeed = 1
			axisSpeed = 1
			change = 0.5
			RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(50) + math.sin(sine / 15) / 10, math.rad(0), math.rad(50) + math.sin(sine / 15) / 10), 0.15)
			LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(10) - math.sin(sine / 15) / 10, math.rad(0), math.rad(-10) - math.sin(sine / 15) / 10), 0.15)
			LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.55, -0.9 + -math.sin(sine / 15) / 10, -0.2) * c_angles(math.rad(10), math.rad(10), math.rad(0)), 0.15)
			RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.55, -0.9 + -math.sin(sine / 15) / 10, -0.2) * c_angles(math.rad(10), math.rad(-10), math.rad(0)), 0.15)
			Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1.05 + math.sin(sine / 15) / 10, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
			Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(10), math.rad(0), math.rad(0)), 0.15)
		elseif transformed == true and transformed2 == true then
			angleSpeed = 1
			axisSpeed = 1
			change = 0.5
			RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(50) + math.sin(sine / 15) / 10, math.rad(0), math.rad(50) + math.sin(sine / 15) / 10), 0.15)
			LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(50) - math.sin(sine / 15) / 10, math.rad(0), math.rad(-50) - math.sin(sine / 15) / 10), 0.15)
			LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.55, -0.9 + -math.sin(sine / 15) / 10, -0.2) * c_angles(math.rad(10), math.rad(10), math.rad(0)), 0.15)
			RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.55, -0.9 + -math.sin(sine / 15) / 10, -0.2) * c_angles(math.rad(10), math.rad(-10), math.rad(0)), 0.15)
			Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1.05 + math.sin(sine / 15) / 10, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
			Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(10), math.rad(0), math.rad(0)), 0.15)
		end
	elseif currentAnim == "Walking" and Animations == false then
		if transformed == false then
			if sprint == false then
				angleSpeed = 1
				axisSpeed = 1
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.4, 0.5 + math.sin(sine / 15) / 10, 0.2) * c_angles(math.rad(-10) + math.sin(sine / 15) / 10, math.rad(0), math.rad(5)), 0.15)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.4, 0.5 + math.sin(sine / 15) / 10, 0.2) * c_angles(math.rad(-10) + math.sin(sine / 15) / 10, math.rad(0), math.rad(-5)), 0.15)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1 + -math.sin(sine / 15) / 10, 0) * c_angles(math.sin(sine / 4) / 3, math.sin(rootPart.RotVelocity.Y / 10) / 2, -math.sin(rootPart.RotVelocity.Y / 10) / 2), 0.15)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1 + -math.sin(sine / 15) / 10, 0) * c_angles(-math.sin(sine / 4) / 3, -math.sin(rootPart.RotVelocity.Y / 10) / 2, math.sin(-rootPart.RotVelocity.Y / 10) / 2), 0.15)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1 + math.sin(sine / 15) / 10, 0) * c_angles(math.rad(0), math.rad(0), math.sin(rootPart.RotVelocity.Y / 30) / 2), 0.15)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, -0.2 + math.sin(sine / 15) / 10) * c_angles(math.rad(-10) + math.sin(sine / 15) / 10, math.sin(rootPart.RotVelocity.Y / 2.5) / 2, math.rad(0)), 0.15)
			else
				angleSpeed = 10
				axisSpeed = 10
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5 + math.sin(sine / 1.5) / 5, 0) * c_angles(math.sin(sine / 3) / 1, math.rad(0), math.rad(10)), 0.15)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5 + math.sin(sine / 1.5) / 5, 0) * c_angles(-math.sin(sine / 3) / 1, math.rad(0), math.rad(-10)), 0.15)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.sin(sine / 3) / 1, math.rad(0), math.rad(0)), 0.15)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(-math.sin(sine / 3) / 1, math.rad(0), math.rad(0)), 0.15)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1 + math.sin(sine / 1.5) / 5, 0) * c_angles(math.rad(-20) + math.sin(sine / 3) / 20, math.rad(0), math.sin(rootPart.RotVelocity.Y / 15) / 2), 0.15)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.sin(rootPart.RotVelocity.Y / 1) / 2, math.rad(0)), 0.15)
			end
		elseif transformed == true and transformed2 == false then
			if sprint == false then
				angleSpeed = 1
				axisSpeed = 1
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(20) + math.sin(sine / 15) / 10, math.rad(0), math.rad(50) + math.sin(sine / 15) / 10), 0.15)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.4, 0.5 + math.sin(sine / 15) / 10, 0.2) * c_angles(math.rad(-10) + math.sin(sine / 15) / 10, math.rad(0), math.rad(-5)), 0.15)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1 + -math.sin(sine / 15) / 10, 0) * c_angles(math.sin(sine / 4) / 3, math.sin(rootPart.RotVelocity.Y / 10) / 2, -math.sin(rootPart.RotVelocity.Y / 10) / 2), 0.15)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1 + -math.sin(sine / 15) / 10, 0) * c_angles(-math.sin(sine / 4) / 3, -math.sin(rootPart.RotVelocity.Y / 10) / 2, math.sin(-rootPart.RotVelocity.Y / 10) / 2), 0.15)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1 + math.sin(sine / 15) / 10, 0) * c_angles(math.rad(0), math.rad(0), math.sin(rootPart.RotVelocity.Y / 30) / 2), 0.15)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, -0.2 + math.sin(sine / 15) / 10) * c_angles(math.rad(-10) + math.sin(sine / 15) / 10, math.sin(rootPart.RotVelocity.Y / 2.5) / 2, math.rad(0)), 0.15)
			else
				angleSpeed = 10
				axisSpeed = 10
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(-45) + math.sin(sine / 3) / 10, math.rad(0), math.rad(20) + math.sin(sine / 3) / 10), 0.15)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5 + math.sin(sine / 1.5) / 5, 0) * c_angles(-math.sin(sine / 3) / 1, math.rad(0), math.rad(-10)), 0.15)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.sin(sine / 3) / 1, math.rad(0), math.rad(0)), 0.15)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(-math.sin(sine / 3) / 1, math.rad(0), math.rad(0)), 0.15)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1 + math.sin(sine / 1.5) / 5, 0) * c_angles(math.rad(-20) + math.sin(sine / 3) / 20, math.rad(0), math.sin(rootPart.RotVelocity.Y / 15) / 2), 0.15)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.sin(rootPart.RotVelocity.Y / 1) / 2, math.rad(0)), 0.15)
			end
		elseif transformed == true and transformed2 == true then
			if sprint == false then
				angleSpeed = 1
				axisSpeed = 1
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(20) + math.sin(sine / 15) / 10, math.rad(0), math.rad(50) + math.sin(sine / 15) / 10), 0.15)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.4, 0.5 + math.sin(sine / 15) / 10, 0.2) * c_angles(math.rad(20) + math.sin(sine / 15) / 10, math.rad(0), math.rad(-50) - math.sin(sine / 15) / 10), 0.15)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1 + -math.sin(sine / 15) / 10, 0) * c_angles(math.sin(sine / 4) / 3, math.sin(rootPart.RotVelocity.Y / 10) / 2, -math.sin(rootPart.RotVelocity.Y / 10) / 2), 0.15)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1 + -math.sin(sine / 15) / 10, 0) * c_angles(-math.sin(sine / 4) / 3, -math.sin(rootPart.RotVelocity.Y / 10) / 2, math.sin(-rootPart.RotVelocity.Y / 10) / 2), 0.15)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1 + math.sin(sine / 15) / 10, 0) * c_angles(math.rad(0), math.rad(0), math.sin(rootPart.RotVelocity.Y / 30) / 2), 0.15)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, -0.2 + math.sin(sine / 15) / 10) * c_angles(math.rad(-10) + math.sin(sine / 15) / 10, math.sin(rootPart.RotVelocity.Y / 2.5) / 2, math.rad(0)), 0.15)
			else
				angleSpeed = 10
				axisSpeed = 10
				RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5 + math.sin(sine / 1.5) / 5, 0) * c_angles(math.rad(-45) + math.sin(sine / 3) / 10, math.rad(0), math.rad(20) + math.sin(sine / 3) / 10), 0.15)
				LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5 + math.sin(sine / 1.5) / 5, 0) * c_angles(math.rad(-45) + math.sin(sine / 3) / 10, math.rad(0), math.rad(-20) - math.sin(sine / 3) / 10), 0.15)
				LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.sin(sine / 3) / 1, math.rad(0), math.rad(0)), 0.15)
				RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(-math.sin(sine / 3) / 1, math.rad(0), math.rad(0)), 0.15)
				Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1 + math.sin(sine / 1.5) / 5, 0) * c_angles(math.rad(-20) + math.sin(sine / 3) / 20, math.rad(0), math.sin(rootPart.RotVelocity.Y / 15) / 2), 0.15)
				Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(20), math.sin(rootPart.RotVelocity.Y / 1) / 2, math.rad(0)), 0.15)
			end
		end
	end
end)
