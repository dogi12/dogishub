-- I leaked this because Noki sold it without permission.

-- Created by Nebula_Zorua --
-- Noki's Custom (Preech) --
-- yeet he paid me $7 --
-- Not like that matters anymore, of course. --
-- Discord: Nebula the Zorua#6969
-- Youtube: https://www.youtube.com/channel/UCo9oU9dCw8jnuVLuy4_SATA


local S = setmetatable({},{__index = function(s,i) return game:service(i) end})

local plr = S.Players.LocalPlayer
local char = plr.Character.Reanimate
local hum = char.Humanoid
local rarm = char["Right Arm"]
local larm= char["Left Arm"]
local rleg= char["Right Leg"]
local lleg = char["Left Leg"]	
local root = char:FindFirstChild'HumanoidRootPart'
local torso = char.Torso
local head = char.Head
local sine = 0;
local combo = 1;
local lastClick = time()
local change = 1;
local runService = S.RunService
local mouse = plr:GetMouse()
local Attack = false
local neutralAnims = true
local PaintBody = "Really black"
local PlayerSize = 2.5
local Debounces = {Debounces={}}
local Hit = {}
local BloodPuddles = {}
local Teamed = {}
local WalkSpeed = 20
local Puddle = nil;
local Alpha = 0.3
function Debounces:New(name,cooldown)
	local aaaaa = {Usable=true,Cooldown=cooldown or 2,CoolingDown=false,LastUse=0}
	setmetatable(aaaaa,{__index = Debounces})
	Debounces.Debounces[name] = aaaaa
	return aaaaa
end

function Debounces:Use(overrideUsable)
	assert(self.Usable ~= nil and self.LastUse ~= nil and self.CoolingDown ~= nil,"Expected ':' not '.' calling member function Use")
	if(self.Usable or overrideUsable)then
		self.Usable = false
		self.CoolingDown = true
		local LastUse = time()
		self.LastUse = LastUse
		delay(self.Cooldown or 2,function()
			if(self.LastUse == LastUse)then
				self.CoolingDown = false
				self.Usable = true
			end
		end)
	end
end

function Debounces:Get(name)
	assert(typeof(name) == 'string',("bad argument #1 to 'get' (string expected, got %s)"):format(typeof(name) == nil and "no value" or typeof(name)))
	for i,v in next, Debounces.Debounces do
		if(i == name)then
			return v;
		end
	end
end

function Debounces:GetProgressPercentage()
	assert(self.Usable ~= nil and self.LastUse ~= nil and self.CoolingDown ~= nil,"Expected ':' not '.' calling member function Use")
	if(self.CoolingDown and not self.Usable)then
		return math.max(
			math.floor(
				(
					(time()-self.LastUse)/self.Cooldown or 2
				)*100
			)
		)
	else
		return 100
	end
end

local CF = {N=CFrame.new,A=CFrame.Angles,fEA=CFrame.fromEulerAnglesXYZ}
local V3 = {N=Vector3.new}
local M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge}

local Effects,Sounds = {},{};
--Stop animations
for _,v in next, hum:GetPlayingAnimationTracks() do
	v:Stop();
end

pcall(game.Destroy,char:FindFirstChild'Animate')
pcall(game.Destroy,hum:FindFirstChild'Animator')

-- Sounds
Sounds['Wet'] = {Id=256738023,Loop=false,Pitch=1}
Sounds['Swoosh1'] = {Id=320557353,Loop=false,Pitch=1,Volume=6}
Sounds['Swoosh2'] = {Id=320557382,Loop=false,Pitch=1,Volume=6}
Sounds['Swoosh3'] = {Id=320557413,Loop=false,Pitch=1,Volume=6}
Sounds['Swoosh4'] = {Id=320557453,Loop=false,Pitch=1,Volume=6}
Sounds['Swoosh5'] = {Id=320557487,Loop=false,Pitch=1,Volume=6}
Sounds['Swoosh6'] = {Id=320557537,Loop=false,Pitch=1,Volume=6}
Sounds['Swoosh7'] = {Id=320557563,Loop=false,Pitch=1,Volume=6}
Sounds['Swoosh8'] = {Id=320557518,Loop=false,Pitch=1,Volume=6}
Sounds['SmallBoom'] = {Id=341336485,Loop=false,Volume=5,Pitch=1}
Sounds['ChaosBuster'] = {Id=333534812,Loop=false,Volume=5,Pitch=0.75}
Sounds['Magic'] = {Id=315743350,Loop=false,Volume=5,Pitch=1}
Sounds['ShrekRemix'] = {Id=163306929,Loop=true,Pitch=1,Volume = 4}
Sounds['CreoDimension'] = {Id=927529620,Loop=true,Pitch=1,Volume=4}
Sounds['BlackBlizzard'] = {Id=657626121,Loop=true,Pitch=1,Volume=4}
Sounds['ColbreakzFantasy'] = {Id=876981900,Loop=true,Pitch=1,Volume=4}
Sounds['NeflCrystals'] = {Id=340106355,Loop=true,Pitch=1,Volume=4}
Sounds['EvilMortyRemix'] = {Id=1057401232,Loop=true,Pitch=1,Volume=10}
Sounds['Creep'] = {Id=421358540, Loop=true,Pitch=1,Volume=5}
-- Functions
local NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance)
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	inst.Parent = parent
	return inst;
end


ArtificialHB = NewInstance("BindableEvent", script,{
	Parent = script,
	Name = "Heartbeat",
})

script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
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

function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end


function clerp(startCF,endCF,alpha)
	return startCF:lerp(endCF, alpha)
end
local sndFromData = function(data,parent)
	assert(typeof(data) == 'table',"sndFromData's first argument must be a table!")
	local snd = NewInstance("Sound",parent or char,{SoundId = "rbxassetid://"..data.Id,Looped=data.Loop or false,Pitch = data.Pitch or 1,Volume = data.Volume or 1})
	if(not snd.Looped)then
		snd.Ended:connect(function()
			snd:Stop()
			snd:destroy()
		end)
	end
	return snd;
end
local FX = function(ID,vol,pitch,parent)
	return coroutine.wrap(function()
		local snd = NewInstance("Sound",parent or torso, {Pitch=pitch or 1, Volume = vol or 1,SoundId = "rbxassetid://"..ID})
		snd:Play()
		
		delay(snd.TimeLength+2,function()
			snd:Stop()
			snd:Destroy()
		end)
		return snd
	end)()
end
function ClearChildrenWithClass(where,class,recursive)
	local children = (recursive and where:GetDescendants() or where:GetChildren())
	for _,v in next, children do
		if(v:IsA(class))then
			v:destroy()
		end
	end
end

function UnbindLoops()
	pcall(runService.UnbindFromRenderStep,runService,"N_Effects")
	pcall(runService.UnbindFromRenderStep,runService,"N_Animations")
end;

UnbindLoops() -- Just so if the loops already exist from previously running a script using this template, there's no errors

-- Joints, etc
char:WaitForChild'Body Colors':destroy()
swait(30)
for _,v in next, char:children() do
	if(v:IsA'BasePart')then
		v.Color = Color3.new(0,0,0)
	end
end
ClearChildrenWithClass(char,"Clothing")
ClearChildrenWithClass(char,"Decal",true)
if(PlayerSize ~= 1)then
	for _,v in next, char:GetDescendants() do
		if(v:IsA'BasePart' and v ~= head)then
			v.Size = v.Size + V3.N(0,PlayerSize,0)
		end
	end
end


-- Model

local Music = sndFromData(Sounds.Creep,torso) -- incase u want music
Music.MaxDistance = 150
Music:Play()

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
	

RightHand = New("Model",char,"RightHand",{})
RightThumb3 = New("Part",RightHand,"RightThumb3",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.506300628, 0.122097097, 0.0965319052),CFrame = CFrame.new(-2.88806152, 3.8542099, 40.4611397, -0.556201279, 0.830963016, -0.0114059215, -0.77162528, -0.511289954, 0.37838766, 0.308594495, 0.219260782, 0.925572097),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",RightThumb3,"Mesh",{MeshType = Enum.MeshType.Sphere,})
RT3 = New("Motor",RightThumb3,"RT3",{Part0 = RightThumb3,Part1 = rarm,C0 = CFrame.new(0, 0, 0, -0.556202769, -0.77162528, 0.3085953, 0.830965281, -0.511289954, 0.219261378, -0.0114059523, 0.37838766, 0.925574541),C1 = CFrame.new(-0.0785162449, -2.89579725, 0.67080307, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
RightThumb1 = New("Part",RightHand,"RightThumb1",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.691401064, 0.182097122, 0.146531895),CFrame = CFrame.new(-2.74397039, 4.38701391, 40.2574272, 9.31322575e-10, 0.999929607, -0.0114095779, -0.925635219, 0.00431760168, 0.378392458, 0.378415048, 0.0105611067, 0.925570071),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",RightThumb1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
RT1 = New("Motor",RightThumb1,"RT1",{Part0 = RightThumb1,Part1 = rarm,C0 = CFrame.new(0, 0, 0, 4.65661287e-10, -0.925635219, 0.378416061, 0.999932289, 0.00431760168, 0.0105611347, -0.0114096077, 0.378392458, 0.925572515),C1 = CFrame.new(0.0632407665, -2.36299324, 0.465457916, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
RightThumb2 = New("Part",RightHand,"RightThumb2",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.506300628, 0.182097122, 0.146531895),CFrame = CFrame.new(-2.78564548, 4.1021471, 40.3736534, -0.265260637, 0.964103878, -0.0114056403, -0.893617094, -0.241390631, 0.378390133, 0.36205411, 0.110564254, 0.925571144),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",RightThumb2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
RT2 = New("Motor",RightThumb2,"RT2",{Part0 = RightThumb2,Part1 = rarm,C0 = CFrame.new(0, 0, 0, -0.265261322, -0.893617094, 0.362055063, 0.964106381, -0.241390631, 0.110564545, -0.011405671, 0.378390133, 0.925573587),C1 = CFrame.new(0.0228948593, -2.64786005, 0.58215332, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
RightRing1 = New("Part",RightHand,"RightRing1",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.903318703, 0.237910748, 0.191444606),CFrame = CFrame.new(-2.70223427, 4.42609978, 39.6372681, -8.74571682e-16, 0.999929726, -0.01140894, -1, 8.7280996e-16, 4.78783679e-16, -4.85722573e-16, 0.01140894, 0.999929726),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",RightRing1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
RR1 = New("Motor",RightRing1,"RR1",{Part0 = RightRing1,Part1 = rarm,C0 = CFrame.new(0, 0, 0, -4.36662425e-16, -1, -2.42861287e-16, 0.999932349, 4.35659617e-16, 0.0114089698, -0.0114089698, 2.42861287e-16, 0.999932349),C1 = CFrame.new(0.0978963375, -2.32390738, -0.155139923, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
RightRing2 = New("Part",RightHand,"RightRing2",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.661484122, 0.237910748, 0.191444606),CFrame = CFrame.new(-2.75668097, 4.02412987, 39.6369858, -0.265260428, 0.964103818, -0.0114074284, -0.964171648, -0.265279233, -2.93453445e-06, -0.00302898232, 0.0109979399, 0.999929607),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",RightRing2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
RR2 = New("Motor",RightRing2,"RR2",{Part0 = RightRing2,Part1 = rarm,C0 = CFrame.new(0, 0, 0, -0.265261173, -0.964171648, -0.0030289907, 0.964106381, -0.265279233, 0.0109979697, -0.0114074592, -2.93453445e-06, 0.999932289),C1 = CFrame.new(0.0434498787, -2.72587729, -0.154800415, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
RightRing3 = New("Part",RightHand,"RightRing3",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.661484122, 0.187910721, 0.121444605),CFrame = CFrame.new(-2.9025352, 3.68893909, 39.6421776, -0.556200862, 0.830963194, -0.0114040468, -0.831021726, -0.556240082, -5.50785398e-06, -0.00634796359, 0.00947394595, 0.999929726),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",RightRing3,"Mesh",{MeshType = Enum.MeshType.Sphere,})
RR3 = New("Motor",RightRing3,"RR3",{Part0 = RightRing3,Part1 = rarm,C0 = CFrame.new(0, 0, 0, -0.556202352, -0.831021726, -0.00634798082, 0.830965459, -0.556240082, 0.00947397202, -0.0114040766, -5.50785398e-06, 0.999932349),C1 = CFrame.new(-0.102335691, -3.06106806, -0.147941589, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
RightSmall3 = New("Part",RightHand,"RightSmall3",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.492783368, 0.139987156, 0.090472132),CFrame = CFrame.new(-2.89148712, 3.86882091, 39.3824615, -0.556200862, 0.830963194, -0.0114040468, -0.831021726, -0.556240082, -5.50785398e-06, -0.00634796359, 0.00947394595, 0.999929726),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",RightSmall3,"Mesh",{MeshType = Enum.MeshType.Sphere,})
RS3 = New("Motor",RightSmall3,"RS3",{Part0 = RightSmall3,Part1 = rarm,C0 = CFrame.new(0, 0, 0, -0.556202352, -0.831021726, -0.00634798082, 0.830965459, -0.556240082, 0.00947397202, -0.0114040766, -5.50785398e-06, 0.999932349),C1 = CFrame.new(-0.0942525864, -2.88118625, -0.40776825, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
RightSmall2 = New("Part",RightHand,"RightSmall2",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.492783368, 0.177235484, 0.142619774),CFrame = CFrame.new(-2.78283048, 4.11852694, 39.3785858, -0.265260428, 0.964103818, -0.0114074284, -0.964171648, -0.265279233, -2.93453445e-06, -0.00302898232, 0.0109979399, 0.999929607),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",RightSmall2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
RS2 = New("Motor",RightSmall2,"RS2",{Part0 = RightSmall2,Part1 = rarm,C0 = CFrame.new(0, 0, 0, -0.265261173, -0.964171648, -0.0030289907, 0.964106381, -0.265279233, 0.0109979697, -0.0114074592, -2.93453445e-06, 0.999932289),C1 = CFrame.new(0.0143530369, -2.63148022, -0.412883759, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
RightSmall1 = New("Part",RightHand,"RightSmall1",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.672941983, 0.177235484, 0.142619774),CFrame = CFrame.new(-2.74226999, 4.41798067, 39.3787918, -8.74571682e-16, 0.999929726, -0.01140894, -1, 8.7280996e-16, 4.78783679e-16, -4.85722573e-16, 0.01140894, 0.999929726),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",RightSmall1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
RS1 = New("Motor",RightSmall1,"RS1",{Part0 = RightSmall1,Part1 = rarm,C0 = CFrame.new(0, 0, 0, -4.36662425e-16, -1, -2.42861287e-16, 0.999932349, 4.35659617e-16, 0.0114089698, -0.0114089698, 2.42861287e-16, 0.999932349),C1 = CFrame.new(0.0549132824, -2.33202648, -0.413139343, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
RightMiddle2 = New("Part",RightHand,"RightMiddle2",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.661484122, 0.237910748, 0.191444606),CFrame = CFrame.new(-2.75668097, 4.02412987, 39.8659973, -0.265260428, 0.964103818, -0.0114074284, -0.964171648, -0.265279233, -2.93453445e-06, -0.00302898232, 0.0109979399, 0.999929607),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",RightMiddle2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
RM2 = New("Motor",RightMiddle2,"RM2",{Part0 = RightMiddle2,Part1 = rarm,C0 = CFrame.new(0, 0, 0, -0.265261173, -0.964171648, -0.0030289907, 0.964106381, -0.265279233, 0.0109979697, -0.0114074592, -2.93453445e-06, 0.999932289),C1 = CFrame.new(0.0460636616, -2.72587729, 0.0741958618, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
RightMiddle3 = New("Part",RightHand,"RightMiddle3",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.661484122, 0.187910721, 0.121444605),CFrame = CFrame.new(-2.9025352, 3.68893909, 39.8711929, -0.556200862, 0.830963194, -0.0114040468, -0.831021726, -0.556240082, -5.50785398e-06, -0.00634796359, 0.00947394595, 0.999929726),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",RightMiddle3,"Mesh",{MeshType = Enum.MeshType.Sphere,})
RM3 = New("Motor",RightMiddle3,"RM3",{Part0 = RightMiddle3,Part1 = rarm,C0 = CFrame.new(0, 0, 0, -0.556202352, -0.831021726, -0.00634798082, 0.830965459, -0.556240082, 0.00947397202, -0.0114040766, -5.50785398e-06, 0.999932349),C1 = CFrame.new(-0.099722147, -3.06106806, 0.0810585022, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
RightMiddle1 = New("Part",RightHand,"RightMiddle1",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.903318703, 0.237910748, 0.191444606),CFrame = CFrame.new(-2.70223451, 4.42609978, 39.8662796, -8.74571682e-16, 0.999929726, -0.01140894, -1, 8.7280996e-16, 4.78783679e-16, -4.85722573e-16, 0.01140894, 0.999929726),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",RightMiddle1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
RM1 = New("Motor",RightMiddle1,"RM1",{Part0 = RightMiddle1,Part1 = rarm,C0 = CFrame.new(0, 0, 0, -4.36662425e-16, -1, -2.42861287e-16, 0.999932349, 4.35659617e-16, 0.0114089698, -0.0114089698, 2.42861287e-16, 0.999932349),C1 = CFrame.new(0.100509882, -2.32390738, 0.0738601685, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
RightPoint2 = New("Part",RightHand,"RightPoint2",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.661484122, 0.237910748, 0.191444606),CFrame = CFrame.new(-2.75668097, 4.02412987, 40.1189232, -0.265260428, 0.964103818, -0.0114074284, -0.964171648, -0.265279233, -2.93453445e-06, -0.00302898232, 0.0109979399, 0.999929607),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",RightPoint2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
RP2 = New("Motor",RightPoint2,"RP2",{Part0 = RightPoint2,Part1 = rarm,C0 = CFrame.new(0, 0, 0, -0.265261173, -0.964171648, -0.0030289907, 0.964106381, -0.265279233, 0.0109979697, -0.0114074592, -2.93453445e-06, 0.999932289),C1 = CFrame.new(0.0489501953, -2.72587729, 0.327106476, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
RightPoint1 = New("Part",RightHand,"RightPoint1",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.903318703, 0.237910748, 0.191444606),CFrame = CFrame.new(-2.70223427, 4.42609978, 40.1192055, -8.74571682e-16, 0.999929726, -0.01140894, -1, 8.7280996e-16, 4.78783679e-16, -4.85722573e-16, 0.01140894, 0.999929726),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",RightPoint1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
RP1 = New("Motor",RightPoint1,"RP1",{Part0 = RightPoint1,Part1 = rarm,C0 = CFrame.new(0, 0, 0, -4.36662425e-16, -1, -2.42861287e-16, 0.999932349, 4.35659617e-16, 0.0114089698, -0.0114089698, 2.42861287e-16, 0.999932349),C1 = CFrame.new(0.103396654, -2.32390738, 0.326766968, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
RightPoint3 = New("Part",RightHand,"RightPoint3",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.661484122, 0.187910721, 0.121444605),CFrame = CFrame.new(-2.9025352, 3.68893909, 40.1241188, -0.556200862, 0.830963194, -0.0114040468, -0.831021726, -0.556240082, -5.50785398e-06, -0.00634796359, 0.00947394595, 0.999929726),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",RightPoint3,"Mesh",{MeshType = Enum.MeshType.Sphere,})
RP3 = New("Motor",RightPoint3,"RP3",{Part0 = RightPoint3,Part1 = rarm,C0 = CFrame.new(0, 0, 0, -0.556202352, -0.831021726, -0.00634798082, 0.830965459, -0.556240082, 0.00947397202, -0.0114040766, -5.50785398e-06, 0.999932349),C1 = CFrame.new(-0.0968353748, -3.06106806, 0.333969116, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})

LeftHand = New("Model",char,"LeftHand",{})
LeftRing3 = New("Part",LeftHand,"LeftRing3",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.661484122, 0.187910721, 0.121444605),CFrame = CFrame.new(-5.87245798, 3.68893909, 39.6276245, 0.556200862, -0.830963194, 0.0114040468, -0.831021726, -0.556240082, -5.50785398e-06, 0.00634796359, -0.00947394595, -0.999929726),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",LeftRing3,"Mesh",{MeshType = Enum.MeshType.Sphere,})
LR3 = New("Motor",LeftRing3,"LR3",{Part0 = LeftRing3,Part1 = larm,C0 = CFrame.new(0, 0, 0, 0.556202352, -0.831021726, 0.00634798082, -0.830965459, -0.556240082, -0.00947397202, 0.0114040766, -5.50785398e-06, -0.999932349),C1 = CFrame.new(-0.0719299316, -3.06106091, -0.128562927, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
LeftThumb3 = New("Part",LeftHand,"LeftThumb3",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.506300628, 0.122097097, 0.0965319052),CFrame = CFrame.new(-5.84988785, 3.84491587, 40.4669914, 0.556201041, -0.830963075, 0.0114058144, -0.763831854, -0.516578019, -0.386921287, 0.327409238, 0.206493899, -0.922037423),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",LeftThumb3,"Mesh",{MeshType = Enum.MeshType.Sphere,})
LT3 = New("Motor",LeftThumb3,"LT3",{Part0 = LeftThumb3,Part1 = larm,C0 = CFrame.new(0, 0, 0, 0.556202531, -0.763831854, 0.327410102, -0.83096534, -0.516578019, 0.206494436, 0.0114058452, -0.386921287, -0.922039866),C1 = CFrame.new(-0.0397815704, -2.90508413, 0.71049118, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
LeftThumb1 = New("Part",LeftHand,"LeftThumb1",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.691401064, 0.182097122, 0.146531895),CFrame = CFrame.new(-5.99397993, 4.36571169, 40.2342873, 0, -0.999929726, 0.0114097474, -0.92210412, -0.00441493373, -0.386916876, 0.386939973, -0.0105209723, -0.922039211),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",LeftThumb1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
LT1 = New("Motor",LeftThumb1,"LT1",{Part0 = LeftThumb1,Part1 = larm,C0 = CFrame.new(0, 0, 0, 0, -0.92210412, 0.386941016, -0.999932349, -0.00441493373, -0.0105210003, 0.0114097772, -0.386916876, -0.922041655),C1 = CFrame.new(-0.186520576, -2.38428831, 0.479446411, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
LeftThumb2 = New("Part",LeftHand,"LeftThumb2",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.506300628, 0.182097122, 0.146531895),CFrame = CFrame.new(-5.95230389, 4.08209562, 40.3535271, 0.265260607, -0.964103758, 0.0114053031, -0.887895226, -0.24887003, -0.386918515, 0.375868112, 0.0925075412, -0.922038496),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",LeftThumb2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
LT2 = New("Motor",LeftThumb2,"LT2",{Part0 = LeftThumb2,Part1 = larm,C0 = CFrame.new(0, 0, 0, 0.265261352, -0.887895226, 0.375869095, -0.964106321, -0.24887003, 0.0925077796, 0.0114053339, -0.386918515, -0.922040939),C1 = CFrame.new(-0.143486023, -2.66790438, 0.598205566, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
LeftRing2 = New("Part",LeftHand,"LeftRing2",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.661484122, 0.237910748, 0.191444606),CFrame = CFrame.new(-6.0183115, 4.02412987, 39.6328354, 0.265260428, -0.964103818, 0.0114074284, -0.964171648, -0.265279233, -2.93453445e-06, 0.00302898232, -0.0109979399, -0.999929607),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",LeftRing2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
LR2 = New("Motor",LeftRing2,"LR2",{Part0 = LeftRing2,Part1 = larm,C0 = CFrame.new(0, 0, 0, 0.265261173, -0.964171648, 0.0030289907, -0.964106381, -0.265279233, -0.0109979697, 0.0114074592, -2.93453445e-06, -0.999932289),C1 = CFrame.new(-0.217714787, -2.72587013, -0.121688843, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
LeftRing1 = New("Part",LeftHand,"LeftRing1",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.903318703, 0.237910748, 0.191444606),CFrame = CFrame.new(-6.07275867, 4.42609978, 39.6325493, -8.74571682e-16, -0.999929726, 0.01140894, -1, -8.7280996e-16, -4.78783679e-16, -4.85722573e-16, -0.01140894, -0.999929726),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",LeftRing1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
LR1 = New("Motor",LeftRing1,"LR1",{Part0 = LeftRing1,Part1 = larm,C0 = CFrame.new(0, 0, 0, -4.36662425e-16, -1, -2.42861287e-16, -0.999932349, -4.35659617e-16, -0.0114089698, 0.0114089698, -2.42861287e-16, -0.999932349),C1 = CFrame.new(-0.272161484, -2.32390022, -0.121353149, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
LeftSmall1 = New("Part",LeftHand,"LeftSmall1",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.672941983, 0.177235484, 0.142619774),CFrame = CFrame.new(-6.03272295, 4.41798019, 39.3710022, -8.74571682e-16, -0.999929726, 0.01140894, -1, -8.7280996e-16, -4.78783679e-16, -4.85722573e-16, -0.01140894, -0.999929726),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",LeftSmall1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
LS1 = New("Motor",LeftSmall1,"LS1",{Part0 = LeftSmall1,Part1 = larm,C0 = CFrame.new(0, 0, 0, -4.36662425e-16, -1, -2.42861287e-16, -0.999932349, -4.35659617e-16, -0.0114089698, 0.0114089698, -2.42861287e-16, -0.999932349),C1 = CFrame.new(-0.235113621, -2.33201981, -0.383338928, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
LeftMiddle3 = New("Part",LeftHand,"LeftMiddle3",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.661484122, 0.187910721, 0.121444605),CFrame = CFrame.new(-5.8724575, 3.68893909, 39.8385582, 0.556200862, -0.830963194, 0.0114040468, -0.831021726, -0.556240082, -5.50785398e-06, 0.00634796359, -0.00947394595, -0.999929726),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",LeftMiddle3,"Mesh",{MeshType = Enum.MeshType.Sphere,})
LM3 = New("Motor",LeftMiddle3,"LM3",{Part0 = LeftMiddle3,Part1 = larm,C0 = CFrame.new(0, 0, 0, 0.556202352, -0.831021726, 0.00634798082, -0.830965459, -0.556240082, -0.00947397202, 0.0114040766, -5.50785398e-06, -0.999932349),C1 = CFrame.new(-0.0695223808, -3.06106091, 0.0823554993, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
LeftSmall3 = New("Part",LeftHand,"LeftSmall3",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.492783368, 0.139987156, 0.090472132),CFrame = CFrame.new(-5.88350391, 3.86882091, 39.3673401, 0.556200862, -0.830963194, 0.0114040468, -0.831021726, -0.556240082, -5.50785398e-06, 0.00634796359, -0.00947394595, -0.999929726),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",LeftSmall3,"Mesh",{MeshType = Enum.MeshType.Sphere,})
LS3 = New("Motor",LeftSmall3,"LS3",{Part0 = LeftSmall3,Part1 = larm,C0 = CFrame.new(0, 0, 0, 0.556202352, -0.831021726, 0.00634798082, -0.830965459, -0.556240082, -0.00947397202, 0.0114040766, -5.50785398e-06, -0.999932349),C1 = CFrame.new(-0.0859460831, -2.88117909, -0.388706207, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
LeftPoint2 = New("Part",LeftHand,"LeftPoint2",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.661484122, 0.237910748, 0.191444606),CFrame = CFrame.new(-6.01831102, 4.02412987, 40.0808601, 0.265260428, -0.964103818, 0.0114074284, -0.964171648, -0.265279233, -2.93453445e-06, 0.00302898232, -0.0109979399, -0.999929607),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",LeftPoint2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
LP2 = New("Motor",LeftPoint2,"LP2",{Part0 = LeftPoint2,Part1 = larm,C0 = CFrame.new(0, 0, 0, 0.265261173, -0.964171648, 0.0030289907, -0.964106381, -0.265279233, -0.0109979697, 0.0114074592, -2.93453445e-06, -0.999932289),C1 = CFrame.new(-0.212601185, -2.72587013, 0.326309204, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
LeftPoint1 = New("Part",LeftHand,"LeftPoint1",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.903318703, 0.237910748, 0.191444606),CFrame = CFrame.new(-6.07275915, 4.42609978, 40.080574, -8.74571682e-16, -0.999929726, 0.01140894, -1, -8.7280996e-16, -4.78783679e-16, -4.85722573e-16, -0.01140894, -0.999929726),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",LeftPoint1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
LP1 = New("Motor",LeftPoint1,"LP1",{Part0 = LeftPoint1,Part1 = larm,C0 = CFrame.new(0, 0, 0, -4.36662425e-16, -1, -2.42861287e-16, -0.999932349, -4.35659617e-16, -0.0114089698, 0.0114089698, -2.42861287e-16, -0.999932349),C1 = CFrame.new(-0.267048836, -2.32390022, 0.326644897, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
LeftMiddle1 = New("Part",LeftHand,"LeftMiddle1",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.903318703, 0.237910748, 0.191444606),CFrame = CFrame.new(-6.07275915, 4.42609978, 39.8434753, -8.74571682e-16, -0.999929726, 0.01140894, -1, -8.7280996e-16, -4.78783679e-16, -4.85722573e-16, -0.01140894, -0.999929726),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",LeftMiddle1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
LM1 = New("Motor",LeftMiddle1,"LM1",{Part0 = LeftMiddle1,Part1 = larm,C0 = CFrame.new(0, 0, 0, -4.36662425e-16, -1, -2.42861287e-16, -0.999932349, -4.35659617e-16, -0.0114089698, 0.0114089698, -2.42861287e-16, -0.999932349),C1 = CFrame.new(-0.269754887, -2.32390022, 0.0895614624, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
LeftSmall2 = New("Part",LeftHand,"LeftSmall2",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.492783368, 0.177235484, 0.142619774),CFrame = CFrame.new(-5.99216223, 4.11852694, 39.3712234, 0.265260428, -0.964103818, 0.0114074284, -0.964171648, -0.265279233, -2.93453445e-06, 0.00302898232, -0.0109979399, -0.999929607),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",LeftSmall2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
LS2 = New("Motor",LeftSmall2,"LS2",{Part0 = LeftSmall2,Part1 = larm,C0 = CFrame.new(0, 0, 0, 0.265261173, -0.964171648, 0.0030289907, -0.964106381, -0.265279233, -0.0109979697, 0.0114074592, -2.93453445e-06, -0.999932289),C1 = CFrame.new(-0.194552898, -2.63147306, -0.383583069, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
LeftMiddle2 = New("Part",LeftHand,"LeftMiddle2",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.661484122, 0.237910748, 0.191444606),CFrame = CFrame.new(-6.01831198, 4.02412987, 39.8437614, 0.265260428, -0.964103818, 0.0114074284, -0.964171648, -0.265279233, -2.93453445e-06, 0.00302898232, -0.0109979399, -0.999929607),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",LeftMiddle2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
LM2 = New("Motor",LeftMiddle2,"LM2",{Part0 = LeftMiddle2,Part1 = larm,C0 = CFrame.new(0, 0, 0, 0.265261173, -0.964171648, 0.0030289907, -0.964106381, -0.265279233, -0.0109979697, 0.0114074592, -2.93453445e-06, -0.999932289),C1 = CFrame.new(-0.215307713, -2.72587013, 0.089225769, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})
LeftPoint3 = New("Part",LeftHand,"LeftPoint3",{BrickColor = BrickColor.new("Institutional white"),Size = Vector3.new(0.661484122, 0.187910721, 0.121444605),CFrame = CFrame.new(-5.87245798, 3.68893909, 40.0756569, 0.556200862, -0.830963194, 0.0114040468, -0.831021726, -0.556240082, -5.50785398e-06, 0.00634796359, -0.00947394595, -0.999929726),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0,0,0),})
Mesh = New("SpecialMesh",LeftPoint3,"Mesh",{MeshType = Enum.MeshType.Sphere,})
LP3 = New("Motor",LeftPoint3,"LP3",{Part0 = LeftPoint3,Part1 = larm,C0 = CFrame.new(0, 0, 0, 0.556202352, -0.831021726, 0.00634798082, -0.830965459, -0.556240082, -0.00947397202, 0.0114040766, -5.50785398e-06, -0.999932349),C1 = CFrame.new(-0.0668168068, -3.06106091, 0.319438934, 0.999933541, -3.70949382e-11, 0.011412913, 3.63313581e-11, 1, 6.71462261e-11, -0.011412913, -6.67270544e-11, 0.999933541),})

EyeModel = New("Model",char,"Model",{})
Eye = New("Part",EyeModel,"Eye",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.Neon,Size = Vector3.new(0.427516103, 0.102584302, 0.371444672),CFrame = CFrame.new(-4.31106234, 9.50574684, 39.2028084, -1.44810004e-08, -6.24196239e-15, -1, -1, -8.88213606e-07, -1.44810004e-08, 8.88213606e-07, 1, 6.24196112e-15),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Eye,"Mesh",{MeshType = Enum.MeshType.Sphere,})
Part = New("Part",EyeModel,"Part",{BrickColor = BrickColor.new("Really black"),Size = Vector3.new(0.427516103, 0.132767469, 0.155850768),CFrame = CFrame.new(-4.31104565, 9.50574684, 39.2092743, -4.34430021e-08, -5.73125531e-14, -1, -1, -2.66464076e-06, -4.34430021e-08, 2.66464076e-06, 1, 5.73125531e-14),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Eye,C0 = CFrame.new(0, 0, 0, -1.44810004e-08, -1, 8.88213606e-07, -6.24196239e-15, -8.88213606e-07, 1, -1, -1.44810004e-08, 6.24196112e-15),C1 = CFrame.new(0, 0.00646591187, -1.66893005e-05, -1.44810004e-08, -1, 8.88213606e-07, -6.24196239e-15, -8.88213606e-07, 1, -1, -1.44810004e-08, 6.24196112e-15),})
-- joints
local LS = NewInstance('Motor',char,{Part0=torso,Part1=larm,C0 = CF.N(-1.5,0.5,0),C1 = CF.N(0,.5,0)})
local RS = NewInstance('Motor',char,{Part0=torso,Part1=rarm,C0 = CF.N(1.5,0.5,0),C1 = CF.N(0,.5,0)})
local NK = NewInstance('Motor',char,{Part0=torso,Part1=head,C0 = CF.N(0,torso.Size.y/2+.5,0)})
local LH = NewInstance('Motor',char,{Part0=torso,Part1=lleg,C0 = CF.N(-.5,-1 - PlayerSize,0),C1 = CF.N(0,1,0)})
local RH = NewInstance('Motor',char,{Part0=torso,Part1=rleg,C0 = CF.N(.5,-1 - PlayerSize,0),C1 = CF.N(0,1,0)})
local RJ = NewInstance('Motor',char,{Part0=root,Part1=torso})
local EW = NewInstance('Motor',char,{Part0=head,Part1=Eye,C0=CF.N(0,0,-.6)*CF.A(M.R(90),M.R(90),0)})

for _,v in next, LeftHand:GetDescendants() do
	if(v:IsA'JointInstance')then
		v.C0 = v.C0 * v.C1:inverse()
		v.C1 = CF.N()
	end
end
for _,v in next, RightHand:GetDescendants() do
	if(v:IsA'JointInstance')then
		v.C0 = v.C0 * v.C1:inverse()
		v.C1 = CF.N()
	end
end

--local HW = NewInstance('Motor',char,{Part0=rarm,Part1=Handle,C0 = CF.N(0,.5,0)})
hum.CameraOffset = V3.N(0,PlayerSize/2,0)

-- Default C0s
local LSD=LS.C0
local RSD=RS.C0	
local HD=NK.C0
local TD=RJ.C0
local LHD=LH.C0
local RHD=RH.C0

-- Check State
function CheckState(rPart)
	if(rPart.Velocity.y > .35 and hum:GetState() == Enum.HumanoidStateType.Freefall)then
		return 'Jump';		
	elseif(rPart.Velocity.y < -.35 and hum:GetState() == Enum.HumanoidStateType.Freefall)then
		return 'Fall';
	elseif(math.abs(rPart.Velocity.x) > 2 or math.abs(rPart.Velocity.z) > 2 and hum:GetState() ~= Enum.HumanoidStateType.Freefall)then
		return 'Walk';
	end
	return 'Idle';
end

-- Effect Functions
function SphereFX(duration,color,scale,pos,endScale)
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = scale
	table.insert(Effects, {Frame = 0, Effect="Sphere", Duration = duration or 30, Part=rng, Mesh = rngm, Scale = scale, EndScale = endScale or scale*2, Position = pos})
	return rng
end

--Aligns






local movers = {}
local tog = true
local move = false
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character.Reanimate
local mov = {};
local mov2 = {};
 
 





local Hats = {Ex1 = Player.Character:WaitForChild("Hat1"),
Ex2 = Player.Character:WaitForChild("Pal Hair"),
Ex3 = Player.Character:WaitForChild("LavanderHair"),
Ex4 = Player.Character:WaitForChild("Pink Hair"),
Ex5 = Player.Character:WaitForChild("Kate Hair"),
Ex6 = Player.Character:WaitForChild("MessyHair"),

}

Hats.Ex1.Handle.Mesh:Destroy()
Hats.Ex2.Handle.Mesh:Destroy()

Hats.Ex3.Handle.Mesh:Destroy()
Hats.Ex4.Handle.Mesh:Destroy()

Hats.Ex5.Handle.Mesh:Destroy()
Hats.Ex6.Handle.Mesh:Destroy()




for i,v in next, Hats do
    v.Handle.AccessoryWeld:Remove()
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


align(Hats.Ex2.Handle, char["Left Arm"])
Character["Pal Hair"].Handle.Attachment:Destroy()
char["Left Arm"]:FindFirstChild("Attachment").Name = "het"
Hats.Ex2.Handle:FindFirstChild("Attachment").Name = "het" 
Hats.Ex2.Handle.Attachment.Rotation = Vector3.new(-90, 0, -0)
char["Left Arm"].Attachment.Position = Vector3.new(0, -1.3, 0)


align(Hats.Ex1.Handle, char["Right Arm"])
Character["Hat1"].Handle.Attachment:Destroy()
char["Right Arm"]:FindFirstChild("Attachment").Name = "het" 
Hats.Ex1.Handle:FindFirstChild("Attachment").Name = "het" 
Hats.Ex1.Handle.Attachment.Rotation = Vector3.new(-90, 0, -0)
char["Right Arm"].Attachment.Position = Vector3.new(0, -1.3, 0)


align(Hats.Ex3.Handle, char["Right Leg"])
Character["LavanderHair"].Handle.Attachment:Destroy()
char["Right Leg"]:FindFirstChild("Attachment").Name = "het"
Hats.Ex3.Handle:FindFirstChild("Attachment").Name = "het" 
Hats.Ex3.Handle.Attachment.Rotation = Vector3.new(-90, 0, -0)
char["Right Leg"].Attachment.Position = Vector3.new(0, 1.9, 0)



align(Hats.Ex5.Handle, char["Left Leg"])
Character["Kate Hair"].Handle.Attachment:Destroy()
char["Left Leg"]:FindFirstChild("Attachment").Name = "het"
Hats.Ex5.Handle:FindFirstChild("Attachment").Name = "het" 
Hats.Ex5.Handle.Attachment.Rotation = Vector3.new(-90, 0, -0)
char["Left Leg"].Attachment.Position = Vector3.new(0, 1.9, 0)


align(Hats.Ex4.Handle, char["Left Leg"])
Character["Pink Hair"].Handle.Attachment:Destroy()
char["Left Leg"]:FindFirstChild("Attachment").Name = "het"
Hats.Ex4.Handle:FindFirstChild("Attachment").Name = "het" 
Hats.Ex4.Handle.Attachment.Rotation = Vector3.new(-90, 0, -0)
char["Left Leg"].Attachment.Position = Vector3.new(0, 2.3, 0)

align(Hats.Ex6.Handle, char["Right Leg"])
Character["MessyHair"].Handle.Attachment:Destroy()
char["Right Leg"]:FindFirstChild("Attachment").Name = "het"
Hats.Ex6.Handle:FindFirstChild("Attachment").Name = "het" 
Hats.Ex6.Handle.Attachment.Rotation = Vector3.new(-90, 0, -0)
char["Right Leg"].Attachment.Position = Vector3.new(0, 2.3, 0)





char:FindFirstChildOfClass('Humanoid').HipHeight = -1.2

















function BlastFX(duration,color,scale,pos,endScale)
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "FileMesh"
	rngm.MeshId = 'rbxassetid://20329976'
	rngm.Scale = scale
	table.insert(Effects, {Frame = 0, Effect="Sphere", Duration = duration or 30, Part=rng, Mesh = rngm, Scale = scale, EndScale = endScale or scale*2, Position = pos})
	return rng
end

function BlockFX(duration,color,scale,pos,endScale)
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("BlockMesh", rng)
	rngm.Scale = scale
	table.insert(Effects, {Frame = 0, Effect="Block", Duration = duration or 30, Part=rng, Mesh = rngm, Scale = scale, EndScale = endScale or scale*2, Position = pos})
	return rng
end


function BloodDrop(pos,dir,maxsize)
	local owo = NewInstance("Part",char,{Material=BloodMaterial,BrickColor=BloodColor,Shape=Enum.PartType.Ball,Size=V3.N(.25,.25,.25), CanCollide = false})
	owo.CFrame=CF.N(pos,dir)
	local bv = Instance.new("BodyVelocity",owo) 
	bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
	bv.velocity = CF.N(pos,dir+V3.N(M.RNG(-3,3)/30,M.RNG(-3,3)/30,M.RNG(-3,3)/30)).lookVector*15
	bv.Name = "MOVE"
	game:service'Debris':AddItem(bv,0.05)
	local touch 
	touch = owo.Touched:connect(function(hit)
		if(hit.Anchored==true)then
			touch:disconnect()
			BloodPuddle(owo.Position+V3.N(0,1,0),10,maxsize,owo)
			owo:destroy()
		end
	end)
end
function BloodPuddle(position,range,maxSize,where)
	local hit, pos, norm = workspace:FindPartOnRayWithIgnoreList(Ray.new(
		position,CF.N(position,position+V3.N(0,-1,0)).lookVector * range			
	),{where,char},false,true)
	if(hit)then
		if(BloodPuddles[hit])then
			BloodPuddles[hit].Frame = 0
			if(hit:FindFirstChild'CylinderMesh' and hit.CylinderMesh.Scale.Z < BloodPuddles[hit].MaxSize)then
				hit.CylinderMesh.Scale = hit.CylinderMesh.Scale + V3.N(.1,0,.1)
			end
		else
			local Puddle = NewInstance('Part',workspace,{Material=BloodMaterial,BrickColor=BloodColor,Size=V3.N(1,.1,1),CFrame=CF.N(pos,pos+norm)*CF.A(90*M.P/180,0,0),Anchored=true,CanCollide=false,Archivable=false,Locked=true,Name='BloodPuddle'})
			local Cyl = NewInstance('CylinderMesh',Puddle,{Name='CylinderMesh'})
			BloodPuddles[Puddle] = {MaxSize=maxSize or 7,Frame=0}
		end
	end
end

function AcidDrop(pos,dir,maxsize)
	print'acid'
	local owo = NewInstance("Part",char,{Material=Enum.Material.Glass,BrickColor=BrickColor.new'Royal purple',Shape=Enum.PartType.Ball,Size=V3.N(.4,.4,.4), CanCollide = false})
	owo.CFrame=CF.N(pos,dir)
	local bv = Instance.new("BodyVelocity",owo) 
	bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
	bv.velocity = CF.N(pos,dir+V3.N(M.RNG(-3,3)/30,M.RNG(-3,3)/30,M.RNG(-3,3)/30)).lookVector*15
	bv.Name = "MOVE"
	game:service'Debris':AddItem(bv,0.05)
	local touch 
	touch = owo.Touched:connect(function(hit)
		if(hit.Anchored==true and hit.Parent ~= char and hit.CanCollide)then
			touch:disconnect()
			AcidPuddle(owo.Position+V3.N(0,1,0),10,maxsize,owo)
			owo:destroy()
		end
	end)
end
function AcidPuddle(position,range,maxSize,where)
	local hit, pos, norm = workspace:FindPartOnRayWithIgnoreList(Ray.new(
		position,CF.N(position,position+V3.N(0,-1,0)).lookVector * range			
	),{where,char},false,true)
	if(hit)then
		if(not BloodPuddles[hit] and hit.Anchored and hit.CanCollide)then
			Puddle = NewInstance('Part',workspace,{Material=Enum.Material.Glass,BrickColor=BrickColor.new'Royal purple',Size=V3.N(6,.05,6),CFrame=CF.N(pos,pos+norm)*CF.A(90*M.P/180,0,0),Anchored=true,CanCollide=false,Archivable=false,Locked=true,Name='BloodPuddle'})
			local Cyl = NewInstance('CylinderMesh',Puddle,{Name='CylinderMesh'})
			coroutine.wrap(function()
				local Puddle = Puddle
				swait(60*5)
				for i = 0, 1, .05 do
					Puddle.Transparency = i
					Puddle.Size = Puddle.Size - V3.N(.29,0,.29)
					swait()
				end
				Puddle:destroy()
			end)()
		end
	end
end

function LaserFX(duration,color,cframe,scale,endScale)
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Material = Enum.Material.Neon
	rng.Name = "Laser"
	rng.Size = Vector3.new(.5,.5,.5)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = cframe
	local rngm = Instance.new("CylinderMesh", rng)
	rngm.Scale = scale
	table.insert(Effects, {Frame = 0, Effect="Sphere", Duration = duration or 30, Part=rng, Mesh = rngm, Scale = scale, EndScale = endScale or scale*2, Position = cframe})
	return rng
end

function ShatterFX(duration,color,scale,cframe)
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = cframe * CF.fEA(M.RNG(-50, 50), M.RNG(-50, 50), M.RNG(-50, 50))
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.Scale = scale
	rngm.MeshType = "Sphere"
	table.insert(Effects, {Frame = 0, Effect="Shatter", Duration = duration or 30, Part=rng, Mesh = rngm, Scale = scale,Position=rng.CFrame})
end

function RingFX(duration,color,scale,pos,endScale)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshId = "rbxassetid://3270017"
	rngm.Scale = scale
	table.insert(Effects, {Frame = 0, Effect="Sphere", Duration = duration or 30, Part=rng, Mesh = rngm, Scale = scale, EndScale = endScale or scale*2, Position = pos})
	return rng
end


-- Effect Loop

runService:BindToRenderStep("N_Effects",Enum.RenderPriority.Character.Value + 2,function()
	for _,data in next, Effects do
		local frame,effect,duration = data.Frame,data.Effect,data.Duration
		local transparency = (frame / duration)
		local opacity = 1 - transparency
		if(frame > duration)then
			Effects[_] = nil
		end
		frame = frame + 1
		data.Frame = frame	
		if(effect == 'Sphere')then
			local Part,Mesh,Scale,CF,eScale = data.Part,data.Mesh,data.Scale,data.Position,data.EndScale 
			Mesh.Scale = Mesh.Scale:lerp(eScale, transparency/6)
			Part.Transparency = transparency
			if(frame > duration)then
				Part:destroy()
			end
		elseif(effect == 'Shatter')then	
			local Part,Mesh,Scale,Position,Thingie,Thingie2,Inc = data.Part,
																data.Mesh,
																data.Scale,
																data.Position,
																(data.Thingie or 0),
																(data.Thingie2 or M.RNG(50, 100) / 100),
																(data.Inc or M.RNG() - M.RNG())
			Part.Transparency = transparency
			Position = Position * CF.N(0,Thingie2,0)
			Part.CFrame = Position * CF.fEA(Thingie,0,0)
			Thingie = Thingie + Inc
			
			data.Position = Position
			data.Thingie = Thingie
			data.Thingie2 = Thingie2
			data.Inc = Inc
		elseif(effect == 'Block')then
			local Part,Mesh,Scale,CF,eScale = data.Part,data.Mesh,data.Scale,data.Position,data.EndScale 
			Mesh.Scale = Mesh.Scale:lerp(eScale, transparency/6)
			Part.Transparency = transparency
			Part.CFrame = CF * CFrame.Angles(M.R(M.RNG(-360,360)),M.R(M.RNG(-360,360)),M.R(M.RNG(-360,360)))
			if(frame > duration)then
				Part:destroy()
			end
		end
	end
	for puddle,data in next, BloodPuddles do
		if(puddle.Transparency > 0.9)then
			BloodPuddles[puddle] = nil
			puddle:destroy()
		end
		data.Frame = data.Frame + 1
		if(data.Frame > 105)then
			local trans = (data.Frame-105)/90
			puddle.Transparency = trans
			if(puddle:FindFirstChild'CylinderMesh' and puddle.CylinderMesh.Scale.Z > 0)then
				puddle.CylinderMesh.Scale = puddle.CylinderMesh.Scale-V3.N(.1,0,.1)
			end
		else
			puddle.Transparency = 0
		end
	end
	if(Puddle and Puddle.Parent)then
		for _,v in next, workspace:children() do
			if(v:IsA'Model')then
				local h = v:FindFirstChild'Head'
				local hu = v:FindFirstChildOfClass'Humanoid'
				if(h and h:IsA'BasePart' and hu)then
					if((h.CFrame.p-Puddle.CFrame.p).magnitude < 7)then
						DealDamage(v,0,0,0,"Freeze")
					end
				end
			end
		end
	end
end)

-- Animation Loop
runService:BindToRenderStep("N_Animations",Enum.RenderPriority.Character.Value + 1,function()
	sine=sine+change
	hum.WalkSpeed = WalkSpeed
	local hitfloor,posfloor = workspace:FindPartOnRay(Ray.new(root.CFrame.p,((CFrame.new(root.Position,root.Position - Vector3.new(0,1,0))).lookVector).unit * 8), char)
	local State = (not hitfloor and root.Velocity.y < -1 and "Fall" or not hitfloor and root.Velocity.y > 1 and "Jump" or hitfloor and (math.abs(root.Velocity.x) > 1 or math.abs(root.Velocity.z) > 1) and "Walk" or hitfloor and "Idle")
	
	
	local wsVal = 6 / (hum.WalkSpeed / 20)
	local exactVel = CFrame.new(root.CFrame:vectorToObjectSpace(root.Velocity))
	if(State == 'Walk')then
		change = 2/3
		RH.C1 = clerp(RH.C1,CF.N(0,0.8-.25*M.S(sine/wsVal),-M.R(15+65*M.C(sine/wsVal)))*CF.A(M.R(15+65*M.C(sine/wsVal)),0,0)*CF.A(M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7))),.2*(hum.WalkSpeed/20))
		LH.C1 = clerp(LH.C1,CF.N(0,0.8+.25*M.S(sine/wsVal),M.R(15+65*M.C(sine/wsVal)))*CF.A(M.R(15+65*-M.C(sine/wsVal)),0,0)*CF.A(M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7))),.2*(hum.WalkSpeed/20))
	else	
		RH.C1 = clerp(RH.C1,CF.N(0,1,0),.1)
		LH.C1 = clerp(LH.C1,CF.N(0,1,0),.1)
	end
	if(neutralAnims)then
		if(State == 'Idle')then
			-- Idle anim
			local Alpha = .2
			RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00653425185, -0.367415309, -0.572485209, 0.999995291, -0.00257562893, -0.000296123326, 0.00257599982, 0.974187136, 0.22572732, -0.000292910263, -0.225727022, 0.974189222),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.503953636, -3.23575497, -0.0791287646, 1, 0.000350067159, -1.45565718e-06, -0.00034994795, 0.999533594, -0.0305390507, -9.23592597e-06, 0.0305390656, 0.999533653)*CF.A(M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7))),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.49835059, -3.15593815, -0.187087312, 0.999996603, 0.00258975197, -0.000121647492, -0.00257564802, 0.987003267, -0.160680294, -0.000296056271, 0.1606801, 0.987006545)*CF.A(M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7))),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.43127036, 0.451340854, -0.462174714, 0.997353315, 0.0727057606, -0.000517063774, -0.0693833008, 0.949603021, -0.305679858, -0.0217336789, 0.304906696, 0.952134252)*CF.A(M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7))),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.41581738, 0.455256999, -0.457439601, 0.996124089, -0.0879578516, -0.000504340976, 0.0835438147, 0.947897792, -0.307425261, 0.0275185313, 0.306191564, 0.95157218)*CF.A(M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7))),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(-1.90670835e-06, 2.74999475, -7.62939453e-06, 1, 2.32830644e-10, -9.31322575e-10, 2.32830644e-10, 1, 0, -9.31322575e-10, 0, 1)*CF.A(M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7))),Alpha)
			RT3.C0 = clerp(RT3.C0,CFrame.new(1.61375785, -1.76555657, -0.513190091, -0.55665189, 0.810403109, 0.182717308, -0.771965683, -0.585860789, 0.24665007, 0.306932837, -0.00375326723, 0.951723814),Alpha)
			RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36366892, -0.0526333712, 0.463351786, 0.00432222337, -0.925635338, 0.378392518, 0.999990284, 0.00432161195, -0.000850837678, -0.000847693533, 0.378392458, 0.925644875),Alpha)
			RT2.C0 = clerp(RT2.C0,CFrame.new(1.2538718, -2.21410918, -0.524856687, -0.771987855, 0.583863854, 0.251272887, -0.556619704, -0.811843097, 0.176310748, 0.306935579, -0.00375370681, 0.95172298),Alpha)
			RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32391119, -0.0978909656, 0.155143276, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RR2.C0 = clerp(RR2.C0,CFrame.new(1.25468278, -2.23918462, 0.480947077, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RR3.C0 = clerp(RR3.C0,CFrame.new(1.53806043, -1.79355478, 0.474106222, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RS3.C0 = clerp(RS3.C0,CFrame.new(1.49055731, -1.77398741, 0.730609715, -0.660822511, 0.739318788, -0.129311174, -0.748390913, -0.662110388, 0.0389984399, -0.0567859784, 0.12254636, 0.990836978),Alpha)
			RS2.C0 = clerp(RS2.C0,CFrame.new(1.12350154, -2.19243288, 0.735727072, -0.863375664, 0.492343336, -0.110365942, -0.501357257, -0.861730874, 0.0778523907, -0.0567756221, 0.122548625, 0.990837216),Alpha)
			RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33202672, -0.0549109876, 0.413173437, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RM2.C0 = clerp(RM2.C0,CFrame.new(1.255373, -2.24170375, 0.251963019, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RM3.C0 = clerp(RM3.C0,CFrame.new(1.5395211, -1.79571998, 0.245096236, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RM1.C0 = clerp(RM1.C0,CFrame.new(-2.323915, -0.100503564, -0.0738568455, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP2.C0 = clerp(RP2.C0,CFrame.new(1.25615263, -2.2444911, -0.000960677862, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32391214, -0.103389643, -0.32676369, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP3.C0 = clerp(RP3.C0,CFrame.new(1.54112804, -1.79812348, -0.0077983737, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			LR3.C0 = clerp(LR3.C0,CFrame.new(1.45705879, -1.89598083, -0.385099679, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LT3.C0 = clerp(LT3.C0,CFrame.new(1.40952325, -1.97281897, 0.526059091, 0.671315253, 0.714624286, 0.196591273, 0.679187477, -0.699324131, 0.222823307, 0.296715915, -0.0160623491, -0.954830825),Alpha)
			LT1.C0 = clerp(LT1.C0,CFrame.new(-2.3832376, -0.197773144, -0.480284959, 0.00441737333, -0.922104299, 0.38691628, -0.999989927, -0.00441598753, 0.000892503187, 0.000885637477, -0.38691628, -0.922114491),Alpha)
			LT2.C0 = clerp(LT2.C0,CFrame.new(0.99463892, -2.34625196, 0.514375746, 0.851474643, 0.457154393, 0.256906241, 0.432377875, -0.889242351, 0.14932391, 0.296715945, -0.0160649493, -0.954830766),Alpha)
			LR2.C0 = clerp(LR2.C0,CFrame.new(1.14547455, -2.31078553, -0.378219754, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32390952, -0.272462696, -0.121384747, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS1.C0 = clerp(LS1.C0,CFrame.new(-2.33202744, -0.23541376, -0.383374184, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM3.C0 = clerp(LM3.C0,CFrame.new(1.45572555, -1.89398086, -0.174214169, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LS3.C0 = clerp(LS3.C0,CFrame.new(1.49722528, -1.81738269, -0.636980891, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LP2.C0 = clerp(LP2.C0,CFrame.new(1.14411652, -2.30584955, 0.0697559863, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32390475, -0.267352402, 0.326590419, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32390952, -0.270056516, 0.0895184278, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS2.C0 = clerp(LS2.C0,CFrame.new(1.11611402, -2.23573709, -0.631830394, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LM2.C0 = clerp(LM2.C0,CFrame.new(1.14484239, -2.30846381, -0.167330459, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP3.C0 = clerp(LP3.C0,CFrame.new(1.45421648, -1.89172983, 0.0628871024, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
		elseif(State == 'Walk')then		
			-- Walk anim
			local Alpha = .2*(hum.WalkSpeed/20)

			RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00653425185, -0.367415309+.2*M.C(sine/wsVal), -0.572485209, 0.999995291, -0.00257562893, -0.000296123326, 0.00257599982, 0.974187136, 0.22572732, -0.000292910263, -0.225727022, 0.974189222),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.503953636, -3.23575497-.2*M.C(sine/wsVal), -0.0791287646, 1, 0.000350067159, -1.45565718e-06, -0.00034994795, 0.999533594, -0.0305390507, -9.23592597e-06, 0.0305390656, 0.999533653)*CF.A(M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7))),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.49835059, -3.15593815-.2*M.C(sine/wsVal), -0.187087312, 0.999996603, 0.00258975197, -0.000121647492, -0.00257564802, 0.987003267, -0.160680294, -0.000296056271, 0.1606801, 0.987006545)*CF.A(M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7))),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.43127036, 0.451340854+M.R(0+25*-M.C(sine/wsVal)), -0.462174714-M.R(0+25*-M.C(sine/wsVal)), 0.997353315, 0.0727057606, -0.000517063774, -0.0693833008, 0.949603021, -0.305679858, -0.0217336789, 0.304906696, 0.952134252)*CF.A(M.R(0+25*-M.C(sine/wsVal)),0,0),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.41581738, 0.455256999+M.R(0+25*M.C(sine/wsVal)), -0.457439601-M.R(0+25*M.C(sine/wsVal)), 0.996124089, -0.0879578516, -0.000504340976, 0.0835438147, 0.947897792, -0.307425261, 0.0275185313, 0.306191564, 0.95157218)*CF.A(M.R(0+25*M.C(sine/wsVal)),0,0),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(-1.90670835e-06, 2.74999475, -7.62939453e-06, 1, 2.32830644e-10, -9.31322575e-10, 2.32830644e-10, 1, 0, -9.31322575e-10, 0, 1)*CF.A(M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7)),M.R(M.RNG(-7,7))),Alpha)
			RT3.C0 = clerp(RT3.C0,CFrame.new(1.61375785, -1.76555657, -0.513190091, -0.55665189, 0.810403109, 0.182717308, -0.771965683, -0.585860789, 0.24665007, 0.306932837, -0.00375326723, 0.951723814),Alpha)
			RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36366892, -0.0526333712, 0.463351786, 0.00432222337, -0.925635338, 0.378392518, 0.999990284, 0.00432161195, -0.000850837678, -0.000847693533, 0.378392458, 0.925644875),Alpha)
			RT2.C0 = clerp(RT2.C0,CFrame.new(1.2538718, -2.21410918, -0.524856687, -0.771987855, 0.583863854, 0.251272887, -0.556619704, -0.811843097, 0.176310748, 0.306935579, -0.00375370681, 0.95172298),Alpha)
			RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32391119, -0.0978909656, 0.155143276, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RR2.C0 = clerp(RR2.C0,CFrame.new(1.25468278, -2.23918462, 0.480947077, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RR3.C0 = clerp(RR3.C0,CFrame.new(1.53806043, -1.79355478, 0.474106222, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RS3.C0 = clerp(RS3.C0,CFrame.new(1.49055731, -1.77398741, 0.730609715, -0.660822511, 0.739318788, -0.129311174, -0.748390913, -0.662110388, 0.0389984399, -0.0567859784, 0.12254636, 0.990836978),Alpha)
			RS2.C0 = clerp(RS2.C0,CFrame.new(1.12350154, -2.19243288, 0.735727072, -0.863375664, 0.492343336, -0.110365942, -0.501357257, -0.861730874, 0.0778523907, -0.0567756221, 0.122548625, 0.990837216),Alpha)
			RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33202672, -0.0549109876, 0.413173437, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RM2.C0 = clerp(RM2.C0,CFrame.new(1.255373, -2.24170375, 0.251963019, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RM3.C0 = clerp(RM3.C0,CFrame.new(1.5395211, -1.79571998, 0.245096236, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RM1.C0 = clerp(RM1.C0,CFrame.new(-2.323915, -0.100503564, -0.0738568455, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP2.C0 = clerp(RP2.C0,CFrame.new(1.25615263, -2.2444911, -0.000960677862, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32391214, -0.103389643, -0.32676369, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP3.C0 = clerp(RP3.C0,CFrame.new(1.54112804, -1.79812348, -0.0077983737, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			LR3.C0 = clerp(LR3.C0,CFrame.new(1.45705879, -1.89598083, -0.385099679, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LT3.C0 = clerp(LT3.C0,CFrame.new(1.40952325, -1.97281897, 0.526059091, 0.671315253, 0.714624286, 0.196591273, 0.679187477, -0.699324131, 0.222823307, 0.296715915, -0.0160623491, -0.954830825),Alpha)
			LT1.C0 = clerp(LT1.C0,CFrame.new(-2.3832376, -0.197773144, -0.480284959, 0.00441737333, -0.922104299, 0.38691628, -0.999989927, -0.00441598753, 0.000892503187, 0.000885637477, -0.38691628, -0.922114491),Alpha)
			LT2.C0 = clerp(LT2.C0,CFrame.new(0.99463892, -2.34625196, 0.514375746, 0.851474643, 0.457154393, 0.256906241, 0.432377875, -0.889242351, 0.14932391, 0.296715945, -0.0160649493, -0.954830766),Alpha)
			LR2.C0 = clerp(LR2.C0,CFrame.new(1.14547455, -2.31078553, -0.378219754, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32390952, -0.272462696, -0.121384747, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS1.C0 = clerp(LS1.C0,CFrame.new(-2.33202744, -0.23541376, -0.383374184, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM3.C0 = clerp(LM3.C0,CFrame.new(1.45572555, -1.89398086, -0.174214169, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LS3.C0 = clerp(LS3.C0,CFrame.new(1.49722528, -1.81738269, -0.636980891, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LP2.C0 = clerp(LP2.C0,CFrame.new(1.14411652, -2.30584955, 0.0697559863, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32390475, -0.267352402, 0.326590419, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32390952, -0.270056516, 0.0895184278, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS2.C0 = clerp(LS2.C0,CFrame.new(1.11611402, -2.23573709, -0.631830394, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LM2.C0 = clerp(LM2.C0,CFrame.new(1.14484239, -2.30846381, -0.167330459, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP3.C0 = clerp(LP3.C0,CFrame.new(1.45421648, -1.89172983, 0.0628871024, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
		elseif(State == 'Jump' or State == 'Fall')then
			RJ.C0 = clerp(RJ.C0,CFrame.new(0, 0, 0, 0.999989688, 1.3632216e-15, 0, 1.3632216e-15, 1, 2.56739074e-16, 0, 2.56739074e-16, 0.999989688),0.3)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.499998271, -2.86761332, -0.423956037, 0.999994934, -3.7997961e-07, 1.88313425e-06, 3.7084294e-11, 0.980262458, 0.197700962, -1.92131847e-06, -0.197699949, 0.980257392),0.3)
			RH.C0 = clerp(RH.C0,CFrame.new(0.500029027, -1.90648031, -0.953526855, 0.999994934, 2.6863534e-05, -3.10875475e-05, 3.70871632e-11, 0.756630182, 0.653843105, 4.1087158e-05, -0.653839707, 0.756626308),0.3)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.38248646, 0.493521869, -1.50245069e-05, 0.993936718, 0.109907441, -3.99537385e-07, -0.109908015, 0.993941784, -1.59255274e-06, 2.21654773e-07, 1.62678771e-06, 0.999994814),0.3)
			RS.C0 = clerp(RS.C0,CFrame.new(1.41221583, 0.513182044, 6.27265626e-06, 0.994822443, -0.101577446, -8.69855285e-07, 0.101577975, 0.994827569, -2.39775818e-06, 1.10827386e-06, 2.29699071e-06, 0.999994814),0.3)
			NK.C0 = clerp(NK.C0,CFrame.new(-3.79963094e-05, 2.73334718, -0.0034930706, 0.999994874, -1.12627167e-05, -4.15872782e-05, 3.7087295e-11, 0.965229452, -0.261404276, 4.30857763e-05, 0.261402935, 0.965224504),0.3)
			RT3.C0 = clerp(RT3.C0,CFrame.new(-2.48913026, -1.5558306, 0.47474587, -0.552640975, -0.771628797, 0.314923763, 0.833418965, -0.511285722, 0.209760875, -0.000841505826, 0.378385961, 0.925647557),0.3)
			RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36366272, -0.0526191629, 0.463347465, 0.00431827921, -0.925636768, 0.378388733, 0.999990344, 0.00431696139, -0.000851770863, -0.000845058821, 0.378388762, 0.925646424),0.3)
			RT2.C0 = clerp(RT2.C0,CFrame.new(-2.57271767, -0.719182789, 0.463071942, -0.261110842, -0.893618882, 0.365056634, 0.965308487, -0.24138996, 0.0995513573, -0.000839968212, 0.37838617, 0.925647497),0.3)
			RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32390428, -0.097856693, 0.155154705, 2.66222014e-06, -1, -3.41096893e-08, 1, 2.65463132e-06, -4.00096178e-06, 4.00003046e-06, -3.3993274e-08, 1),0.3)
			RR2.C0 = clerp(RR2.C0,CFrame.new(-2.61669111, -0.764986992, 0.154791445, -0.265275598, -0.964172542, -1.34762377e-06, 0.964172661, -0.265275627, -7.10878521e-06, 6.49597496e-06, -3.18500679e-06, 1),0.3)
			RR3.C0 = clerp(RR3.C0,CFrame.new(-2.60074496, -1.61762106, 0.147935733, -0.556236446, -0.83102411, 1.56415626e-06, 0.83102411, -0.556236386, -1.0849908e-05, 9.88598913e-06, -4.73484397e-06, 1),0.3)
			RS3.C0 = clerp(RS3.C0,CFrame.new(-2.44675827, -1.52428663, 0.407759368, -0.556236446, -0.83102411, 1.56415626e-06, 0.83102411, -0.556236386, -1.0849908e-05, 9.88598913e-06, -4.73484397e-06, 1),0.3)
			RS2.C0 = clerp(RS2.C0,CFrame.new(-2.53339791, -0.711884439, 0.41287148, -0.265275598, -0.964172542, -1.34762377e-06, 0.964172661, -0.265275627, -7.10878521e-06, 6.49597496e-06, -3.18500679e-06, 1),0.3)
			RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33202195, -0.0548965856, 0.413165748, 2.66222014e-06, -1, -3.41096893e-08, 1, 2.65463132e-06, -4.00096178e-06, 4.00003046e-06, -3.3993274e-08, 1),0.3)
			RM2.C0 = clerp(RM2.C0,CFrame.new(-2.61600137, -0.767494082, -0.0741972104, -0.265275598, -0.964172542, -1.34762377e-06, 0.964172661, -0.265275627, -7.10878521e-06, 6.49597496e-06, -3.18500679e-06, 1),0.3)
			RM3.C0 = clerp(RM3.C0,CFrame.new(-2.59929419, -1.61978698, -0.081060566, -0.556236446, -0.83102411, 1.56415626e-06, 0.83102411, -0.556236386, -1.0849908e-05, 9.88598913e-06, -4.73484397e-06, 1),0.3)
			RM1.C0 = clerp(RM1.C0,CFrame.new(-2.32390523, -0.100487918, -0.0738377646, 2.66222014e-06, -1, -3.41096893e-08, 1, 2.65463132e-06, -4.00096178e-06, 4.00003046e-06, -3.3993274e-08, 1),0.3)
			RP2.C0 = clerp(RP2.C0,CFrame.new(-2.61523294, -0.770287812, -0.327115476, -0.265275598, -0.964172542, -1.34762377e-06, 0.964172661, -0.265275627, -7.10878521e-06, 6.49597496e-06, -3.18500679e-06, 1),0.3)
			RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32390428, -0.103370823, -0.326767474, 2.66222014e-06, -1, -3.41096893e-08, 1, 2.65463132e-06, -4.00096178e-06, 4.00003046e-06, -3.3993274e-08, 1),0.3)
			RP3.C0 = clerp(RP3.C0,CFrame.new(-2.59769011, -1.62218094, -0.333978832, -0.556236446, -0.83102411, 1.56415626e-06, 0.83102411, -0.556236386, -1.0849908e-05, 9.88598913e-06, -4.73484397e-06, 1),0.3)
			LR3.C0 = clerp(LR3.C0,CFrame.new(-2.50364566, -1.76268733, -0.128605217, 0.556235969, -0.831024528, -2.17696652e-06, -0.831024587, -0.556235909, 9.77423042e-06, -9.33278352e-06, -3.62750143e-06, -1),0.3)
			LT3.C0 = clerp(LT3.C0,CFrame.new(-2.42466164, -1.68733382, -0.468865991, 0.559901595, -0.763835311, 0.321038753, -0.828558743, -0.516576529, 0.215961084, 0.000882378779, -0.386916399, -0.922114372),0.3)
			LT1.C0 = clerp(LT1.C0,CFrame.new(-2.38324189, -0.197767839, -0.480271369, 0.00441723922, -0.922106087, 0.386912167, -0.999989986, -0.00441567414, 0.000892929733, 0.000885100104, -0.386912197, -0.92211616),0.3)
			LT2.C0 = clerp(LT2.C0,CFrame.new(-2.55308509, -0.864325583, -0.480534732, 0.269532174, -0.887898088, 0.372813046, -0.962990999, -0.248868316, 0.103503212, 0.000881056301, -0.386913002, -0.922115803),0.3)
			LR2.C0 = clerp(LR2.C0,CFrame.new(-2.57038689, -0.933300614, -0.121713795, 0.265275717, -0.964172661, -1.28813554e-06, -0.964172781, -0.265275747, 5.76023012e-06, -5.89434057e-06, -2.8591603e-07, -1),0.3)
			LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32390785, -0.272437274, -0.12138094, -1.29211003e-07, -1.00000012, 1.16415322e-10, -1.00000012, 1.36600647e-07, 4.00003046e-06, -4.00096178e-06, 0, -1),0.3)
			LS1.C0 = clerp(LS1.C0,CFrame.new(-2.33202553, -0.23541078, -0.383358955, -1.29211003e-07, -1.00000012, 1.16415322e-10, -1.00000012, 1.36600647e-07, 4.00003046e-06, -4.00096178e-06, 0, -1),0.3)
			LM3.C0 = clerp(LM3.C0,CFrame.new(-2.50498247, -1.76070154, 0.0823208541, 0.556235969, -0.831024528, -2.17696652e-06, -0.831024587, -0.556235909, 9.77423042e-06, -9.33278352e-06, -3.62750143e-06, -1),0.3)
			LS3.C0 = clerp(LS3.C0,CFrame.new(-2.34636188, -1.67428231, -0.388740361, 0.556235969, -0.831024528, -2.17696652e-06, -0.831024587, -0.556235909, 9.77423042e-06, -9.33278352e-06, -3.62750143e-06, -1),0.3)
			LP2.C0 = clerp(LP2.C0,CFrame.new(-2.57174277, -0.928374887, 0.326284289, 0.265275717, -0.964172661, -1.28813554e-06, -0.964172781, -0.265275747, 5.76023012e-06, -5.89434057e-06, -2.8591603e-07, -1),0.3)
			LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32390833, -0.267327368, 0.326617122, -1.29211003e-07, -1.00000012, 1.16415322e-10, -1.00000012, 1.36600647e-07, 4.00003046e-06, -4.00096178e-06, 0, -1),0.3)
			LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32390881, -0.27002722, 0.0895336792, -1.29211003e-07, -1.00000012, 1.16415322e-10, -1.00000012, 1.36600647e-07, 4.00003046e-06, -4.00096178e-06, 0, -1),0.3)
			LS2.C0 = clerp(LS2.C0,CFrame.new(-2.48551011, -0.88594687, -0.38360405, 0.265275717, -0.964172661, -1.28813554e-06, -0.964172781, -0.265275747, 5.76023012e-06, -5.89434057e-06, -2.8591603e-07, -1),0.3)
			LM2.C0 = clerp(LM2.C0,CFrame.new(-2.57101965, -0.931007206, 0.0892008319, 0.265275717, -0.964172661, -1.28813554e-06, -0.964172781, -0.265275747, 5.76023012e-06, -5.89434057e-06, -2.8591603e-07, -1),0.3)
			LP3.C0 = clerp(LP3.C0,CFrame.new(-2.5064826, -1.75845838, 0.319396675, 0.556235969, -0.831024528, -2.17696652e-06, -0.831024587, -0.556235909, 9.77423042e-06, -9.33278352e-06, -3.62750143e-06, -1),0.3)
		end
	end
end)

-- Died event

hum.Died:connect(function() -- When the player dies
	UnbindLoops() -- Unbind all of the loops used
end)


-- Everything else


FindNearestTorso = function(pos)
	local list = (workspace:children())
	local torso = nil
	local dist = 1000
	local temp, human, temp2 = nil, nil, nil
	for x = 1, #list do
		temp2 = list[x]
		if temp2.className == "Model" and temp2 ~= char then
			temp = GetTorso(temp2)
			human = temp2:findFirstChildOfClass("Humanoid")
			if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
				local dohit = true
				if dohit == true then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso, dist
end

function Eat()
	Attack = true
	neutralAnims = false
	WalkSpeed = 0
	local hd = Instance.new("SpecialMesh",head)
	hd.MeshId,hd.Scale = "rbxasset://fonts/head.mesh",V3.N(1,1,1)
	for i = 0, 1, 0.1 do
		swait()
		root.Anchored = true
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0101976926, -2.47471642, -0.893443644, 0.999990284, -0.00300977356, -0.000401013531, 0.00300900009, 0.964597106, 0.263710856, -0.00040689297, -0.263709486, 0.964596748),0.3)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.498538464, -3.07820082, 1.32450998, 0.99999541, 0.00170646049, 0.00251151482, -0.00300980965, 0.66629684, 0.74568063, -0.000400940888, -0.745684743, 0.666298866),0.3)
		RH.C0 = clerp(RH.C0,CFrame.new(0.500001013, -1.22442114, -0.705207109, 1.00000012, 0, 0, 2.32830644e-10, 0.976968884, -0.213381797, 0, 0.213381797, 0.976968884),0.3)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.49999487, 0.499998093, 7.64429569e-06, 1.00000012, 2.32830644e-10, 0, 2.32830644e-10, 1, 2.98023224e-08, 0, 2.98023224e-08, 1),0.3)
		RS.C0 = clerp(RS.C0,CFrame.new(2.25000691, 1.27095723, -0.543794036, 0.70252949, -0.711654782, 1.53109431e-06, 0.366290569, 0.361591935, -0.857369542, 0.610150456, 0.602327943, 0.514701426),0.3)
		NK.C0 = clerp(NK.C0,CFrame.new(4.29084639e-06, 2.72478557, -0.152842045, 1.00000012, -4.65661287e-10, 9.31322575e-10, 2.32830644e-10, 0.962414801, 0.271584034, 0, -0.271584034, 0.962414801),0.3)
		RT3.C0 = clerp(RT3.C0,CFrame.new(-2.48910928, -1.55584359, 0.474784255, -0.552643597, -0.771626472, 0.314925104, 0.833417356, -0.511287332, 0.209764272, -0.000842422247, 0.378388971, 0.925646305),0.3)
		RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36365271, -0.0526320674, 0.463361204, 0.00431946665, -0.925634444, 0.378394425, 0.999990284, 0.00431928039, -0.000849217176, -0.000848323107, 0.378394485, 0.92564404),0.3)
		RT2.C0 = clerp(RT2.C0,CFrame.new(-2.57269263, -0.719203055, 0.46306473, -0.261112005, -0.893619657, 0.365054309, 0.96530813, -0.241389707, 0.0995550901, -0.000844031572, 0.378385007, 0.925647974),0.3)
		RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32387304, -0.097885251, 0.155142546, -1.07288361e-06, -1.00000012, 4.17232513e-06, 1.00000012, -1.10268593e-06, 3.54647636e-06, -3.51667404e-06, 4.2617321e-06, 1),0.3)
		RR2.C0 = clerp(RR2.C0,CFrame.new(-2.61666203, -0.764983475, 0.154808551, -0.265274137, -0.964173198, 2.41398811e-06, 0.964173079, -0.265274137, -5.96046448e-08, 7.15255737e-07, 2.29477882e-06, 1),0.3)
		RR3.C0 = clerp(RR3.C0,CFrame.new(-2.60072613, -1.61763632, 0.147929713, -0.556239188, -0.831022382, -3.81469727e-06, 0.831022322, -0.556239247, -9.4845891e-06, 5.75184822e-06, -8.43405724e-06, 1),0.3)
		RS3.C0 = clerp(RS3.C0,CFrame.new(-2.44672871, -1.52428532, 0.407729238, -0.556239188, -0.831022382, -3.81469727e-06, 0.831022322, -0.556239247, -9.4845891e-06, 5.75184822e-06, -8.43405724e-06, 1),0.3)
		RS2.C0 = clerp(RS2.C0,CFrame.new(-2.53335905, -0.71188271, 0.412876427, -0.265274137, -0.964173198, 2.41398811e-06, 0.964173079, -0.265274137, -5.96046448e-08, 7.15255737e-07, 2.29477882e-06, 1),0.3)
		RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33200312, -0.054913681, 0.413159013, -1.07288361e-06, -1.00000012, 4.17232513e-06, 1.00000012, -1.10268593e-06, 3.54647636e-06, -3.51667404e-06, 4.2617321e-06, 1),0.3)
		RM2.C0 = clerp(RM2.C0,CFrame.new(-2.61599159, -0.767508984, -0.074164845, -0.265274137, -0.964173198, 2.41398811e-06, 0.964173079, -0.265274137, -5.96046448e-08, 7.15255737e-07, 2.29477882e-06, 1),0.3)
		RM3.C0 = clerp(RM3.C0,CFrame.new(-2.59927201, -1.61979878, -0.0810761154, -0.556239188, -0.831022382, -3.81469727e-06, 0.831022322, -0.556239247, -9.4845891e-06, 5.75184822e-06, -8.43405724e-06, 1),0.3)
		RM1.C0 = clerp(RM1.C0,CFrame.new(-2.32387781, -0.100504853, -0.0738613531, -1.07288361e-06, -1.00000012, 4.17232513e-06, 1.00000012, -1.10268593e-06, 3.54647636e-06, -3.51667404e-06, 4.2617321e-06, 1),0.3)
		RP2.C0 = clerp(RP2.C0,CFrame.new(-2.61522508, -0.770296931, -0.32709071, -0.265274137, -0.964173198, 2.41398811e-06, 0.964173079, -0.265274137, -5.96046448e-08, 7.15255737e-07, 2.29477882e-06, 1),0.3)
		RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32390761, -0.103397295, -0.326749057, -1.07288361e-06, -1.00000012, 4.17232513e-06, 1.00000012, -1.10268593e-06, 3.54647636e-06, -3.51667404e-06, 4.2617321e-06, 1),0.3)
		RP3.C0 = clerp(RP3.C0,CFrame.new(-2.59765124, -1.62218916, -0.334011555, -0.556239188, -0.831022382, -3.81469727e-06, 0.831022322, -0.556239247, -9.4845891e-06, 5.75184822e-06, -8.43405724e-06, 1),0.3)
		LR3.C0 = clerp(LR3.C0,CFrame.new(-2.50362992, -1.76269734, -0.128634736, 0.556237459, -0.831023574, 4.00841236e-06, -0.831023574, -0.556237459, 1.33663416e-05, -8.86525959e-06, -1.07884407e-05, -1),0.3)
		LT3.C0 = clerp(LT3.C0,CFrame.new(-2.42464662, -1.68733966, -0.468871891, 0.559900582, -0.763834238, 0.321043193, -0.828559458, -0.516575158, 0.21596168, 0.000884024426, -0.386920452, -0.922112703),0.3)
		LT1.C0 = clerp(LT1.C0,CFrame.new(-2.38322973, -0.197773054, -0.480284244, 0.0044150874, -0.922103882, 0.386917174, -0.999989986, -0.00441437121, 0.000890459865, 0.000886899419, -0.386917293, -0.922114015),0.3)
		LT2.C0 = clerp(LT2.C0,CFrame.new(-2.55306935, -0.864338696, -0.480546713, 0.269532502, -0.887895465, 0.372818857, -0.96299094, -0.24887079, 0.103498176, 0.000888162293, -0.386917353, -0.922114015),0.3)
		LR2.C0 = clerp(LR2.C0,CFrame.new(-2.57037282, -0.933312833, -0.121727049, 0.265276462, -0.964172423, 6.33299351e-06, -0.964172423, -0.265276462, 3.02866101e-06, -1.24704093e-06, -6.91413879e-06, -1.00000012),0.3)
		LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32390285, -0.272462189, -0.121371761, 1.28755346e-07, -1, 9.83476639e-07, -1.00000012, -1.28755346e-07, 4.12110239e-06, -4.12203372e-06, -9.53674316e-07, -1.00000012),0.3)
		LS1.C0 = clerp(LS1.C0,CFrame.new(-2.33201838, -0.235411346, -0.383384138, 1.28755346e-07, -1, 9.83476639e-07, -1.00000012, -1.28755346e-07, 4.12110239e-06, -4.12203372e-06, -9.53674316e-07, -1.00000012),0.3)
		LM3.C0 = clerp(LM3.C0,CFrame.new(-2.50496888, -1.76070094, 0.0822837129, 0.556237459, -0.831023574, 4.00841236e-06, -0.831023574, -0.556237459, 1.33663416e-05, -8.86525959e-06, -1.07884407e-05, -1),0.3)
		LS3.C0 = clerp(LS3.C0,CFrame.new(-2.34634662, -1.67428362, -0.388776213, 0.556237459, -0.831023574, 4.00841236e-06, -0.831023574, -0.556237459, 1.33663416e-05, -8.86525959e-06, -1.07884407e-05, -1),0.3)
		LP2.C0 = clerp(LP2.C0,CFrame.new(-2.57173181, -0.928385198, 0.326259613, 0.265276462, -0.964172423, 6.33299351e-06, -0.964172423, -0.265276462, 3.02866101e-06, -1.24704093e-06, -6.91413879e-06, -1.00000012),0.3)
		LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32389855, -0.267353296, 0.326584399, 1.28755346e-07, -1, 9.83476639e-07, -1.00000012, -1.28755346e-07, 4.12110239e-06, -4.12203372e-06, -9.53674316e-07, -1.00000012),0.3)
		LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32390594, -0.27005741, 0.089539066, 1.28755346e-07, -1, 9.83476639e-07, -1.00000012, -1.28755346e-07, 4.12110239e-06, -4.12203372e-06, -9.53674316e-07, -1.00000012),0.3)
		LS2.C0 = clerp(LS2.C0,CFrame.new(-2.48550367, -0.885939538, -0.383639723, 0.265276462, -0.964172423, 6.33299351e-06, -0.964172423, -0.265276462, 3.02866101e-06, -1.24704093e-06, -6.91413879e-06, -1.00000012),0.3)
		LM2.C0 = clerp(LM2.C0,CFrame.new(-2.57101417, -0.930994511, 0.089172326, 0.265276462, -0.964172423, 6.33299351e-06, -0.964172423, -0.265276462, 3.02866101e-06, -1.24704093e-06, -6.91413879e-06, -1.00000012),0.3)
		LP3.C0 = clerp(LP3.C0,CFrame.new(-2.50647783, -1.75845778, 0.31936717, 0.556237459, -0.831023574, 4.00841236e-06, -0.831023574, -0.556237459, 1.33663416e-05, -8.86525959e-06, -1.07884407e-05, -1),0.3)
	end
	swait(30)
	for i = 0, 1, 0.1 do
		swait()
		root.Anchored = true
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0101976926, -2.47471642, -0.893443644, 0.999990284, -0.00300977356, -0.000401013531, 0.00300900009, 0.964597106, 0.263710856, -0.00040689297, -0.263709486, 0.964596748),0.3)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.498538464, -3.07820082, 1.32450998, 0.99999541, 0.00170646049, 0.00251151482, -0.00300980965, 0.66629684, 0.74568063, -0.000400940888, -0.745684743, 0.666298866),0.3)
		RH.C0 = clerp(RH.C0,CFrame.new(0.500001013, -1.22442114, -0.705207109, 1.00000012, 0, 0, 2.32830644e-10, 0.976968884, -0.213381797, 0, 0.213381797, 0.976968884),0.3)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.49999487, 0.499998093, 7.64429569e-06, 1.00000012, 2.32830644e-10, 0, 2.32830644e-10, 1, 2.98023224e-08, 0, 2.98023224e-08, 1),0.3)
		RS.C0 = clerp(RS.C0,CFrame.new(0.72810775, 1.02041888, -0.961069465, 0.768898249, 0.639371336, 1.03712082e-05, -0.329080999, 0.395761818, -0.857367218, -0.548179865, 0.659224689, 0.514705479),0.3)
		NK.C0 = clerp(NK.C0,CFrame.new(4.29084639e-06, 2.72478557, -0.152842045, 1.00000012, -4.65661287e-10, 9.31322575e-10, 2.32830644e-10, 0.962414801, 0.271584034, 0, -0.271584034, 0.962414801),0.3)
		RT3.C0 = clerp(RT3.C0,CFrame.new(-2.48910928, -1.55584586, 0.474794269, -0.552643836, -0.77162528, 0.314927697, 0.833417177, -0.511287987, 0.209763288, -0.000839859247, 0.378390521, 0.925645828),0.3)
		RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36366034, -0.0526347235, 0.46338138, 0.00431755185, -0.925634682, 0.378394067, 0.999990404, 0.00431737304, -0.00084900856, -0.00084772706, 0.378393948, 0.925644398),0.3)
		RT2.C0 = clerp(RT2.C0,CFrame.new(-2.57268977, -0.719206929, 0.463082612, -0.261111975, -0.893618345, 0.365057409, 0.96530813, -0.24138999, 0.0995542705, -0.000842303038, 0.37838769, 0.925646961),0.3)
		RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32388043, -0.0978889093, 0.155152023, -2.65240669e-06, -1.00000012, 4.29153442e-06, 1.00000012, -2.57790089e-06, 2.08616257e-06, -2.11596489e-06, 4.29153442e-06, 1.00000012),0.3)
		RR2.C0 = clerp(RR2.C0,CFrame.new(-2.61666441, -0.764981449, 0.154823169, -0.265272617, -0.964173615, 5.36441803e-06, 0.964173496, -0.265272617, 1.57952309e-06, -8.94069672e-08, 5.54323196e-06, 1.00000012),0.3)
		RR3.C0 = clerp(RR3.C0,CFrame.new(-2.60074186, -1.61763227, 0.147942692, -0.55623579, -0.831024587, -1.2665987e-06, 0.831024528, -0.55623585, -1.13844872e-05, 8.7916851e-06, -7.42077827e-06, 1.00000024),0.3)
		RS3.C0 = clerp(RS3.C0,CFrame.new(-2.44673991, -1.52428043, 0.407743961, -0.55623579, -0.831024587, -1.2665987e-06, 0.831024528, -0.55623585, -1.13844872e-05, 8.7916851e-06, -7.42077827e-06, 1.00000024),0.3)
		RS2.C0 = clerp(RS2.C0,CFrame.new(-2.5333724, -0.71187973, 0.412902206, -0.265272617, -0.964173615, 5.36441803e-06, 0.964173496, -0.265272617, 1.57952309e-06, -8.94069672e-08, 5.54323196e-06, 1.00000012),0.3)
		RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33201051, -0.0549177267, 0.413168609, -2.65240669e-06, -1.00000012, 4.29153442e-06, 1.00000012, -2.57790089e-06, 2.08616257e-06, -2.11596489e-06, 4.29153442e-06, 1.00000012),0.3)
		RM2.C0 = clerp(RM2.C0,CFrame.new(-2.61599779, -0.767502367, -0.0741483271, -0.265272617, -0.964173615, 5.36441803e-06, 0.964173496, -0.265272617, 1.57952309e-06, -8.94069672e-08, 5.54323196e-06, 1.00000012),0.3)
		RM3.C0 = clerp(RM3.C0,CFrame.new(-2.59928036, -1.61978889, -0.0810651034, -0.55623579, -0.831024587, -1.2665987e-06, 0.831024528, -0.55623585, -1.13844872e-05, 8.7916851e-06, -7.42077827e-06, 1.00000024),0.3)
		RM1.C0 = clerp(RM1.C0,CFrame.new(-2.3238852, -0.10051199, -0.0738480836, -2.65240669e-06, -1.00000012, 4.29153442e-06, 1.00000012, -2.57790089e-06, 2.08616257e-06, -2.11596489e-06, 4.29153442e-06, 1.00000012),0.3)
		RP2.C0 = clerp(RP2.C0,CFrame.new(-2.61523342, -0.770293057, -0.32707423, -0.265272617, -0.964173615, 5.36441803e-06, 0.964173496, -0.265272617, 1.57952309e-06, -8.94069672e-08, 5.54323196e-06, 1.00000012),0.3)
		RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32391119, -0.103400238, -0.326743454, -2.65240669e-06, -1.00000012, 4.29153442e-06, 1.00000012, -2.57790089e-06, 2.08616257e-06, -2.11596489e-06, 4.29153442e-06, 1.00000012),0.3)
		RP3.C0 = clerp(RP3.C0,CFrame.new(-2.59765935, -1.62217629, -0.334010154, -0.55623579, -0.831024587, -1.2665987e-06, 0.831024528, -0.55623585, -1.13844872e-05, 8.7916851e-06, -7.42077827e-06, 1.00000024),0.3)
		LR3.C0 = clerp(LR3.C0,CFrame.new(-2.50362992, -1.76269734, -0.128634736, 0.556237459, -0.831023574, 4.00841236e-06, -0.831023574, -0.556237459, 1.33663416e-05, -8.86525959e-06, -1.07884407e-05, -1),0.3)
		LT3.C0 = clerp(LT3.C0,CFrame.new(-2.42464662, -1.68733966, -0.468871891, 0.559900582, -0.763834238, 0.321043193, -0.828559458, -0.516575158, 0.21596168, 0.000884024426, -0.386920452, -0.922112703),0.3)
		LT1.C0 = clerp(LT1.C0,CFrame.new(-2.38322973, -0.197773054, -0.480284244, 0.0044150874, -0.922103882, 0.386917174, -0.999989986, -0.00441437121, 0.000890459865, 0.000886899419, -0.386917293, -0.922114015),0.3)
		LT2.C0 = clerp(LT2.C0,CFrame.new(-2.55306935, -0.864338696, -0.480546713, 0.269532502, -0.887895465, 0.372818857, -0.96299094, -0.24887079, 0.103498176, 0.000888162293, -0.386917353, -0.922114015),0.3)
		LR2.C0 = clerp(LR2.C0,CFrame.new(-2.57037282, -0.933312833, -0.121727049, 0.265276462, -0.964172423, 6.33299351e-06, -0.964172423, -0.265276462, 3.02866101e-06, -1.24704093e-06, -6.91413879e-06, -1.00000012),0.3)
		LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32390285, -0.272462189, -0.121371761, 1.28755346e-07, -1, 9.83476639e-07, -1.00000012, -1.28755346e-07, 4.12110239e-06, -4.12203372e-06, -9.53674316e-07, -1.00000012),0.3)
		LS1.C0 = clerp(LS1.C0,CFrame.new(-2.33201838, -0.235411346, -0.383384138, 1.28755346e-07, -1, 9.83476639e-07, -1.00000012, -1.28755346e-07, 4.12110239e-06, -4.12203372e-06, -9.53674316e-07, -1.00000012),0.3)
		LM3.C0 = clerp(LM3.C0,CFrame.new(-2.50496888, -1.76070094, 0.0822837129, 0.556237459, -0.831023574, 4.00841236e-06, -0.831023574, -0.556237459, 1.33663416e-05, -8.86525959e-06, -1.07884407e-05, -1),0.3)
		LS3.C0 = clerp(LS3.C0,CFrame.new(-2.34634662, -1.67428362, -0.388776213, 0.556237459, -0.831023574, 4.00841236e-06, -0.831023574, -0.556237459, 1.33663416e-05, -8.86525959e-06, -1.07884407e-05, -1),0.3)
		LP2.C0 = clerp(LP2.C0,CFrame.new(-2.57173181, -0.928385198, 0.326259613, 0.265276462, -0.964172423, 6.33299351e-06, -0.964172423, -0.265276462, 3.02866101e-06, -1.24704093e-06, -6.91413879e-06, -1.00000012),0.3)
		LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32389855, -0.267353296, 0.326584399, 1.28755346e-07, -1, 9.83476639e-07, -1.00000012, -1.28755346e-07, 4.12110239e-06, -4.12203372e-06, -9.53674316e-07, -1.00000012),0.3)
		LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32390594, -0.27005741, 0.089539066, 1.28755346e-07, -1, 9.83476639e-07, -1.00000012, -1.28755346e-07, 4.12110239e-06, -4.12203372e-06, -9.53674316e-07, -1.00000012),0.3)
		LS2.C0 = clerp(LS2.C0,CFrame.new(-2.48550367, -0.885939538, -0.383639723, 0.265276462, -0.964172423, 6.33299351e-06, -0.964172423, -0.265276462, 3.02866101e-06, -1.24704093e-06, -6.91413879e-06, -1.00000012),0.3)
		LM2.C0 = clerp(LM2.C0,CFrame.new(-2.57101417, -0.930994511, 0.089172326, 0.265276462, -0.964172423, 6.33299351e-06, -0.964172423, -0.265276462, 3.02866101e-06, -1.24704093e-06, -6.91413879e-06, -1.00000012),0.3)
		LP3.C0 = clerp(LP3.C0,CFrame.new(-2.50647783, -1.75845778, 0.31936717, 0.556237459, -0.831023574, 4.00841236e-06, -0.831023574, -0.556237459, 1.33663416e-05, -8.86525959e-06, -1.07884407e-05, -1),0.3)
	end
	local torso,dist = FindNearestTorso(torso.CFrame.p)
	local h = (torso and torso.Parent and torso.Parent:FindFirstChildOfClass'Humanoid' or nil)
	if(torso and dist <= 5 and h)then
		for _,v in next, torso.Parent:children() do
			if(v:IsA'BasePart')then
				v.CanCollide = false
				v.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
			end
		end
		-- grab sound
		FX(169380525,1,1,torso)
		h.PlatformStand = true
		for i = 0, 6, .1 do
			swait()
			torso.CFrame = rarm.CFrame * CF.N(0,-2.5,0)*CF.A(M.R(-90),0,0)
			h.PlatformStand = true
			root.Anchored = true
			RT3.C0 = clerp(RT3.C0,CFrame.new(1.61375785, -1.76555657, -0.513190091, -0.55665189, 0.810403109, 0.182717308, -0.771965683, -0.585860789, 0.24665007, 0.306932837, -0.00375326723, 0.951723814),Alpha)
			RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36366892, -0.0526333712, 0.463351786, 0.00432222337, -0.925635338, 0.378392518, 0.999990284, 0.00432161195, -0.000850837678, -0.000847693533, 0.378392458, 0.925644875),Alpha)
			RT2.C0 = clerp(RT2.C0,CFrame.new(1.2538718, -2.21410918, -0.524856687, -0.771987855, 0.583863854, 0.251272887, -0.556619704, -0.811843097, 0.176310748, 0.306935579, -0.00375370681, 0.95172298),Alpha)
			RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32391119, -0.0978909656, 0.155143276, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RR2.C0 = clerp(RR2.C0,CFrame.new(1.25468278, -2.23918462, 0.480947077, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RR3.C0 = clerp(RR3.C0,CFrame.new(1.53806043, -1.79355478, 0.474106222, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RS3.C0 = clerp(RS3.C0,CFrame.new(1.49055731, -1.77398741, 0.730609715, -0.660822511, 0.739318788, -0.129311174, -0.748390913, -0.662110388, 0.0389984399, -0.0567859784, 0.12254636, 0.990836978),Alpha)
			RS2.C0 = clerp(RS2.C0,CFrame.new(1.12350154, -2.19243288, 0.735727072, -0.863375664, 0.492343336, -0.110365942, -0.501357257, -0.861730874, 0.0778523907, -0.0567756221, 0.122548625, 0.990837216),Alpha)
			RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33202672, -0.0549109876, 0.413173437, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RM2.C0 = clerp(RM2.C0,CFrame.new(1.255373, -2.24170375, 0.251963019, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RM3.C0 = clerp(RM3.C0,CFrame.new(1.5395211, -1.79571998, 0.245096236, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RM1.C0 = clerp(RM1.C0,CFrame.new(-2.323915, -0.100503564, -0.0738568455, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP2.C0 = clerp(RP2.C0,CFrame.new(1.25615263, -2.2444911, -0.000960677862, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32391214, -0.103389643, -0.32676369, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP3.C0 = clerp(RP3.C0,CFrame.new(1.54112804, -1.79812348, -0.0077983737, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			LR3.C0 = clerp(LR3.C0,CFrame.new(1.45705879, -1.89598083, -0.385099679, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LT3.C0 = clerp(LT3.C0,CFrame.new(1.40952325, -1.97281897, 0.526059091, 0.671315253, 0.714624286, 0.196591273, 0.679187477, -0.699324131, 0.222823307, 0.296715915, -0.0160623491, -0.954830825),Alpha)
			LT1.C0 = clerp(LT1.C0,CFrame.new(-2.3832376, -0.197773144, -0.480284959, 0.00441737333, -0.922104299, 0.38691628, -0.999989927, -0.00441598753, 0.000892503187, 0.000885637477, -0.38691628, -0.922114491),Alpha)
			LT2.C0 = clerp(LT2.C0,CFrame.new(0.99463892, -2.34625196, 0.514375746, 0.851474643, 0.457154393, 0.256906241, 0.432377875, -0.889242351, 0.14932391, 0.296715945, -0.0160649493, -0.954830766),Alpha)
			LR2.C0 = clerp(LR2.C0,CFrame.new(1.14547455, -2.31078553, -0.378219754, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32390952, -0.272462696, -0.121384747, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS1.C0 = clerp(LS1.C0,CFrame.new(-2.33202744, -0.23541376, -0.383374184, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM3.C0 = clerp(LM3.C0,CFrame.new(1.45572555, -1.89398086, -0.174214169, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LS3.C0 = clerp(LS3.C0,CFrame.new(1.49722528, -1.81738269, -0.636980891, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LP2.C0 = clerp(LP2.C0,CFrame.new(1.14411652, -2.30584955, 0.0697559863, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32390475, -0.267352402, 0.326590419, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32390952, -0.270056516, 0.0895184278, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS2.C0 = clerp(LS2.C0,CFrame.new(1.11611402, -2.23573709, -0.631830394, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LM2.C0 = clerp(LM2.C0,CFrame.new(1.14484239, -2.30846381, -0.167330459, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP3.C0 = clerp(LP3.C0,CFrame.new(1.45421648, -1.89172983, 0.0628871024, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
		end
		Tween(hd,{Scale=V3.N(2,2,2)},1,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out)
		for i = 0, 6, 0.1 do
			swait()
			torso.CFrame = rarm.CFrame * CF.N(0,-2.5,0)*CF.A(M.R(-90),0,0)
			h.PlatformStand = true
			root.Anchored = true
			RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0101976926, -2.47471642, -0.893443644, 0.999990284, -0.00300977356, -0.000401013531, 0.00300900009, 0.964597106, 0.263710856, -0.00040689297, -0.263709486, 0.964596748),0.3)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.498538464, -3.07820082, 1.32450998, 0.99999541, 0.00170646049, 0.00251151482, -0.00300980965, 0.66629684, 0.74568063, -0.000400940888, -0.745684743, 0.666298866),0.3)
			RH.C0 = clerp(RH.C0,CFrame.new(0.500001013, -1.22442114, -0.705207109, 1.00000012, 0, 0, 2.32830644e-10, 0.976968884, -0.213381797, 0, 0.213381797, 0.976968884),0.3)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.49999487, 0.499998093, 7.64429569e-06, 1.00000012, 2.32830644e-10, 0, 2.32830644e-10, 1, 2.98023224e-08, 0, 2.98023224e-08, 1),0.3)
			RS.C0 = clerp(RS.C0,CFrame.new(1.02310264, 1.39472663, 0.0915519893, 0.99869597, 0.0413880646, -0.0298938304, -0.0262705293, -0.0854785889, -0.995993614, -0.0437775292, 0.995480001, -0.0842798054),0.3)
			NK.C0 = clerp(NK.C0,CFrame.new(4.29084639e-06, 2.72478557, -0.152842045, 1.00000012, -4.65661287e-10, 9.31322575e-10, 2.32830644e-10, 0.962414801, 0.271584034, 0, -0.271584034, 0.962414801),0.3)
			RT3.C0 = clerp(RT3.C0,CFrame.new(1.61375785, -1.76555657, -0.513190091, -0.55665189, 0.810403109, 0.182717308, -0.771965683, -0.585860789, 0.24665007, 0.306932837, -0.00375326723, 0.951723814),Alpha)
			RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36366892, -0.0526333712, 0.463351786, 0.00432222337, -0.925635338, 0.378392518, 0.999990284, 0.00432161195, -0.000850837678, -0.000847693533, 0.378392458, 0.925644875),Alpha)
			RT2.C0 = clerp(RT2.C0,CFrame.new(1.2538718, -2.21410918, -0.524856687, -0.771987855, 0.583863854, 0.251272887, -0.556619704, -0.811843097, 0.176310748, 0.306935579, -0.00375370681, 0.95172298),Alpha)
			RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32391119, -0.0978909656, 0.155143276, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RR2.C0 = clerp(RR2.C0,CFrame.new(1.25468278, -2.23918462, 0.480947077, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RR3.C0 = clerp(RR3.C0,CFrame.new(1.53806043, -1.79355478, 0.474106222, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RS3.C0 = clerp(RS3.C0,CFrame.new(1.49055731, -1.77398741, 0.730609715, -0.660822511, 0.739318788, -0.129311174, -0.748390913, -0.662110388, 0.0389984399, -0.0567859784, 0.12254636, 0.990836978),Alpha)
			RS2.C0 = clerp(RS2.C0,CFrame.new(1.12350154, -2.19243288, 0.735727072, -0.863375664, 0.492343336, -0.110365942, -0.501357257, -0.861730874, 0.0778523907, -0.0567756221, 0.122548625, 0.990837216),Alpha)
			RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33202672, -0.0549109876, 0.413173437, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RM2.C0 = clerp(RM2.C0,CFrame.new(1.255373, -2.24170375, 0.251963019, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RM3.C0 = clerp(RM3.C0,CFrame.new(1.5395211, -1.79571998, 0.245096236, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RM1.C0 = clerp(RM1.C0,CFrame.new(-2.323915, -0.100503564, -0.0738568455, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP2.C0 = clerp(RP2.C0,CFrame.new(1.25615263, -2.2444911, -0.000960677862, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32391214, -0.103389643, -0.32676369, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP3.C0 = clerp(RP3.C0,CFrame.new(1.54112804, -1.79812348, -0.0077983737, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			LR3.C0 = clerp(LR3.C0,CFrame.new(1.45705879, -1.89598083, -0.385099679, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LT3.C0 = clerp(LT3.C0,CFrame.new(1.40952325, -1.97281897, 0.526059091, 0.671315253, 0.714624286, 0.196591273, 0.679187477, -0.699324131, 0.222823307, 0.296715915, -0.0160623491, -0.954830825),Alpha)
			LT1.C0 = clerp(LT1.C0,CFrame.new(-2.3832376, -0.197773144, -0.480284959, 0.00441737333, -0.922104299, 0.38691628, -0.999989927, -0.00441598753, 0.000892503187, 0.000885637477, -0.38691628, -0.922114491),Alpha)
			LT2.C0 = clerp(LT2.C0,CFrame.new(0.99463892, -2.34625196, 0.514375746, 0.851474643, 0.457154393, 0.256906241, 0.432377875, -0.889242351, 0.14932391, 0.296715945, -0.0160649493, -0.954830766),Alpha)
			LR2.C0 = clerp(LR2.C0,CFrame.new(1.14547455, -2.31078553, -0.378219754, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32390952, -0.272462696, -0.121384747, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS1.C0 = clerp(LS1.C0,CFrame.new(-2.33202744, -0.23541376, -0.383374184, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM3.C0 = clerp(LM3.C0,CFrame.new(1.45572555, -1.89398086, -0.174214169, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LS3.C0 = clerp(LS3.C0,CFrame.new(1.49722528, -1.81738269, -0.636980891, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LP2.C0 = clerp(LP2.C0,CFrame.new(1.14411652, -2.30584955, 0.0697559863, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32390475, -0.267352402, 0.326590419, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32390952, -0.270056516, 0.0895184278, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS2.C0 = clerp(LS2.C0,CFrame.new(1.11611402, -2.23573709, -0.631830394, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LM2.C0 = clerp(LM2.C0,CFrame.new(1.14484239, -2.30846381, -0.167330459, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP3.C0 = clerp(LP3.C0,CFrame.new(1.45421648, -1.89172983, 0.0628871024, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
		end
		for i = 0, 3, 0.1 do
			swait()
			torso.CFrame = rarm.CFrame * CF.N(0,-2.5,0)*CF.A(M.R(-65),0,0)
			h.PlatformStand = true
			root.Anchored = true
			RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0101976926, -2.47471642, -0.893443644, 0.999990284, -0.00300977356, -0.000401013531, 0.00300900009, 0.964597106, 0.263710856, -0.00040689297, -0.263709486, 0.964596748),0.3)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.498538464, -3.07820082, 1.32450998, 0.99999541, 0.00170646049, 0.00251151482, -0.00300980965, 0.66629684, 0.74568063, -0.000400940888, -0.745684743, 0.666298866),0.3)
			RH.C0 = clerp(RH.C0,CFrame.new(0.500001013, -1.22442114, -0.705207109, 1.00000012, 0, 0, 2.32830644e-10, 0.976968884, -0.213381797, 0, 0.213381797, 0.976968884),0.3)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.49999487, 0.499998093, 7.64429569e-06, 1.00000012, 2.32830644e-10, 0, 2.32830644e-10, 1, 2.98023224e-08, 0, 2.98023224e-08, 1),0.3)
			RS.C0 = clerp(RS.C0,CFrame.new(1.60629869, -0.170540944, -0.141343355, 0.893960059, 0.446698248, 0.0360007249, 0.387383848, -0.729863763, -0.563234091, -0.225320011, 0.517454803, -0.825512767),0.3)
			NK.C0 = clerp(NK.C0,CFrame.new(4.29084639e-06, 2.72478557, -0.152842045, 1.00000012, -4.65661287e-10, 9.31322575e-10, 2.32830644e-10, 0.962414801, 0.271584034, 0, -0.271584034, 0.962414801),0.3)
			RT3.C0 = clerp(RT3.C0,CFrame.new(1.61375785, -1.76555657, -0.513190091, -0.55665189, 0.810403109, 0.182717308, -0.771965683, -0.585860789, 0.24665007, 0.306932837, -0.00375326723, 0.951723814),Alpha)
			RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36366892, -0.0526333712, 0.463351786, 0.00432222337, -0.925635338, 0.378392518, 0.999990284, 0.00432161195, -0.000850837678, -0.000847693533, 0.378392458, 0.925644875),Alpha)
			RT2.C0 = clerp(RT2.C0,CFrame.new(1.2538718, -2.21410918, -0.524856687, -0.771987855, 0.583863854, 0.251272887, -0.556619704, -0.811843097, 0.176310748, 0.306935579, -0.00375370681, 0.95172298),Alpha)
			RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32391119, -0.0978909656, 0.155143276, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RR2.C0 = clerp(RR2.C0,CFrame.new(1.25468278, -2.23918462, 0.480947077, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RR3.C0 = clerp(RR3.C0,CFrame.new(1.53806043, -1.79355478, 0.474106222, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RS3.C0 = clerp(RS3.C0,CFrame.new(1.49055731, -1.77398741, 0.730609715, -0.660822511, 0.739318788, -0.129311174, -0.748390913, -0.662110388, 0.0389984399, -0.0567859784, 0.12254636, 0.990836978),Alpha)
			RS2.C0 = clerp(RS2.C0,CFrame.new(1.12350154, -2.19243288, 0.735727072, -0.863375664, 0.492343336, -0.110365942, -0.501357257, -0.861730874, 0.0778523907, -0.0567756221, 0.122548625, 0.990837216),Alpha)
			RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33202672, -0.0549109876, 0.413173437, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RM2.C0 = clerp(RM2.C0,CFrame.new(1.255373, -2.24170375, 0.251963019, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RM3.C0 = clerp(RM3.C0,CFrame.new(1.5395211, -1.79571998, 0.245096236, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RM1.C0 = clerp(RM1.C0,CFrame.new(-2.323915, -0.100503564, -0.0738568455, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP2.C0 = clerp(RP2.C0,CFrame.new(1.25615263, -2.2444911, -0.000960677862, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32391214, -0.103389643, -0.32676369, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP3.C0 = clerp(RP3.C0,CFrame.new(1.54112804, -1.79812348, -0.0077983737, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			LR3.C0 = clerp(LR3.C0,CFrame.new(1.45705879, -1.89598083, -0.385099679, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LT3.C0 = clerp(LT3.C0,CFrame.new(1.40952325, -1.97281897, 0.526059091, 0.671315253, 0.714624286, 0.196591273, 0.679187477, -0.699324131, 0.222823307, 0.296715915, -0.0160623491, -0.954830825),Alpha)
			LT1.C0 = clerp(LT1.C0,CFrame.new(-2.3832376, -0.197773144, -0.480284959, 0.00441737333, -0.922104299, 0.38691628, -0.999989927, -0.00441598753, 0.000892503187, 0.000885637477, -0.38691628, -0.922114491),Alpha)
			LT2.C0 = clerp(LT2.C0,CFrame.new(0.99463892, -2.34625196, 0.514375746, 0.851474643, 0.457154393, 0.256906241, 0.432377875, -0.889242351, 0.14932391, 0.296715945, -0.0160649493, -0.954830766),Alpha)
			LR2.C0 = clerp(LR2.C0,CFrame.new(1.14547455, -2.31078553, -0.378219754, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32390952, -0.272462696, -0.121384747, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS1.C0 = clerp(LS1.C0,CFrame.new(-2.33202744, -0.23541376, -0.383374184, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM3.C0 = clerp(LM3.C0,CFrame.new(1.45572555, -1.89398086, -0.174214169, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LS3.C0 = clerp(LS3.C0,CFrame.new(1.49722528, -1.81738269, -0.636980891, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LP2.C0 = clerp(LP2.C0,CFrame.new(1.14411652, -2.30584955, 0.0697559863, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32390475, -0.267352402, 0.326590419, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32390952, -0.270056516, 0.0895184278, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS2.C0 = clerp(LS2.C0,CFrame.new(1.11611402, -2.23573709, -0.631830394, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LM2.C0 = clerp(LM2.C0,CFrame.new(1.14484239, -2.30846381, -0.167330459, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP3.C0 = clerp(LP3.C0,CFrame.new(1.45421648, -1.89172983, 0.0628871024, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
		end
		-- thanks shuggy
		local bloodie = Instance.new("Part",char)
		bloodie.Transparency = 1
		bloodie.Size = V3.N(1,1,1)
		local bloodieW = Instance.new("Weld",bloodie)
		bloodieW.Part0 = head
		bloodieW.Part1 = bloodie
		bloodieW.C0 = CF.N(0,-.5,-1)
		local p1mit = Instance.new("ParticleEmitter",bloodie)
		p1mit.Texture = "rbxasset://textures/particles/fire_main.dds"
		p1mit.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(.6,0,0)),ColorSequenceKeypoint.new(1,Color3.new(.6,0,0))})
		p1mit.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)})
		p1mit.Lifetime = NumberRange.new(6)
		p1mit.Rate = 100
		p1mit.Enabled = true
		p1mit.Acceleration = Vector3.new(0,-10,0)
		p1mit.Rotation = NumberRange.new(0,359)
		p1mit.Speed = NumberRange.new(0)
		delay(5, function()
			p1mit.Enabled = false
		end)
		game:service'Debris':AddItem(p1mit,10)
		FX(429400881,1,1,head)
		if(torso and torso.Parent and torso.Parent:FindFirstChild'Head')then
			torso.Parent.Head:destroy()
		end
	end
	swait(30)
	Tween(hd,{Scale=V3.N(1,1,1)},1,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out)
	swait(60)
	hd:Destroy()
	root.Anchored = false
	WalkSpeed = 20
	neutralAnims = true
	Attack = false
end
function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(Region3.new(point-Vector3.new(1,1,1)*range/2,point+Vector3.new(1,1,1)*range/2),ignore,100)
end

function Tween(obj,props,time,easing,direction,repeats,backwards)
	local info = TweenInfo.new(time or .5, easing or Enum.EasingStyle.Quad, direction or Enum.EasingDirection.Out, repeats or 0, backwards or false)
	local tween = S.TweenService:Create(obj, info, props)
	
	tween:Play()
end

function Stomp()
	Attack = true
	neutralAnims = false
	WalkSpeed = 0
	for i = 0, 1, 0.1 do
		swait()
		RJ.C0 = clerp(RJ.C0,CFrame.new(0.0149606867, -0.414370447, 1.31077337, 0.999976575, 0.00583649054, -0.00160982274, -0.00583899952, 0.859376848, -0.511309505, -0.00160080846, 0.511306942, 0.859390676),0.3)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.494830847, -3.32493114, 0.452066779, 0.999976575, -0.00583899952, -0.00160080846, 0.00583649054, 0.859376848, 0.511306942, -0.00160982274, -0.511309505, 0.859390676),0.3)
		RH.C0 = clerp(RH.C0,CFrame.new(0.499999106, -1.56153071, -0.998121262, 1.00000012, -8.76025297e-08, -9.95583832e-07, 5.10830432e-07, 0.900910258, 0.434005529, 8.58679414e-07, -0.434005469, 0.900910199),0.3)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.8556273, 2.15271449, 0.597766876, 0.928429008, 0.371509999, 1.45630911e-05, 0.313250482, -0.782855511, 0.537597895, 0.19973436, -0.499116778, -0.843201399),0.3)
		RS.C0 = clerp(RS.C0,CFrame.new(1.94845712, 2.27057123, 0.356615961, 0.893861949, -0.448342502, -6.85127452e-06, -0.394066334, -0.785658598, 0.476919919, -0.213828832, -0.426297784, -0.878946781),0.3)
		NK.C0 = clerp(NK.C0,CFrame.new(-9.5367443e-07, 2.74997544, 7.62939408e-06, 1.00000012, 0, 0, 0, 1.00000012, 0, 0, 0, 0.99999994),0.3)
		RT3.C0 = clerp(RT3.C0,CFrame.new(-2.48913026, -1.5558573, 0.474763274, -0.552640617, -0.771631122, 0.314919144, 0.833419323, -0.51128757, 0.209755421, -0.000839561224, 0.378379047, 0.925650477),0.3)
		RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36367607, -0.0526439659, 0.463351578, 0.00431717932, -0.925637841, 0.378385901, 0.999990463, 0.00431641936, -0.00085029006, -0.000846236944, 0.378386021, 0.925647676),0.3)
		RT2.C0 = clerp(RT2.C0,CFrame.new(-2.57271957, -0.719195843, 0.463060319, -0.261100143, -0.893624783, 0.365050167, 0.965311408, -0.241380781, 0.0995453894, -0.000840097666, 0.378378451, 0.925650716),0.3)
		RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32391405, -0.0978988633, 0.155138284, 7.15255737e-07, -1, -3.06963921e-06, 1, 7.15255737e-07, -8.7916851e-07, 8.49366188e-07, -3.12924385e-06, 1),0.3)
		RR2.C0 = clerp(RR2.C0,CFrame.new(-2.61670589, -0.764987886, 0.154807672, -0.265270501, -0.964174151, -4.08291817e-06, 0.964174092, -0.265270472, -8.85874033e-06, 7.4505806e-06, -6.31809235e-06, 1),0.3)
		RR3.C0 = clerp(RR3.C0,CFrame.new(-2.60071802, -1.61763024, 0.147904918, -0.556236863, -0.831023872, -1.04308128e-06, 0.831023991, -0.556236804, -1.44280493e-05, 1.13844872e-05, -8.94069672e-06, 1.00000012),0.3)
		RS3.C0 = clerp(RS3.C0,CFrame.new(-2.44675589, -1.52430558, 0.40774554, -0.556236863, -0.831023872, -1.04308128e-06, 0.831023991, -0.556236804, -1.44280493e-05, 1.13844872e-05, -8.94069672e-06, 1.00000012),0.3)
		RS2.C0 = clerp(RS2.C0,CFrame.new(-2.53338361, -0.711885929, 0.412868947, -0.265270501, -0.964174151, -4.08291817e-06, 0.964174092, -0.265270472, -8.85874033e-06, 7.4505806e-06, -6.31809235e-06, 1),0.3)
		RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33204389, -0.0549074486, 0.413162529, 7.15255737e-07, -1, -3.06963921e-06, 1, 7.15255737e-07, -8.7916851e-07, 8.49366188e-07, -3.12924385e-06, 1),0.3)
		RM2.C0 = clerp(RM2.C0,CFrame.new(-2.61601782, -0.767512858, -0.074173376, -0.265270501, -0.964174151, -4.08291817e-06, 0.964174092, -0.265270472, -8.85874033e-06, 7.4505806e-06, -6.31809235e-06, 1),0.3)
		RM3.C0 = clerp(RM3.C0,CFrame.new(-2.59928656, -1.61981332, -0.0810437351, -0.556236863, -0.831023872, -1.04308128e-06, 0.831023991, -0.556236804, -1.44280493e-05, 1.13844872e-05, -8.94069672e-06, 1.00000012),0.3)
		RM1.C0 = clerp(RM1.C0,CFrame.new(-2.32391715, -0.100507915, -0.0738599002, 7.15255737e-07, -1, -3.06963921e-06, 1, 7.15255737e-07, -8.7916851e-07, 8.49366188e-07, -3.12924385e-06, 1),0.3)
		RP2.C0 = clerp(RP2.C0,CFrame.new(-2.61523223, -0.770289779, -0.327118337, -0.265270501, -0.964174151, -4.08291817e-06, 0.964174092, -0.265270472, -8.85874033e-06, 7.4505806e-06, -6.31809235e-06, 1),0.3)
		RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32391644, -0.103391603, -0.326751441, 7.15255737e-07, -1, -3.06963921e-06, 1, 7.15255737e-07, -8.7916851e-07, 8.49366188e-07, -3.12924385e-06, 1),0.3)
		RP3.C0 = clerp(RP3.C0,CFrame.new(-2.59768414, -1.62221014, -0.333992541, -0.556236863, -0.831023872, -1.04308128e-06, 0.831023991, -0.556236804, -1.44280493e-05, 1.13844872e-05, -8.94069672e-06, 1.00000012),0.3)
		LR3.C0 = clerp(LR3.C0,CFrame.new(-2.50364661, -1.76271212, -0.128631443, 0.556247711, -0.831016541, 2.47359276e-06, -0.83101666, -0.556247711, 9.41753387e-06, -6.46710396e-06, -7.27176666e-06, -1.00000012),0.3)
		LT3.C0 = clerp(LT3.C0,CFrame.new(-2.42465901, -1.68734121, -0.468866467, 0.559909225, -0.763830543, 0.321036994, -0.828553557, -0.516581178, 0.215969831, 0.000877350569, -0.386919856, -0.922112942),0.3)
		LT1.C0 = clerp(LT1.C0,CFrame.new(-2.38323689, -0.197773248, -0.480273008, 0.00442521274, -0.922103941, 0.386916906, -0.999989986, -0.00442284346, 0.000896409154, 0.00088468194, -0.386916965, -0.922114134),0.3)
		LT2.C0 = clerp(LT2.C0,CFrame.new(-2.55306888, -0.864331484, -0.480577469, 0.26954022, -0.887892246, 0.372820735, -0.962988675, -0.248876914, 0.103503615, 0.000886380672, -0.386920631, -0.922112584),0.3)
		LR2.C0 = clerp(LR2.C0,CFrame.new(-2.57039857, -0.933297694, -0.121736571, 0.265281469, -0.964171052, 5.78165054e-06, -0.964171052, -0.265281498, 9.72300768e-06, -7.85291195e-06, -8.13603401e-06, -1),0.3)
		LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32390261, -0.272461981, -0.121395558, 1.0818243e-05, -1.00000012, 5.00679016e-06, -1, -1.08480453e-05, -1.3038516e-05, 1.3038516e-05, -5.00679016e-06, -0.99999994),0.3)
		LS1.C0 = clerp(LS1.C0,CFrame.new(-2.33204222, -0.235423818, -0.383398056, 1.0818243e-05, -1.00000012, 5.00679016e-06, -1, -1.08480453e-05, -1.3038516e-05, 1.3038516e-05, -5.00679016e-06, -0.99999994),0.3)
		LM3.C0 = clerp(LM3.C0,CFrame.new(-2.50498033, -1.76070869, 0.082287021, 0.556247711, -0.831016541, 2.47359276e-06, -0.83101666, -0.556247711, 9.41753387e-06, -6.46710396e-06, -7.27176666e-06, -1.00000012),0.3)
		LS3.C0 = clerp(LS3.C0,CFrame.new(-2.34634924, -1.67430735, -0.388748765, 0.556247711, -0.831016541, 2.47359276e-06, -0.83101666, -0.556247711, 9.41753387e-06, -6.46710396e-06, -7.27176666e-06, -1.00000012),0.3)
		LP2.C0 = clerp(LP2.C0,CFrame.new(-2.57174945, -0.928372383, 0.32624054, 0.265281469, -0.964171052, 5.78165054e-06, -0.964171052, -0.265281498, 9.72300768e-06, -7.85291195e-06, -8.13603401e-06, -1),0.3)
		LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32390499, -0.267353982, 0.326602399, 1.0818243e-05, -1.00000012, 5.00679016e-06, -1, -1.08480453e-05, -1.3038516e-05, 1.3038516e-05, -5.00679016e-06, -0.99999994),0.3)
		LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32391906, -0.270055026, 0.0895333141, 1.0818243e-05, -1.00000012, 5.00679016e-06, -1, -1.08480453e-05, -1.3038516e-05, 1.3038516e-05, -5.00679016e-06, -0.99999994),0.3)
		LS2.C0 = clerp(LS2.C0,CFrame.new(-2.48551512, -0.885928094, -0.383646071, 0.265281469, -0.964171052, 5.78165054e-06, -0.964171052, -0.265281498, 9.72300768e-06, -7.85291195e-06, -8.13603401e-06, -1),0.3)
		LM2.C0 = clerp(LM2.C0,CFrame.new(-2.57103992, -0.930986404, 0.0891713798, 0.265281469, -0.964171052, 5.78165054e-06, -0.964171052, -0.265281498, 9.72300768e-06, -7.85291195e-06, -8.13603401e-06, -1),0.3)
		LP3.C0 = clerp(LP3.C0,CFrame.new(-2.50646663, -1.75845659, 0.31939435, 0.556247711, -0.831016541, 2.47359276e-06, -0.83101666, -0.556247711, 9.41753387e-06, -6.46710396e-06, -7.27176666e-06, -1.00000012),0.3)
	end
	swait(30)
	local RL = Instance.new("SpecialMesh",rleg)
	RL.MeshId,RL.Scale = "rbxasset://fonts/rightleg.mesh",V3.N(1,PlayerSize,1)
	Tween(RL,{Scale=V3.N(2,PlayerSize,1)},.6,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out)
	swait(36)
	Tween(RL,{Scale=V3.N(2,PlayerSize,2)},.6,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out)
	swait(36)
	for i = 0, .9, 0.1 do
		swait()
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0108745974, -1.25186658, -0.952733994, 0.999976397, -0.00586278876, -0.00162208173, 0.00586399902, 0.85814631, 0.513371766, -0.00161780789, -0.513369143, 0.858160377),0.3)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.503836155, -2.41545725, -0.335738778, 0.999976397, 0.00586399902, -0.00161780789, -0.00586278876, 0.85814631, -0.513369143, -0.00162208173, 0.513371766, 0.858160377),0.3)
		RH.C0 = clerp(RH.C0,CFrame.new(1.43907547, -2.20140982, -1.52517509, 0.999931633, 0.0116824051, 0.00069081597, -0.0100521259, 0.887619972, -0.460467011, -0.00599254388, 0.460428506, 0.887676656),0.3)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.14841616, 0.652297139, -1.08734488, 0.972524107, -0.226930693, -0.0519557931, 0.120456055, 0.681488216, -0.721847832, 0.199216664, 0.695755959, 0.690098882),0.3)
		RS.C0 = clerp(RS.C0,CFrame.new(0.878460109, 0.664811909, -1.09500289, 0.940693557, 0.327670962, -0.0879075155, -0.289187342, 0.638985872, -0.712788701, -0.177388534, 0.695937455, 0.695847988),0.3)
		NK.C0 = clerp(NK.C0,CFrame.new(1.00135803e-05, 2.74997139, 1.90734863e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1),0.3)
		RT3.C0 = clerp(RT3.C0,CFrame.new(-2.48911357, -1.55585802, 0.474724293, -0.552640557, -0.77163136, 0.314918667, 0.833419502, -0.511288702, 0.209752262, -0.000837064814, 0.378376961, 0.925651312),0.3)
		RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36363268, -0.052654691, 0.463338047, 0.0043214038, -0.925638735, 0.378383785, 0.999990404, 0.00432076212, -0.000850709621, -0.000847461633, 0.378383875, 0.925648451),0.3)
		RT2.C0 = clerp(RT2.C0,CFrame.new(-2.57269716, -0.71919471, 0.46302259, -0.261101305, -0.893626034, 0.365046114, 0.96531117, -0.241381153, 0.0995475352, -0.000843007583, 0.378375083, 0.925651968),0.3)
		RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32388234, -0.0979054198, 0.155136421, 2.57161446e-06, -1, -2.98023224e-08, 1.00000012, 2.55089253e-06, 3.23494896e-06, -3.25404108e-06, 0, 1),0.3)
		RR2.C0 = clerp(RR2.C0,CFrame.new(-2.61665893, -0.764993608, 0.154808521, -0.265272409, -0.964173555, -7.09295273e-06, 0.964173615, -0.265272349, -5.17070293e-06, 3.08873132e-06, -8.16583633e-06, 0.99999994),0.3)
		RR3.C0 = clerp(RR3.C0,CFrame.new(-2.60069489, -1.61760163, 0.14783819, -0.55623138, -0.831027687, -6.09457493e-06, 0.831027627, -0.55623126, -2.35140324e-05, 1.61430798e-05, -1.8119812e-05, 1),0.3)
		RS3.C0 = clerp(RS3.C0,CFrame.new(-2.44674897, -1.52429092, 0.407717556, -0.55623138, -0.831027687, -6.09457493e-06, 0.831027627, -0.55623126, -2.35140324e-05, 1.61430798e-05, -1.8119812e-05, 1),0.3)
		RS2.C0 = clerp(RS2.C0,CFrame.new(-2.53335404, -0.711890757, 0.412843108, -0.265272409, -0.964173555, -7.09295273e-06, 0.964173615, -0.265272349, -5.17070293e-06, 3.08873132e-06, -8.16583633e-06, 0.99999994),0.3)
		RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33201814, -0.0549086258, 0.41316241, 2.57161446e-06, -1, -2.98023224e-08, 1.00000012, 2.55089253e-06, 3.23494896e-06, -3.25404108e-06, 0, 1),0.3)
		RM2.C0 = clerp(RM2.C0,CFrame.new(-2.61599565, -0.767519593, -0.0742144436, -0.265272409, -0.964173555, -7.09295273e-06, 0.964173615, -0.265272349, -5.17070293e-06, 3.08873132e-06, -8.16583633e-06, 0.99999994),0.3)
		RM3.C0 = clerp(RM3.C0,CFrame.new(-2.59925842, -1.61979342, -0.0811047256, -0.55623138, -0.831027687, -6.09457493e-06, 0.831027627, -0.55623126, -2.35140324e-05, 1.61430798e-05, -1.8119812e-05, 1),0.3)
		RM1.C0 = clerp(RM1.C0,CFrame.new(-2.32389092, -0.100519225, -0.0738827288, 2.57161446e-06, -1, -2.98023224e-08, 1.00000012, 2.55089253e-06, 3.23494896e-06, -3.25404108e-06, 0, 1),0.3)
		RP2.C0 = clerp(RP2.C0,CFrame.new(-2.61518931, -0.770304918, -0.327144116, -0.265272409, -0.964173555, -7.09295273e-06, 0.964173615, -0.265272349, -5.17070293e-06, 3.08873132e-06, -8.16583633e-06, 0.99999994),0.3)
		RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32388139, -0.103401095, -0.326785713, 2.57161446e-06, -1, -2.98023224e-08, 1.00000012, 2.55089253e-06, 3.23494896e-06, -3.25404108e-06, 0, 1),0.3)
		RP3.C0 = clerp(RP3.C0,CFrame.new(-2.59765077, -1.62217653, -0.334061176, -0.55623138, -0.831027687, -6.09457493e-06, 0.831027627, -0.55623126, -2.35140324e-05, 1.61430798e-05, -1.8119812e-05, 1),0.3)
		LR3.C0 = clerp(LR3.C0,CFrame.new(-2.50362754, -1.76269495, -0.128636867, 0.556252837, -0.831013322, 6.51180744e-06, -0.831013143, -0.556252837, -4.09781933e-06, 7.01844692e-06, -3.12924385e-06, -1.00000012),0.3)
		LT3.C0 = clerp(LT3.C0,CFrame.new(-2.42464495, -1.68732333, -0.468877375, 0.559906721, -0.76382637, 0.3210513, -0.828555167, -0.516583681, 0.215957373, 0.000895902514, -0.386924744, -0.922111094),0.3)
		LT1.C0 = clerp(LT1.C0,CFrame.new(-2.38321137, -0.197761506, -0.480284184, 0.00442438386, -0.922103286, 0.386918634, -0.999989927, -0.00442464277, 0.000890053809, 0.000891245902, -0.386918634, -0.922113538),0.3)
		LT2.C0 = clerp(LT2.C0,CFrame.new(-2.55305004, -0.864332676, -0.480571091, 0.269542992, -0.887895226, 0.372812331, -0.962987959, -0.248886049, 0.103488967, 0.000900432467, -0.386908501, -0.922117829),0.3)
		LR2.C0 = clerp(LR2.C0,CFrame.new(-2.57040381, -0.933295071, -0.121735282, 0.265284121, -0.964170456, -7.30156898e-07, -0.964170277, -0.265284151, 2.69711018e-06, -2.79396772e-06, -1.49011612e-08, -1.00000012),0.3)
		LR1.C0 = clerp(LR1.C0,CFrame.new(-2.3238914, -0.272474736, -0.121387586, 1.98073685e-05, -1, 3.84449959e-06, -1.00000012, -1.98241323e-05, -3.2402575e-05, 3.2402575e-05, -3.84449959e-06, -1),0.3)
		LS1.C0 = clerp(LS1.C0,CFrame.new(-2.332026, -0.235441238, -0.383450896, 1.98073685e-05, -1, 3.84449959e-06, -1.00000012, -1.98241323e-05, -3.2402575e-05, 3.2402575e-05, -3.84449959e-06, -1),0.3)
		LM3.C0 = clerp(LM3.C0,CFrame.new(-2.50494647, -1.76068807, 0.0822853819, 0.556252837, -0.831013322, 6.51180744e-06, -0.831013143, -0.556252837, -4.09781933e-06, 7.01844692e-06, -3.12924385e-06, -1.00000012),0.3)
		LS3.C0 = clerp(LS3.C0,CFrame.new(-2.3463347, -1.67428887, -0.388733745, 0.556252837, -0.831013322, 6.51180744e-06, -0.831013143, -0.556252837, -4.09781933e-06, 7.01844692e-06, -3.12924385e-06, -1.00000012),0.3)
		LP2.C0 = clerp(LP2.C0,CFrame.new(-2.57173133, -0.928351641, 0.326236129, 0.265284121, -0.964170456, -7.30156898e-07, -0.964170277, -0.265284151, 2.69711018e-06, -2.79396772e-06, -1.49011612e-08, -1.00000012),0.3)
		LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32387996, -0.267357588, 0.326587409, 1.98073685e-05, -1, 3.84449959e-06, -1.00000012, -1.98241323e-05, -3.2402575e-05, 3.2402575e-05, -3.84449959e-06, -1),0.3)
		LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32389045, -0.270063698, 0.089538388, 1.98073685e-05, -1, 3.84449959e-06, -1.00000012, -1.98241323e-05, -3.2402575e-05, 3.2402575e-05, -3.84449959e-06, -1),0.3)
		LS2.C0 = clerp(LS2.C0,CFrame.new(-2.48548055, -0.885903299, -0.383629501, 0.265284121, -0.964170456, -7.30156898e-07, -0.964170277, -0.265284151, 2.69711018e-06, -2.79396772e-06, -1.49011612e-08, -1.00000012),0.3)
		LM2.C0 = clerp(LM2.C0,CFrame.new(-2.57099605, -0.93097049, 0.0891641006, 0.265284121, -0.964170456, -7.30156898e-07, -0.964170277, -0.265284151, 2.69711018e-06, -2.79396772e-06, -1.49011612e-08, -1.00000012),0.3)
		LP3.C0 = clerp(LP3.C0,CFrame.new(-2.50646234, -1.75844562, 0.319372624, 0.556252837, -0.831013322, 6.51180744e-06, -0.831013143, -0.556252837, -4.09781933e-06, 7.01844692e-06, -3.12924385e-06, -1.00000012),0.3)
	end
	BlastFX(30,BrickColor.new'Light stone grey',V3.N(2,PlayerSize,2),rleg.CFrame*CF.N(0,-2,0),V3.N(10,1,10))
	local hit = getRegion(torso.CFrame.p,15,{char})
	for _,v in next, hit do
		if(v.Parent and v.Parent:FindFirstChildOfClass'Humanoid')then
			DealDamage(v.Parent,0,0,0,"Normal")
		end
	end
	local n = 180
	for i = 1, n do
		coroutine.wrap(function()
			local cf = lleg.CFrame * CF.N(0,-2,0) * CF.A(0,M.P*2/n*i,0)*CF.N(0,0,10)
			local hitfloor,posfloor = workspace:FindPartOnRay(Ray.new(cf.p,((CFrame.new(cf.p,cf.p - Vector3.new(0,1,0))).lookVector).unit * 4), char)
			if(hitfloor)then
				local block = NewInstance("Part",workspace,{CanCollide=false,Anchored=false,CFrame=cf*CF.N(0,1,0),BrickColor = hitfloor.BrickColor,Transparency=hitfloor.Transparency,Reflectance=hitfloor.Reflectance,Material=hitfloor.Material,Size=V3.N(2+M.RNG(-25,75)/100,2+M.RNG(-25,75)/100,2+M.RNG(-25,75)/100)})
				local velocity = NewInstance("BodyVelocity",block,{P=500,maxForce=V3.N(M.H,M.H,M.H),velocity=V3.N(M.RNG(-10,10),M.RNG(5,10),M.RNG(-10,10))})
				swait(15)
				velocity:destroy()
			end
		end)()
	end
	swait(120)
	neutralAnims = true
	WalkSpeed = 20
	Tween(RL,{Scale=V3.N(1,PlayerSize,2)},.6,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out)
	swait(36)
	Tween(RL,{Scale=V3.N(1,PlayerSize,1)},.6,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out)
	swait(36)
	Attack = false
	RL:destroy()
end
function Taunt()
	Attack = true
	neutralAnims = false
	local giggle = FX(176265509,10,1,head)
	while giggle.Playing do
		local Alpha = .2
		swait()
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00653425185, -0.367415309+.4*M.S(time()*12), -0.572485209, 0.999995291, -0.00257562893, -0.000296123326, 0.00257599982, 0.974187136, 0.22572732, -0.000292910263, -0.225727022, 0.974189222),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.503953636, -3.23575497-.4*M.S(time()*12), -0.0791287646, 1, 0.000350067159, -1.45565718e-06, -0.00034994795, 0.999533594, -0.0305390507, -9.23592597e-06, 0.0305390656, 0.999533653)*CF.A(M.R(M.RNG(-30,30)),M.R(M.RNG(-30,30)),M.R(M.RNG(-30,30))),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.49835059, -3.15593815-.4*M.S(time()*12), -0.187087312, 0.999996603, 0.00258975197, -0.000121647492, -0.00257564802, 0.987003267, -0.160680294, -0.000296056271, 0.1606801, 0.987006545)*CF.A(M.R(M.RNG(-30,30)),M.R(M.RNG(-30,30)),M.R(M.RNG(-30,30))),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.43127036, 0.451340854, -0.462174714, 0.997353315, 0.0727057606, -0.000517063774, -0.0693833008, 0.949603021, -0.305679858, -0.0217336789, 0.304906696, 0.952134252)*CF.A(M.R(M.RNG(-30,30)),M.R(M.RNG(-30,30)),M.R(M.RNG(-30,30))),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.41581738, 0.455256999, -0.457439601, 0.996124089, -0.0879578516, -0.000504340976, 0.0835438147, 0.947897792, -0.307425261, 0.0275185313, 0.306191564, 0.95157218)*CF.A(M.R(M.RNG(-30,30)),M.R(M.RNG(-30,30)),M.R(M.RNG(-30,30))),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-1.90670835e-06, 2.74999475, -7.62939453e-06, 1, 2.32830644e-10, -9.31322575e-10, 2.32830644e-10, 1, 0, -9.31322575e-10, 0, 1)*CF.A(M.R(M.RNG(-30,30)),M.R(M.RNG(-30,30)),M.R(M.RNG(-30,30))),Alpha)
		RT3.C0 = clerp(RT3.C0,CFrame.new(1.61375785, -1.76555657, -0.513190091, -0.55665189, 0.810403109, 0.182717308, -0.771965683, -0.585860789, 0.24665007, 0.306932837, -0.00375326723, 0.951723814),Alpha)
		RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36366892, -0.0526333712, 0.463351786, 0.00432222337, -0.925635338, 0.378392518, 0.999990284, 0.00432161195, -0.000850837678, -0.000847693533, 0.378392458, 0.925644875),Alpha)
		RT2.C0 = clerp(RT2.C0,CFrame.new(1.2538718, -2.21410918, -0.524856687, -0.771987855, 0.583863854, 0.251272887, -0.556619704, -0.811843097, 0.176310748, 0.306935579, -0.00375370681, 0.95172298),Alpha)
		RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32391119, -0.0978909656, 0.155143276, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
		RR2.C0 = clerp(RR2.C0,CFrame.new(1.25468278, -2.23918462, 0.480947077, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
		RR3.C0 = clerp(RR3.C0,CFrame.new(1.53806043, -1.79355478, 0.474106222, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
		RS3.C0 = clerp(RS3.C0,CFrame.new(1.49055731, -1.77398741, 0.730609715, -0.660822511, 0.739318788, -0.129311174, -0.748390913, -0.662110388, 0.0389984399, -0.0567859784, 0.12254636, 0.990836978),Alpha)
		RS2.C0 = clerp(RS2.C0,CFrame.new(1.12350154, -2.19243288, 0.735727072, -0.863375664, 0.492343336, -0.110365942, -0.501357257, -0.861730874, 0.0778523907, -0.0567756221, 0.122548625, 0.990837216),Alpha)
		RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33202672, -0.0549109876, 0.413173437, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
		RM2.C0 = clerp(RM2.C0,CFrame.new(1.255373, -2.24170375, 0.251963019, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
		RM3.C0 = clerp(RM3.C0,CFrame.new(1.5395211, -1.79571998, 0.245096236, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
		RM1.C0 = clerp(RM1.C0,CFrame.new(-2.323915, -0.100503564, -0.0738568455, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
		RP2.C0 = clerp(RP2.C0,CFrame.new(1.25615263, -2.2444911, -0.000960677862, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
		RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32391214, -0.103389643, -0.32676369, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
		RP3.C0 = clerp(RP3.C0,CFrame.new(1.54112804, -1.79812348, -0.0077983737, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
		LR3.C0 = clerp(LR3.C0,CFrame.new(1.45705879, -1.89598083, -0.385099679, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
		LT3.C0 = clerp(LT3.C0,CFrame.new(1.40952325, -1.97281897, 0.526059091, 0.671315253, 0.714624286, 0.196591273, 0.679187477, -0.699324131, 0.222823307, 0.296715915, -0.0160623491, -0.954830825),Alpha)
		LT1.C0 = clerp(LT1.C0,CFrame.new(-2.3832376, -0.197773144, -0.480284959, 0.00441737333, -0.922104299, 0.38691628, -0.999989927, -0.00441598753, 0.000892503187, 0.000885637477, -0.38691628, -0.922114491),Alpha)
		LT2.C0 = clerp(LT2.C0,CFrame.new(0.99463892, -2.34625196, 0.514375746, 0.851474643, 0.457154393, 0.256906241, 0.432377875, -0.889242351, 0.14932391, 0.296715945, -0.0160649493, -0.954830766),Alpha)
		LR2.C0 = clerp(LR2.C0,CFrame.new(1.14547455, -2.31078553, -0.378219754, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
		LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32390952, -0.272462696, -0.121384747, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
		LS1.C0 = clerp(LS1.C0,CFrame.new(-2.33202744, -0.23541376, -0.383374184, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
		LM3.C0 = clerp(LM3.C0,CFrame.new(1.45572555, -1.89398086, -0.174214169, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
		LS3.C0 = clerp(LS3.C0,CFrame.new(1.49722528, -1.81738269, -0.636980891, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
		LP2.C0 = clerp(LP2.C0,CFrame.new(1.14411652, -2.30584955, 0.0697559863, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
		LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32390475, -0.267352402, 0.326590419, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
		LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32390952, -0.270056516, 0.0895184278, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
		LS2.C0 = clerp(LS2.C0,CFrame.new(1.11611402, -2.23573709, -0.631830394, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
		LM2.C0 = clerp(LM2.C0,CFrame.new(1.14484239, -2.30846381, -0.167330459, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
		LP3.C0 = clerp(LP3.C0,CFrame.new(1.45421648, -1.89172983, 0.0628871024, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
	end
	Attack = false
	neutralAnims = true
end

function FuckYou()
	Attack = true
	neutralAnims = false
	for i = 0, 1, 0.1 do
		swait()
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00491022924, 0.150342643, -0.430241644, 0.999993742, -0.00153528806, -0.00010153465, 0.00153500005, 0.990909874, 0.134519234, -0.000105913728, -0.134518534, 0.990906),0.3)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.500732899, -3.67427373, -0.0646588951, 0.999993742, 0.00153500005, -0.000105913728, -0.00153528806, 0.990909874, -0.134518534, -0.00010153465, 0.134519234, 0.990906),0.3)
		RH.C0 = clerp(RH.C0,CFrame.new(0.499253213, -3.67580914, -0.0647604018, 0.999993742, 0.00153500005, -0.000105913728, -0.00153528806, 0.990909874, -0.134518534, -0.00010153465, 0.134519234, 0.990906),0.3)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.43846512, 0.498227417, -4.07661537e-06, 0.998342752, 0.0575486869, -9.6578151e-07, -0.0575486869, 0.998342752, -2.25007534e-06, 8.32602382e-07, 2.30967999e-06, 1.00000012),0.3)
		RS.C0 = clerp(RS.C0,CFrame.new(0.940297365, 1.64152968, -0.0374116302, -0.0358937122, -0.0253289044, -0.999034703, -0.95639807, -0.28907603, 0.0416908972, -0.289852977, 0.956971049, -0.0138485003),0.3)
		NK.C0 = clerp(NK.C0,CFrame.new(1.19201377e-06, 2.74261379, -0.000996351242, 1.00000012, -2.91038305e-11, 0, 1.16415322e-10, 0.993324518, -0.115354955, 9.31322575e-10, 0.11535497, 0.993324518),0.3)
		RT3.C0 = clerp(RT3.C0,CFrame.new(-2.48911524, -1.55586731, 0.474759281, -0.552649975, -0.771624744, 0.314917922, 0.833413184, -0.511293769, 0.209765062, -0.000844340771, 0.378383338, 0.92564863),0.3)
		RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36367702, -0.0526425689, 0.4633497, 0.00430683792, -0.925637126, 0.378387868, 0.999990523, 0.00430384278, -0.00085362047, -0.000838372856, 0.378387809, 0.925646842),0.3)
		RT2.C0 = clerp(RT2.C0,CFrame.new(-2.57269597, -0.719226956, 0.463091969, -0.261123598, -0.893614113, 0.365059316, 0.965305209, -0.241402701, 0.099553816, -0.000836394727, 0.378389418, 0.925646245),0.3)
		RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32395005, -0.097909227, 0.155159667, -1.07884407e-05, -1, 5.35137951e-06, 1.00000012, -1.07884407e-05, 6.40703365e-06, -6.40703365e-06, 5.34951687e-06, 1.00000012),0.3)
		RR2.C0 = clerp(RR2.C0,CFrame.new(-2.6166935, -0.764995873, 0.154831141, -0.265279979, -0.96417141, 4.18908894e-06, 0.964171648, -0.265280008, -9.983778e-07, 2.0749867e-06, 3.77744436e-06, 1.00000012),0.3)
		RR3.C0 = clerp(RR3.C0,CFrame.new(-2.60076976, -1.61759865, 0.147939563, -0.556234598, -0.831025302, 1.52736902e-06, 0.831025481, -0.556234598, -9.31881368e-06, 8.60122964e-06, -3.9152801e-06, 1.00000012),0.3)
		RS3.C0 = clerp(RS3.C0,CFrame.new(-2.44678545, -1.52428412, 0.407759637, -0.556234598, -0.831025302, 1.52736902e-06, 0.831025481, -0.556234598, -9.31881368e-06, 8.60122964e-06, -3.9152801e-06, 1.00000012),0.3)
		RS2.C0 = clerp(RS2.C0,CFrame.new(-2.5334239, -0.711895049, 0.412882298, -0.265279979, -0.96417141, 4.18908894e-06, 0.964171648, -0.265280008, -9.983778e-07, 2.0749867e-06, 3.77744436e-06, 1.00000012),0.3)
		RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33206296, -0.0549341328, 0.413169026, -1.07884407e-05, -1, 5.35137951e-06, 1.00000012, -1.07884407e-05, 6.40703365e-06, -6.40703365e-06, 5.34951687e-06, 1.00000012),0.3)
		RM2.C0 = clerp(RM2.C0,CFrame.new(-0.98091644, -2.5455389, -0.462086409, -0.941852868, -0.314071566, -0.119467556, 0.32696858, -0.93857801, -0.110285565, -0.0774920732, -0.142934874, 0.986693859),0.3)
		RM3.C0 = clerp(RM3.C0,CFrame.new(-0.48635602, -2.79032993, -0.468960643, -0.996911287, -0.00154927373, -0.0785218477, 0.0127522349, -0.989730775, -0.142374128, -0.0774949342, -0.142935663, 0.986693442),0.3)
		RM1.C0 = clerp(RM1.C0,CFrame.new(-2.32390904, -0.100513272, -0.0738428086, -1.07884407e-05, -1, 5.35137951e-06, 1.00000012, -1.07884407e-05, 6.40703365e-06, -6.40703365e-06, 5.34951687e-06, 1.00000012),0.3)
		RP2.C0 = clerp(RP2.C0,CFrame.new(-2.61524796, -0.770285487, -0.327097982, -0.265279979, -0.96417141, 4.18908894e-06, 0.964171648, -0.265280008, -9.983778e-07, 2.0749867e-06, 3.77744436e-06, 1.00000012),0.3)
		RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32393694, -0.103402615, -0.326755345, -1.07884407e-05, -1, 5.35137951e-06, 1.00000012, -1.07884407e-05, 6.40703365e-06, -6.40703365e-06, 5.34951687e-06, 1.00000012),0.3)
		RP3.C0 = clerp(RP3.C0,CFrame.new(-2.5977087, -1.62216866, -0.333958834, -0.556234598, -0.831025302, 1.52736902e-06, 0.831025481, -0.556234598, -9.31881368e-06, 8.60122964e-06, -3.9152801e-06, 1.00000012),0.3)
		LR3.C0 = clerp(LR3.C0,CFrame.new(-2.50363731, -1.76269853, -0.128623277, 0.556233406, -0.831026256, -1.01327896e-06, -0.831026137, -0.556233406, 9.69320536e-06, -8.61659646e-06, -4.55975533e-06, -1),0.3)
		LT3.C0 = clerp(LT3.C0,CFrame.new(-2.42464828, -1.68734479, -0.468878269, 0.559899807, -0.763836026, 0.321040273, -0.828559816, -0.516573429, 0.215964258, 0.000879591331, -0.386919409, -0.92211324),0.3)
		LT1.C0 = clerp(LT1.C0,CFrame.new(-2.38323879, -0.197775438, -0.480279565, 0.00441244617, -0.922105789, 0.386912972, -0.999989867, -0.00441200566, 0.00088926591, 0.000887067989, -0.386912942, -0.922115922),0.3)
		LT2.C0 = clerp(LT2.C0,CFrame.new(-2.55308461, -0.864341974, -0.480537415, 0.269529641, -0.887898803, 0.372812748, -0.962991655, -0.248866722, 0.10350062, 0.000882614404, -0.386912107, -0.92211622),0.3)
		LR2.C0 = clerp(LR2.C0,CFrame.new(-2.57037759, -0.93331933, -0.121699877, 0.265274286, -0.964173079, -5.96046448e-08, -0.964172959, -0.265274346, 3.81655991e-06, -3.69176269e-06, -9.53674316e-07, -1),0.3)
		LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32390833, -0.272465348, -0.121396132, -3.04076821e-06, -1.00000012, 2.98023224e-08, -0.99999994, 3.03401612e-06, 3.37697566e-06, -3.37138772e-06, -4.47034836e-08, -1),0.3)
		LS1.C0 = clerp(LS1.C0,CFrame.new(-2.3320241, -0.235415176, -0.383377969, -3.04076821e-06, -1.00000012, 2.98023224e-08, -0.99999994, 3.03401612e-06, 3.37697566e-06, -3.37138772e-06, -4.47034836e-08, -1),0.3)
		LM3.C0 = clerp(LM3.C0,CFrame.new(-2.50497794, -1.76070499, 0.0823027939, 0.556233406, -0.831026256, -1.01327896e-06, -0.831026137, -0.556233406, 9.69320536e-06, -8.61659646e-06, -4.55975533e-06, -1),0.3)
		LS3.C0 = clerp(LS3.C0,CFrame.new(-2.34635568, -1.67428637, -0.388765872, 0.556233406, -0.831026256, -1.01327896e-06, -0.831026137, -0.556233406, 9.69320536e-06, -8.61659646e-06, -4.55975533e-06, -1),0.3)
		LP2.C0 = clerp(LP2.C0,CFrame.new(-2.57173824, -0.928392828, 0.326286733, 0.265274286, -0.964173079, -5.96046448e-08, -0.964172959, -0.265274346, 3.81655991e-06, -3.69176269e-06, -9.53674316e-07, -1),0.3)
		LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32390881, -0.26735279, 0.32663244, -3.04076821e-06, -1.00000012, 2.98023224e-08, -0.99999994, 3.03401612e-06, 3.37697566e-06, -3.37138772e-06, -4.47034836e-08, -1),0.3)
		LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32390547, -0.27005899, 0.0895337462, -3.04076821e-06, -1.00000012, 2.98023224e-08, -0.99999994, 3.03401612e-06, 3.37697566e-06, -3.37138772e-06, -4.47034836e-08, -1),0.3)
		LS2.C0 = clerp(LS2.C0,CFrame.new(-2.48551345, -0.885946035, -0.383605361, 0.265274286, -0.964173079, -5.96046448e-08, -0.964172959, -0.265274346, 3.81655991e-06, -3.69176269e-06, -9.53674316e-07, -1),0.3)
		LM2.C0 = clerp(LM2.C0,CFrame.new(-2.5710206, -0.931001067, 0.0891880393, 0.265274286, -0.964173079, -5.96046448e-08, -0.964172959, -0.265274346, 3.81655991e-06, -3.69176269e-06, -9.53674316e-07, -1),0.3)
		LP3.C0 = clerp(LP3.C0,CFrame.new(-2.50648189, -1.75845611, 0.319393873, 0.556233406, -0.831026256, -1.01327896e-06, -0.831026137, -0.556233406, 9.69320536e-06, -8.61659646e-06, -4.55975533e-06, -1),0.3)
	end
	swait(90)
	neutralAnims = true
	Attack = false
end

function GetTorso(char)
	return char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart'
end

function DealDamage(who,minDam,maxDam,Knock,Type)
	if(who)then
		local hum = who:FindFirstChildOfClass'Humanoid'
		local Damage = M.RNG(minDam,maxDam)
		local canHit = true
		if(hum)then
			for _, p in pairs(Hit) do
				if p[1] == hum then
					if(time() - p[2] < 0.1) then
						canHit = false
					else
						Hit[_] = nil
					end
				end
			end
			if(canHit)then
				if(hum.Health >= math.huge)then
					who:BreakJoints()
				else
					local player = S.Players:GetPlayerFromCharacter(who)
					if(not player or not Teamed[player])then
						if(Type == "Fire")then
							--idk..
						else
							local  c = Instance.new("ObjectValue",hum)
							c.Name = "creator"
							c.Value = plr
							game:service'Debris':AddItem(c,0.35)
							hum.Health = hum.Health - Damage
							if(Type == 'Knockback' and GetTorso(who))then
								local angle = GetTorso(who).Position - root.Position + Vector3.new(0, 0, 0).unit
								local body = NewInstance('BodyVelocity',GetTorso(who),{
									P = 500,
									maxForce = V3.N(math.huge,0,math.huge),
									velocity = root.CFrame.lookVector * Knock + root.Velocity / 1.05
								})
								game:service'Debris':AddItem(body,.5)	
							elseif(Type == 'Freeze' and GetTorso(who))then
								local angle = GetTorso(who).Position - root.Position + Vector3.new(0, 0, 0).unit
								local body = NewInstance('BodyPosition',GetTorso(who),{
									P = 500,
									D = 1,
									MaxForce = V3.N(math.huge,0,math.huge),
									Position = GetTorso(who).CFrame.p
								})
								game:service'Debris':AddItem(body,.5)
							elseif(Type == 'Knockdown' and GetTorso(who))then
								local rek = GetTorso(who)
								print(rek)
								hum.PlatformStand = true
								delay(1,function()
									hum.PlatformStand = false
								end)
								local angle = (GetTorso(who).Position - (root.Position + Vector3.new(0, 0, 0))).unit
								local bodvol = NewInstance("BodyVelocity",rek,{
									velocity = angle * Knock,
									P = 5000,
									maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
								})
								local rl = NewInstance("BodyAngularVelocity",rek,{
									P = 3000,
									maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
									angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
								})
								game:GetService("Debris"):AddItem(bodvol, .5)
								game:GetService("Debris"):AddItem(rl, .5)
							end
						end
					end
				end
				table.insert(Hit,{hum,time()})
			end
		end
	end
end

function MagniDamage(pos,radius,mindamage,maxdamage,knockback,damagetype)
	local Recursive
	Recursive = function(whom)	
		for _,c in next, whom:children() do
			local hum = c:FindFirstChildOfClass'Humanoid'
			local hed = c:FindFirstChild'Torso' or c:FindFirstChild'UpperTorso' or c:FindFirstChild'LowerTorso'
			if(hum and hed)then
				local mag = (hed.CFrame.p - pos).magnitude
				if(mag <= radius and c ~= char)then
					DealDamage(c,mindamage,maxdamage,knockback,damagetype)
				end
			end
			Recursive(c)
		end
	end
	Recursive(workspace)
end

function MagniHeal(pos,radius,heal,needsTeamed)
	for _,v in next, workspace:GetDescendants() do
		local player = S.Players:GetPlayerFromCharacter(v)
		local hum = v:FindFirstChildOfClass'Humanoid'
		if(hum and v:IsA'Model')then
			if(not needsTeamed or player and (not plr.Neutral and player.TeamColor == plr.TeamColor))then
				local pp = v.PrimaryPart or v:FindFirstChild'Torso' or v:FindFirstChild'UpperTorso' or v:FindFirstChild'LowerTorso'
				if(pp and (pp.CFrame.p-pos).magnitude <= radius)then
					hum.Health = hum.Health + heal
				end
			end
		end
	end	
end


Debounces:New('how2use',1) -- name, cooldown

function SpitAcid()
	Attack = true
	neutralAnims = false
	if(Puddle)then Puddle:destroy() Puddle = nil end
	for i = 0, 1, 0.1 do
		swait()
		RJ.C0 = clerp(RJ.C0,CFrame.new(0.015540313, -0.194137305, 1.36152554, 0.999978483, 0.00553973578, -0.00143473037, -0.00553999934, 0.874346554, -0.485270619, -0.00143382046, 0.485268205, 0.874358296),0.3)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.495259553, -3.55402684, 0.41450882, 0.999978483, -0.00553999934, -0.00143382046, 0.00553973578, 0.874346554, 0.485268205, -0.00143473037, -0.485270619, 0.874358296),0.3)
		RH.C0 = clerp(RH.C0,CFrame.new(0.504710793, -3.54848552, 0.413077593, 0.999978483, -0.00553999934, -0.00143382046, 0.00553973578, 0.874346554, 0.485268205, -0.00143473037, -0.485270619, 0.874358296),0.3)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.66483569, -0.274379343, -0.698251367, 0.384908408, -0.477027953, 0.790120065, -0.21145758, -0.878884673, -0.427606821, 0.898404837, -0.00248748064, -0.439161271),0.3)
		RS.C0 = clerp(RS.C0,CFrame.new(1.37159514, -0.44847852, -1.23277056, 0.521697402, 0.274750113, -0.807678282, 0.301484585, -0.945011377, -0.12673144, -0.798084557, -0.177387089, -0.575842798),0.3)
		NK.C0 = clerp(NK.C0,CFrame.new(-3.1007221e-06, 2.74997783, 1.91554427e-05, 1, -4.65661287e-10, -9.31322575e-10, -4.65661287e-10, 1.00000024, 2.98023224e-08, -9.31322575e-10, 2.98023224e-08, 1),0.3)
		RT3.C0 = clerp(RT3.C0,CFrame.new(-2.4890492, -1.55583262, 0.474699855, -0.552634418, -0.771629453, 0.314933747, 0.833423376, -0.511281967, 0.209752887, -0.000831574202, 0.378389925, 0.925646067),0.3)
		RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36362505, -0.0526267663, 0.463311166, 0.00432950258, -0.925636709, 0.378388762, 0.999990284, 0.00432765484, -0.000855326653, -0.000845819712, 0.378388792, 0.925646544),0.3)
		RT2.C0 = clerp(RT2.C0,CFrame.new(-2.57266617, -0.719199896, 0.463027179, -0.261096984, -0.893622637, 0.365057617, 0.965312362, -0.241375238, 0.0995507389, -0.000844955444, 0.378387004, 0.92564714),0.3)
		RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32386756, -0.0978833809, 0.155133307, 3.75509262e-06, -1.00000012, 6.49690628e-06, 1, 3.7252903e-06, -7.65919685e-06, 7.68899918e-06, 6.49690628e-06, 1.00000012),0.3)
		RR2.C0 = clerp(RR2.C0,CFrame.new(-2.61664414, -0.764966667, 0.154766977, -0.265265912, -0.964175463, 5.96046448e-08, 0.964175403, -0.265265882, -3.85940075e-06, 3.69548798e-06, -1.01327896e-06, 1),0.3)
		RR3.C0 = clerp(RR3.C0,CFrame.new(-2.60068607, -1.61760664, 0.147925094, -0.556230366, -0.831028283, 1.02221966e-05, 0.831028283, -0.556230366, -1.60038471e-05, 1.89840794e-05, -4.17232513e-07, 1),0.3)
		RS3.C0 = clerp(RS3.C0,CFrame.new(-2.4467001, -1.52426553, 0.407730699, -0.556230366, -0.831028283, 1.02221966e-05, 0.831028283, -0.556230366, -1.60038471e-05, 1.89840794e-05, -4.17232513e-07, 1),0.3)
		RS2.C0 = clerp(RS2.C0,CFrame.new(-2.53333163, -0.711880744, 0.412846714, -0.265265912, -0.964175463, 5.96046448e-08, 0.964175403, -0.265265882, -3.85940075e-06, 3.69548798e-06, -1.01327896e-06, 1),0.3)
		RS1.C0 = clerp(RS1.C0,CFrame.new(-2.3319757, -0.054920394, 0.413150311, 3.75509262e-06, -1.00000012, 6.49690628e-06, 1, 3.7252903e-06, -7.65919685e-06, 7.68899918e-06, 6.49690628e-06, 1.00000012),0.3)
		RM2.C0 = clerp(RM2.C0,CFrame.new(-2.61595607, -0.767494619, -0.074202612, -0.265265912, -0.964175463, 5.96046448e-08, 0.964175403, -0.265265882, -3.85940075e-06, 3.69548798e-06, -1.01327896e-06, 1),0.3)
		RM3.C0 = clerp(RM3.C0,CFrame.new(-2.59923792, -1.61976969, -0.081080772, -0.556230366, -0.831028283, 1.02221966e-05, 0.831028283, -0.556230366, -1.60038471e-05, 1.89840794e-05, -4.17232513e-07, 1),0.3)
		RM1.C0 = clerp(RM1.C0,CFrame.new(-2.32380795, -0.100540474, -0.0739126056, 3.75509262e-06, -1.00000012, 6.49690628e-06, 1, 3.7252903e-06, -7.65919685e-06, 7.68899918e-06, 6.49690628e-06, 1.00000012),0.3)
		RP2.C0 = clerp(RP2.C0,CFrame.new(-2.61518192, -0.770279586, -0.327113241, -0.265265912, -0.964175463, 5.96046448e-08, 0.964175403, -0.265265882, -3.85940075e-06, 3.69548798e-06, -1.01327896e-06, 1),0.3)
		RP1.C0 = clerp(RP1.C0,CFrame.new(-2.3238554, -0.103376672, -0.32674697, 3.75509262e-06, -1.00000012, 6.49690628e-06, 1, 3.7252903e-06, -7.65919685e-06, 7.68899918e-06, 6.49690628e-06, 1.00000012),0.3)
		RP3.C0 = clerp(RP3.C0,CFrame.new(-2.5976193, -1.62214637, -0.333983809, -0.556230366, -0.831028283, 1.02221966e-05, 0.831028283, -0.556230366, -1.60038471e-05, 1.89840794e-05, -4.17232513e-07, 1),0.3)
		LR3.C0 = clerp(LR3.C0,CFrame.new(-2.50360489, -1.7626704, -0.128580347, 0.556239069, -0.831022382, -8.19563866e-06, -0.831022322, -0.556239009, 1.50501728e-05, -1.70469284e-05, -1.54972076e-06, -1),0.3)
		LT3.C0 = clerp(LT3.C0,CFrame.new(-2.42460489, -1.68731928, -0.468825698, 0.559906244, -0.763835907, 0.321029454, -0.828555644, -0.516578794, 0.215967864, 0.00087299943, -0.386912465, -0.922115982),0.3)
		LT1.C0 = clerp(LT1.C0,CFrame.new(-2.38321996, -0.19776459, -0.480273247, 0.00442242622, -0.922105253, 0.386913955, -0.999989867, -0.00441715121, 0.000902920961, 0.000876456499, -0.386913955, -0.922115326),0.3)
		LT2.C0 = clerp(LT2.C0,CFrame.new(-2.55304503, -0.864306688, -0.480517149, 0.269535363, -0.887896836, 0.372813493, -0.962990224, -0.248867005, 0.103514582, 0.000870674849, -0.386916608, -0.922114253),0.3)
		LR2.C0 = clerp(LR2.C0,CFrame.new(-2.57033348, -0.933283329, -0.121752061, 0.265276402, -0.964172482, 1.11758709e-05, -0.964172482, -0.265276432, 1.46627426e-05, -1.11460686e-05, -1.4603138e-05, -1),0.3)
		LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32388091, -0.272441268, -0.12135601, -2.50339508e-06, -1, -8.40425491e-06, -1, 2.44379044e-06, 5.1856041e-06, -5.1856041e-06, 8.40425491e-06, -1),0.3)
		LS1.C0 = clerp(LS1.C0,CFrame.new(-2.33202934, -0.235401109, -0.383343428, -2.50339508e-06, -1, -8.40425491e-06, -1, 2.44379044e-06, 5.1856041e-06, -5.1856041e-06, 8.40425491e-06, -1),0.3)
		LM3.C0 = clerp(LM3.C0,CFrame.new(-2.50493479, -1.76065683, 0.0823381245, 0.556239069, -0.831022382, -8.19563866e-06, -0.831022322, -0.556239009, 1.50501728e-05, -1.70469284e-05, -1.54972076e-06, -1),0.3)
		LS3.C0 = clerp(LS3.C0,CFrame.new(-2.34629893, -1.67424059, -0.388719767, 0.556239069, -0.831022382, -8.19563866e-06, -0.831022322, -0.556239009, 1.50501728e-05, -1.70469284e-05, -1.54972076e-06, -1),0.3)
		LP2.C0 = clerp(LP2.C0,CFrame.new(-2.57168937, -0.928365827, 0.326213628, 0.265276402, -0.964172482, 1.11758709e-05, -0.964172482, -0.265276432, 1.46627426e-05, -1.11460686e-05, -1.4603138e-05, -1),0.3)
		LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32388473, -0.26733762, 0.326647788, -2.50339508e-06, -1, -8.40425491e-06, -1, 2.44379044e-06, 5.1856041e-06, -5.1856041e-06, 8.40425491e-06, -1),0.3)
		LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32385445, -0.270041019, 0.0895910338, -2.50339508e-06, -1, -8.40425491e-06, -1, 2.44379044e-06, 5.1856041e-06, -5.1856041e-06, 8.40425491e-06, -1),0.3)
		LS2.C0 = clerp(LS2.C0,CFrame.new(-2.4854672, -0.885924935, -0.383642733, 0.265276402, -0.964172482, 1.11758709e-05, -0.964172482, -0.265276432, 1.46627426e-05, -1.11460686e-05, -1.4603138e-05, -1),0.3)
		LM2.C0 = clerp(LM2.C0,CFrame.new(-2.57099056, -0.930950284, 0.0891320631, 0.265276402, -0.964172482, 1.11758709e-05, -0.964172482, -0.265276432, 1.46627426e-05, -1.11460686e-05, -1.4603138e-05, -1),0.3)
		LP3.C0 = clerp(LP3.C0,CFrame.new(-2.50642467, -1.75841117, 0.319392979, 0.556239069, -0.831022382, -8.19563866e-06, -0.831022322, -0.556239009, 1.50501728e-05, -1.70469284e-05, -1.54972076e-06, -1),0.3)
	end
	swait(30)
	for i = 0, 1, 0.1 do
		swait()
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0100999596, -0.039863795, -0.884889722, 0.99998647, -0.00401634211, -0.000728871673, 0.00401599938, 0.93604964, 0.351844996, -0.000730870292, -0.351843148, 0.936053157),0.3)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.504433215, -3.54822564, -0.388769776, 0.99998647, 0.00401599938, -0.000730870292, -0.00401634211, 0.93604964, -0.351843148, -0.000728871673, 0.351844996, 0.936053157),0.3)
		RH.C0 = clerp(RH.C0,CFrame.new(0.495588422, -3.56614351, -0.260721803, 0.999991715, 0.00408073515, -9.31769609e-05, -0.00401603896, 0.979543746, -0.201191202, -0.000729737803, 0.201189905, 0.979552031),0.3)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.7998625, 0.724884272, 0.87759918, 0.940968871, 0.338493019, -7.06408173e-07, -0.254011005, 0.706120729, 0.66096282, 0.223731786, -0.621945262, 0.750418663),0.3)
		RS.C0 = clerp(RS.C0,CFrame.new(1.83249497, 0.794908404, 0.798889935, 0.956190884, -0.292743772, 1.0044314e-06, 0.212052315, 0.692630231, 0.689418018, -0.201823533, -0.659215093, 0.724363804),0.3)
		NK.C0 = clerp(NK.C0,CFrame.new(1.07289861e-05, 2.72116423, -0.0044926405, 0.99999994, 5.82076609e-11, 0, -2.32830644e-10, 0.95272857, -0.303822696, -9.31322575e-10, 0.303822726, 0.95272857),0.3)
		RT3.C0 = clerp(RT3.C0,CFrame.new(-2.48910308, -1.55586052, 0.474731147, -0.552644491, -0.77162528, 0.314926207, 0.83341676, -0.511289656, 0.209760725, -0.000838162377, 0.378387868, 0.925646842),0.3)
		RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36366558, -0.0526419058, 0.463345706, 0.00431899726, -0.925635695, 0.378391564, 0.999990344, 0.00431863964, -0.000849686563, -0.00084762834, 0.378391474, 0.925645351),0.3)
		RT2.C0 = clerp(RT2.C0,CFrame.new(-2.57270837, -0.719227016, 0.463089645, -0.261113733, -0.89361608, 0.365061849, 0.965307832, -0.241391331, 0.0995555148, -0.000841636211, 0.378392309, 0.925645173),0.3)
		RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32389426, -0.0979051962, 0.155150056, -1.11758709e-06, -1.00000012, 3.60608101e-06, 1.00000012, -1.11758709e-06, -1.8030405e-06, 1.78068876e-06, 3.60608101e-06, 1.00000012),0.3)
		RR2.C0 = clerp(RR2.C0,CFrame.new(-2.61667109, -0.765011787, 0.154783443, -0.265277117, -0.964172244, -4.29153442e-06, 0.964172304, -0.265277088, -9.9777244e-06, 8.47131014e-06, -6.7949295e-06, 1.00000012),0.3)
		RR3.C0 = clerp(RR3.C0,CFrame.new(-2.60072637, -1.61763644, 0.147926226, -0.556236744, -0.831024051, 2.68220901e-06, 0.831023932, -0.556236744, -3.23355198e-06, 4.14997339e-06, 4.47034836e-07, 1.00000012),0.3)
		RS3.C0 = clerp(RS3.C0,CFrame.new(-2.44674635, -1.52429295, 0.40773946, -0.556236744, -0.831024051, 2.68220901e-06, 0.831023932, -0.556236744, -3.23355198e-06, 4.14997339e-06, 4.47034836e-07, 1.00000012),0.3)
		RS2.C0 = clerp(RS2.C0,CFrame.new(-2.53337574, -0.711913884, 0.412858188, -0.265277117, -0.964172244, -4.29153442e-06, 0.964172304, -0.265277088, -9.9777244e-06, 8.47131014e-06, -6.7949295e-06, 1.00000012),0.3)
		RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33200336, -0.0549254641, 0.413162977, -1.11758709e-06, -1.00000012, 3.60608101e-06, 1.00000012, -1.11758709e-06, -1.8030405e-06, 1.78068876e-06, 3.60608101e-06, 1.00000012),0.3)
		RM2.C0 = clerp(RM2.C0,CFrame.new(-2.61597395, -0.76752615, -0.0742166862, -0.265277117, -0.964172244, -4.29153442e-06, 0.964172304, -0.265277088, -9.9777244e-06, 8.47131014e-06, -6.7949295e-06, 1.00000012),0.3)
		RM3.C0 = clerp(RM3.C0,CFrame.new(-2.59925842, -1.6197958, -0.0810529143, -0.556236744, -0.831024051, 2.68220901e-06, 0.831023932, -0.556236744, -3.23355198e-06, 4.14997339e-06, 4.47034836e-07, 1.00000012),0.3)
		RM1.C0 = clerp(RM1.C0,CFrame.new(-2.32389116, -0.100515939, -0.0738443434, -1.11758709e-06, -1.00000012, 3.60608101e-06, 1.00000012, -1.11758709e-06, -1.8030405e-06, 1.78068876e-06, 3.60608101e-06, 1.00000012),0.3)
		RP2.C0 = clerp(RP2.C0,CFrame.new(-2.61521149, -0.770304263, -0.327131152, -0.265277117, -0.964172244, -4.29153442e-06, 0.964172304, -0.265277088, -9.9777244e-06, 8.47131014e-06, -6.7949295e-06, 1.00000012),0.3)
		RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32389212, -0.10340035, -0.326758802, -1.11758709e-06, -1.00000012, 3.60608101e-06, 1.00000012, -1.11758709e-06, -1.8030405e-06, 1.78068876e-06, 3.60608101e-06, 1.00000012),0.3)
		RP3.C0 = clerp(RP3.C0,CFrame.new(-2.59766221, -1.62219429, -0.333963573, -0.556236744, -0.831024051, 2.68220901e-06, 0.831023932, -0.556236744, -3.23355198e-06, 4.14997339e-06, 4.47034836e-07, 1.00000012),0.3)
		LR3.C0 = clerp(LR3.C0,CFrame.new(-2.50363922, -1.76270425, -0.128624678, 0.556234479, -0.831025481, 4.11272049e-06, -0.831025481, -0.556234419, 1.07884407e-05, -6.67572021e-06, -9.41753387e-06, -1.00000012),0.3)
		LT3.C0 = clerp(LT3.C0,CFrame.new(-2.42464781, -1.68734825, -0.468857884, 0.559899807, -0.763837337, 0.321036875, -0.828559816, -0.516575038, 0.215960354, 0.000881046057, -0.386914432, -0.922115326),0.3)
		LT1.C0 = clerp(LT1.C0,CFrame.new(-2.38323569, -0.197784454, -0.48027727, 0.00441706181, -0.922104299, 0.38691622, -0.999989927, -0.00441691279, 0.000889614224, 0.000888649374, -0.38691619, -0.922114551),0.3)
		LT2.C0 = clerp(LT2.C0,CFrame.new(-2.55306029, -0.864338577, -0.480565965, 0.269529104, -0.88789624, 0.372819602, -0.962991893, -0.248865172, 0.103502877, 0.00088198483, -0.38691923, -0.922113359),0.3)
		LR2.C0 = clerp(LR2.C0,CFrame.new(-2.57037544, -0.933318377, -0.1217224, 0.265274465, -0.9641729, -1.13248825e-06, -0.9641729, -0.265274465, 6.37769699e-06, -6.43730164e-06, -5.96046448e-07, -1.00000012),0.3)
		LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32389402, -0.272476882, -0.121381931, 1.22189522e-06, -1, 1.37090683e-06, -1, -1.25169754e-06, 2.69711018e-06, -2.68220901e-06, -1.40070915e-06, -1),0.3)
		LS1.C0 = clerp(LS1.C0,CFrame.new(-2.33200383, -0.235421643, -0.383394331, 1.22189522e-06, -1, 1.37090683e-06, -1, -1.25169754e-06, 2.69711018e-06, -2.68220901e-06, -1.40070915e-06, -1),0.3)
		LM3.C0 = clerp(LM3.C0,CFrame.new(-2.50497532, -1.7607044, 0.0823014155, 0.556234479, -0.831025481, 4.11272049e-06, -0.831025481, -0.556234419, 1.07884407e-05, -6.67572021e-06, -9.41753387e-06, -1.00000012),0.3)
		LS3.C0 = clerp(LS3.C0,CFrame.new(-2.3463378, -1.67427754, -0.388777852, 0.556234479, -0.831025481, 4.11272049e-06, -0.831025481, -0.556234419, 1.07884407e-05, -6.67572021e-06, -9.41753387e-06, -1.00000012),0.3)
		LP2.C0 = clerp(LP2.C0,CFrame.new(-2.57172728, -0.928390741, 0.326271892, 0.265274465, -0.9641729, -1.13248825e-06, -0.9641729, -0.265274465, 6.37769699e-06, -6.43730164e-06, -5.96046448e-07, -1.00000012),0.3)
		LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32388711, -0.267366409, 0.326589435, 1.22189522e-06, -1, 1.37090683e-06, -1, -1.25169754e-06, 2.69711018e-06, -2.68220901e-06, -1.40070915e-06, -1),0.3)
		LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32389832, -0.270066559, 0.0895250589, 1.22189522e-06, -1, 1.37090683e-06, -1, -1.25169754e-06, 2.69711018e-06, -2.68220901e-06, -1.40070915e-06, -1),0.3)
		LS2.C0 = clerp(LS2.C0,CFrame.new(-2.48550272, -0.885945439, -0.383622199, 0.265274465, -0.9641729, -1.13248825e-06, -0.9641729, -0.265274465, 6.37769699e-06, -6.43730164e-06, -5.96046448e-07, -1.00000012),0.3)
		LM2.C0 = clerp(LM2.C0,CFrame.new(-2.57100058, -0.93100369, 0.089171268, 0.265274465, -0.9641729, -1.13248825e-06, -0.9641729, -0.265274465, 6.37769699e-06, -6.43730164e-06, -5.96046448e-07, -1.00000012),0.3)
		LP3.C0 = clerp(LP3.C0,CFrame.new(-2.50648022, -1.75845373, 0.319384903, 0.556234479, -0.831025481, 4.11272049e-06, -0.831025481, -0.556234419, 1.07884407e-05, -6.67572021e-06, -9.41753387e-06, -1.00000012),0.3)
	end
	AcidDrop(head.CFrame * CF.N(0,0,head.Size.Z/2).p,head.CFrame * CF.N(0,0,-head.Size.Z).p,10) 
	swait(30)
	neutralAnims = true
	Attack = false
end



function newBezier(startpos, pos2, pos3, endpos, t)
	local A = startpos:lerp(pos2, t)
	local B  =pos2:lerp(pos3, t)
	local C = pos3:lerp(endpos, t)
	local lerp1 = A:lerp(B, t)
	local lerp2 = B:lerp(C, t)
	local cubic = lerp1:lerp(lerp2, t)
	return cubic
end

function HandOut()
	if(Puddle and Puddle.Parent and Puddle:IsA'BasePart')then
		local hand = NewInstance("Part",char,{Name='Hand',Size = V3.N(3, 5, 3),Anchored=true,CanCollide=false,CFrame = Puddle.CFrame*CF.N(0,2,0)*CF.A(M.R(90),0,0),BrickColor=BrickColor.new'Royal purple'})
		local mesh = NewInstance("SpecialMesh",hand,{MeshId = 'http://www.roblox.com/asset/?id=32054761'})
		local origin = Puddle.CFrame.p
		swait(60)
		
		for i = 0, 1, .005 do
			hand.CFrame = hand.CFrame:lerp(Puddle.CFrame*CF.N(0,-1,0),i)
			swait()
		end
		swait()
		local MPos 
		if(mouse.Target and mouse.Target.Parent and not mouse.Target.Anchored and mouse.Target.Parent:FindFirstChildOfClass'Humanoid')then
			MPos = NewInstance("Part",char,{Size=V3.N(.05,.05,.05),Anchored=false,CFrame = mouse.Target.CFrame,CanCollide=false,Transparency = 1})
			NewInstance("Weld",MPos,{Part0=MPos,Part1=mouse.Target})
		else
			MPos = NewInstance("Part",char,{Size=V3.N(.05,.05,.05),Anchored=true,CanCollide=false,CFrame=CF.N(mouse.Hit.p),Transparency = 1})
		end
		local onefourth = hand.CFrame.p:Lerp(MPos.CFrame.p, 0.25) + Vector3.new(0, 125, 0)
		local threefourths = hand.CFrame.p:Lerp(MPos.CFrame.p, 0.75) + Vector3.new(0, 15, 0)
		hand.CanCollide = true
		hand.Touched:connect(function(t)
			if(t and t ~= Puddle and not char:IsAncestorOf(t))then
				if(t.Parent)then DealDamage(t.Parent,0,0,0,"Freeze") end
				for i = 1, M.RNG(4,12) do
					ShatterFX(75,BrickColor.new'Royal purple',V3.N(.75,3,.75),hand.CFrame)
				end
				hand:remove()
			end
		end)
		for i = 0, 1, .01 do
			hand.CFrame = CFrame.new(newBezier(origin, onefourth, threefourths, MPos.CFrame.p, i))
			swait()
		end
		if(not MPos:FindFirstChildOfClass'JointInstance')then
			MPos:destroy()
		end
		if(hand.Parent)then
			local hit = getRegion(hand.CFrame.p,5,{char})
			for _,t in next, hit do if(t.Parent)then DealDamage(t.Parent,0,0,0,"Freeze") end end
			for i = 1, M.RNG(4,12) do
				ShatterFX(75,BrickColor.new'Royal purple',V3.N(.75,3,.75),hand.CFrame)
			end
			hand:destroy()
		end
	end
end

















function ClickCombo()
	Attack = true
	neutralAnims = false
	if(combo == 1)then
		for i = 0, 1, 0.1 do
			swait()
			RJ.C0 = clerp(RJ.C0,CFrame.new(-7.02885164e-23, -0.477379799, 0, 1.00000012, 1.47238149e-22, -9.31322575e-10, 1.47238149e-22, 1, 0, -9.31322575e-10, 0, 1.00000012),0.3)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.500006497, -3.31968737, -0.306620896, 1.00000012, -8.39726999e-06, 1.92523003e-05, -1.22691697e-14, 0.916591704, 0.399824798, -2.10031867e-05, -0.399824798, 0.916591704),0.3)
			RH.C0 = clerp(RH.C0,CFrame.new(0.499969989, -3.0428009, -0.199903578, 1.00000012, -7.1967952e-06, 3.52757052e-05, -1.22692028e-14, 0.979815483, 0.199904054, -3.60021368e-05, -0.199904054, 0.979815543),0.3)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.49998367, 0.867262006, 0.637470126, 1.00000012, 1.93808228e-06, 5.10830432e-07, -1.22691249e-14, 0.25498715, -0.966944456, -2.00420618e-06, 0.966944575, 0.254987121),0.3)
			RS.C0 = clerp(RS.C0,CFrame.new(1.70605004, 0.556896687, 0.0270632394, 0.986828983, -0.140310809, -0.0805086344, 0.140768006, 0.990042686, 3.39962594e-06, 0.0797065049, -0.0113363955, 0.996753991),0.3)
			NK.C0 = clerp(NK.C0,CFrame.new(4.04903294e-22, 2.74998903, 0, 1.00000012, 1.47238149e-22, -9.31322575e-10, 1.47238149e-22, 1, 0, -9.31322575e-10, 0, 1.00000012),0.3)
			RT3.C0 = clerp(RT3.C0,CFrame.new(1.61375785, -1.76555657, -0.513190091, -0.55665189, 0.810403109, 0.182717308, -0.771965683, -0.585860789, 0.24665007, 0.306932837, -0.00375326723, 0.951723814),Alpha)
			RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36366892, -0.0526333712, 0.463351786, 0.00432222337, -0.925635338, 0.378392518, 0.999990284, 0.00432161195, -0.000850837678, -0.000847693533, 0.378392458, 0.925644875),Alpha)
			RT2.C0 = clerp(RT2.C0,CFrame.new(1.2538718, -2.21410918, -0.524856687, -0.771987855, 0.583863854, 0.251272887, -0.556619704, -0.811843097, 0.176310748, 0.306935579, -0.00375370681, 0.95172298),Alpha)
			RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32391119, -0.0978909656, 0.155143276, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RR2.C0 = clerp(RR2.C0,CFrame.new(1.25468278, -2.23918462, 0.480947077, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RR3.C0 = clerp(RR3.C0,CFrame.new(1.53806043, -1.79355478, 0.474106222, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RS3.C0 = clerp(RS3.C0,CFrame.new(1.49055731, -1.77398741, 0.730609715, -0.660822511, 0.739318788, -0.129311174, -0.748390913, -0.662110388, 0.0389984399, -0.0567859784, 0.12254636, 0.990836978),Alpha)
			RS2.C0 = clerp(RS2.C0,CFrame.new(1.12350154, -2.19243288, 0.735727072, -0.863375664, 0.492343336, -0.110365942, -0.501357257, -0.861730874, 0.0778523907, -0.0567756221, 0.122548625, 0.990837216),Alpha)
			RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33202672, -0.0549109876, 0.413173437, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RM2.C0 = clerp(RM2.C0,CFrame.new(1.255373, -2.24170375, 0.251963019, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RM3.C0 = clerp(RM3.C0,CFrame.new(1.5395211, -1.79571998, 0.245096236, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RM1.C0 = clerp(RM1.C0,CFrame.new(-2.323915, -0.100503564, -0.0738568455, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP2.C0 = clerp(RP2.C0,CFrame.new(1.25615263, -2.2444911, -0.000960677862, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32391214, -0.103389643, -0.32676369, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP3.C0 = clerp(RP3.C0,CFrame.new(1.54112804, -1.79812348, -0.0077983737, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			LR3.C0 = clerp(LR3.C0,CFrame.new(1.45705879, -1.89598083, -0.385099679, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LT3.C0 = clerp(LT3.C0,CFrame.new(1.40952325, -1.97281897, 0.526059091, 0.671315253, 0.714624286, 0.196591273, 0.679187477, -0.699324131, 0.222823307, 0.296715915, -0.0160623491, -0.954830825),Alpha)
			LT1.C0 = clerp(LT1.C0,CFrame.new(-2.3832376, -0.197773144, -0.480284959, 0.00441737333, -0.922104299, 0.38691628, -0.999989927, -0.00441598753, 0.000892503187, 0.000885637477, -0.38691628, -0.922114491),Alpha)
			LT2.C0 = clerp(LT2.C0,CFrame.new(0.99463892, -2.34625196, 0.514375746, 0.851474643, 0.457154393, 0.256906241, 0.432377875, -0.889242351, 0.14932391, 0.296715945, -0.0160649493, -0.954830766),Alpha)
			LR2.C0 = clerp(LR2.C0,CFrame.new(1.14547455, -2.31078553, -0.378219754, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32390952, -0.272462696, -0.121384747, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS1.C0 = clerp(LS1.C0,CFrame.new(-2.33202744, -0.23541376, -0.383374184, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM3.C0 = clerp(LM3.C0,CFrame.new(1.45572555, -1.89398086, -0.174214169, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LS3.C0 = clerp(LS3.C0,CFrame.new(1.49722528, -1.81738269, -0.636980891, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LP2.C0 = clerp(LP2.C0,CFrame.new(1.14411652, -2.30584955, 0.0697559863, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32390475, -0.267352402, 0.326590419, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32390952, -0.270056516, 0.0895184278, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS2.C0 = clerp(LS2.C0,CFrame.new(1.11611402, -2.23573709, -0.631830394, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LM2.C0 = clerp(LM2.C0,CFrame.new(1.14484239, -2.30846381, -0.167330459, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP3.C0 = clerp(LP3.C0,CFrame.new(1.45421648, -1.89172983, 0.0628871024, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
		end
		for i = 0, 1, 0.1 do
			swait()
			RJ.C0 = clerp(RJ.C0,CFrame.new(-2.90067487e-22, -1.97005653, 0, 1.00000012, 1.47238149e-22, -9.31322575e-10, 1.47238149e-22, 1, 0, -9.31322575e-10, 0, 1.00000012),0.3)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.500014246, -1.98754454, -0.674639285, 1.00000012, -8.39726999e-06, 1.92523003e-05, -1.22691697e-14, 0.916591704, 0.399824798, -2.10031867e-05, -0.399824798, 0.916591704),0.3)
			RH.C0 = clerp(RH.C0,CFrame.new(0.499993473, -3.04685092, 0.134115517, 1, -5.18932939e-05, 3.91616486e-05, -1.22692697e-14, 0.602376044, 0.798212409, -6.50119036e-05, -0.798212469, 0.602376044),0.3)
			LS.C0 = clerp(LS.C0,CFrame.new(-0.715852439, 1.21197295, -1.48773456, 1.00000012, 8.87550414e-07, 4.703179e-07, -1.22691223e-14, 0.468247831, -0.883597195, -1.00489706e-06, 0.883597255, 0.468247861),0.3)
			RS.C0 = clerp(RS.C0,CFrame.new(1.70605004, 0.556896687, 0.0270632394, 0.986828983, -0.140310809, -0.0805086344, 0.140768006, 0.990042686, 3.39962594e-06, 0.0797065049, -0.0113363955, 0.996753991),0.3)
			NK.C0 = clerp(NK.C0,CFrame.new(-1.38261557e-05, 2.72929239, -0.13027066, 1, 3.25473957e-06, -1.0503456e-05, -1.22690944e-14, 0.955193102, 0.295983344, 1.09951943e-05, -0.295983374, 0.955193102),0.3)
			RT3.C0 = clerp(RT3.C0,CFrame.new(1.61375785, -1.76555657, -0.513190091, -0.55665189, 0.810403109, 0.182717308, -0.771965683, -0.585860789, 0.24665007, 0.306932837, -0.00375326723, 0.951723814),Alpha)
			RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36366892, -0.0526333712, 0.463351786, 0.00432222337, -0.925635338, 0.378392518, 0.999990284, 0.00432161195, -0.000850837678, -0.000847693533, 0.378392458, 0.925644875),Alpha)
			RT2.C0 = clerp(RT2.C0,CFrame.new(1.2538718, -2.21410918, -0.524856687, -0.771987855, 0.583863854, 0.251272887, -0.556619704, -0.811843097, 0.176310748, 0.306935579, -0.00375370681, 0.95172298),Alpha)
			RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32391119, -0.0978909656, 0.155143276, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RR2.C0 = clerp(RR2.C0,CFrame.new(1.25468278, -2.23918462, 0.480947077, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RR3.C0 = clerp(RR3.C0,CFrame.new(1.53806043, -1.79355478, 0.474106222, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RS3.C0 = clerp(RS3.C0,CFrame.new(1.49055731, -1.77398741, 0.730609715, -0.660822511, 0.739318788, -0.129311174, -0.748390913, -0.662110388, 0.0389984399, -0.0567859784, 0.12254636, 0.990836978),Alpha)
			RS2.C0 = clerp(RS2.C0,CFrame.new(1.12350154, -2.19243288, 0.735727072, -0.863375664, 0.492343336, -0.110365942, -0.501357257, -0.861730874, 0.0778523907, -0.0567756221, 0.122548625, 0.990837216),Alpha)
			RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33202672, -0.0549109876, 0.413173437, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RM2.C0 = clerp(RM2.C0,CFrame.new(1.255373, -2.24170375, 0.251963019, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RM3.C0 = clerp(RM3.C0,CFrame.new(1.5395211, -1.79571998, 0.245096236, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RM1.C0 = clerp(RM1.C0,CFrame.new(-2.323915, -0.100503564, -0.0738568455, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP2.C0 = clerp(RP2.C0,CFrame.new(1.25615263, -2.2444911, -0.000960677862, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32391214, -0.103389643, -0.32676369, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP3.C0 = clerp(RP3.C0,CFrame.new(1.54112804, -1.79812348, -0.0077983737, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			LR3.C0 = clerp(LR3.C0,CFrame.new(1.45705879, -1.89598083, -0.385099679, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LT3.C0 = clerp(LT3.C0,CFrame.new(1.40952325, -1.97281897, 0.526059091, 0.671315253, 0.714624286, 0.196591273, 0.679187477, -0.699324131, 0.222823307, 0.296715915, -0.0160623491, -0.954830825),Alpha)
			LT1.C0 = clerp(LT1.C0,CFrame.new(-2.3832376, -0.197773144, -0.480284959, 0.00441737333, -0.922104299, 0.38691628, -0.999989927, -0.00441598753, 0.000892503187, 0.000885637477, -0.38691628, -0.922114491),Alpha)
			LT2.C0 = clerp(LT2.C0,CFrame.new(0.99463892, -2.34625196, 0.514375746, 0.851474643, 0.457154393, 0.256906241, 0.432377875, -0.889242351, 0.14932391, 0.296715945, -0.0160649493, -0.954830766),Alpha)
			LR2.C0 = clerp(LR2.C0,CFrame.new(1.14547455, -2.31078553, -0.378219754, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32390952, -0.272462696, -0.121384747, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS1.C0 = clerp(LS1.C0,CFrame.new(-2.33202744, -0.23541376, -0.383374184, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM3.C0 = clerp(LM3.C0,CFrame.new(1.45572555, -1.89398086, -0.174214169, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LS3.C0 = clerp(LS3.C0,CFrame.new(1.49722528, -1.81738269, -0.636980891, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LP2.C0 = clerp(LP2.C0,CFrame.new(1.14411652, -2.30584955, 0.0697559863, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32390475, -0.267352402, 0.326590419, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32390952, -0.270056516, 0.0895184278, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS2.C0 = clerp(LS2.C0,CFrame.new(1.11611402, -2.23573709, -0.631830394, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LM2.C0 = clerp(LM2.C0,CFrame.new(1.14484239, -2.30846381, -0.167330459, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP3.C0 = clerp(LP3.C0,CFrame.new(1.45421648, -1.89172983, 0.0628871024, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
		end
		combo = 2
	elseif(combo == 2)then
		for i = 0, 1, 0.1 do
			swait()
			RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0719693825, -0.353631526, -0.413391739, 0.962401688, -0.001369123, -0.27162689, 0.033931002, 0.992760718, 0.115217045, 0.269502699, -0.120101668, 0.955481052),0.3)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.433303148, -3.2528758, 0.0569465011, 0.962403357, -0.0090713799, 0.27147305, -0.00136984326, 0.999267459, 0.0382471755, -0.271621138, -0.0371810794, 0.961685956),0.3)
			RH.C0 = clerp(RH.C0,CFrame.new(0.53891623, -3.13483143, -0.180416405, 0.962402523, 0.0551176146, 0.265976518, -0.00136948295, 0.980168343, -0.198162407, -0.271623999, 0.190347731, 0.943391919),0.3)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.6279037, 0.576236188, 2.61447967e-05, 0.990744352, 0.135740772, -2.68220901e-07, -0.135740772, 0.990744531, 6.82473183e-06, 1.1920929e-06, -6.73532486e-06, 1.00000012),0.3)
			RS.C0 = clerp(RS.C0,CFrame.new(1.49999416, 1.29762685, 0.522052169, 1.00000012, -3.66717577e-05, -5.24520874e-05, -2.49557197e-05, 0.5315485, -0.847027957, 5.89191914e-05, 0.847027898, 0.53154856),0.3)
			NK.C0 = clerp(NK.C0,CFrame.new(0.0391526669, 2.73919129, -0.109213173, 0.962416291, -0.0704210624, 0.262289673, -4.28291969e-06, 0.965792358, 0.259317219, -0.271578759, -0.249572277, 0.929493904),0.3)
			RT3.C0 = clerp(RT3.C0,CFrame.new(1.61375785, -1.76555657, -0.513190091, -0.55665189, 0.810403109, 0.182717308, -0.771965683, -0.585860789, 0.24665007, 0.306932837, -0.00375326723, 0.951723814),Alpha)
			RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36366892, -0.0526333712, 0.463351786, 0.00432222337, -0.925635338, 0.378392518, 0.999990284, 0.00432161195, -0.000850837678, -0.000847693533, 0.378392458, 0.925644875),Alpha)
			RT2.C0 = clerp(RT2.C0,CFrame.new(1.2538718, -2.21410918, -0.524856687, -0.771987855, 0.583863854, 0.251272887, -0.556619704, -0.811843097, 0.176310748, 0.306935579, -0.00375370681, 0.95172298),Alpha)
			RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32391119, -0.0978909656, 0.155143276, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RR2.C0 = clerp(RR2.C0,CFrame.new(1.25468278, -2.23918462, 0.480947077, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RR3.C0 = clerp(RR3.C0,CFrame.new(1.53806043, -1.79355478, 0.474106222, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RS3.C0 = clerp(RS3.C0,CFrame.new(1.49055731, -1.77398741, 0.730609715, -0.660822511, 0.739318788, -0.129311174, -0.748390913, -0.662110388, 0.0389984399, -0.0567859784, 0.12254636, 0.990836978),Alpha)
			RS2.C0 = clerp(RS2.C0,CFrame.new(1.12350154, -2.19243288, 0.735727072, -0.863375664, 0.492343336, -0.110365942, -0.501357257, -0.861730874, 0.0778523907, -0.0567756221, 0.122548625, 0.990837216),Alpha)
			RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33202672, -0.0549109876, 0.413173437, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RM2.C0 = clerp(RM2.C0,CFrame.new(1.255373, -2.24170375, 0.251963019, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RM3.C0 = clerp(RM3.C0,CFrame.new(1.5395211, -1.79571998, 0.245096236, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RM1.C0 = clerp(RM1.C0,CFrame.new(-2.323915, -0.100503564, -0.0738568455, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP2.C0 = clerp(RP2.C0,CFrame.new(1.25615263, -2.2444911, -0.000960677862, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32391214, -0.103389643, -0.32676369, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP3.C0 = clerp(RP3.C0,CFrame.new(1.54112804, -1.79812348, -0.0077983737, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			LR3.C0 = clerp(LR3.C0,CFrame.new(1.45705879, -1.89598083, -0.385099679, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LT3.C0 = clerp(LT3.C0,CFrame.new(1.40952325, -1.97281897, 0.526059091, 0.671315253, 0.714624286, 0.196591273, 0.679187477, -0.699324131, 0.222823307, 0.296715915, -0.0160623491, -0.954830825),Alpha)
			LT1.C0 = clerp(LT1.C0,CFrame.new(-2.3832376, -0.197773144, -0.480284959, 0.00441737333, -0.922104299, 0.38691628, -0.999989927, -0.00441598753, 0.000892503187, 0.000885637477, -0.38691628, -0.922114491),Alpha)
			LT2.C0 = clerp(LT2.C0,CFrame.new(0.99463892, -2.34625196, 0.514375746, 0.851474643, 0.457154393, 0.256906241, 0.432377875, -0.889242351, 0.14932391, 0.296715945, -0.0160649493, -0.954830766),Alpha)
			LR2.C0 = clerp(LR2.C0,CFrame.new(1.14547455, -2.31078553, -0.378219754, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32390952, -0.272462696, -0.121384747, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS1.C0 = clerp(LS1.C0,CFrame.new(-2.33202744, -0.23541376, -0.383374184, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM3.C0 = clerp(LM3.C0,CFrame.new(1.45572555, -1.89398086, -0.174214169, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LS3.C0 = clerp(LS3.C0,CFrame.new(1.49722528, -1.81738269, -0.636980891, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LP2.C0 = clerp(LP2.C0,CFrame.new(1.14411652, -2.30584955, 0.0697559863, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32390475, -0.267352402, 0.326590419, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32390952, -0.270056516, 0.0895184278, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS2.C0 = clerp(LS2.C0,CFrame.new(1.11611402, -2.23573709, -0.631830394, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LM2.C0 = clerp(LM2.C0,CFrame.new(1.14484239, -2.30846381, -0.167330459, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP3.C0 = clerp(LP3.C0,CFrame.new(1.45421648, -1.89172983, 0.0628871024, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
		end
		for i = 0, 1, 0.1 do
			swait()
			RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0813708305, -2.69321704, -1.23718476, 0.962178767, -0.00437435461, -0.272383779, 0.108303025, 0.923599899, 0.367741197, 0.249964997, -0.383332729, 0.889142096),0.3)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.612414181, -2.61676741, -0.58435607, 0.962175846, -0.176673144, 0.207375079, -0.00436975388, 0.751099944, 0.660174072, -0.272394449, -0.63610971, 0.721918225),0.3)
			RH.C0 = clerp(RH.C0,CFrame.new(0.631126463, -1.96321011, 0.126580298, 0.962188601, -0.0960594863, 0.254884005, -0.00438930653, 0.930161417, 0.367124468, -0.272349089, -0.354361773, 0.894569099),0.3)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.62790465, 0.576236606, 1.48463241e-05, 0.99074477, 0.13573873, 1.93715096e-07, -0.135738745, 0.99074465, 1.45435333e-05, 1.75833702e-06, -1.44839287e-05, 1),0.3)
			RS.C0 = clerp(RS.C0,CFrame.new(0.0498194098, 1.70575428, -1.8470602, 0.881212294, 0.303609133, -0.362334967, -0.352427393, -0.0888988078, -0.931607127, -0.315055639, 0.948640347, 0.0286614001),0.3)
			NK.C0 = clerp(NK.C0,CFrame.new(0.0391607434, 2.73919177, -0.10924077, 0.96241641, -0.0704233274, 0.262288958, -4.28315252e-06, 0.965789855, 0.259325653, -0.27157864, -0.249580353, 0.929491699),0.3)
			RT3.C0 = clerp(RT3.C0,CFrame.new(1.61375785, -1.76555657, -0.513190091, -0.55665189, 0.810403109, 0.182717308, -0.771965683, -0.585860789, 0.24665007, 0.306932837, -0.00375326723, 0.951723814),Alpha)
			RT1.C0 = clerp(RT1.C0,CFrame.new(-2.36366892, -0.0526333712, 0.463351786, 0.00432222337, -0.925635338, 0.378392518, 0.999990284, 0.00432161195, -0.000850837678, -0.000847693533, 0.378392458, 0.925644875),Alpha)
			RT2.C0 = clerp(RT2.C0,CFrame.new(1.2538718, -2.21410918, -0.524856687, -0.771987855, 0.583863854, 0.251272887, -0.556619704, -0.811843097, 0.176310748, 0.306935579, -0.00375370681, 0.95172298),Alpha)
			RR1.C0 = clerp(RR1.C0,CFrame.new(-2.32391119, -0.0978909656, 0.155143276, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RR2.C0 = clerp(RR2.C0,CFrame.new(1.25468278, -2.23918462, 0.480947077, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RR3.C0 = clerp(RR3.C0,CFrame.new(1.53806043, -1.79355478, 0.474106222, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RS3.C0 = clerp(RS3.C0,CFrame.new(1.49055731, -1.77398741, 0.730609715, -0.660822511, 0.739318788, -0.129311174, -0.748390913, -0.662110388, 0.0389984399, -0.0567859784, 0.12254636, 0.990836978),Alpha)
			RS2.C0 = clerp(RS2.C0,CFrame.new(1.12350154, -2.19243288, 0.735727072, -0.863375664, 0.492343336, -0.110365942, -0.501357257, -0.861730874, 0.0778523907, -0.0567756221, 0.122548625, 0.990837216),Alpha)
			RS1.C0 = clerp(RS1.C0,CFrame.new(-2.33202672, -0.0549109876, 0.413173437, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RM2.C0 = clerp(RM2.C0,CFrame.new(1.255373, -2.24170375, 0.251963019, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RM3.C0 = clerp(RM3.C0,CFrame.new(1.5395211, -1.79571998, 0.245096236, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			RM1.C0 = clerp(RM1.C0,CFrame.new(-2.323915, -0.100503564, -0.0738568455, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP2.C0 = clerp(RP2.C0,CFrame.new(1.25615263, -2.2444911, -0.000960677862, -0.837398887, 0.534489512, -0.114386044, -0.543847382, -0.835691392, 0.0764864087, -0.0547102317, 0.12625818, 0.990487635),Alpha)
			RP1.C0 = clerp(RP1.C0,CFrame.new(-2.32391214, -0.103389643, -0.32676369, 1.57009345e-06, -1.00000012, -2.98023224e-08, 1.00000012, 1.5682308e-06, -4.15183604e-06, 4.15369868e-06, -2.98023224e-08, 1.00000012),Alpha)
			RP3.C0 = clerp(RP3.C0,CFrame.new(1.54112804, -1.79812348, -0.0077983737, -0.622754991, 0.771082699, -0.132693976, -0.780500948, -0.624092042, 0.0364325941, -0.0547206923, 0.126256362, 0.990487337),Alpha)
			LR3.C0 = clerp(LR3.C0,CFrame.new(1.45705879, -1.89598083, -0.385099679, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LT3.C0 = clerp(LT3.C0,CFrame.new(1.40952325, -1.97281897, 0.526059091, 0.671315253, 0.714624286, 0.196591273, 0.679187477, -0.699324131, 0.222823307, 0.296715915, -0.0160623491, -0.954830825),Alpha)
			LT1.C0 = clerp(LT1.C0,CFrame.new(-2.3832376, -0.197773144, -0.480284959, 0.00441737333, -0.922104299, 0.38691628, -0.999989927, -0.00441598753, 0.000892503187, 0.000885637477, -0.38691628, -0.922114491),Alpha)
			LT2.C0 = clerp(LT2.C0,CFrame.new(0.99463892, -2.34625196, 0.514375746, 0.851474643, 0.457154393, 0.256906241, 0.432377875, -0.889242351, 0.14932391, 0.296715945, -0.0160649493, -0.954830766),Alpha)
			LR2.C0 = clerp(LR2.C0,CFrame.new(1.14547455, -2.31078553, -0.378219754, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LR1.C0 = clerp(LR1.C0,CFrame.new(-2.32390952, -0.272462696, -0.121384747, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS1.C0 = clerp(LS1.C0,CFrame.new(-2.33202744, -0.23541376, -0.383374184, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM3.C0 = clerp(LM3.C0,CFrame.new(1.45572555, -1.89398086, -0.174214169, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LS3.C0 = clerp(LS3.C0,CFrame.new(1.49722528, -1.81738269, -0.636980891, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
			LP2.C0 = clerp(LP2.C0,CFrame.new(1.14411652, -2.30584955, 0.0697559863, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP1.C0 = clerp(LP1.C0,CFrame.new(-2.32390475, -0.267352402, 0.326590419, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LM1.C0 = clerp(LM1.C0,CFrame.new(-2.32390952, -0.270056516, 0.0895184278, 1.38167525e-06, -1.00000012, -2.98023224e-08, -1.00000012, -1.37358438e-06, 4.16254625e-06, -4.16301191e-06, 2.23517418e-08, -1),Alpha)
			LS2.C0 = clerp(LS2.C0,CFrame.new(1.11611402, -2.23573709, -0.631830394, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LM2.C0 = clerp(LM2.C0,CFrame.new(1.14484239, -2.30846381, -0.167330459, 0.893870652, 0.431845099, -0.120437428, 0.43948552, -0.897118986, 0.0450592563, -0.0885880589, -0.0932076424, -0.991697848),Alpha)
			LP3.C0 = clerp(LP3.C0,CFrame.new(1.45421648, -1.89172983, 0.0628871024, 0.709296346, 0.693098009, -0.128506631, 0.699321926, -0.714791417, 0.00471635535, -0.088586539, -0.0932127982, -0.99169755),Alpha)
		end
		combo = 1
	end
	lastClick = time()
	neutralAnims = true
	Attack = false
end
mouse.Button1Down:connect(function()
	if(Attack)then return end
	ClickCombo()
end)
mouse.KeyDown:connect(function(k)
	if(Attack)then return end	
	if(k == '\\')then
		FuckYou()
	elseif(k == 'q')then
		SpitAcid()
	elseif(k == 'e')then
		Stomp()
	elseif(k == 't')then
		Taunt()
	elseif(k == 'f')then
		HandOut()
	elseif(k == 'r')then
		Eat()
	elseif(k == 'y')then
		torso.CFrame = mouse.Hit*CF.N(0,PlayerSize+.5,0)
	end
end)

runService.RenderStepped:connect(function()
	if(not Attack and combo ~= 1 and time()-lastClick > 0.4)then
		combo = 1
	end
end)
