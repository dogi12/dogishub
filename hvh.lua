-------------------------------------------
--He who has lost everything.--
-------------------------------------------
--By CKbackup--
---------------

player = game.Players.LocalPlayer
mouse = player:GetMouse()
chara = player.Character.Reanimate
equipped = false
del = false
attacking = false
atkd = false
hum = chara:FindFirstChildOfClass("Humanoid")
debby = game.Debris

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.03333333333333
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
    for i = 0, num*1 do
      ArtificialHB.Event:wait()
    end
  end
end

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

Scythe = New("Model",chara,"Scythe",{})
HandlePart = New("Part",Scythe,"HandlePart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 6.19999981, 0.399999976),CFrame = CFrame.new(-39.3999939, 6.70000172, -6.59999561, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("CylinderMesh",HandlePart,"Mesh",{Scale = Vector3.new(0.699999988, 1, 0.699999988),})
GWeld = New("ManualWeld",HandlePart,"GWeld",{Part0 = HandlePart,Part1 = chara["Right Arm"],C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.258819342, -0.965926528, 0, 0.965926528, 0.258819342),C1 = CFrame.new(-0.0999946594, 2.85001707, -0.979468584, -1, 0, 0, 0, -5.0663067e-07, -1, 0, -1, 5.0663067e-07),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.399999976),CFrame = CFrame.new(-39.3999939, 8.10000229, -6.59999561, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 1.40000057, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.999999821, 1),CFrame = CFrame.new(-39.3999939, 9.89999485, -5.70000172, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.19999313, 0.899993896, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.400000036, 0.200000003),CFrame = CFrame.new(-39.3999939, 8.40002728, -6.89999866, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, 0, 0.0500000007),Scale = Vector3.new(0.5, 1, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 1.70002556, -0.300003052, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 8.10000992, -6.89999866, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, 0, 0.100000001),Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 1.4000082, -0.300003052, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-39.3999786, 9.89999485, -6.59998035, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, 0, 0.100000001),Scale = Vector3.new(0.5, 1, 0.899999976),MeshId = "http://www.roblox.com/asset/?id=420164161",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(1.49905682e-05, 3.19999313, 1.50203705e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 8.30002594, -6.70000172, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, 0, 0.0500000007),Scale = Vector3.new(0.5, 1, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 1.60002422, -0.100006104, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.290000021, 0.580000043),CFrame = CFrame.new(-39.3999939, 9.85499287, -2.84000158, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 3.15499115, 3.75999403, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.730000019),CFrame = CFrame.new(-39.3999939, 9.29999256, -5.63499975, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 2.59999084, 0.96499598, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 1.55000007),CFrame = CFrame.new(-39.3999939, 10.3799906, -5.22499561, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.67998886, 1.375, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 1, 0.75),CFrame = CFrame.new(-39.3999939, 9.89999294, -4.82500172, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.19999123, 1.7749939, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.600000024, 0.800000012),CFrame = CFrame.new(-39.3999939, 9.89999294, -4.09001637, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.19999123, 2.50997901, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.75),CFrame = CFrame.new(-39.3999939, 9.20001698, -5.62500477, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.50001526, 0.974990964, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 1.52999997),CFrame = CFrame.new(-39.3999939, 10.1699905, -4.43503284, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.46998882, 2.16496301, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999946, 0.200000003, 1.31999993),CFrame = CFrame.new(-39.3999939, 9.9899931, -3.74002552, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.28999138, 2.85997009, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 1.56000006),CFrame = CFrame.new(-39.3999939, 9.40000534, -5.22002172, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.70000362, 1.37997389, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.280000031, 0.74000001),CFrame = CFrame.new(-39.3999939, 9.85999298, -3.45001674, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.15999126, 3.14997888, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.999999821, 1),CFrame = CFrame.new(-39.3999939, 9.89999294, -5.70000172, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.19999123, 0.899993896, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 1.5200001),CFrame = CFrame.new(-39.3999939, 9.61998653, -4.44002247, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.91998482, 2.15997291, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.400000036, 0.800000012),CFrame = CFrame.new(-39.3999939, 9.80000305, -2.60002661, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 3.10000134, 3.99996901, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 1.60000002),CFrame = CFrame.new(-39.3999939, 9.30001068, -5.20001698, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.60000896, 1.39997888, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 1.60000002),CFrame = CFrame.new(-39.3999939, 10.499999, -5.20000172, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.79999733, 1.3999939, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 1.60000002),CFrame = CFrame.new(-39.3999939, 10.3000011, -4.40002966, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.59999943, 2.19996595, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.800000012),CFrame = CFrame.new(-39.3999939, 9.10002708, -5.60001087, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.40002537, 0.99998498, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.800000012, 0.709999979),CFrame = CFrame.new(-39.3999939, 9.83998299, -4.84500551, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.13998127, 1.75498998, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 1.52999997),CFrame = CFrame.new(-39.3999939, 10.1399765, -4.46503162, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.43997478, 2.13496399, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.370000064),CFrame = CFrame.new(-39.3999939, 9.84998894, -2.94499683, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 3.14998722, 3.65499878, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.730000019),CFrame = CFrame.new(-39.3999939, 9.33998299, -5.67499256, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 2.63998127, 0.925002933, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.789999843, 1),CFrame = CFrame.new(-39.3999939, 9.83498859, -5.70000172, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.13498688, 0.899993896, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.290000021, 1.56000006),CFrame = CFrame.new(-39.3999939, 9.53499508, -5.29001379, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.83499336, 1.30998194, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 1.50000012),CFrame = CFrame.new(-39.3999939, 10.3099785, -5.24998951, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.60997677, 1.35000587, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.74000001),CFrame = CFrame.new(-39.3999939, 9.85999107, -3.45001674, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.15998936, 3.14997888, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999946, 0.200000003, 1.31999993),CFrame = CFrame.new(-39.3999939, 9.91998863, -3.77002478, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.21998692, 2.82997084, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.400000036, 0.200000003),CFrame = CFrame.new(-39.3999939, 0.200076103, -6.70000172, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, -6.49992561, -0.100006104, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.600000024, 0.800000012),CFrame = CFrame.new(-39.3999939, 9.90000057, -4.00001955, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.19999886, 2.59997606, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.400000006),CFrame = CFrame.new(-39.3999939, 0.700006008, -7.00000477, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, -5.99999571, -0.400009155, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 1.60000002),CFrame = CFrame.new(-39.3999939, 9.49999905, -4.40001392, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.79999733, 2.19998193, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 1, 0.800000012),CFrame = CFrame.new(-39.3999939, 9.90000057, -4.80000782, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.19999886, 1.79998791, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.399999976),CFrame = CFrame.new(-39.3999939, 0.700006008, -6.59999561, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, -5.99999571, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.400000036, 0.200000003),CFrame = CFrame.new(-39.3999939, 0.200015068, -6.50000477, 1, 0, 0, 0, -1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, -6.49998665, 0.0999908447, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.470000029, 0.800000012),CFrame = CFrame.new(-39.3999939, 9.87498665, -4.1200304, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.17498493, 2.47996497, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.400000036, 0.600000024),CFrame = CFrame.new(-39.3999939, 9.80000305, -3.30003881, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.10000134, 3.2999568, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 1.5200001),CFrame = CFrame.new(-39.3999939, 9.65997887, -4.489995, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.95997715, 2.11000085, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.800000012),CFrame = CFrame.new(-39.3999939, 9.29999733, -5.59999561, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 2.59999561, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.75),CFrame = CFrame.new(-39.3999939, 9.27001095, -5.67499256, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.57000923, 0.925002933, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.399999976),CFrame = CFrame.new(-39.3999939, 6.50003672, -6.60001087, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, -0.199965, -1.50203705e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 1.4000001, 0.200000003),CFrame = CFrame.new(-39.3999939, 7.3000679, -6.30000782, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 0.600066185, 0.299987912, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 6.50005674, -6.30000782, 1, 0, 0, 0, -1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, 0, 0.100000001),Scale = Vector3.new(0.5, 1, 1.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, -0.199944973, 0.299987912, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 6.70007372, -6.50000477, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, 0, 0.100000001),Scale = Vector3.new(0.5, 1, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 7.20024109e-05, 0.0999908447, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 7.30000687, -6.89999866, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, 0, 0.100000001),Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 0.60000515, -0.300003052, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.400000036, 0.200000003),CFrame = CFrame.new(-39.3999939, 7.60001373, -6.89999866, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, 0, 0.0500000007),Scale = Vector3.new(0.5, 1, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 0.900012016, -0.300003052, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 1.39999998),CFrame = CFrame.new(-39.3999939, 10.1000013, -3.70003271, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 3.39999962, 2.8999629, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 7.50002098, -6.70000172, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, 0, 0.0500000007),Scale = Vector3.new(0.5, 1, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 0.800019264, -0.100006104, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.399999976),CFrame = CFrame.new(-39.3999939, 7.29999208, -6.59999561, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 0.599990368, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.600000024, 0.200000003),CFrame = CFrame.new(-39.3999939, 1.10002279, -7.10001087, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, -5.59997892, -0.50001502, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.600000024, 0.200000003),CFrame = CFrame.new(-39.3999939, 1.10006189, -6.10001087, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, -5.59993982, 0.49998498, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 0.900043964, -6.3000226, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, -5.79995775, 0.299972892, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 0.900006771, -6.89999866, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, -5.79999495, -0.300003052, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.400000036, 0.200000003),CFrame = CFrame.new(-39.3999939, 0.600058079, -6.50000477, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, -6.09994364, 0.0999908447, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.400000006),CFrame = CFrame.new(-39.3999939, 0.70003891, -6.2000165, 1, 0, 0, 0, -1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, -5.99996281, 0.399978995, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.400000036, 0.200000003),CFrame = CFrame.new(-39.3999939, 0.600000858, -6.70000172, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, -6.10000086, -0.100006104, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.600000024, 0.200000003),CFrame = CFrame.new(-39.3999939, 1.10001707, -6.70000172, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, 0, 0.0500000007),Scale = Vector3.new(1.04999995, 1, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, -5.59998465, -0.100006104, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 0.900078773, -6.50000477, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.04999995, 1, 0.800000012),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, -5.79992294, 0.0999908447, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.600000024, 0.200000003),CFrame = CFrame.new(-39.3999939, 1.10007095, -6.50000477, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, 0, 0.0500000007),Scale = Vector3.new(1.04999995, 1, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, -5.59993076, 0.0999908447, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 0.900025845, -6.70000172, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.04999995, 1, 0.800000012),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, -5.79997587, -0.100006104, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 2.79999995, 0.399999976),CFrame = CFrame.new(-39.3999939, 2.20001125, -6.59999561, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, -4.49999046, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 6.79999971, 0.399999976),CFrame = CFrame.new(-39.3999939, 7.00000572, -6.59999561, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 9.10000038, 0.200000003),MeshId = "http://www.roblox.com/asset/?id=1033714",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C1 = CFrame.new(0, 0.300004005, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.799999952, 0.400000036, 0.400000006),CFrame = CFrame.new(-39.3999939, 10.540019, -6.69998646, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.400000006, 1),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872),C1 = CFrame.new(0, 3.84001732, -0.0999910831, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Hitbox = New("Part",Scythe,"Hitbox",{Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.400000006, 1.80000019, 4.80000019),CFrame = CFrame.new(-39.3999786, 9.89999485, -4.59998035, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Weld = New("ManualWeld",Hitbox,"Weld",{Part0 = Hitbox,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(1.49905682e-05, 3.19999313, 2.00001502, 1, 0, 0, 0, 1, 0, 0, 0, 1),})

sch = Scythe:GetChildren()

RightArm = New("Model",chara,"RightArm",{})
MainPart = New("Part",RightArm,"MainPart",{Transparency = 1,Transparency = 1,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(0.5, 3.00000787, -3.50019717, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Right Arm"],C1 = CFrame.new(0, -1.00135803e-005, -0.000197172165, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Emit2Part = New("Part",RightArm,"Emit2Part",{BrickColor = BrickColor.new("Hot pink"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(0.5, 2.10001373, -3.5001967, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0.74902),})
Mesh = New("SpecialMesh",Emit2Part,"Mesh",{Scale = Vector3.new(1.29999995, 1.29999995, 1.29999995),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Emit2Part,"Weld",{Part0 = Emit2Part,Part1 = MainPart,C1 = CFrame.new(0, -0.899994135, 4.76837158e-007, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
LeftArm = New("Model",chara,"LeftArm",{})
MainPart = New("Part",LeftArm,"MainPart",{Transparency = 1,Transparency = 1,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(-2.50000024, 3.00000787, -3.50019717, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Left Arm"],C1 = CFrame.new(-2.38418579e-007, -1.00135803e-005, -0.000197172165, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
EmitPart = New("Part",LeftArm,"EmitPart",{BrickColor = BrickColor.new("Hot pink"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-2.5, 2.10001373, -3.5001967, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0.74902),})
Mesh = New("SpecialMesh",EmitPart,"Mesh",{Scale = Vector3.new(1.29999995, 1.29999995, 1.29999995),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",EmitPart,"Weld",{Part0 = EmitPart,Part1 = MainPart,C1 = CFrame.new(2.38418579e-007, -0.899994135, 4.76837158e-007, 1, 0, 0, 0, 1, 0, 0, 0, 1),})

lach = LeftArm:GetChildren()
rach = RightArm:GetChildren()

--Sounds--
function LoadSnd(id,loop,vol,pit)
local snd = New("Sound",HandlePart,"Sound",{SoundId = "rbxassetid://"..id,Looped = loop,Volume = vol,Pitch = pit})
return snd
end
Music = LoadSnd(145655556,true,1,1)
Music.Parent = chara
StartUpSnd = LoadSnd(153092315,false,1,.8)
SwingSnd = LoadSnd(200633108,false,1,1)
Swing2Snd = LoadSnd(536642316,false,1,1)
HitSnd = LoadSnd(153092274,false,1,1)
HitPunchSnd = LoadSnd(153092227,false,1,1)
DodgeSnd = LoadSnd(232210079,false,1,1)
ExpSnd = LoadSnd(142070127,false,1,1)
FlySnd = LoadSnd(169445602,false,1,.5)
Fly2Snd = LoadSnd(142070127,false,1,.45)
BExpSnd = LoadSnd(168586621,false,1,.5)
ClawDashSnd = LoadSnd(62339698,false,1,.5)
ChargeSnd = LoadSnd(137463716,false,1,.3)
LasSnd = LoadSnd(162246701,false,1,1)
LasLoopSnd = LoadSnd(162246683,true,1,1)
ChatSnd = LoadSnd(565939471,false,1,1)
RStompSnd = LoadSnd(2760979,false,1,1)
SuperSnd = LoadSnd(153092315,false,1,.8)
GunFlameSnd = LoadSnd(48618802,false,1,1.5)
OrbSnd = LoadSnd(233091161,false,1,1)
ElectricSnd = LoadSnd(231917975,false,1,1)
LightsOutSnd = LoadSnd(231917794,false,1,1)
SkyKickSnd = LoadSnd(12222208,false,1,.5)
SkyBeamSnd = LoadSnd(183763487,false,1,1)
TargetSnd = LoadSnd(743521450,false,1,1)
SV1Snd = LoadSnd(28144425,false,1,.265)
SV2Snd = LoadSnd(2697431,false,1,.3)
SVHitSnd = LoadSnd(62339698,false,1,.3)
BurnSnd = LoadSnd(32791565,false,3,1)
BurningSnd = LoadSnd(31760113,true,5,1)
BlockedSnd = LoadSnd(357622136,false,1,1)
SwooshSnd = LoadSnd(158037267,false,1,1)
SawSnd = LoadSnd(248088589,true,1,1)
LaserSnd = LoadSnd(178452221,false,1,.6)
EyeSnd = LoadSnd(240517975,false,1,1)
Ult1Snd = LoadSnd(51322486,false,1,.5)
Ult2Snd = LoadSnd(90696602,false,1,.5)

--Play Sound in Part--
function PlaySnd(snd,part)
local sound = snd:Clone()
sound.PlayOnRemove = true
sound.Parent = part
sound:Destroy()
end

function CreateTrailObj(parent,color1,color2,ofsx,ofsz)
local Att1 =  New("Attachment",parent,"Att1",{Position = Vector3.new(ofsx,parent.Size.Y/2,ofsz)})
local Att2 =  New("Attachment",parent,"Att2",{Position = Vector3.new(ofsx,-(parent.Size.Y/2),ofsz)})
local TEff = New("Trail",parent,"TrailEff",{Color = ColorSequence.new({ColorSequenceKeypoint.new(0,BrickColor.new(color1).Color),ColorSequenceKeypoint.new(1,BrickColor.new(color2).Color)}),Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,.5),NumberSequenceKeypoint.new(1,1)}),Attachment0 = Att1,Attachment1 = Att2,Enabled = false,Lifetime = .5,MinLength = .001})
return TEff
end

SlashT = CreateTrailObj(Hitbox,"Really red","Really red",0,1)
PunchT = CreateTrailObj(chara["Left Arm"],"White","White",0,0)
KickT = CreateTrailObj(chara["Right Leg"],"White","White",0,0)

--Punch Hit Effect--
function PunchEff(pos)
local p = Instance.new("Part",game.Workspace)
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.Material = "Neon"
p.Anchored = true
p.CanCollide = false
p.CFrame = pos
local pm = Instance.new("SpecialMesh",p)
pm.MeshType = "Sphere"
local disp = coroutine.wrap(function()
for i = 0,1,.2 do
swait()
p.Transparency = i
pm.Scale = Vector3.new(2*i,2*i,2*i)
end
swait()
p:Destroy()
end)
disp()
end

function SlashEff(pos)
local p = Instance.new("Part",game.Workspace)
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.Material = "Neon"
p.Anchored = true
p.CanCollide = false
p.CFrame = pos * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local pm = Instance.new("SpecialMesh",p)
pm.MeshType = "Sphere"
local disp = coroutine.wrap(function()
for i = 0,1,.2 do
swait()
p.Transparency = i
pm.Scale = Vector3.new(.3,10*i,.3)
end
swait()
p:Destroy()
end)
disp()
end

--Handle Wielding--
idlec1 = CFrame.new(-0.0999946594, 2.85001707, -0.979468584, -1, 0, 0, 0, -5.0663067e-07, -1, 0, -1, 5.0663067e-07)
idlec0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.258819342, -0.965926528, 0, 0.965926528, 0.258819342)
uprightc1 = CFrame.new(-0.0999946594, -0.667956352, -2.79474664, -1, 0, 0, 0, -5.0663067e-07, -1, 0, -1, 5.0663067e-07)
uprightc0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
hold2c1 = CFrame.new(1.24673462, -4.13071823, 0.178261757, -0.866027713, -2.53317523e-07, -0.499995857, -0.499995708, 4.38765227e-07, 0.866030216, 1.88721394e-13, 1, -5.06639537e-07)
hold2c0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1.78813934e-07, -1.00000215, 0, 1.00000215, 1.78813934e-07)
--Damage Function--

--Explode Hitbox--
function ExHitbox(rad,pos,damage,env,toim,kby,kbx)
local E = Instance.new("Explosion") 
E.Position = pos
E.Parent = game.Workspace
E.BlastRadius = rad
E.BlastPressure = 0
E.Visible = false
E.Hit:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid")~=nil then
dealdmg(hit.Parent,damage,env,toim,kby,kbx)
end
end)
end

--Punch Touch--
dela = .5
punchactive = false
function punchhit(hit)
if punchactive == true then
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("IsHit")==nil then
dealdmg(hit.Parent,10,2,dela,0,5)
PlaySnd(HitPunchSnd,hit.Parent.Head)
PunchEff(hit.CFrame)
end
end
end
--Emit2Part.Touched:connect(punchhit)
EmitPart.Touched:connect(punchhit)

--Kick Touch--
kickactive = false
function kickhit(hit)
if kickactive == true then
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("IsHit")==nil then
PlaySnd(HitPunchSnd,hit.Parent.Head)
PunchEff(hit.CFrame)
dealdmg(hit.Parent,15,2,dela,0,10)
end
end
end
chara["Right Leg"].Touched:connect(kickhit)

--Blade Touch--
bladeactive = false
function bladehit(hit)
if bladeactive == true then
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("IsHit")==nil then
dealdmg(hit.Parent,15,2,.05,0,0)
PlaySnd(HitSnd,hit.Parent.Head)
SlashEff(hit.CFrame)
end
end
end
Hitbox.Touched:connect(bladehit)

--Grab Touch--
weldd = nil
exeact = false
exed = false
function grabhit(hit)
if exeact == true and exed == false then
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("IsHit")==nil then
PlaySnd(HitPunchSnd,hit.Parent.Head)
SlashEff(hit.CFrame)
hit.Parent:FindFirstChildOfClass("Humanoid").PlatformStand = true
local torsy = hit.Parent.Torso or hit.Parent.UpperTorso
weldd = New("ManualWeld",hit.Parent,"weldd",{Part0 = torsy,Part1 = Hitbox,})
PlaySnd(HitSnd,hit)
for i = 1, 6 do
local blo = Instance.new("Part",game.Workspace)
blo.Size = Vector3.new(.6,.05,.6)
blo.Material = "SmoothPlastic"
blo.BrickColor = BrickColor.new("Crimson")
blo.Position = weldd.Parent.Head.Position
blo.CFrame = weldd.Parent.Head.CFrame
debby:AddItem(blo,10)
end
exed = true
end
end
end
Hitbox.Touched:connect(grabhit)

--Chat Function--
function chatfunc(text)
local chat = coroutine.wrap(function()
if chara:FindFirstChild("TalkingBillBoard")~= nil then
chara:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",chara)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = chara.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(.6,0,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
coroutine.resume(coroutine.create(function()
while tecks2 ~= nil do
swait(.05)
tecks2.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3))
end
end))
for i = 1,string.len(text),1 do
tecks2.Text = string.sub(text,1,i)
swait(0.01)
end
swait(0)
for i = 1, 5 do
swait(.01)
tecks2.Position = tecks2.Position - UDim2.new(0,0,.05,0)
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.2
tecks2.TextTransparency = tecks2.TextTransparency + .2
end
naeeym2:Destroy()
end)
chat()
end

function onChatted(msg)
--chatfunc(msg)
end
player.Chatted:connect(onChatted)

--Clerp Animations--
TC = chara.HumanoidRootPart.RootJoint
HC = chara.Torso.Neck
RAC = chara.Torso["Right Shoulder"]
LAC = chara.Torso["Left Shoulder"]
RLC = chara.Torso["Right Hip"]
LLC = chara.Torso["Left Hip"]
TCF = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
HCF = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
RACF = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
LACF = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RLCF = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
LLCF = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RWF = CFrame.new(-1.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LWF = CFrame.new(1.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RLWF = CFrame.new(-.5, 2, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LLWF = CFrame.new(.5, 2, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW = Instance.new("Weld",HC.Parent)
RW.Part1 = HC.Parent
RW.Part0 = chara["Right Arm"]
RW.C0 = RWF
LW = Instance.new("Weld",HC.Parent)
LW.Part1 = HC.Parent
LW.Part0 = chara["Left Arm"]
LW.C0 = LWF
RLW = nil
LLW = nil
grp = Instance.new("Model",chara)

function AddLegWelds()
RLW = Instance.new("Weld",chara["Right Leg"])
RLW.Part1 = HC.Parent
RLW.Part0 = chara["Right Leg"]
RLW.C0 = RLWF
LLW = Instance.new("Weld",chara["Left Leg"])
LLW.Part1 = HC.Parent
LLW.Part0 = chara["Left Leg"]
LLW.C0 = LLWF
end

function DestroyLegWelds()
RLC = New("Motor6D",chara.Torso,"Right Hip",{Part0 = chara.Torso,Part1 = chara["Right Leg"],C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),})
LLC = New("Motor6D",chara.Torso,"Left Hip",{Part0 = chara.Torso,Part1 = chara["Left Leg"],C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
RLW:Destroy()
LLW:Destroy()
end

function clerp(a,b,c)
return a:lerp(b,c)
end

ITCF = TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(30))
IHCF = HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-30))
IRWF = (RWF + Vector3.new(1,1,1)) * CFrame.fromEulerAnglesXYZ(0,math.rad(105),math.rad(-60))
ILWF =  LWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(10))

function res()
TC.C0 = ITCF
HC.C0 = IHCF
RW.C0 = IRWF
LW.C0 = ILWF
end

--Intro--
hum.WalkSpeed = 0
Instance.new("ForceField",chara).Visible = false
for i = 1, #sch do
if sch[i] ~= Hitbox then
sch[i].Transparency = 1
end
end
swait(0)
ShadowHead = New("Part",chara,"ShadowHead",{BrickColor = BrickColor.new("Really black"),Size = Vector3.new(1.20000005, 0.600000024, 1),CFrame = CFrame.new(68.5999985, 0.700013041, 9.89999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
sMesh = New("SpecialMesh",ShadowHead,"Mesh",{Scale = Vector3.new(1.3, 1.5, 1.3),})
sWeld = New("ManualWeld",ShadowHead,"Weld",{Part0 = ShadowHead,Part1 = chara.Head,C1 = CFrame.new(0, 0.200000048, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
for i = 0,1,.05 do
swait()
ShadowHead.Transparency = 1-i
end
swait(0)
coroutine.resume(coroutine.create(function()
for i = 14,23,.025 do
swait()
--game.Lighting.ClockTime = i
end
while true do
swait()
--game.Lighting.ClockTime = 23
end
end))
AddLegWelds()
for i = 0,.6,.1 do
swait()
TC.C0 = clerp(TCF,TCF - Vector3.new(0,1,0),.4+i)
HC.C0 = clerp(HCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),.4+i)
RW.C0 = clerp(RWF,(RWF - Vector3.new(-.5,.5,-.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-70),0),.4+i)
LW.C0 = LWF
RLW.C0 = clerp(RLWF,RLWF - Vector3.new(0,1,-.5),.4+i)
LLW.C0 = clerp(LLWF,(LLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),.4+i)
end
ChargeSnd:Play()
for i = 1, 50 do
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really black")
jtrace.Size = Vector3.new(1,1,1)
jtrace.Position = chara.HumanoidRootPart.Position - Vector3.new(math.random(-7,7),2,math.random(-7,7))
jtrace.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(math.random(-7,7),2,math.random(-7,7))
jtrace.Anchored = true
jtrace.CanCollide = false
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshType = "Sphere"
coroutine.resume(coroutine.create(function()
for i = 0,1,.1 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(.5,15*i,.5)
end
jtrace:Destroy()
end))
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really black")
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = chara.HumanoidRootPart.Position - Vector3.new(0,2,0)
jtrace.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(0,2,0)
jtrace.Anchored = true
jtrace.CanCollide = false
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh.Scale = Vector3.new(1,2,1)
tmesh.Offset = Vector3.new(0,0,-.125)
coroutine.resume(coroutine.create(function()
for i = 0,1,.1 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(15*i,2-1*i,15*i)
jtrace.CFrame = jtrace.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(2),0)
end
jtrace:Destroy()
end))
swait(.02)
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really black")
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = chara.HumanoidRootPart.Position - Vector3.new(0,2,0)
jtrace.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(0,2,0)
jtrace.Anchored = true
jtrace.CanCollide = false
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh.Scale = Vector3.new(1,2,1)
tmesh.Offset = Vector3.new(0,0,-.125)
coroutine.resume(coroutine.create(function()
for i = 0,1,.1 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(15*i,2-1*i,15*i)
jtrace.CFrame = jtrace.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(-2),0)
end
jtrace:Destroy()
end))
swait(.02)
end
swait(0)
for i = 0,.6,.1 do
swait()
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),HCF,.4+i)
end
TargetSnd:Play()
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really red")
jtrace.Material = "Neon"
jtrace.Size = Vector3.new(.2,.2,.2)
jtrace.CanCollide = false
jtrace.Position = chara.Head.Position
jtrace.CFrame = chara.Head.CFrame
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshType = "Sphere"
local wwld = Instance.new("Weld",jtrace)
wwld.Part0 = jtrace
wwld.Part1 = chara.Head
wwld.C0 = CFrame.new(-.3,-.2,.65)
coroutine.resume(coroutine.create(function()
for i = 0,1,.1 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(1,30*i,1)
end
jtrace:Destroy()
end))
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really red")
jtrace.Material = "Neon"
jtrace.Size = Vector3.new(.2,.2,.2)
jtrace.CanCollide = false
jtrace.Position = chara.Head.Position
jtrace.CFrame = chara.Head.CFrame
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshType = "Sphere"
local wwld = Instance.new("Weld",jtrace)
wwld.Part0 = jtrace
wwld.Part1 = chara.Head
wwld.C0 = CFrame.new(-.3,-.2,.65)
coroutine.resume(coroutine.create(function()
for i = 0,1,.1 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(30*i,1,1)
end
jtrace:Destroy()
end))
swait(2)
Pemitter = Instance.new("ParticleEmitter",EmitPart)
Pemitter.Color = ColorSequence.new(Color3.new(0,0,0))
Pemitter.Size = NumberSequence.new(.5)
Pemitter.Texture = "rbxassetid://243344623"
Pemitter.Transparency = NumberSequence.new(0,1)
Pemitter.Acceleration = Vector3.new(0,4,0)
Pemitter.Lifetime = NumberRange.new(1)
Pemitter.Rate = 100
Pemitter.Rotation = NumberRange.new(0,360)
Pemitter.RotSpeed = NumberRange.new(100)
Pemitter.Speed = NumberRange.new(0)
ShadowHead:Destroy()
BExpSnd:Play()
Music:Play()
ExHitbox(20,chara.Torso.Position,5,2,.1,100,100)
-----------------------------------------
Void = nil
VoidParts = {}
Equipped = false

function RayCast(Position, Direction, MaxDistance, IgnoreList)
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Position, Direction.unit * (MaxDistance or 999.999)), IgnoreList) 
end

	Player = player
	Character = chara

	Humanoid = Character:FindFirstChildOfClass("Humanoid")
	Torso = Character:FindFirstChild("Torso")
	if not Player or not Humanoid or Humanoid.Health == 0 or not Torso then
		return
	end
	Equipped = true
	Void = Instance.new("Model")
	Void.Name = "Void"
	Angle = 0
	for i = 1, 1 do
		local VoidPart = Instance.new("Part")
		VoidPart.Name = "VoidPart"
		VoidPart.Transparency = 1
		VoidPart.BrickColor = BrickColor.new("Really black")
		VoidPart.Material = Enum.Material.Plastic
		VoidPart.Shape = Enum.PartType.Block
		VoidPart.FormFactor = Enum.FormFactor.Custom
		VoidPart.TopSurface = Enum.SurfaceType.Smooth
		VoidPart.BottomSurface = Enum.SurfaceType.Smooth
		VoidPart.Anchored = true
		VoidPart.CanCollide = false
		VoidPart.Locked = true
		VoidPart.Size = Vector3.new(10, 0.2, 10)
		local BlockMesh = Instance.new("BlockMesh")
		BlockMesh.Scale = Vector3.new(1, (1 + (0.005 * i)), 1)
		BlockMesh.Parent = VoidPart
		VoidPart.Parent = Void
		local Light = Instance.new("PointLight", VoidPart)
		Light.Color = Color3.new(1,0,0)
		Light.Brightness = 0
		Light.Range = 0

		
		table.insert(VoidParts, VoidPart)
	end
	Spawn(function()
		while Equipped and Humanoid.Parent and Humanoid.Health > 0 and Torso.Parent do
			if Angle == 360 then
				Angle = 0
			end
			Angle = Angle + 0.05
			local Hit, EndPosition = RayCast(Torso.Position, Vector3.new(0, -1, 0), (Torso.Size.Y * 6.5), {Character})
			if Hit then
				if not Void.Parent then
					Void.Parent = Character
				end
				for i, v in pairs(VoidParts) do
					v.CFrame = CFrame.new(Torso.Position.X, EndPosition.Y, Torso.Position.Z) * CFrame.Angles(0, (Angle + i), 0)
				end
			else
				Void.Parent = nil
			end
			wait()
		end
	end)
----------------------------------------------------------------
local jtrace = Instance.new("Part",chara)
jtrace.BrickColor = BrickColor.new("Really black")
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = chara.HumanoidRootPart.Position - Vector3.new(0,2,0)
jtrace.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(0,2,0)
jtrace.Anchored = true
jtrace.CanCollide = false
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh.Offset = Vector3.new(0,0,-.125)
local jtrace2 = Instance.new("Part",chara)
jtrace2.BrickColor = BrickColor.new("Really black")
jtrace2.Size = Vector3.new(0,0,0)
jtrace2.Position = chara.HumanoidRootPart.Position - Vector3.new(0,2,0)
jtrace2.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(0,2,0)
jtrace2.Anchored = true
jtrace2.CanCollide = false
local tmesh2 = Instance.new("SpecialMesh",jtrace2)
tmesh2.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh2.Offset = Vector3.new(0,0,-.125)
for i = 0,1,.01 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(50*i,20-17*i,50*i)
jtrace.CFrame = jtrace.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(10),0)
jtrace2.Transparency = i
tmesh2.Scale = Vector3.new(45*i,30*i,45*i)
jtrace2.CFrame = jtrace2.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(-10),0)
end
jtrace:Destroy()
jtrace2:Destroy()
swait(1)
for i = 0,.6,.1 do
swait()
TC.C0 = clerp(TCF,TCF - Vector3.new(0,1,0),.6-i)
HC.C0 = clerp(HCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),.6-i)
RW.C0 = clerp(RWF,(RWF - Vector3.new(-.5,.5,-.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-70),0),.6-i)
LW.C0 = LWF
RLW.C0 = clerp(RLWF,RLWF - Vector3.new(0,1,-.5),.6-i)
LLW.C0 = clerp(LLWF,(LLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),.6-i)
end
DestroyLegWelds()
swait(1)
for i = 0,.6,.1 do
swait()
TC.C0 = clerp(TCF,ITCF,.4+i)
HC.C0 = clerp(HCF,IHCF,.4+i)
RW.C0 = clerp(RWF,IRWF,.4+i)
LW.C0 = clerp(LWF,ILWF,.4+i)
end
res()
for a = 0,1,.1 do
swait()
for i = 1, #sch do
if sch[i] ~= Hitbox then
sch[i].Transparency = 1-a
end
end
end
hum.WalkSpeed = 20

--Saw--
function SawThrow()
del = true
res()
chatfunc("Carnage Saw.")
for i = 0,.6,.1 do
swait()
TC.C0 = clerp(ITCF,TCF,.4+i)
HC.C0 = clerp(IHCF,HCF,.4+i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(-.5,-.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(70),0),.4+i)
end
for i = 0,.6,.3 do
swait()
LW.C0 = clerp((LWF + Vector3.new(-.5,-.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(70),0),(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-50),0,math.rad(90)),.4+i)
end
for e = -2,2,2 do
	local missile = Instance.new("Part",game.Workspace)
	missile.Size = Vector3.new(3,3,.4)
	missile.Name = "Blast"	
	missile.CanCollide = false
	missile.TopSurface = 0
	missile.BottomSurface = 0
	missile.BrickColor = BrickColor.new("Crimson")
	missile.Position = chara.HumanoidRootPart.Position
	missile.CFrame = (chara.HumanoidRootPart.CFrame + chara.HumanoidRootPart.CFrame.lookVector*5) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,math.rad(e*5))
	missile.Velocity = missile.CFrame.upVector*50
	CreateTrailObj(missile,"Really red","Really red",0,0).Enabled = true
	local snd = SawSnd:Clone()
	snd.Parent = missile
	snd:Play()
	coroutine.resume(coroutine.create(function()
	while true do
	swait()
	missile.CFrame = missile.CFrame * CFrame.fromEulerAnglesXYZ(0,0,math.rad(10))
	end
	end))
	local mesh1 = Instance.new("SpecialMesh",missile)
	mesh1.MeshId = "http://www.roblox.com/asset/?id=74322089"
	mesh1.Scale = Vector3.new(3,3,2)
	local force = Instance.new("BodyForce")
	force.force = Vector3.new(0,missile:GetMass()*game.Workspace.Gravity,0)
	force.Parent = missile
	PlaySnd(Swing2Snd,missile)
	missile.Touched:connect(function(hit)
	if (hit.Parent.Parent ~= chara and hit.Parent ~= chara and hit.Name ~= "Blast" and missile.Anchored == false and hit.Parent:FindFirstChildOfClass("Humanoid")~=nil) then
	dealdmg(hit.Parent,14,1,.05,0,60)
	PlaySnd(HitSnd,missile)
	SlashEff(hit.CFrame)	
	end
	end)
	debby:AddItem(missile,10)
end
swait(.3)
for i = 0,.6,.1 do
swait()
LW.C0 = clerp((LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-50),0,math.rad(90)),ILWF,.4+i)
TC.C0 = clerp(TCF,ITCF,.4+i)
HC.C0 = clerp(HCF,IHCF,.4+i)
end
walking = false
del = false
end

--Cannon--
function Cannon()
del = true
for i = 0,.6,.1 do
swait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
LW.C0 = clerp(LWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
end
chatfunc("Lay waste.")
ChargeSnd:Play()
for i = 0, 1.5, .1 do
	swait(.1)
	for i = 1, 3 do
	local tr = coroutine.resume(coroutine.create(function()
	local hitp = Instance.new("Part",chara)
	hitp.Size = Vector3.new(1,1,1)
	hitp.Anchored = true
	hitp.CanCollide = false
	hitp.BrickColor = BrickColor.new("Really black")
	hitp.Transparency = 1
	hitp.CFrame = EmitPart.CFrame * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
	local hitm = Instance.new("SpecialMesh",hitp)
	hitm.MeshId = "http://www.roblox.com/asset/?id=3270017"
	hitm.Scale = Vector3.new(4,4,1)
	for i = 0,1,.2 do
	swait()
	hitp.Transparency = i
	hitm.Scale = Vector3.new(10-i*5,10-i*5,1-i)
	end
	hitp:Destroy()
	end))
	end
end
swait(1)
local EffectPart = Instance.new("Part",chara)
EffectPart.Size = Vector3.new(1,1,1)
EffectPart.Anchored = true
EffectPart.BrickColor = BrickColor.new("Really black")
local mehs1 = Instance.new("SpecialMesh",EffectPart)
mehs1.MeshType = "Sphere"
mehs1.Scale = Vector3.new(10,10,10)
local P = Instance.new("Part")
local meshla = Instance.new("BlockMesh", P)
meshla.Scale = Vector3.new(5,5,1)
swait() 
EffectPart.Position = mouse.Hit.p
EffectPart.CFrame = mouse.Hit
local Place0 = EmitPart.CFrame
local Place1 = EffectPart.CFrame
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1.p).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) 
P.Parent = chara
P.BrickColor = BrickColor.new("Really black")
P.Anchored = true 
P.CanCollide = false 
P.Locked = true 
P.BottomSurface = "Smooth" 
P.TopSurface = "Smooth"
PlaySnd(LaserSnd,chara)
ExHitbox(15,Place1.p,40,1,.05,50,50)
for i = 1, 5 do
	coroutine.resume(coroutine.create(function()
	local hitp = Instance.new("Part",chara)
	hitp.Size = Vector3.new(1,1,1)
	hitp.Anchored = true
	hitp.CanCollide = false
	hitp.BrickColor = BrickColor.new("Really black")
	hitp.Transparency = 1
	hitp.CFrame = EffectPart.CFrame * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
	local hitm = Instance.new("SpecialMesh",hitp)
	hitm.MeshId = "http://www.roblox.com/asset/?id=3270017"
	hitm.Scale = Vector3.new(4,4,1)
	for i = 0,1,.1 do
	swait(.001)
	hitp.Transparency = i
	hitm.Scale = Vector3.new(i*80,i*80,i)
	end
	hitp:Destroy()
	end))
end
coroutine.resume(coroutine.create(function()
for i = 1, 10 do
swait(.01)
mehs1.Scale = mehs1.Scale + Vector3.new(.5,.5,.5)
meshla.Scale = meshla.Scale + Vector3.new(.25,.25,0)
EffectPart.Transparency = EffectPart.Transparency + .1
P.Transparency = P.Transparency + .1
end
----
P:Destroy()
EffectPart:Destroy()
end))
for i = 0,.6,.1 do
swait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
LW.C0 = clerp(LWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
end
walking = false
del = false
end

--Eye of the Reaper--
function EyeReap()
del = true
res()
chatfunc("Eye of the Reaper.")
ElectricSnd:Play()
for i = 0,.6,.1 do
swait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(-.5,-.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(70),0),.4+i)
end
for i = 0,.6,.3 do
swait()
LW.C0 = clerp((LWF + Vector3.new(-.5,-.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(70),0),(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
end
	local missile = Instance.new("Part",game.Workspace)
	missile.Size = Vector3.new(1,1,1)
	missile.Name = "Blast"	
	missile.CanCollide = false
	missile.Position = Emit2Part.Position
	missile.CFrame = Emit2Part.CFrame
	missile.Transparency = 1
	local bpos = Instance.new("BodyPosition",missile)
	bpos.Position = mouse.Hit.p + Vector3.new(0,6,0)
	bpos.P = 10000
	bpos.MaxForce = Vector3.new(10000,10000,10000)
	local bbg = Instance.new("BillboardGui",missile)
	bbg.Size = UDim2.new(15,0,15,0)
	bbg.Enabled = true
	bbg.Adornee = missile
	local imgl = Instance.new("ImageLabel",bbg)
	imgl.Position = UDim2.new(0,0,0,0)
	imgl.Size = UDim2.new(1,0,1,0)
	imgl.Image = "http://www.roblox.com/asset/?id=1015279326"
	imgl.BackgroundTransparency = 1
	coroutine.resume(coroutine.create(function()
	for i = 1, 10 do
	ExHitbox(10,missile.Position,21,2,.05,0,0)
	coroutine.resume(coroutine.create(function()
	local hitp = Instance.new("Part",chara)
	hitp.Size = Vector3.new(1,1,1)
	hitp.Anchored = true
	hitp.CanCollide = false
	hitp.BrickColor = BrickColor.new("Really red")
	hitp.Transparency = 1
	hitp.CFrame = CFrame.new(missile.Position.X,missile.Position.Y-6,missile.Position.Z) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
	local hitm = Instance.new("SpecialMesh",hitp)
	hitm.MeshId = "http://www.roblox.com/asset/?id=3270017"
	hitm.Scale = Vector3.new(4,4,1)
	for i = 0,1,.1 do
	swait(.001)
	hitp.Transparency = i
	hitm.Scale = Vector3.new(i*20,i*20,i)
	end
	hitp:Destroy()
	end))
	for i = 0, 90, 10 do
	swait()
	imgl.Rotation = i
	end	
	end
	imgl.Rotation = 0
	for i = 0,1,.1 do
	swait()
	bbg.Size = UDim2.new(15+10*i,0,15+10*i,0)
	imgl.ImageTransparency = i
	end
	missile:Destroy()
	end))
	PlaySnd(EyeSnd,missile)
swait(.3)
for i = 0,.6,.1 do
swait()
LW.C0 = clerp((LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),ILWF,.4+i)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
end
walking = false
del = false
end

--Rapture--
function Rapture()
del = true
res()
hum.WalkSpeed = 0
AddLegWelds()
for i = 0,.6,.1 do
swait()
TC.C0 = clerp(ITCF,TCF - Vector3.new(0,1,0),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),.4+i)
RW.C0 = clerp(IRWF,RWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-10)),.4+i)
LW.C0 = clerp(ILWF,LWF,.4+i)
RLW.C0 = clerp(RLWF,RLWF - Vector3.new(0,1,-.5),.4+i)
LLW.C0 = clerp(LLWF,(LLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),.4+i)
GWeld.C0 = clerp(idlec0,uprightc0,.4+i)
GWeld.C1 = clerp(idlec1,uprightc1,.4+i)
end
swait(.3)
hum.WalkSpeed = 30
FlySnd:Play()
Fly2Snd:Play()
SlashT.Enabled = true
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really black")
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = chara.HumanoidRootPart.Position - Vector3.new(0,2,0)
jtrace.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(0,2,0)
jtrace.Anchored = true
jtrace.CanCollide = false
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh.Offset = Vector3.new(0,0,-.125)
local jtrace2 = Instance.new("Part",chara)
jtrace2.BrickColor = BrickColor.new("Really black")
jtrace2.Size = Vector3.new(0,0,0)
jtrace2.Position = chara.HumanoidRootPart.Position - Vector3.new(0,2,0)
jtrace2.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(0,2,0)
jtrace2.Anchored = true
jtrace2.CanCollide = false
local tmesh2 = Instance.new("SpecialMesh",jtrace2)
tmesh2.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh2.Offset = Vector3.new(0,0,-.125)
coroutine.resume(coroutine.create(function()
for i = 0,1,.01 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(50*i,20-17*i,50*i)
jtrace.CFrame = jtrace.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(10),0)
jtrace2.Transparency = i
tmesh2.Scale = Vector3.new(45*i,30*i,45*i)
jtrace2.CFrame = jtrace2.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(-10),0)
end
jtrace:Destroy()
jtrace2:Destroy()
end))
ExHitbox(20,Torso.Position,30,2,.1,100,20)
local bf = Instance.new("BodyVelocity",chara.Torso)
bf.P = 100000
bf.MaxForce = Vector3.new(bf.P,bf.P,bf.P)
bf.Velocity = Vector3.new(0,300,0) + chara.HumanoidRootPart.CFrame.lookVector*5
debby:AddItem(bf,.5)
GWeld.C0 = hold2c0
GWeld.C1 = hold2c1
for i = 0,1,.1 do
swait()
TC.C0 = clerp(TCF - Vector3.new(0,1,0),TCF * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,0),i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),HCF * CFrame.fromEulerAnglesXYZ(math.rad(-20),0,0),i)
RW.C0 = clerp(RWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-10)),(RWF + Vector3.new(0,.7,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,math.rad(-30)),i)
LW.C0 = clerp(LWF,(LWF + Vector3.new(0,.7,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,math.rad(30)),i)
LLW.C0 = clerp((LLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),LLWF,i)
end
for i = 0,1,.1 do
swait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,0),TCF * CFrame.fromEulerAnglesXYZ(math.rad(-360),0,0),i)
end
swait(1.5)
local bf = Instance.new("BodyVelocity",chara.Torso)
bf.P = 100000
bf.MaxForce = Vector3.new(bf.P,bf.P,bf.P)
bf.Velocity = Vector3.new(0,-50,0) + chara.HumanoidRootPart.CFrame.lookVector*5
debby:AddItem(bf,.1)
local pos = Vector3.new(0,0,0)
local hit, asd = RayCast(Torso.Position - Vector3.new(0,3,0), Vector3.new(0, -1, 0), 9999999999, {Character})
if hit then
pos = asd + Vector3.new(0,5,0)
end
for i = 1, 5 do
PlaySnd(ClawDashSnd,HandlePart)
for i = 0,1,.25 do
swait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(0,0,0),TCF * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,0),i)
end
for i = 0,1,.25 do
swait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,0),TCF * CFrame.fromEulerAnglesXYZ(math.rad(-360),0,0),i)
end
end
repeat swait() until Torso.Position.Y <= pos.Y
Torso.Velocity = Vector3.new(0,0,0)
hum.WalkSpeed = 0
for i = 0,.6,.3 do
swait()
TC.C0 = clerp(TCF - Vector3.new(0,1,0),TCF,.6-i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),HCF * CFrame.fromEulerAnglesXYZ(math.rad(-20),0,0),.6-i)
RW.C0 = clerp((RWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-30),0),(RWF + Vector3.new(0,.7,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,math.rad(-30)),.6-i)
LW.C0 = clerp((LWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(30),0),(LWF + Vector3.new(0,.7,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,math.rad(30)),.6-i)
LLW.C0 = clerp((LLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),LLWF,.6-i)
end
TC.C0 = TCF - Vector3.new(0,1,0)
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0)
RW.C0 = (RWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-30),0)
LW.C0 = (LWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(30),0)
LLW.C0 = (LLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really black")
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = Hitbox.Position - Vector3.new(0,2,0)
jtrace.CFrame = CFrame.new(Hitbox.Position.X,Hitbox.Position.Y-2,Hitbox.Position.Z)
jtrace.Anchored = true
jtrace.CanCollide = false
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh.Offset = Vector3.new(0,0,-.125)
local jtrace2 = Instance.new("Part",chara)
jtrace2.BrickColor = BrickColor.new("Really black")
jtrace2.Size = Vector3.new(0,0,0)
jtrace2.Position = Hitbox.Position - Vector3.new(0,2,0)
jtrace2.CFrame = CFrame.new(Hitbox.Position.X,Hitbox.Position.Y-2,Hitbox.Position.Z)
jtrace2.Anchored = true
jtrace2.CanCollide = false
local tmesh2 = Instance.new("SpecialMesh",jtrace2)
tmesh2.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh2.Offset = Vector3.new(0,0,-.125)
coroutine.resume(coroutine.create(function()
for i = 0,1,.05 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(20*i,10-7*i,20*i)
jtrace.CFrame = jtrace.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(10),0)
jtrace2.Transparency = i
tmesh2.Scale = Vector3.new(19*i,20*i,19*i)
jtrace2.CFrame = jtrace2.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(-10),0)
end
jtrace:Destroy()
jtrace2:Destroy()
end))
Hitbox.Anchored = true
ExHitbox(7,Hitbox.Position,70,2,.1,100,50)
Fly2Snd:Play()
swait(1.5)
Hitbox.Anchored = false
for i = 0,.6,.1 do
swait()
TC.C0 = clerp(TCF - Vector3.new(0,1,0),ITCF,.4+i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),IHCF,.4+i)
RW.C0 = clerp((RWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-30),0),IRWF,.4+i)
LW.C0 = clerp((LWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(30),0),ILWF,.4+i)
LLW.C0 = clerp((LLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),LLWF,.4+i)
RLW.C0 = clerp(RLWF - Vector3.new(0,1,-.5),RLWF,.4+i)
GWeld.C0 = clerp(hold2c0,idlec0,.4+i)
GWeld.C1 = clerp(hold2c1,idlec1,.4+i)
end
SlashT.Enabled = false
DestroyLegWelds()
hum.WalkSpeed = 20
walking = false
del = false
end

--Nightmare Overture--
function Nightmare()
del = true
res()
hum.WalkSpeed = 0
AddLegWelds()
for i = 0,.6,.1 do
swait()
TC.C0 = clerp(ITCF,TCF - Vector3.new(0,.5,0),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),.4+i)
RW.C0 = clerp(RWF,RWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-30)),.4+i)
LW.C0 = clerp(ILWF,LWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(30)),.4+i)
RLW.C0 = clerp(RLWF,RLWF - Vector3.new(0,.5,-.5),.4+i)
LLW.C0 = clerp(LLWF,(LLWF - Vector3.new(0,.5,-1))*CFrame.fromEulerAnglesXYZ(math.rad(45),0,0),.4+i)
end
for a = 0,1,.1 do
swait()
for i = 1, #sch do
if sch[i] ~= Hitbox then
sch[i].Transparency = a
end
end
end
ChargeSnd:Play()
local tabb = {}
local ch = chara:GetChildren()
for i = 1, #ch do
if ch[i]:IsA("BasePart") then
local pm = Pemitter:Clone()
pm.Name = "asdasdq"
pm.Rate = 10000
pm.Texture = "rbxasset://textures/particles/fire_main.dds"
pm.Size = NumberSequence.new(1,0)
pm.Parent = ch[i]
pm.Acceleration = Vector3.new(0,0,0)
pm.LockedToPart = true
table.insert(tabb,pm)
end
end
local Wing1 = New("Part",chara,"Wing1",{BrickColor = BrickColor.new("Really black"),Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 2.5999999, 7),CFrame = CFrame.new(-48.6556358, 1.90000033, 3.50001025, 0.70710808, 0, 0.707107842, 0, 1, 0, -0.707107842, 0, 0.70710808),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
local Mesh = New("SpecialMesh",Wing1,"Mesh",{Scale = Vector3.new(0.200000003, 5, 5),MeshId = "http://www.roblox.com/asset/?id=16952827",MeshType = Enum.MeshType.FileMesh,})
local Weld = New("ManualWeld",Wing1,"Weld",{Part0 = Wing1,Part1 = chara.Torso,C0 = CFrame.new(0, 0, 0, 0.70710808, 0, -0.707107842, 0, 1, 0, 0.707107842, 0, 0.70710808),C1 = CFrame.new(3.34436417, 0.900000334, 3.00001025, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
local Wing2 = New("Part",chara,"Wing2",{BrickColor = BrickColor.new("Really black"),Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 2.5999999, 7),CFrame = CFrame.new(-55.3728104, 1.90000033, 3.5000093, 0.707108974, 0, -0.707109332, 0, 1, 0, 0.707109332, 0, 0.707108974),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
local Mesh = New("SpecialMesh",Wing2,"Mesh",{Scale = Vector3.new(0.200000003, 5, 5),MeshId = "http://www.roblox.com/asset/?id=16952827",MeshType = Enum.MeshType.FileMesh,})
local Weld = New("ManualWeld",Wing2,"Weld",{Part0 = Wing2,Part1 = chara.Torso,C0 = CFrame.new(0, 0, 0, 0.707108974, 0, 0.707109332, 0, 1, 0, -0.707109332, 0, 0.707108974),C1 = CFrame.new(-3.37281036, 0.900000334, 3.0000093, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
coroutine.resume(coroutine.create(function()
for i = 0,1,.05 do
swait()
Wing1.Transparency = 1-i
Wing2.Transparency = 1-i
end
end))
for i = 1, 50 do
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really black")
jtrace.Size = Vector3.new(1,1,1)
jtrace.Position = chara.HumanoidRootPart.Position - Vector3.new(math.random(-7,7),2,math.random(-7,7))
jtrace.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(math.random(-7,7),2,math.random(-7,7))
jtrace.Anchored = true
jtrace.CanCollide = false
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshType = "Sphere"
coroutine.resume(coroutine.create(function()
for i = 0,1,.1 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(.5,25*i,.5)
end
jtrace:Destroy()
end))
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really black")
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = chara.HumanoidRootPart.Position - Vector3.new(0,2,0)
jtrace.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(0,2,0)
jtrace.Anchored = true
jtrace.CanCollide = false
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh.Scale = Vector3.new(1,2,1)
tmesh.Offset = Vector3.new(0,0,-.125)
coroutine.resume(coroutine.create(function()
for i = 0,1,.1 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(22*i,5-2*i,22*i)
jtrace.CFrame = jtrace.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(5),0)
end
jtrace:Destroy()
end))
swait(.02)
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really black")
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = chara.HumanoidRootPart.Position - Vector3.new(0,2,0)
jtrace.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(0,2,0)
jtrace.Anchored = true
jtrace.CanCollide = false
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh.Scale = Vector3.new(1,2,1)
tmesh.Offset = Vector3.new(0,0,-.125)
coroutine.resume(coroutine.create(function()
for i = 0,1,.1 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(22*i,5-2*i,22*i)
jtrace.CFrame = jtrace.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(-5),0)
end
jtrace:Destroy()
end))
swait(.02)
end
for i = 0,.6,.3 do
swait()
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),HCF,.4+i)
end
TargetSnd:Play()
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really red")
jtrace.Material = "Neon"
jtrace.Size = Vector3.new(.2,.2,.2)
jtrace.CanCollide = false
jtrace.Position = chara.Head.Position
jtrace.CFrame = chara.Head.CFrame
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshType = "Sphere"
local wwld = Instance.new("Weld",jtrace)
wwld.Part0 = jtrace
wwld.Part1 = chara.Head
wwld.C0 = CFrame.new(-.3,-.2,.65)
coroutine.resume(coroutine.create(function()
for i = 0,1,.1 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(1,30*i,1)
end
jtrace:Destroy()
end))
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really red")
jtrace.Material = "Neon"
jtrace.Size = Vector3.new(.2,.2,.2)
jtrace.CanCollide = false
jtrace.Position = chara.Head.Position
jtrace.CFrame = chara.Head.CFrame
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshType = "Sphere"
local wwld = Instance.new("Weld",jtrace)
wwld.Part0 = jtrace
wwld.Part1 = chara.Head
wwld.C0 = CFrame.new(-.3,-.2,.65)
coroutine.resume(coroutine.create(function()
for i = 0,1,.1 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(30*i,1,1)
end
jtrace:Destroy()
end))
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really red")
jtrace.Material = "Neon"
jtrace.Size = Vector3.new(.2,.2,.2)
jtrace.CanCollide = false
jtrace.Position = chara.Head.Position
jtrace.CFrame = chara.Head.CFrame
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshType = "Sphere"
local wwld = Instance.new("Weld",jtrace)
wwld.Part0 = jtrace
wwld.Part1 = chara.Head
wwld.C0 = CFrame.new(.3,-.2,.65)
coroutine.resume(coroutine.create(function()
for i = 0,1,.1 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(1,30*i,1)
end
jtrace:Destroy()
end))
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really red")
jtrace.Material = "Neon"
jtrace.Size = Vector3.new(.2,.2,.2)
jtrace.CanCollide = false
jtrace.Position = chara.Head.Position
jtrace.CFrame = chara.Head.CFrame
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshType = "Sphere"
local wwld = Instance.new("Weld",jtrace)
wwld.Part0 = jtrace
wwld.Part1 = chara.Head
wwld.C0 = CFrame.new(.3,-.2,.65)
coroutine.resume(coroutine.create(function()
for i = 0,1,.1 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(30*i,1,1)
end
jtrace:Destroy()
end))
swait(.5)
TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0)
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,0)
LLW.C0 = LLWF
ExHitbox(22,Torso.Position,70,2,.1,100,100)
Ult1Snd:Play()
Ult2Snd:Play()
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really black")
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = chara.HumanoidRootPart.Position - Vector3.new(0,2,0)
jtrace.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(0,2,0)
jtrace.Anchored = true
jtrace.CanCollide = false
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh.Offset = Vector3.new(0,0,-.125)
local jtrace2 = Instance.new("Part",chara)
jtrace2.BrickColor = BrickColor.new("Really black")
jtrace2.Size = Vector3.new(0,0,0)
jtrace2.Position = chara.HumanoidRootPart.Position - Vector3.new(0,2,0)
jtrace2.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(0,2,0)
jtrace2.Anchored = true
jtrace2.CanCollide = false
local tmesh2 = Instance.new("SpecialMesh",jtrace2)
tmesh2.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh2.Offset = Vector3.new(0,0,-.125)
coroutine.resume(coroutine.create(function()
for i = 0,1,.01 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(50*i,50-47*i,50*i)
jtrace.CFrame = jtrace.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(10),0)
jtrace2.Transparency = i
tmesh2.Scale = Vector3.new(45*i,45*i,45*i)
jtrace2.CFrame = jtrace2.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(-10),0)
end
jtrace:Destroy()
jtrace2:Destroy()
end))
for i = 1, 5 do
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really black")
jtrace.Size = Vector3.new(1,1,1)
jtrace.Position = chara.HumanoidRootPart.Position
jtrace.CFrame = chara.HumanoidRootPart.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20)))
jtrace.Anchored = true
jtrace.CanCollide = false
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshType = "Sphere"
coroutine.resume(coroutine.create(function()
for i = 0,1,.01 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(30+5*i,200*i,30+5*i)
end
jtrace:Destroy()
end))
end
coroutine.resume(coroutine.create(function()
for i = 1, 50 do
swait()
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really black")
jtrace.Size = Vector3.new(1,1,1)
jtrace.Position = chara.HumanoidRootPart.Position
jtrace.CFrame = chara.HumanoidRootPart.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
jtrace.Anchored = true
jtrace.CanCollide = false
local tmesh = Instance.new("BlockMesh",jtrace)
coroutine.resume(coroutine.create(function()
for i = 0,1,.02 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(40-40*i,40-40*i,40-40*i)
end
jtrace:Destroy()
end))
end
end))
local bf = Instance.new("BodyVelocity",chara.Torso)
bf.P = 100000
bf.MaxForce = Vector3.new(bf.P,bf.P,bf.P)
bf.Velocity = Vector3.new(0,100,0) + chara.HumanoidRootPart.CFrame.lookVector*100
swait(.5)
bf.MaxForce = Vector3.new(bf.P,0,bf.P)
local pos = Vector3.new(0,0,0)
local hit, asd = RayCast(Torso.Position - Vector3.new(0,3,0), Vector3.new(0, -1, 0), 9999999999, {Character})
if hit then
pos = asd + Vector3.new(0,5,0)
end
for i = 0,.6,.1 do
swait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),TCF * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,0),.4+i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,0),HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),.4+i)
end
repeat swait() until Torso.Position.Y <= pos.Y
Torso.Velocity = Vector3.new(0,0,0)
bf:Destroy()
for i = 0,.6,.1 do
swait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),TCF - Vector3.new(0,1,0),.4+i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,0),HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),.4+i)
RW.C0 = clerp(RWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-30)),(RWF - Vector3.new(-.5,.5,-.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-70),0),.4+i)
LW.C0 = clerp(LWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(30)),LWF,.4+i)
RLW.C0 = clerp(RLWF - Vector3.new(0,.5,-.5),RLWF - Vector3.new(0,1,-.5),.4+i)
LLW.C0 = clerp(LLWF,(LLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),.4+i)
end
swait(1)
for i = 1, #tabb do
tabb[i].Enabled = false
debby:AddItem(tabb[i],2)
end
coroutine.resume(coroutine.create(function()
for i = 0,1,.05 do
swait()
Wing1.Transparency = i
Wing2.Transparency = i
end
Wing1:Destroy()
Wing2:Destroy()
end))
swait(.5)
coroutine.resume(coroutine.create(function()
for a = 0,1,.1 do
swait()
for i = 1, #sch do
if sch[i] ~= Hitbox then
sch[i].Transparency = 1-a
end
end
end
end))
for i = 0,.6,.1 do
swait()
TC.C0 = clerp(TCF - Vector3.new(0,1,0),ITCF,.4+i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),IHCF,.4+i)
RW.C0 = clerp((RWF - Vector3.new(-.5,.5,-.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-70),0),IRWF,.4+i)
LW.C0 = clerp(LWF,ILWF,.4+i)
RLW.C0 = clerp(RLWF - Vector3.new(0,1,-.5),RLWF,.4+i)
LLW.C0 = clerp((LLWF - Vector3.new(0,1,-1)) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),LLWF,.4+i)
end
DestroyLegWelds()
hum.WalkSpeed = 20
walking = false
del = false
end









local movers = {}
local tog = true
local move = false
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character.Reanimate
local mov = {};
local mov2 = {};
 
 





local Hats = {Ex1 = Player.Character:WaitForChild("Back_AccAccessory"),
Ex2 = Player.Character:WaitForChild("Nebula Blade"),
}






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


align(Hats.Ex1.Handle, chara.Scythe.HandlePart)
chara["Back_AccAccessory"].Handle.Attachment:Destroy()
Hats.Ex1.Handle:FindFirstChild("Attachment").Name = "het" 
Hats.Ex1.Handle.Attachment.Rotation = Vector3.new(-0, 10, 140)
chara.Scythe["HandlePart"].Attachment.Position = Vector3.new(-0.1, -0.8, 0.2)

chara.Scythe["HandlePart"]:FindFirstChild("Attachment").Name = "het" 

align(Hats.Ex2.Handle, chara.Scythe.HandlePart)
chara["Nebula Blade"].Handle.Attachment:Destroy()
Hats.Ex2.Handle:FindFirstChild("Attachment").Name = "het" 
Hats.Ex2.Handle.Attachment.Rotation = Vector3.new(10, 3, 65)
chara.Scythe["HandlePart"].Attachment.Position = Vector3.new(0.1, 4.5, -0.25)


chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()

chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()

chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()

chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()

chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()

chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()

chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()
chara.Scythe.Part:Destroy()

chara.Scythe.HandlePart.Mesh:Destroy()

chara.Scythe.HandlePart.Transparency = 1
















--Harvest--
function Harvest()
del = true
res()
hum.WalkSpeed = 0
AddLegWelds()
for i = 0,.6,.1 do
swait()
TC.C0 = clerp(ITCF,TCF - Vector3.new(0,1,0),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),.4+i)
RW.C0 = clerp(IRWF,RWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-10)),.4+i)
LW.C0 = clerp(ILWF,LWF,.4+i)
RLW.C0 = clerp(RLWF,RLWF - Vector3.new(0,1,-.5),.4+i)
LLW.C0 = clerp(LLWF,(LLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),.4+i)
GWeld.C0 = clerp(idlec0,uprightc0,.4+i)
GWeld.C1 = clerp(idlec1,uprightc1,.4+i)
end
swait(.3)
exeact = true
SlashT.Enabled = true
SV1Snd:Play()
SV2Snd:Play()
local bf = Instance.new("BodyVelocity",chara.Torso)
bf.P = 100000
bf.MaxForce = Vector3.new(bf.P,bf.P,bf.P)
bf.Velocity = Vector3.new(0,30,0) + chara.HumanoidRootPart.CFrame.lookVector*50
debby:AddItem(bf,.5)
for i = 0,1,.25 do
swait()
TC.C0 = clerp(TCF - Vector3.new(0,1,0),TCF * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,0),i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),HCF * CFrame.fromEulerAnglesXYZ(math.rad(-20),0,0),i)
RW.C0 = clerp(RWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-10)),(RWF + Vector3.new(0,.7,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,math.rad(-30)),i)
LW.C0 = clerp(LWF,(LWF + Vector3.new(0,.7,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,math.rad(30)),i)
LLW.C0 = clerp((LLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),LLWF,i)
GWeld.C0 = clerp(uprightc0,hold2c0,.4+i)
GWeld.C1 = clerp(uprightc1,hold2c1,.4+i)
end
GWeld.C0 = hold2c0
GWeld.C1 = hold2c1
for i = 0,1,.25 do
swait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,0),TCF * CFrame.fromEulerAnglesXYZ(math.rad(-360),0,0),i)
end
local pos = Vector3.new(0,0,0)
local hit, asd = RayCast(Torso.Position - Vector3.new(0,3,0), Vector3.new(0, -1, 0), 9999999999, {Character})
if hit then
pos = asd + Vector3.new(0,5,0)
end
for i = 1, 2 do
for i = 0,1,.25 do
swait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(0,0,0),TCF * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,0),i)
end
for i = 0,1,.25 do
swait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,0),TCF * CFrame.fromEulerAnglesXYZ(math.rad(-360),0,0),i)
end
end
exeact = false
repeat swait() until Torso.Position.Y <= pos.Y
Torso.Velocity = Vector3.new(0,0,0)
SVHitSnd:Play()
for i = 0,.6,.3 do
swait()
TC.C0 = clerp(TCF - Vector3.new(0,1,0),TCF,.6-i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),HCF * CFrame.fromEulerAnglesXYZ(math.rad(-20),0,0),.6-i)
RW.C0 = clerp((RWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-30),0),(RWF + Vector3.new(0,.7,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,math.rad(-30)),.6-i)
LW.C0 = clerp((LWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(30),0),(LWF + Vector3.new(0,.7,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,math.rad(30)),.6-i)
LLW.C0 = clerp((LLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),LLWF,.6-i)
end
TC.C0 = TCF - Vector3.new(0,1,0)
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0)
RW.C0 = (RWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-30),0)
LW.C0 = (LWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(30),0)
LLW.C0 = (LLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really black")
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = Hitbox.Position - Vector3.new(0,2,0)
jtrace.CFrame = CFrame.new(Hitbox.Position.X,Hitbox.Position.Y-2,Hitbox.Position.Z)
jtrace.Anchored = true
jtrace.CanCollide = false
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh.Offset = Vector3.new(0,0,-.125)
local jtrace2 = Instance.new("Part",chara)
jtrace2.BrickColor = BrickColor.new("Really black")
jtrace2.Size = Vector3.new(0,0,0)
jtrace2.Position = Hitbox.Position - Vector3.new(0,2,0)
jtrace2.CFrame = CFrame.new(Hitbox.Position.X,Hitbox.Position.Y-2,Hitbox.Position.Z)
jtrace2.Anchored = true
jtrace2.CanCollide = false
local tmesh2 = Instance.new("SpecialMesh",jtrace2)
tmesh2.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh2.Offset = Vector3.new(0,0,-.125)
coroutine.resume(coroutine.create(function()
for i = 0,1,.05 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(20*i,10-7*i,20*i)
jtrace.CFrame = jtrace.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(10),0)
jtrace2.Transparency = i
tmesh2.Scale = Vector3.new(19*i,20*i,19*i)
jtrace2.CFrame = jtrace2.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(-10),0)
end
jtrace:Destroy()
jtrace2:Destroy()
end))
Hitbox.Anchored = true
if exed == true then
local dood = weldd.Parent
weldd:Destroy()
dood:BreakJoints()
exed = false
end
ExHitbox(7,Hitbox.Position,20,2,.1,100,50)
--Fly2Snd:Play()
swait(1)
Hitbox.Anchored = false
for i = 0,.6,.1 do
swait()
TC.C0 = clerp(TCF - Vector3.new(0,1,0),ITCF,.4+i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),IHCF,.4+i)
RW.C0 = clerp((RWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-30),0),IRWF,.4+i)
LW.C0 = clerp((LWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(30),0),ILWF,.4+i)
LLW.C0 = clerp((LLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),LLWF,.4+i)
RLW.C0 = clerp(RLWF - Vector3.new(0,1,-.5),RLWF,.4+i)
GWeld.C0 = clerp(hold2c0,idlec0,.4+i)
GWeld.C1 = clerp(hold2c1,idlec1,.4+i)
end
SlashT.Enabled = false
DestroyLegWelds()
hum.WalkSpeed = 20
walking = false
del = false
end

--Keys--
combo = 0
function onKeyDown(key)
if del == false then
if key == "z" then
SawThrow()
elseif key == "x" then
Cannon()
elseif key == "c" then
EyeReap()
elseif key == "v" then
Rapture()
elseif key == "b" then
Nightmare()
elseif key == "n" then
Harvest()
elseif key == "m" then
if Music.IsPlaying == true then
Music:Stop()
elseif Music.IsPlaying == false then
Music:Play()
end
end
end
end
function onButton1Down()
if del == false then
del = true
res()
if combo == 0 then
Swing2Snd:Play()
punchactive = true
PunchT.Enabled = true
for i = 0,.6,.2 do
swait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(-.5,-.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(70),0),.4+i)
end
swait(.1)
for i = 0,.6,.3 do
swait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(80)),TCF,.4+i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-80)),HCF,.4+i)
LW.C0 = clerp((LWF + Vector3.new(-.5,-.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(70),0),(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
end
LW.C0 = (LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
for i = 0,.6,.2 do
swait()
TC.C0 = clerp(TCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
HC.C0 = clerp(HCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
end
TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
swait(.1)
for i = 0,.6,.2 do
swait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
end
punchactive = false
PunchT.Enabled = false
combo = 1
elseif combo == 1 then
Swing2Snd:Play()
kickactive = true
KickT.Enabled = true
AddLegWelds()
for i = 0,.6,.2 do
swait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(45),0,0),.4+i)
HC.C0 = clerp(IHCF,HCF,.4+i)
LLW.C0 = clerp(LLWF,LLWF * CFrame.fromEulerAnglesXYZ(math.rad(-45),0,0),.4+i)
RLW.C0 = clerp(RLWF,(RLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(45),0,0),.4+i)
end
swait(.1)
for i = 0,.6,.2 do
swait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(math.rad(45),0,0),TCF * CFrame.fromEulerAnglesXYZ(math.rad(-45),0,0),.4+i)
LLW.C0 = clerp(LLWF * CFrame.fromEulerAnglesXYZ(math.rad(-45),0,0),LLWF * CFrame.fromEulerAnglesXYZ(math.rad(45),0,0),.4+i)
RLW.C0 = clerp((RLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(45),0,0),(RLWF - Vector3.new(0,1,1))*CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0),.4+i)
end
swait(.3)
for i = 0,.6,.2 do
swait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(math.rad(-45),0,0),ITCF,.4+i)
HC.C0 = clerp(HCF,IHCF,.4+i)
LLW.C0 = clerp(LLWF * CFrame.fromEulerAnglesXYZ(math.rad(45),0,0),LLWF,.4+i)
RLW.C0 = clerp((RLWF - Vector3.new(0,1,1))*CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0),RLWF,.4+i)
end
DestroyLegWelds()
kickactive = false
KickT.Enabled = false
combo = 2
elseif combo == 2 then
SlashT.Enabled = true
bladeactive = true
for i = 0,.6,.2 do
swait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
end
GWeld.C1 = CFrame.new(0,0,0)
GWeld.C0 = CFrame.new(0,0,0)
GWeld.Part1 = Emit2Part
for a = 1, 3 do
PlaySnd(ClawDashSnd,HandlePart)
for i = 0, 350, 50 do
swait()
GWeld.C0 = CFrame.new(0,-2,0) * CFrame.fromEulerAnglesXYZ(math.rad(-i),0,0)
end
end
GWeld.C1 = idlec1
GWeld.C0 = idlec0
GWeld.Part1 = chara["Right Arm"]
for i = 0,.6,.2 do
swait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
end
SlashT.Enabled = false
bladeactive = false
combo = 3
elseif combo == 3 then
SlashT.Enabled = true
bladeactive = true
AddLegWelds()
for i = 0,1,.25 do
swait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(10),0,0),i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(-20),0,0),i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,.7,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,math.rad(-30)),i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,.7,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,math.rad(30)),i)
LLW.C0 = clerp(LLWF,LLWF,i)
GWeld.C0 = clerp(uprightc0,hold2c0,.4+i)
GWeld.C1 = clerp(uprightc1,hold2c1,.4+i)
end
GWeld.C0 = hold2c0
GWeld.C1 = hold2c1
SVHitSnd:Play()
for i = 0,.6,.3 do
swait()
TC.C0 = clerp(TCF - Vector3.new(0,1,0),TCF,.6-i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),HCF * CFrame.fromEulerAnglesXYZ(math.rad(-20),0,0),.6-i)
RW.C0 = clerp((RWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-30),0),(RWF + Vector3.new(0,.7,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,math.rad(-30)),.6-i)
LW.C0 = clerp((LWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(30),0),(LWF + Vector3.new(0,.7,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,math.rad(30)),.6-i)
LLW.C0 = clerp((LLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),LLWF,.6-i)
end
TC.C0 = TCF - Vector3.new(0,1,0)
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0)
RW.C0 = (RWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-30),0)
LW.C0 = (LWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(30),0)
LLW.C0 = (LLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Really black")
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = Hitbox.Position - Vector3.new(0,2,0)
jtrace.CFrame = CFrame.new(Hitbox.Position.X,Hitbox.Position.Y-2,Hitbox.Position.Z)
jtrace.Anchored = true
jtrace.CanCollide = false
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh.Offset = Vector3.new(0,0,-.125)
local jtrace2 = Instance.new("Part",chara)
jtrace2.BrickColor = BrickColor.new("Really black")
jtrace2.Size = Vector3.new(0,0,0)
jtrace2.Position = Hitbox.Position - Vector3.new(0,2,0)
jtrace2.CFrame = CFrame.new(Hitbox.Position.X,Hitbox.Position.Y-2,Hitbox.Position.Z)
jtrace2.Anchored = true
jtrace2.CanCollide = false
local tmesh2 = Instance.new("SpecialMesh",jtrace2)
tmesh2.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh2.Offset = Vector3.new(0,0,-.125)
coroutine.resume(coroutine.create(function()
for i = 0,1,.05 do
swait()
jtrace.Transparency = i
tmesh.Scale = Vector3.new(20*i,10-7*i,20*i)
jtrace.CFrame = jtrace.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(10),0)
jtrace2.Transparency = i
tmesh2.Scale = Vector3.new(19*i,20*i,19*i)
jtrace2.CFrame = jtrace2.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(-10),0)
end
jtrace:Destroy()
jtrace2:Destroy()
end))
bladeactive = false
Hitbox.Anchored = true
ExHitbox(7,Hitbox.Position,10,2,.1,100,50)
--Fly2Snd:Play()
swait(1)
Hitbox.Anchored = false
for i = 0,.6,.1 do
swait()
TC.C0 = clerp(TCF - Vector3.new(0,1,0),ITCF,.4+i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),IHCF,.4+i)
RW.C0 = clerp((RWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-30),0),IRWF,.4+i)
LW.C0 = clerp((LWF + Vector3.new(0,.5,.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(30),0),ILWF,.4+i)
LLW.C0 = clerp((LLWF - Vector3.new(0,1,-1))*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),LLWF,.4+i)
RLW.C0 = clerp(RLWF - Vector3.new(0,1,-.5),RLWF,.4+i)
GWeld.C0 = clerp(hold2c0,idlec0,.4+i)
GWeld.C1 = clerp(hold2c1,idlec1,.4+i)
end
SlashT.Enabled = false
DestroyLegWelds()
hum.WalkSpeed = 20
combo = 0
end
res()
walking = false
del = false
end
end
if mouse then
mouse.Button1Down:connect(onButton1Down)
mouse.KeyDown:connect(onKeyDown)
end

--Loop Function--
walking = false
toim = 0
while true do
swait()
toim = toim + .1
if del == false then attacking = false elseif del == true then attacking = true end
if atkd == true then
TC.C0 = TCF
HC.C0 = HCF
RW.C0 = RWF
LW.C0 = LWF
atkd = false
end
if atkdd == true then
TC.C0 = ITCF
HC.C0 = IHCF
RW.C0 = IRWF
LW.C0 = ILWF
atkdd = false
end
torvel = (chara.HumanoidRootPart.Velocity*Vector3.new(1,0,1)).magnitude
if torvel < 1 and walking == true and del == false and atkd == false and attacking == false then
for i = 0,1,.5 do
swait(.001)
if del == false and attacking == false then
TC.C0 = clerp(TCF,ITCF,i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(10),0,0),IHCF,i)
RW.C0 = IRWF
LW.C0 = LWF
end
end
walking = false
elseif torvel > 1 and walking == false and del == false and atkd == false and attacking == false then
for i = 0,1,.5 do
swait(.001)
if del == false and attacking == false then
TC.C0 = clerp(ITCF,TCF,i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(10),0,0),i)
RW.C0 = IRWF
LW.C0 = LWF
end
end
walking = true
else
end
end
