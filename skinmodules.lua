-- https://lua.expert/
local t = { Color3.new(1, 0.560784, 0.956863), ColorSequence.new(Color3.new(1, 0.560784, 0.956863), Color3.new(1, 0.027451, 0.839216)) }
local t2 = { Color3.new(1, 0.027451, 0.839216), ColorSequence.new(Color3.new(0.0588235, 0.0313725, 0.054902), Color3.new(1, 0.027451, 0.839216)) }
local t3 = { Color3.new(255/255, 0/255, 102/255), ColorSequence.new(Color3.new(0.0588235, 0.0313725, 0.054902), Color3.new(1, 0.027451, 0.839216)) }
local t4 = { Color3.new(0.560784, 0.470588, 1), ColorSequence.new(Color3.new(0.560784, 0.470588, 1), Color3.new(0.576471, 0.380392, 1)) }
local t5 = { Color3.new(0, 0.270588, 0.67451), ColorSequence.new(Color3.new(0, 0.192157, 0.611765), Color3.new(0, 0.486275, 0.811765)) }
local t6 = { Color3.new(0.00392157, 0.486275, 1), ColorSequence.new(Color3.new(0, 0.235294, 0.611765), Color3.new(1, 0.188235, 0.129412)) }
local t7 = { Color3.new(1, 0.666667, 0), ColorSequence.new(Color3.new(1, 0.666667, 0), Color3.new(1, 0.286275, 0.0470588)) }
local t8 = { Color3.new(0, 0.482353, 1), ColorSequence.new(Color3.new(0, 0.482353, 1), Color3.new(1, 0.333333, 0)) }
local t9 = { Color3.new(1, 0.333333, 1), ColorSequence.new(Color3.new(1, 0.333333, 1), Color3.new(0.666667, 0.333333, 1)) }
local t10 = { Color3.new(1, 0.333333, 1), ColorSequence.new(Color3.new(1, 0.333333, 1), Color3.new(0.666667, 0.462745, 0.32549)) }
local t11 = { Color3.new(0.164706, 0.333333, 0.0862745), ColorSequence.new(Color3.new(1, 0.94902, 0.862745), Color3.new(0.196078, 0.333333, 0.0823529)) }
local t12 = { Color3.new(0, 0.47451, 0.709804), ColorSequence.new(Color3.new(1, 0.94902, 0.862745), Color3.new(0, 0.47451, 0.713725)) }
local t13 = { Color3.new(0, 0.984314, 1), ColorSequence.new(Color3.new(0/255, 255/255, 255/255), Color3.new(0, 1, 0.701961)) }
local t14 = { Color3.new(255/255, 255/255, 255/255), ColorSequence.new(Color3.new(255/255, 255/255, 255/255), Color3.new(0.705882, 0.705882, 0.705882)) }
local t15 = { Color3.new(1, 0.329412, 0.741176), ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.new(255/255, 0/255, 0/255)),
		ColorSequenceKeypoint.new(0.14285714285714285, Color3.new(1, 0.666667, 0)),
		ColorSequenceKeypoint.new(0.2857142857142857, Color3.new(255/255, 255/255, 0/255)),
		ColorSequenceKeypoint.new(0.42857142857142855, Color3.new(0.333333, 1, 0)),
		ColorSequenceKeypoint.new(0.5714285714285714, Color3.new(0, 0.333333, 1)),
		ColorSequenceKeypoint.new(0.7142857142857143, Color3.new(0.666667, 0.333333, 1)),
		ColorSequenceKeypoint.new(1, Color3.new(1, 0.333333, 1))
	}) }
local t16 = { Color3.new(255/255, 255/255, 255/255), ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.new(255/255, 255/255, 255/255)),
		ColorSequenceKeypoint.new(0.14285714285714285, Color3.new(255/255, 0/255, 0/255)),
		ColorSequenceKeypoint.new(0.2857142857142857, Color3.new(255/255, 255/255, 255/255)),
		ColorSequenceKeypoint.new(0.42857142857142855, Color3.new(255/255, 0/255, 0/255)),
		ColorSequenceKeypoint.new(0.5714285714285714, Color3.new(255/255, 255/255, 255/255)),
		ColorSequenceKeypoint.new(0.7142857142857143, Color3.new(255/255, 0/255, 0/255)),
		ColorSequenceKeypoint.new(1, Color3.new(255/255, 255/255, 255/255))
	}) }
local t17 = { Color3.new(0, 1, 0.498039), ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.new(0, 1, 0.498039)),
		ColorSequenceKeypoint.new(0.14285714285714285, Color3.new(0, 0.223529, 0.109804)),
		ColorSequenceKeypoint.new(0.2857142857142857, Color3.new(0, 1, 0.498039)),
		ColorSequenceKeypoint.new(0.42857142857142855, Color3.new(0, 0.223529, 0.109804)),
		ColorSequenceKeypoint.new(0.5714285714285714, Color3.new(0, 1, 0.498039)),
		ColorSequenceKeypoint.new(0.7142857142857143, Color3.new(0, 0.223529, 0.109804)),
		ColorSequenceKeypoint.new(1, Color3.new(0, 1, 0.498039))
	}) }
local t18 = { Color3.new(0.666667, 0, 1), ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.new(255/255, 255/255, 255/255)),
		ColorSequenceKeypoint.new(0.14285714285714285, Color3.new(0.666667, 0, 1)),
		ColorSequenceKeypoint.new(0.2857142857142857, Color3.new(255/255, 255/255, 255/255)),
		ColorSequenceKeypoint.new(0.42857142857142855, Color3.new(0.666667, 0, 1)),
		ColorSequenceKeypoint.new(0.5714285714285714, Color3.new(255/255, 255/255, 255/255)),
		ColorSequenceKeypoint.new(0.7142857142857143, Color3.new(0.666667, 0, 1)),
		ColorSequenceKeypoint.new(1, Color3.new(255/255, 255/255, 255/255))
	}) }
local t19 = { Color3.new(0/255, 255/255, 255/255), ColorSequence.new(Color3.new(0/255, 255/255, 255/255), Color3.new(0.666667, 1, 1)) }
local t20 = { Color3.new(0.415686, 0, 1), ColorSequence.new(Color3.new(0.431373, 0.0235294, 1), Color3.new(0.54902, 0, 1)) }
local t21 = { Color3.new(0.972549, 0.835294, 1), ColorSequence.new(Color3.new(0.952941, 0.866667, 1), Color3.new(0.913725, 0.647059, 1)) }
local t22 = { Color3.new(0/255, 0/255, 0/255), ColorSequence.new(Color3.new(0, 0.101961, 0.101961), Color3.new(0.113725, 0.113725, 0.113725)) }
local t23 = { Color3.new(0, 1, 0.498039), ColorSequence.new(Color3.new(0, 1, 0.498039), Color3.new(0, 0.729412, 0.352941)) }
local t24 = { Color3.new(255/255, 255/255, 0/255), ColorSequence.new(Color3.new(255/255, 255/255, 0/255), Color3.new(1, 0.85098, 0.00784314)) }
local t25 = { Color3.new(0.282353, 0.792157, 0.945098), ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.new(0.164706, 0.890196, 1)),
		ColorSequenceKeypoint.new(0.25, Color3.new(0.27451, 1, 0.164706)),
		ColorSequenceKeypoint.new(0.5, Color3.new(0.658824, 0.219608, 0.658824)),
		ColorSequenceKeypoint.new(1, Color3.new(0.341176, 1, 0.976471))
	}) }
local t26 = { Color3.new(0.917647, 0, 0), ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.new(255/255, 0/255, 0/255)),
		ColorSequenceKeypoint.new(0.25, Color3.new(0.615686, 0, 0)),
		ColorSequenceKeypoint.new(0.5, Color3.new(0.32549, 0, 0)),
		ColorSequenceKeypoint.new(1, Color3.new(0.196078, 0, 0))
	}) }
local t27 = { Color3.new(1, 0.690196, 0.882353), ColorSequence.new(Color3.new(1, 0.690196, 0.882353), Color3.new(1, 0.929412, 0.964706)) }
local t28 = { Color3.new(1, 0.666667, 0), ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(0/255, 255/255, 0/255)), ColorSequenceKeypoint.new(0.5, Color3.new(0.666667, 0.333333, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.666667, 0)) }) }
local t29 = { Color3.new(255/255, 0/255, 0/255), ColorSequence.new(Color3.new(255/255, 0/255, 0/255), Color3.new(255/255, 255/255, 255/255)) }
local t30 = { Color3.new(255/255, 0/255, 0/255), ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.new(0.74902, 0, 0)),
		ColorSequenceKeypoint.new(0.25, Color3.new(0.133333, 0.133333, 0.133333)),
		ColorSequenceKeypoint.new(0.5, Color3.new(0.486275, 0.243137, 0.729412)),
		ColorSequenceKeypoint.new(1, Color3.new(255/255, 255/255, 0/255))
	}) }
local t31 = { Color3.new(1, 0.666667, 0), ColorSequence.new(Color3.new(255/255, 255/255, 0/255), Color3.new(0.109804, 0.317647, 1)) }
local t32 = { Color3.new(0.235294, 1, 0), ColorSequence.new(Color3.new(255/255, 0/255, 0/255), Color3.new(0/255, 255/255, 0/255)) }
local t33 = { Color3.new(0.752941, 0.294118, 0.796078), ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(0.501961, 0.760784, 0.862745)), ColorSequenceKeypoint.new(0.5, Color3.new(0.823529, 0.839216, 0.870588)), ColorSequenceKeypoint.new(1, Color3.new(0.776471, 0.458824, 0.584314)) }) }
local t34 = { Color3.new(0.333333, 1, 0.498039), ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(0.333333, 1, 0.498039)), ColorSequenceKeypoint.new(0.5, Color3.new(255/255, 255/255, 0/255)), ColorSequenceKeypoint.new(1, Color3.new(255/255, 0/255, 255/255)) }) }
local t35 = { Color3.new(255/255, 255/255, 0/255), ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(255/255, 255/255, 0/255)), ColorSequenceKeypoint.new(0.5, Color3.new(1, 0.333333, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.333333, 0.666667, 1)) }) }
local t36 = { Color3.new(0.666667, 0.666667, 1), ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(0.666667, 0.666667, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0.666667, 0.333333, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.333333, 0.333333, 1)) }) }
local t37 = { Color3.new(1, 0.372549, 0.0588235), ColorSequence.new(Color3.new(1, 0.333333, 0), Color3.new(0.8, 0.690196, 0.0666667)) }
local t38 = { Color3.new(0.45098, 0, 1), ColorSequence.new(Color3.new(0.501961, 0, 1), Color3.new(1, 0, 0.298039)) }
local t39 = { Color3.new(0.831373, 1, 0), ColorSequence.new(Color3.new(0.831373, 1, 0), Color3.new(0.945098, 0.839216, 0.231373)) }
local t40 = { Color3.new(0.643137, 0.952941, 1), ColorSequence.new(Color3.new(0.752941, 0.976471, 1), Color3.new(0.196078, 0.945098, 0.882353)) }
local t41 = { Color3.new(0.133333, 0.133333, 0.133333), ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(0.133333, 0.133333, 0.133333)), ColorSequenceKeypoint.new(0.5, Color3.new(0.972549, 0.203922, 1)), ColorSequenceKeypoint.new(1, Color3.new(255/255, 255/255, 255/255)) }) }
local t42 = { Color3.new(0.133333, 0.133333, 0.133333), ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(0, 1, 0.498039)), ColorSequenceKeypoint.new(0.5, Color3.new(0, 1, 0.498039)), ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0.498039)) }) }
local t43 = {
	["[Revolver]"] = {
		Valentine = {
			TextureID = "rbxassetid://12110413906",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Testing = {
			DisplayName = "N/A",
			Rarity = "Exclusive",
			TextureID = script.Meshes.Testing,
			CFrame = CFrame.new(0, 0, 0),
			BorderColor = { Color3.new(0.945098, 1, 0.882353), ColorSequence.new(Color3.new(0.831373, 1, 0.756863), Color3.new(0.890196, 0.737255, 0.431373)) }
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.RevolverGhost,
			CFrame = CFrame.new(0.0000152587891, 0, 0, 1, 0, 8.74227766e-8, 0, 1, 0, -8.74227766e-8, 0, 1),
			BorderColor = t4
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://8174665752",
			Rarity = "Common"
		},
		["Battleworn Lilac"] = {
			TextureID = "rbxassetid://8175141275",
			Rarity = "Common"
		},
		["Battleworn Red"] = {
			TextureID = "rbxassetid://8175126370",
			Rarity = "Common"
		},
		["Battleworn Yellowish"] = {
			TextureID = "rbxassetid://8175111007",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://8174703251",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://8174725170",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://8174602579",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://8174185468",
			Rarity = "Rare"
		},
		Future = {
			TextureID = "rbxassetid://8174245185",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://8174472966",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://8174086219",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://8173928665",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://8173955378",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://9370252940",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://9370759030",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://9378802766",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://9370655779",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://9370881350",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://9381169424",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://9381205789",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://9379588832",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://9381087467",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://9381241993",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://9367918526",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://9380928144",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://9370936730",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://9370404463",
			Rarity = "Legendary",
			Crate = 999
		},
		Luck = {
			TextureID = "rbxassetid://12804964131",
			Rarity = "Legendary",
			Crate = 1
		},
		["Golden Age"] = {
			Rarity = "Legendary",
			Crate = 999,
			TextureID = script.Meshes.GoldenAge.Revolver,
			CFrame = CFrame.new(0.0295257568, 0.0725820661, -0.000946044922, 1, -4.89858741e-16, -7.98081238e-23, 4.89858741e-16, 1, 3.2584137e-7, -7.98081238e-23, -3.2584137e-7, 1)
		},
		["Web-Hero II"] = {
			Rarity = "Legendary",
			Crate = 999,
			TextureID = script.Meshes.HERO.HeroWeb2,
			CFrame = CFrame.new(-0.0891418457, -0.0215809345, -0.0041809082, -1.99520325e-23, -1.62920685e-7, 1, 2.44929371e-16, 1, 1.62920685e-7, -1, 2.44929371e-16, 1.99520294e-23),
			BorderColor = t30
		},
		["Web-Hero III"] = {
			Rarity = "Legendary",
			Crate = 999,
			TextureID = script.Meshes.HERO.HeroWeb3,
			CFrame = CFrame.new(-0.0891418457, -0.0215809345, -0.0041809082, -1.99520325e-23, -1.62920685e-7, 1, 2.44929371e-16, 1, 1.62920685e-7, -1, 2.44929371e-16, 1.99520294e-23),
			BorderColor = t30
		},
		Dragon = {
			Rarity = "Legendary",
			Crate = 999,
			TextureID = script.Meshes.Dragon.DragonRev,
			CFrame = CFrame.new(0.0384216309, 0.0450432301, -0.000671386719, 1.87045402e-31, 4.21188801e-16, -0.99999994, 1.77635684e-15, 1, -4.21188827e-16, 1, 1.77635684e-15, -1.87045413e-31)
		},
		Heaven = {
			Rarity = "Legendary",
			Crate = 999,
			TextureID = script.Meshes.Heaven.Revolver,
			CFrame = CFrame.new(-0.0829315186, -0.0831851959, -0.00296020508, -0.999999881, 2.94089277e-17, 8.27179774e-25, -2.94089277e-17, 0.999999881, 6.85215614e-16, 8.27179922e-25, -6.85215667e-16, -1)
		},
		["Thunder II"] = {
			Rarity = "Legendary",
			Crate = 999,
			TextureID = script.Meshes.Stars.RevolverII,
			CFrame = CFrame.new(-0.0765533447, 0.0790345669, 0.00277709961, 1.99520325e-23, 1.62920685e-7, -1, 2.44929371e-16, 1, 1.62920685e-7, 1, -2.44929371e-16, -1.99520294e-23)
		},
		Void = {
			Rarity = "Legendary",
			Crate = 999,
			TextureID = script.Meshes.Void.rev,
			CFrame = CFrame.new(-0.00503540039, 0.0082899332, -0.00164794922, 0, 0, -1, 0, 1, 0, 1, 0, 0),
			BorderColor = t20
		},
		Raygun = {
			Rarity = "Legendary",
			Crate = 999,
			TextureID = script.Meshes.Raygun.rev,
			CFrame = CFrame.new(-0.130737305, -0.0714715123, 0.00900268555, -1, 0, 0, 0, 1, 0, 0, 0, -1)
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11691734370",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11691558717",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11691406715",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698051393",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[DrumGun]"] = {
		Valentine = {
			TextureID = "rbxassetid://12110731451",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.DrumgunGhost,
			CFrame = CFrame.new(0.0000114440918, 0, 0, 1, 0, 8.74227766e-8, 0, 1, 0, -8.74227766e-8, 0, 1),
			BorderColor = t4
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://8185356861",
			Rarity = "Common"
		},
		["Battleworn Silver"] = {
			TextureID = "rbxassetid://8185395568",
			Rarity = "Common"
		},
		["Battleworn Red"] = {
			TextureID = "rbxassetid://8185380857",
			Rarity = "Common"
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://8185410368",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://8185370548",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://8200161894",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://8185515967",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://8185562852",
			Rarity = "Rare"
		},
		Future = {
			TextureID = "rbxassetid://8185721916",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://8185793923",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://8185845811",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://8186385983",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://8186168230",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://9381458764",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://9381540698",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://9381571514",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://9381523079",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://9381562454",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://9381636386",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://9381646935",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://9381588907",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://9381609962",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://9381654654",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://9381379210",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://9381601709",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://9381577172",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://9381496666",
			Rarity = "Legendary",
			Crate = 999
		},
		Luck = {
			TextureID = "rbxassetid://12805073311",
			Rarity = "Legendary",
			Crate = 1
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11698166618",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11698163446",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11698156920",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698171250",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[SMG]"] = {
		Valentine = {
			TextureID = "rbxassetid://12110803753",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.SMGGhost,
			CFrame = CFrame.new(-0.0000114440918, 1.78813934e-7, -0.0263671875, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			BorderColor = t4
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://8199419655",
			Rarity = "Common"
		},
		["Battleworn Silver"] = {
			TextureID = "rbxassetid://8199458294",
			Rarity = "Common"
		},
		["Battleworn Red"] = {
			TextureID = "rbxassetid://8199451863",
			Rarity = "Common"
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://8199473055",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://8199431005",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://8199477007",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://8199481436",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://8199502936",
			Rarity = "Rare"
		},
		Future = {
			TextureID = "rbxassetid://8199514095",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://8199653818",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://8199866150",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://8199875638",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://8199883519",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://9383258180",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://9387602769",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://9387673853",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://9387598203",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://9387607679",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://9387692876",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://9387695275",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://9387676494",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://9387686285",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://9387705178",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://9383235024",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://9387681455",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://9387614760",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://9387593777",
			Rarity = "Legendary",
			Crate = 999
		},
		Luck = {
			TextureID = "rbxassetid://12805137874",
			Rarity = "Legendary",
			Crate = 1
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11698181071",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11698185046",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11698177379",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698207341",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[Shotgun]"] = {
		Valentine = {
			TextureID = "rbxassetid://12111111962",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Fish = {
			TextureID = "rbxassetid://11990563033",
			Rarity = "Exclusive"
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.ShotgunGhost,
			CFrame = CFrame.new(0.0000305175781, 0.199999928, 3.81469727e-6, -1, 0, -4.37113883e-8, 0, 1, 0, 4.37113883e-8, 0, -1),
			BorderColor = t4
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://8200212723",
			Rarity = "Common"
		},
		["Battleworn Red"] = {
			TextureID = "rbxassetid://8200231458",
			Rarity = "Common"
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://8200235920",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://8200227785",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://8200239202",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://8200263229",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://8200281207",
			Rarity = "Rare"
		},
		Future = {
			TextureID = "rbxassetid://8200452630",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://8200567741",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://8200611946",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://8200647420",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://8200657428",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://9387823994",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://9387838948",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://9387936870",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://9387835160",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://9387930616",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://9387966449",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://9387971280",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://9387941195",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://9387953763",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://9387975634",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://9387819403",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://9387945198",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://9387933478",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://9387831940",
			Rarity = "Legendary",
			Crate = 999
		},
		Luck = {
			TextureID = "rbxassetid://12805506654",
			Rarity = "Legendary",
			Crate = 1
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11698286812",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11698229652",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11698222649",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698280015",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[Rifle]"] = {
		Valentine = {
			TextureID = "rbxassetid://12115564779",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.RifleGhost,
			CFrame = CFrame.new(0.000244140625, -0.100267321, -0.0000915527344, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			BorderColor = t4
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://11005121335",
			Rarity = "Common"
		},
		["Battleworn Red"] = {
			TextureID = "rbxassetid://11004990352",
			Rarity = "Common"
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://11005088938",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://11005107116",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://11005005067",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://11004865054",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://11003890838",
			Rarity = "Rare"
		},
		Future = {
			TextureID = "rbxassetid://11003588453",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://11003474703",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://11002735610",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://11002464706",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://11002383233",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://11005316501",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://11005598085",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://11005666467",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://11005542274",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://11005631418",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://11005808616",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://11005835348",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://11005735080",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://11005714634",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://11005857694",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://11005271062",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://11005757368",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://11005648299",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://11005464864",
			Rarity = "Legendary",
			Crate = 999
		},
		Luck = {
			TextureID = "rbxassetid://12806251553",
			Rarity = "Legendary",
			Crate = 1
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11698600572",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11698597549",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11698595906",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698603515",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[TacticalShotgun]"] = {
		Valentine = {
			TextureID = "rbxassetid://12115525020",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.TacticalShotgunGhost,
			CFrame = CFrame.new(-0.148262024, 0, 0, 1, 0, 8.74227766e-8, 0, 1, 0, -8.74227766e-8, 0, 1),
			BorderColor = t4
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://9202807512",
			Rarity = "Common"
		},
		["Battleworn Red"] = {
			TextureID = "rbxassetid://9202860371",
			Rarity = "Common"
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://9202877794",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://9202833643",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://9202903532",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://9203188586",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://9203220557",
			Rarity = "Rare"
		},
		Future = {
			TextureID = "rbxassetid://9203241308",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://9203412138",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://9203513612",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://9203641766",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://9203647967",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://9402233425",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://9402269596",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://9402283247",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://9402258939",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://9402275753",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://9402318974",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://9402324986",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://9402291717",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://9402301039",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://9402335893",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://9402226585",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://9402295362",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://9402279010",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://9402244359",
			Rarity = "Legendary",
			Crate = 999
		},
		Luck = {
			TextureID = "rbxassetid://12806214848",
			Rarity = "Legendary",
			Crate = 1
		},
		Void = {
			Rarity = "Legendary",
			Crate = 999,
			TextureID = script.Meshes.Void.tact,
			CFrame = CFrame.new(0.0505371094, -0.0487936139, 0.00158691406, 0, 0, 1, 0, 1, 0, -1, 0, 0),
			BorderColor = t20
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11698587778",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11698585498",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11698582341",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698590246",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[RPG]"] = {
		Valentine = {
			TextureID = "rbxassetid://12114648605",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.RPGGhost,
			CFrame = CFrame.new(0.000122070312, 0.0625389814, 0.00672149658, 1, 0, -8.74227766e-8, 5.00610797e-21, 1, 5.72632016e-14, 8.74227766e-8, 5.72632016e-14, 1),
			BorderColor = t4
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://8200732479",
			Rarity = "Common"
		},
		["Battleworn Red"] = {
			TextureID = "rbxassetid://8200751938",
			Rarity = "Common"
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://8200757388",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://8200745198",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://8200764100",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://8200822253",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://8200850424",
			Rarity = "Rare"
		},
		Future = {
			TextureID = "rbxassetid://8200866435",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://8200890494",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://8201028034",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://8201055935",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://8201059812",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://9399823174",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://9399837867",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://9399845630",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://9399835270",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://9399840628",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://9399855314",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://9399857061",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://9399847783",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://9399852838",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://9399859827",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://9399820193",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://9399850204",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://9399842353",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://9399831924",
			Rarity = "Legendary",
			Crate = 999
		},
		Luck = {
			TextureID = "rbxassetid://12805600861",
			Rarity = "Legendary",
			Crate = 1
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11698310571",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11698306888",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11698303361",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698313175",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[P90]"] = {
		Valentine = {
			TextureID = "rbxassetid://12114736740",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.P90Ghost,
			CFrame = CFrame.new(0.0000686645508, 0.000218153, 0.0000305175781, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			BorderColor = t4
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://8205069485",
			Rarity = "Common"
		},
		["Battleworn Red"] = {
			TextureID = "rbxassetid://8205089535",
			Rarity = "Common"
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://8205123590",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://8205076879",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://8205144857",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://8205219107",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://8205257625",
			Rarity = "Rare"
		},
		Future = {
			TextureID = "rbxassetid://8205265666",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://8205325456",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://8205367433",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://8205381104",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://8205397990",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://9399869525",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://9399883452",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://9399890039",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://9399880968",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://9399886010",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://9399899904",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://9399901738",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://9399892203",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://9399897656",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://9399907224",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://9399866877",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://9399894480",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://9399887933",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://9399878713",
			Rarity = "Legendary",
			Crate = 999
		},
		Luck = {
			TextureID = "rbxassetid://12805653252",
			Rarity = "Legendary",
			Crate = 1
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11698324470",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11698322674",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11698320640",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698328153",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[LMG]"] = {
		Valentine = {
			TextureID = "rbxassetid://12114906111",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.LMGGhost,
			CFrame = CFrame.new(0.374502182, -0.25, -0.25, -1, 0, -1.31134158e-7, 0, 1, 0, 1.31134158e-7, 0, -1),
			BorderColor = t4
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://8205498477",
			Rarity = "Common"
		},
		["Battleworn Red"] = {
			TextureID = "rbxassetid://8205510598",
			Rarity = "Common"
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://8205517033",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://8205505332",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://8205523035",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://8205558639",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://8205575208",
			Rarity = "Rare"
		},
		Future = {
			TextureID = "rbxassetid://8205585472",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://8205620131",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://8205697183",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://8205713344",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://8205719479",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://9400157516",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://9400165161",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://9400173576",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://9400162704",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://9400167413",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://9400184078",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://9400186284",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://9400176153",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://9400182123",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://9400188666",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://9399928853",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://9400178599",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://9400170566",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://9400160302",
			Rarity = "Legendary",
			Crate = 999
		},
		Luck = {
			TextureID = "rbxassetid://12805709973",
			Rarity = "Legendary",
			Crate = 1
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11698342231",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11698339260",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11698336424",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698345931",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[Flamethrower]"] = {
		Valentine = {
			TextureID = "rbxassetid://12114451976",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.FlamethrowerGhost,
			CFrame = CFrame.new(-0.219947815, 0.339559376, 0.000274658203, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			BorderColor = t4
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://8205935393",
			Rarity = "Common"
		},
		["Battleworn Silver"] = {
			TextureID = "rbxassetid://8205943484",
			Rarity = "Common"
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://8205948312",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://8205939544",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://8206047590",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://8206051335",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://8213235948",
			Rarity = "Rare"
		},
		Future = {
			TextureID = "rbxassetid://8206268974",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://8206347935",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://8206488418",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://8206707126",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://8208010648",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://9400231739",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://9400536953",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://9400569162",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://9400520290",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://9400550556",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://9400770169",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://9400778632",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://9400576948",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://9400735643",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://9400780662",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://9400200285",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://9400582867",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://9400558000",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://9400503673",
			Rarity = "Legendary",
			Crate = 999
		},
		Luck = {
			TextureID = "rbxassetid://12805759408",
			Rarity = "Legendary",
			Crate = 1
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11698374020",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11698368556",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11698359790",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698381683",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[Double-Barrel SG]"] = {
		Valentine = {
			TextureID = "rbxassetid://12114956009",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.DoubleBGhost,
			CFrame = CFrame.new(0.0250015259, -0.077037394, 0, 1, 0, 0, 0, 0.999998331, 0, 0, 0, 1),
			BorderColor = t4
		},
		["DH-Stars"] = {
			TextureID = "rbxassetid://9379871038",
			Rarity = "Exclusive"
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://8212275962",
			Rarity = "Common"
		},
		["Battleworn Silver"] = {
			TextureID = "rbxassetid://8212286567",
			Rarity = "Common"
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://8212282697",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://8212279414",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://8212290557",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://8212316849",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://8213280304",
			Rarity = "Rare"
		},
		Future = {
			TextureID = "rbxassetid://8212323155",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://8212348203",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://8212375936",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://8212384179",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://8212394280",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://9401115062",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://9401429541",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://9401449568",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://9401418244",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://9401436298",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://9401505985",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://9401510373",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://9401454599",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://9401462565",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://9401514811",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://9400904953",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://9401457713",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://9401441647",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://9401416743",
			Rarity = "Legendary",
			Crate = 999
		},
		Fish = {
			TextureID = "rbxassetid://11982219253",
			Rarity = "Legendary",
			Crate = 1
		},
		Luck = {
			TextureID = "rbxassetid://12805836044",
			Rarity = "Legendary",
			Crate = 1
		},
		["Golden Age"] = {
			Rarity = "Legendary",
			Crate = 999,
			TextureID = script.Meshes.GoldenAge["Double Barrel"],
			CFrame = CFrame.new(-0.00664520264, 0.0538104773, 0.0124816895, -1, 4.89858741e-16, 7.98081238e-23, 4.89858741e-16, 1, 3.2584137e-7, 7.98081238e-23, 3.2584137e-7, -1)
		},
		Dragon = {
			Rarity = "Legendary",
			Crate = 999,
			TextureID = script.Meshes.Dragon.DBDragon,
			CFrame = CFrame.new(-0.123794556, 0.0481165648, 0.00048828125, 7.14693442e-7, 3.13283705e-10, 1, -4.56658222e-9, 1, -3.13281678e-10, -1, -4.56658533e-9, 7.14693442e-7)
		},
		Heaven = {
			Rarity = "Legendary",
			Crate = 999,
			TextureID = script.Meshes.Heaven.DB,
			CFrame = CFrame.new(-0.0303955078, 0.022110641, 0.00296020508, -0.999997139, -7.05812226e-16, 7.85568618e-30, 7.05812226e-16, 0.999997139, -2.06501178e-14, 6.44518474e-30, 2.06501042e-14, -0.999999046)
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11698405675",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11698398802",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11698395299",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698411164",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[Drum-Shotgun]"] = {
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://16689483120",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://16689465255",
			Rarity = "Common",
			Crate = 1
		},
		["Light Camo"] = {
			TextureID = "rbxassetid://16689491845",
			Rarity = "Common",
			Crate = 1
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://16677029205",
			Rarity = "Common",
			Crate = 1
		},
		["Battleworn Blue"] = {
			TextureID = "rbxassetid://16677041651",
			Rarity = "Common",
			Crate = 1
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://16677121846",
			Rarity = "Common",
			Crate = 1
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://16677050965",
			Rarity = "Common",
			Crate = 1
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://16677013306",
			Rarity = "Common",
			Crate = 1
		},
		["Battleworn Red"] = {
			TextureID = "rbxassetid://16677055685",
			Rarity = "Common",
			Crate = 1
		},
		["Black White"] = {
			TextureID = "rbxassetid://16677918724",
			Rarity = "Rare",
			Crate = 1
		},
		Rainbow = {
			TextureID = "rbxassetid://16677272911",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Death"] = {
			TextureID = "rbxassetid://16677149439",
			Rarity = "Rare",
			Crate = 1
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://16677910627",
			Rarity = "Common",
			Crate = 1
		},
		Icey = {
			TextureID = "rbxassetid://16677229978",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://16689431385",
			Rarity = "Epic",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://16689527835",
			Rarity = "Epic",
			Crate = 1
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://16677186951",
			Rarity = "Epic",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://16677641392",
			Rarity = "Legendary",
			Crate = 1
		},
		Inferno = {
			TextureID = "rbxassetid://16689348102",
			Rarity = "Legendary",
			Crate = 1
		},
		Luck = {
			TextureID = "rbxassetid://16689728694",
			Rarity = "Legendary",
			Crate = 1
		}
	},
	["[Glock]"] = {
		Valentine = {
			TextureID = "rbxassetid://12115024879",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.GlockGhost,
			CFrame = CFrame.new(0, 0, -0.200004578, 1, 0, 4.37113883e-8, 0, 1, 0, -4.37113883e-8, 0, 1),
			BorderColor = t4
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://8212444417",
			Rarity = "Common"
		},
		["Battleworn Lilac"] = {
			TextureID = "rbxassetid://8212451534",
			Rarity = "Common"
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://8212455391",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://8212448336",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://8212459430",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://8212481264",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://8213282241",
			Rarity = "Rare"
		},
		Future = {
			TextureID = "rbxassetid://8212487510",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://8212534706",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://8212630941",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://8212637463",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://8212667115",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://9401623473",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://9401696528",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://9401719450",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://9401683246",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://9401714006",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://9401747845",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://9401750648",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://9401723658",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://9401734730",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://9401756373",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://9401611034",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://9401727978",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://9401709916",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://9401670081",
			Rarity = "Legendary",
			Crate = 999
		},
		Luck = {
			TextureID = "rbxassetid://12805896214",
			Rarity = "Legendary",
			Crate = 1
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11698428136",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11698455542",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11698421659",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698450494",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[Silencer]"] = {
		Valentine = {
			TextureID = "rbxassetid://12115024879",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.GlockGhost,
			CFrame = CFrame.new(0, 0, -0.200004578, 1, 0, 4.37113883e-8, 0, 1, 0, -4.37113883e-8, 0, 1),
			BorderColor = t4
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://8212444417",
			Rarity = "Common"
		},
		["Battleworn Lilac"] = {
			TextureID = "rbxassetid://8212451534",
			Rarity = "Common"
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://8212455391",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://8212448336",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://8212459430",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://8212481264",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://8213282241",
			Rarity = "Rare"
		},
		Future = {
			TextureID = "rbxassetid://8212487510",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://8212534706",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://8212630941",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://8212637463",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://8212667115",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://9401623473",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://9401696528",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://9401719450",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://9401683246",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://9401714006",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://9401747845",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://9401750648",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://9401723658",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://9401734730",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://9401756373",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://9401611034",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://9401727978",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://9401709916",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://9401670081",
			Rarity = "Legendary",
			Crate = 999
		},
		Luck = {
			TextureID = "rbxassetid://12805896214",
			Rarity = "Legendary",
			Crate = 1
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11698428136",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11698455542",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11698421659",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698450494",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[AUG]"] = {
		Valentine = {
			TextureID = "rbxassetid://12115122137",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.AUGGhost,
			CFrame = CFrame.new(-7.62939453e-6, 0.0499991775, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			BorderColor = t4
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://8212698585",
			Rarity = "Common"
		},
		["Battleworn Red"] = {
			TextureID = "rbxassetid://8212702975",
			Rarity = "Common"
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://8212708853",
			Rarity = "Common"
		},
		["Battleworn Silver"] = {
			TextureID = "rbxassetid://8212718221",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://8212740914",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://8212725557",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://8212747403",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://8213284596",
			Rarity = "Rare"
		},
		Future = {
			TextureID = "rbxassetid://8212749719",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://8212763285",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://8212784351",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://8212802637",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://8212809463",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://9401790525",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://9401825845",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://9401844534",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://9401812015",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://9401836335",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://9401873003",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://9401877388",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://9401850278",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://9401860175",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://9401880668",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://9401784838",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://9401855319",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://9401832956",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://9401802930",
			Rarity = "Legendary",
			Crate = 999
		},
		Luck = {
			TextureID = "rbxassetid://12806062046",
			Rarity = "Legendary",
			Crate = 1
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11698517061",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11698514224",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11698511107",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698520432",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[AR]"] = {
		Valentine = {
			TextureID = "rbxassetid://12115236401",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.ARGhost,
			CFrame = CFrame.new(0.116256714, 0.0750004649, 0.0000610351562, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			BorderColor = t4
		},
		Halloween = {
			TextureID = "rbxassetid://11241216355",
			Rarity = "Exclusive"
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://8212952678",
			Rarity = "Common"
		},
		["Battleworn Red"] = {
			TextureID = "rbxassetid://8212959581",
			Rarity = "Common"
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://8212975065",
			Rarity = "Common"
		},
		["Battleworn Blue"] = {
			TextureID = "rbxassetid://8212972476",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://8212955941",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://8212991595",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://8213019535",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://8213155212",
			Rarity = "Rare"
		},
		Future = {
			TextureID = "rbxassetid://8213025576",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://8213028694",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://8213165917",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://8213168054",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://8213175568",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://9401951892",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://9401997867",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://9402011516",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://9401985175",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://9402003717",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://9402044786",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://9402049161",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://9402014215",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://9402025791",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://9402055602",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://9401937265",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://9402023983",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://9402007158",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://9401972413",
			Rarity = "Legendary",
			Crate = 999
		},
		Luck = {
			TextureID = "rbxassetid://12806134043",
			Rarity = "Legendary",
			Crate = 1
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11698536498",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11698534667",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11698532205",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698542283",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[SilencerAR]"] = {
		Valentine = {
			TextureID = "rbxassetid://12115236401",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.ARGhost,
			CFrame = CFrame.new(0.116256714, 0.0750004649, 0.0000610351562, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			BorderColor = t4
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://8212952678",
			Rarity = "Common"
		},
		["Battleworn Red"] = {
			TextureID = "rbxassetid://8212959581",
			Rarity = "Common"
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://8212975065",
			Rarity = "Common"
		},
		["Battleworn Blue"] = {
			TextureID = "rbxassetid://8212972476",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://8212955941",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://8212991595",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://8213019535",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://8213155212",
			Rarity = "Rare"
		},
		Future = {
			TextureID = "rbxassetid://8213025576",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://8213028694",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://8213165917",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://8213168054",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://8213175568",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://9401951892",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://9401997867",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://9402011516",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://9401985175",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://9402003717",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://9402044786",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://9402049161",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://9402014215",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://9402025791",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://9402055602",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://9401937265",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://9402023983",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://9402007158",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://9401972413",
			Rarity = "Legendary",
			Crate = 999
		},
		Luck = {
			TextureID = "rbxassetid://12806134043",
			Rarity = "Legendary",
			Crate = 1
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11698536498",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11698534667",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11698532205",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698542283",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[AK47]"] = {
		Valentine = {
			TextureID = "rbxassetid://12115438326",
			Rarity = "Exclusive",
			BorderColor = t
		},
		Shadow = {
			Rarity = "Exclusive",
			TextureID = script.Meshes.Shadow.AK47Ghost,
			CFrame = CFrame.new(-0.750015259, 4.76837158e-7, -0.0000305175781, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			BorderColor = t4
		},
		["Battleworn Green"] = {
			TextureID = "rbxassetid://8213540594",
			Rarity = "Common"
		},
		["Battleworn Red"] = {
			TextureID = "rbxassetid://8213544761",
			Rarity = "Common"
		},
		["Battleworn Orange"] = {
			TextureID = "rbxassetid://8213558744",
			Rarity = "Common"
		},
		["Battleworn Blue"] = {
			TextureID = "rbxassetid://8213551140",
			Rarity = "Common"
		},
		["Battleworn Purple"] = {
			TextureID = "rbxassetid://8213553838",
			Rarity = "Common"
		},
		["Battleworn Pink"] = {
			TextureID = "rbxassetid://8213556073",
			Rarity = "Common"
		},
		Danger = {
			TextureID = "rbxassetid://8213561927",
			Rarity = "Rare"
		},
		["Black & White"] = {
			TextureID = "rbxassetid://8213564638",
			Rarity = "Rare"
		},
		Icey = {
			TextureID = "rbxassetid://8213567693",
			Rarity = "Epic"
		},
		Biohazard = {
			TextureID = "rbxassetid://8213570295",
			Rarity = "Epic"
		},
		["Red Death"] = {
			TextureID = "rbxassetid://8213572965",
			Rarity = "Legendary"
		},
		["Gold Glory"] = {
			TextureID = "rbxassetid://8213606202",
			Rarity = "Legendary"
		},
		["Jungle Blaster"] = {
			TextureID = "rbxassetid://9402075015",
			Rarity = "Common",
			Crate = 1
		},
		["1984"] = {
			TextureID = "rbxassetid://9402123344",
			Rarity = "Common",
			Crate = 1
		},
		["White Stripes"] = {
			TextureID = "rbxassetid://9402137566",
			Rarity = "Common",
			Crate = 1
		},
		Venom = {
			TextureID = "rbxassetid://9402109360",
			Rarity = "Rare",
			Crate = 1
		},
		["Red Tiger"] = {
			TextureID = "rbxassetid://9402128607",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Red"] = {
			TextureID = "rbxassetid://9402165796",
			Rarity = "Rare",
			Crate = 1
		},
		["Premium Yellow"] = {
			TextureID = "rbxassetid://9402168602",
			Rarity = "Rare",
			Crate = 1
		},
		["Pink Fuchsia"] = {
			TextureID = "rbxassetid://9402143081",
			Rarity = "Epic",
			Crate = 1
		},
		Patriot = {
			TextureID = "rbxassetid://9402153356",
			Rarity = "Epic",
			Crate = 1
		},
		Glassy = {
			TextureID = "rbxassetid://9402177431",
			Rarity = "Epic",
			Crate = 1
		},
		["Red Hot"] = {
			TextureID = "rbxassetid://9368888318",
			Rarity = "Epic",
			Crate = 1
		},
		Matrix = {
			TextureID = "rbxassetid://9402147406",
			Rarity = "Legendary",
			Crate = 1
		},
		Galaxy = {
			TextureID = "rbxassetid://9402132929",
			Rarity = "Legendary",
			Crate = 999
		},
		Inferno = {
			TextureID = "rbxassetid://9402094255",
			Rarity = "Legendary",
			Crate = 999
		},
		Luck = {
			TextureID = "rbxassetid://12806176107",
			Rarity = "Legendary",
			Crate = 1
		},
		["Purple Yellow Wrap"] = {
			TextureID = "rbxassetid://11698565005",
			Rarity = "Common",
			Crate = 3
		},
		["Blue Wrap"] = {
			TextureID = "rbxassetid://11698561489",
			Rarity = "Rare",
			Crate = 3
		},
		["Christmas Wrap"] = {
			TextureID = "rbxassetid://11698558392",
			Rarity = "Epic",
			Crate = 3
		},
		["Snow Wrap"] = {
			TextureID = "rbxassetid://11698567925",
			Rarity = "Legendary",
			Crate = 3
		}
	},
	["[Flintlock]"] = {},
	["[Deagle]"] = {},
	["[Knife]"] = {
		["Love Kukri"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.650018692, 0.419342041, -0.0283660889, 0, 1, 0, 0, 0, -1, -1, 0, 0),
			BorderColor = t
		},
		Shadow = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(1.1250186, 0.0000305175781, 0.000396728516, 0, 1, 0, 1, 0, -4.37113883e-8, -4.37113883e-8, 0, -1),
			BorderColor = t4
		},
		Katar = {
			Rarity = "Common",
			Crate = 2,
			CFrame = CFrame.new(-0.555824697, -0.533429861, 0.0668983459, 0, 1, 0, 0, 0, 1, 1, 0, 0)
		},
		Kunai = {
			Rarity = "Common",
			Crate = 2,
			CFrame = CFrame.new(0.0728008747, 0.0431479923, 0.0373959541, 0, -1, 0, -0.99999994, 0, 0, 0, 0, -1)
		},
		Pink = {
			Rarity = "Common",
			Crate = 2,
			CFrame = CFrame.new(-0.200906992, -0.0210727006, -0.00665473938, 0, 1, 0, -0.99999994, 0, 0, 0, 0, 1)
		},
		["Screw Driver"] = {
			Rarity = "Common",
			Crate = 2,
			CFrame = CFrame.new(0.109568655, -0.0280584544, 0.000621795654, 0, 1, 0, 0, 0, -0.99999994, -1, 0, 0)
		},
		Kitchen = {
			Rarity = "Common",
			Crate = 2,
			CFrame = CFrame.new(0.0464496613, -0.208359778, -0.0175123215, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		},
		Buster = {
			Rarity = "Rare",
			Crate = 2,
			CFrame = CFrame.new(0.284334183, -0.00799623132, 0.0138845444, 0, 1, 0, 0, 0, 1, 1, 0, 0)
		},
		Scissor = {
			Rarity = "Rare",
			Crate = 2,
			CFrame = CFrame.new(0.0672817826, 0.0748512968, -0.0330171585, -1, 0, 0, 0, -0.99999994, 0, 0, 0, 1)
		},
		Boxcutter = {
			Rarity = "Rare",
			Crate = 2,
			CFrame = CFrame.new(0.133508801, -0.0368869603, 0.0361539125, 1, 0, 0, 0, -1, 0, 0, 0, -1)
		},
		["Bat Sharp"] = {
			Rarity = "Epic",
			Crate = 2,
			CFrame = CFrame.new(0.0205659866, 0.0712812394, -0.0301570892, 1, 0, 0, 0, -0.99999994, 0, 0, 0, -1)
		},
		["Red Tiger"] = {
			Rarity = "Epic",
			Crate = 2,
			CFrame = CFrame.new(0.176477551, 0.0276881456, 0.0265624225, 0, 1, 0, -1, 0, 0, 0, 0, 1)
		},
		["Golden Age Tanto"] = {
			Rarity = "Legendary",
			Crate = 999,
			CFrame = CFrame.new(0.395452857, -0.00876617432, -0.0173950195, 4.89857682e-16, 1, 1.62920671e-7, 1, -2.70329972e-14, 1.62920628e-7, 1.62920628e-7, 1.62920671e-7, -1)
		},
		Emerald = {
			Rarity = "Legendary",
			Crate = 999,
			CFrame = CFrame.new(0.154518723, 0.116676092, 0.000304222107, 0, 1, 0, -1, 0, 0, 0, 0, 1)
		},
		Golden = {
			Rarity = "Legendary",
			Crate = 2,
			CFrame = CFrame.new(0.269160748, 0.00606650487, -0.00481987, 0, 1, 0, 0, 0, -1, -1, 0, 0)
		},
		["Galactic-Red"] = {
			Rarity = "Legendary",
			Crate = 999,
			CFrame = CFrame.new(-0.261539459, 0.0143127441, 0.0307006836, 0, 1, 0, 0, 0, 1, 1, 0, 0)
		},
		Dragon = {
			Rarity = "Legendary",
			Crate = 999,
			CFrame = CFrame.new(0.171493769, -0.0721282959, -0.0171813965, 8.15480348e-7, 0.99999994, 4.55676854e-7, -1.00000203, 6.4963109e-7, 2.51534473e-8, 2.88709696e-8, -4.56442649e-7, 1.00000012)
		},
		Heaven = {
			Rarity = "Legendary",
			Crate = 999,
			CFrame = CFrame.new(0.147634387, 0.286956787, -0.00314331055, 8.88577406e-14, 0.798631966, 0.601811886, 1.75618051e-14, -0.601811886, 0.798631966, 1, 6.03960173e-14, 6.75013837e-14)
		},
		Void = {
			Rarity = "Legendary",
			Crate = 999,
			CFrame = CFrame.new(0.0116134882, 0.0246582031, 0.00231933594, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			BorderColor = t20
		},
		Raygun = {
			Rarity = "Legendary",
			Crate = 999,
			CFrame = CFrame.new(-0.406901479, 0.0661621094, 0.0101928711, 1, 0, 0, 0, -1, 0, 0, 0, -1)
		},
		["RGB Butterfly"] = {
			Rarity = "Legendary",
			Crate = 2,
			CFrame = CFrame.new(0.129888415, 0.0243530273, -0.0148620605, 1, 0, 0, 0, -1, 0, 0, 0, -1)
		},
		["Emerald Butterfly"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.129888415, 0.0243530273, -0.0148620605, 1, 0, 0, 0, -1, 0, 0, 0, -1)
		},
		["Black Marker"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.0356717706, 0.0152872801, 0.023607254, 0, 1, 0, 0, 0, 1, 1, 0, 0)
		},
		["Red Marker"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.0356717706, 0.0152872801, 0.023607254, 0, 1, 0, 0, 0, 1, 1, 0, 0)
		},
		["Purple Marker"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.0356717706, 0.0152872801, 0.023607254, 0, 1, 0, 0, 0, 1, 1, 0, 0)
		},
		["Pink Marker"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.0356717706, 0.0152872801, 0.023607254, 0, 1, 0, 0, 0, 1, 1, 0, 0)
		},
		["Orange Marker"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.0356717706, 0.0152872801, 0.023607254, 0, 1, 0, 0, 0, 1, 1, 0, 0)
		},
		["Green Marker"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.0356717706, 0.0152872801, 0.023607254, 0, 1, 0, 0, 0, 1, 1, 0, 0)
		},
		["Brown Marker"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.0356717706, 0.0152872801, 0.023607254, 0, 1, 0, 0, 0, 1, 1, 0, 0)
		},
		["Blue Marker"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.0356717706, 0.0152872801, 0.023607254, 0, 1, 0, 0, 0, 1, 1, 0, 0)
		}
	},
	["[House]"] = {
		["House 2"] = {
			Rarity = "Common",
			Crate = 1
		},
		Brick = {
			Rarity = "Rare",
			Crate = 1
		},
		Town = {
			Rarity = "Epic",
			Crate = 1
		},
		["Classic 1"] = {
			Rarity = "Epic",
			Crate = 1
		},
		["Contemporary House"] = {
			Rarity = "Epic",
			Crate = 1
		},
		["Container House"] = {
			Rarity = "Epic",
			Crate = 1
		},
		["Da Restaurant"] = {
			Rarity = "Epic",
			Crate = 1
		},
		["Pink House II"] = {
			Rarity = "Legendary",
			Crate = 999
		},
		Modern = {
			Rarity = "Legendary",
			Crate = 1
		},
		["Studio House"] = {
			Rarity = "Legendary",
			Crate = 999
		},
		["Brick Modern"] = {
			Rarity = "Legendary",
			Crate = 1
		},
		Villa = {
			Rarity = "Legendary",
			Crate = 999
		},
		["Pink House"] = {
			Rarity = "Legendary",
			Crate = 999
		},
		["Cliff House"] = {
			Rarity = "Legendary",
			Crate = 999
		},
		["White Modern"] = {
			Rarity = "Legendary",
			Crate = 999
		},
		Duplex = {
			Rarity = "Legendary",
			Crate = 1
		},
		["Mary\'s Cottage"] = {
			Rarity = "Legendary",
			Crate = 1
		},
		["Trailer Park"] = {
			Rarity = "Legendary",
			Crate = 1
		},
		["A Frame House"] = {
			Rarity = "Legendary",
			Crate = 999
		}
	},
	["[Wallet]"] = {
		Bitcoin = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.0482025146, 0.0281861424, 0.00436401367, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		},
		Pig = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(-0.0382080078, -0.05485636, 0.126846313, -1, 0, 0, 0, 1, 0, 0, 0, -1)
		},
		Designer = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.0162658691, -0.257393897, 0.0985870361, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		},
		["Designer Pink"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.0162658691, -0.257393897, 0.0985870361, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		},
		["Credit Card"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(-0.0554199219, -0.0202098489, -0.0571899414, 0, 0, 1, 0, -1, 0, 1, 0, 0)
		},
		["Credit Card Pink"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(-0.0554199219, -0.0202098489, -0.0571899414, 0, 0, 1, 0, -1, 0, 1, 0, 0)
		},
		Kin = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.0292358398, -0.706313014, 0.605987549, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		},
		["Pink Purse"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(-0.00854492188, -0.838884234, 0.602813721, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		},
		Stacks = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(-0.0927200317, 0.473638803, 0.502807617, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		},
		["Pink Purse II"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(-0.00854492188, -0.838884234, 0.602813721, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		},
		Turtle = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(-0.00854492188, -0.838884234, 0.602813721, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		},
		Roblex = {
			Rarity = "Legendary",
			DisplayName = "Pepsi Roblex",
			Crate = 999,
			CFrame = CFrame.new(0.15, -0.55, 0.8, 0, 0, -1, 1, 0, 0, 0, -1, 0),
			BorderColor = t6
		},
		["Emerald Roblex"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.15, -0.55, 0.8, 0, 0, -1, 1, 0, 0, 0, -1, 0),
			BorderColor = t23
		},
		["Gold Roblex"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.15, -0.55, 0.8, 0, 0, -1, 1, 0, 0, 0, -1, 0),
			BorderColor = t24
		},
		["Rose Roblex"] = {
			Rarity = "Legendary",
			Crate = 999,
			CFrame = CFrame.new(0.15, -0.55, 0.8, 0, 0, -1, 1, 0, 0, 0, -1, 0),
			BorderColor = t
		},
		Audemoon = {
			Rarity = "Legendary",
			Crate = 999,
			CFrame = CFrame.new(0.165, -0.53, 0.8, 0, 0, -1, 1, 0, 0, 0, -1, 0),
			BorderColor = t5
		}
	},
	["[Bat]"] = {
		["Pink Spiked"] = {
			Rarity = "Exclusive",
			CFrame = CFrame.new(0.0482025146, 0.0281861424, 0.00436401367, 0, 0, -1, 0, 1, 0, 1, 0, 0),
			BorderColor = t
		}
	},
	["[Stomps]"] = {
		Apex = {
			Rarity = "Exclusive",
			DisplayName = "Apex"
		},
		UltraStomp = {
			Rarity = "Exclusive",
			DisplayName = "Ultra Stomp"
		},
		Arrest = {
			Rarity = "Exclusive",
			DisplayName = "Arrest"
		}
	},
	["[Vehicle]"] = {
		Moped = {
			Rarity = "Common",
			Crate = 999
		},
		Motorcycle = {
			Rarity = "Common",
			Crate = 999
		},
		["Motorcycle Side Seat"] = {
			Rarity = "Rare",
			Crate = 1
		},
		Car = {
			Rarity = "Exclusive"
		},
		Kart = {
			Rarity = "Rare",
			Crate = 1
		},
		["Golf Cart"] = {
			Rarity = "Rare",
			Crate = 1
		},
		Burger = {
			Rarity = "Exclusive",
			NoTrade = true
		},
		Luxe = {
			Rarity = "Exclusive"
		},
		Svj = {
			Rarity = "Exclusive"
		},
		Turbo = {
			DisplayName = "811 Turbo (G)",
			Rarity = "Exclusive",
			BorderColor = t7
		},
		TurboSCyan = {
			DisplayName = "811 Turbo S (C)",
			Rarity = "Exclusive",
			BorderColor = t7
		},
		TurboSOrange = {
			DisplayName = "811 Turbo S (O)",
			Rarity = "Legendary",
			Crate = 1,
			BorderColor = t7
		},
		McLaro = {
			Rarity = "Exclusive"
		},
		McLaroBlue = {
			Rarity = "Exclusive"
		},
		Cyber = {
			Rarity = "Legendary",
			Crate = 999
		},
		["School Bus"] = {
			Rarity = "Exclusive",
			NoTrade = true
		},
		["Dirt Bike"] = {
			Rarity = "Exclusive"
		},
		ATV = {
			Rarity = "Exclusive"
		},
		Reindeer = {
			Rarity = "Common",
			Crate = 999
		}
	},
	["[Mask]"] = {
		["Bandana Black"] = {
			Rarity = "Common"
		},
		["Bandana DH"] = {
			Rarity = "Common"
		},
		Hockey = {
			Rarity = "Common"
		},
		["Ski Mask"] = {
			Rarity = "Common"
		},
		["Ski Mask II"] = {
			Rarity = "Common"
		},
		["Hockey DH"] = {
			Rarity = "Rare"
		},
		["Hockey Gradient"] = {
			Rarity = "Rare"
		},
		["Ski Mask Saint"] = {
			Rarity = "Rare"
		},
		["Ski Mask DH"] = {
			Rarity = "Rare"
		},
		["Ski Mask Red Eye"] = {
			Rarity = "Rare"
		},
		["Ski Mask Saint II"] = {
			Rarity = "Rare"
		},
		["Ski Mask X)"] = {
			Rarity = "Rare"
		},
		["Ski Mask Half Green"] = {
			Rarity = "Epic"
		},
		["Ski Mask Blue"] = {
			Rarity = "Epic"
		},
		["Ski Mask II DH"] = {
			Rarity = "Epic"
		},
		["Ski Mask Pink"] = {
			Rarity = "Epic"
		},
		["Ski Mask Red"] = {
			Rarity = "Epic"
		},
		["Ski Mask Skull"] = {
			Rarity = "Epic"
		},
		["Ski Mask Horns"] = {
			Rarity = "Legendary"
		},
		["Ski Mask Horns DH"] = {
			Rarity = "Legendary"
		},
		["Ski Mask Horns Pink"] = {
			Rarity = "Legendary"
		},
		["Ski Mask Horns White"] = {
			Rarity = "Legendary"
		}
	}
}

t43["[Revolver]"].Rainbow = {
	TextureID = "rbxassetid://12898879990",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[DrumGun]"].Rainbow = {
	TextureID = "rbxassetid://12899291391",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[SMG]"].Rainbow = {
	TextureID = "rbxassetid://12899335260",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[Shotgun]"].Rainbow = {
	TextureID = "rbxassetid://12899388473",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[Rifle]"].Rainbow = {
	TextureID = "rbxassetid://12899704735",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[TacticalShotgun]"].Rainbow = {
	TextureID = "rbxassetid://12899678631",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[RPG]"].Rainbow = {
	TextureID = "rbxassetid://12899423289",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[P90]"].Rainbow = {
	TextureID = "rbxassetid://12899451616",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[LMG]"].Rainbow = {
	TextureID = "rbxassetid://12899469894",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[Flamethrower]"].Rainbow = {
	TextureID = "rbxassetid://12899496204",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[Double-Barrel SG]"].Rainbow = {
	TextureID = "rbxassetid://12899533307",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[Glock]"].Rainbow = {
	TextureID = "rbxassetid://12899580244",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[Silencer]"].Rainbow = {
	TextureID = "rbxassetid://12899580244",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[AUG]"].Rainbow = {
	TextureID = "rbxassetid://12899730688",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[AR]"].Rainbow = {
	TextureID = "rbxassetid://12899633890",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[SilencerAR]"].Rainbow = {
	TextureID = "rbxassetid://12899633890",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[AK47]"].Rainbow = {
	TextureID = "rbxassetid://12899655828",
	Rarity = "Rare",
	Crate = 1,
	BorderColor = t15
}
t43["[Revolver]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricRevolver,
	CFrame = CFrame.new(0.185462952, 0.0312761068, 0.000610351562, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t19
}
t43["[DrumGun]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricDrum,
	CFrame = CFrame.new(-0.471969604, 0.184426308, 0.075378418, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t19
}
t43["[SMG]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricSMG,
	CFrame = CFrame.new(-0.0620956421, 0.109580457, 0.00729370117, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t19
}
t43["[Shotgun]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricShotgun,
	CFrame = CFrame.new(0.0000610351562, 0.180232108, -0.624732971, 1, 0, -4.37113883e-8, 0, 1, 0, 4.37113883e-8, 0, 1),
	BorderColor = t19
}
t43["[Rifle]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricRifle,
	CFrame = CFrame.new(0.181793213, -0.0415201783, 0.00421142578, 1.8189894e-12, 6.6174449e-24, 1, 7.27595761e-12, 1, 6.6174449e-24, -1, -7.27595761e-12, -1.8189894e-12),
	BorderColor = t19
}
t43["[TacticalShotgun]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricTac,
	CFrame = CFrame.new(-0.0838031769, -0.0377542973, 0.00717163086, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t19
}
t43["[RPG]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricRPG,
	CFrame = CFrame.new(-0.022277832, -0.0413781404, 0.00997161865, 1, -5.35309611e-24, -4.37113883e-8, 2.49770094e-21, 0.99999994, 5.72632016e-14, 4.37113883e-8, 5.72631948e-14, 1),
	BorderColor = t19
}
t43["[P90]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricP90,
	CFrame = CFrame.new(0.166191101, -0.225557804, -0.0075378418, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t19
}
t43["[LMG]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricLMG,
	CFrame = CFrame.new(0.142379761, 0.104723871, -0.303771973, -1, 0, -4.37113883e-8, 0, 1, 0, 4.37113883e-8, 0, -1),
	BorderColor = t19
}
t43["[Flamethrower]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricFT,
	CFrame = CFrame.new(-0.158782959, 0.173444271, 0.00640869141, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t19
}
t43["[Double-Barrel SG]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricDB,
	CFrame = CFrame.new(0.0755996704, -0.0420352221, 0.00543212891, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t19
}
t43["[Glock]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricGlock,
	CFrame = CFrame.new(-0.00207519531, 0.0318723917, 0.0401077271, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t19
}
t43["[Silencer]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricGlock,
	CFrame = CFrame.new(-0.00207519531, 0.0318723917, 0.0401077271, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t19
}
t43["[AUG]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricAUG,
	CFrame = CFrame.new(0.331085205, -0.0117390156, 0.00155639648, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t19
}
t43["[AR]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricAR,
	CFrame = CFrame.new(-0.16942215, 0.0508521795, 0.0669250488, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t19
}
t43["[SilencerAR]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricAR,
	CFrame = CFrame.new(-0.16942215, 0.0508521795, 0.0669250488, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t19
}
t43["[AK47]"].Electric = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Electric.ElectricAK,
	CFrame = CFrame.new(0.155792236, 0.18423444, 0.00140380859, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t19
}
t43["[Revolver]"]["8-BIT"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.BIT8.RPixel,
	CFrame = CFrame.new(0.0261230469, -0.042888701, 0.00260925293, -1, 1.355249e-20, -3.55271071e-15, 1.355249e-20, 1, -1.81903294e-27, 3.55271071e-15, -1.81903294e-27, -1),
	BorderColor = t25
}
t43["[Flamethrower]"]["8-BIT"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.BIT8.FTPixel,
	CFrame = CFrame.new(-0.0906066895, -0.0161985159, -0.0117645264, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t25
}
t43["[Double-Barrel SG]"]["8-BIT"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.BIT8.DBPixel,
	CFrame = CFrame.new(-0.240386963, -0.127295256, -0.00776672363, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t25
}
t43["[RPG]"]["8-BIT"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.BIT8.RPGPixel,
	CFrame = CFrame.new(0.0102081299, 0.0659624338, 0.362945557, 4.37113883e-8, 0, 1, -5.72632016e-14, 1, 2.50305399e-21, -1, 5.72632016e-14, 4.37113883e-8),
	BorderColor = t25
}
t43["[Revolver]"]["Red Skull"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.RedSkull.RedSkullRev,
	CFrame = CFrame.new(-0.0043258667, 0.0084195137, -0.00238037109, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t26
}
t43["[Shotgun]"]["Red Skull"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.RedSkull.RedSkullShotgun,
	CFrame = CFrame.new(-0.00326538086, 0.0239292979, -0.039352417, -4.37113883e-8, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-8),
	BorderColor = t26
}
t43["[Double-Barrel SG]"]["Red Skull"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.RedSkull.RedSkullDB,
	CFrame = CFrame.new(-0.0143432617, -0.151709318, 0.00820922852, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t26
}
t43["[RPG]"]["Red Skull"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.RedSkull.RedSkullRPG,
	CFrame = CFrame.new(-0.00149536133, 0.254377961, 0.804840088, -1, 0, 4.37113883e-8, -2.50305399e-21, 1, -5.72632016e-14, -4.37113883e-8, 5.72632016e-14, -1),
	BorderColor = t26
}
t43["[Revolver]"].Kitty = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Kitty.KittyRevolver,
	CFrame = CFrame.new(0.0310440063, 0.0737591386, 0.0226745605, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t27
}
t43["[Flamethrower]"].Kitty = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Kitty.KittyFT,
	CFrame = CFrame.new(-0.265670776, 0.115545571, 0.00997924805, -1, 9.74078034e-21, 5.47124086e-13, 9.74092898e-21, 1, 3.12638804e-13, -5.47126309e-13, 3.12638804e-13, -1),
	BorderColor = t27
}
t43["[RPG]"].Kitty = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Kitty.KittyRPG,
	CFrame = CFrame.new(0.0268554688, 0.0252066851, 0.117408752, -1, 2.51111284e-40, 4.37113883e-8, -3.7545812e-20, 1, -8.58948004e-13, -4.37113883e-8, 8.58948004e-13, -1),
	BorderColor = t27
}
t43["[Shotgun]"].Kitty = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Kitty.KittyShotgun,
	CFrame = CFrame.new(0.0233459473, 0.223892093, -0.0213623047, 4.37118963e-8, -6.53699317e-13, 1, 3.47284736e-20, 1, 7.38964445e-13, -0.999997139, 8.69506734e-21, 4.37119354e-8),
	BorderColor = t27
}
t43["[Revolver]"].Toy = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Toy.RevolverTOY,
	CFrame = CFrame.new(-0.0250854492, -0.144362092, -0.00266647339, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t28
}
t43["[LMG]"].Toy = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Toy.LMGTOY,
	CFrame = CFrame.new(-0.285247803, -0.0942560434, -0.270412445, 1, 0, 4.37113883e-8, 0, 1, 0, -4.37113883e-8, 0, 1),
	BorderColor = t28
}
t43["[Double-Barrel SG]"].Toy = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Toy.DBToy,
	CFrame = CFrame.new(-0.0484313965, -0.00164616108, -0.0190467834, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t28
}
t43["[RPG]"].Toy = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Toy.RPGToy,
	CFrame = CFrame.new(0.00121307373, 0.261434197, -0.318969727, 1, 2.5768439e-12, -4.37113883e-8, 2.57684412e-12, 1, 6.29895225e-12, 4.37113883e-8, 6.29895225e-12, 1),
	BorderColor = t28,
	LauncherCFrame = CFrame.new(-0.00020980835, 0.000125527382, -0.837677002, 1, 2.5768439e-12, -4.37113883e-8, 2.57684412e-12, 1, 6.29895225e-12, 4.37113883e-8, 6.29895225e-12, 1),
	LauncherMesh = script.Meshes.Toy.RPG_LAUNCHER
}
t43["[Revolver]"].Galactic = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Galactic.galacticRev,
	CFrame = CFrame.new(-0.049041748, 0.0399398208, -0.00772094727, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t29
}
t43["[TacticalShotgun]"].Galactic = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Galactic.TacticalGalactic,
	CFrame = CFrame.new(-0.0411682129, -0.0281000137, 0.00103759766, 0, 5.68434189e-14, 1, -1.91456822e-13, 1, 5.68434189e-14, -1, 1.91456822e-13, 0),
	BorderColor = t29
}
t43["[Knife]"].Galactic = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.261539459, 0.0143127441, 0.0307006836, 0, 1, 0, 0, 0, 1, 1, 0, 0),
	BorderColor = t19
}
t43["[Revolver]"]["Web-Hero"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.HERO.HeroWeb,
	CFrame = CFrame.new(-0.0891418457, -0.0215809345, -0.0041809082, -1.99520325e-23, -1.62920685e-7, 1, 2.44929371e-16, 1, 1.62920685e-7, -1, 2.44929371e-16, 1.99520294e-23),
	BorderColor = t30
}
t43["[Shotgun]"]["Bat-Hero"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.HERO.HeroBat,
	CFrame = CFrame.new(0.00122070312, 0.141189337, 0.146026611, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t30
}
t43["[Double-Barrel SG]"]["Angry-Hero"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.HERO.HeroAngry,
	CFrame = CFrame.new(-0.171646118, -0.0197404027, -0.00314331055, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t30
}
t43["[RPG]"]["Robot-Hero"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.HERO.HeroRobot,
	CFrame = CFrame.new(0.00689697266, -0.0342824459, 0.105255127, -1, -1.821688e-44, 4.37113883e-8, -2.50305399e-21, 1, -5.72632016e-14, -4.37113883e-8, 5.72632016e-14, -1),
	BorderColor = t30,
	LauncherCFrame = CFrame.new(0.00717163086, 0.000218987465, 0.119476318, 1, -2.44930165e-16, 0, 2.44929344e-16, 1, 1.19209346e-7, 0, -1.19209226e-7, 1),
	LauncherMesh = script.Meshes.HERO.RobotLauncher
}
t43["[Revolver]"].Water = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Water.WaterGunRevolver,
	CFrame = CFrame.new(-0.0440063477, 0.028675437, -0.00469970703, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t19
}
t43["[Double-Barrel SG]"].Water = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Water.DBWater,
	CFrame = CFrame.new(-0.0710754395, 0.00169920921, -0.0888671875, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t19
}
t43["[TacticalShotgun]"].Water = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Water.TactWater,
	CFrame = CFrame.new(0.0238037109, -0.00912904739, 0.00485229492, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t19
}
t43["[Flamethrower]"].Water = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Water.FTWater,
	CFrame = CFrame.new(0.0941314697, 0.593509138, 0.0191040039, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t19
}
t43["[Revolver]"].Tact = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Tact.Rev,
	CFrame = CFrame.new(-0.318634033, -0.055095911, 0.00491333008, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t8
}
t43["[TacticalShotgun]"].Tact = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Tact.Tact,
	CFrame = CFrame.new(-0.0687713623, -0.0684046745, 0.12701416, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t8
}
t43["[Shotgun]"].Tact = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Tact.Shotgun,
	CFrame = CFrame.new(-0.0610046387, 0.171100497, -0.00495910645, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t8
}
t43["[Double-Barrel SG]"].Tact = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Tact.DB,
	CFrame = CFrame.new(-0.0701141357, -0.0506889224, -0.0826416016, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t8
}
t43["[Silencer]"].Tact = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Tact.Silencer,
	CFrame = CFrame.new(0.0766601562, -0.0350288749, -0.648864746, 1, 0, -4.37113883e-8, 0, 1, 0, 4.37113883e-8, 0, 1),
	BorderColor = t8
}
t43["[SMG]"].Tact = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Tact.Uzi,
	CFrame = CFrame.new(0.0408782959, 0.0827783346, -0.0423583984, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t8
}
t43["[RPG]"]["GPO-Ice"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.GPO.Bazooka,
	CFrame = CFrame.new(-0.0184631348, 0.0707798004, 0.219360352, 4.37113883e-8, 1.07062025e-23, 1, -5.75081297e-14, 1, 1.14251725e-36, -1, 5.70182736e-14, 4.37113883e-8),
	BorderColor = t31,
	LauncherCFrame = CFrame.new(-0.044708252, -0.0522594452, -0.688751221, 4.37113883e-8, 1.07062025e-23, 1, -5.75081297e-14, 1, 1.14251725e-36, -1, 5.70182736e-14, 4.37113883e-8),
	LauncherMesh = script.Meshes.GPO.IceBoom
}
t43["[TacticalShotgun]"]["GPO-Magma"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.GPO.MaguTact,
	CFrame = CFrame.new(-0.282501221, 0.0472121239, -0.0065612793, -6.60624482e-6, 1.5649757e-8, -1, -5.68434189e-14, 1, -1.56486806e-8, 1, 5.68434189e-14, -6.60624482e-6),
	BorderColor = t31
}
t43["[Rifle]"]["GPO-Light"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.GPO.Rifle,
	CFrame = CFrame.new(-0.208007812, 0.185256913, 0.000610351562, -3.37081539e-14, 1.62803403e-7, -1.00000012, -8.74227695e-8, 0.999999881, 1.63036205e-7, 1, 8.74227766e-8, -1.94552524e-14),
	BorderColor = t31
}
t43["[Knife]"]["GPO-Knife"] = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.693048477, -0.0903320312, -0.00289916992, -1, 2.44929371e-16, 1.99520294e-23, 2.44929371e-16, 1, 1.62920685e-7, 1.99520325e-23, 1.62920685e-7, -1),
	BorderColor = t16
}
t43["[Knife]"]["GPO-Knife Prestige"] = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.693048477, -0.0903320312, -0.00289916992, -1, 2.44929371e-16, 1.99520294e-23, 2.44929371e-16, 1, 1.62920685e-7, 1.99520325e-23, 1.62920685e-7, -1),
	BorderColor = t18
}
t43["[Revolver]"].Devil = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.CyanPack.Devil,
	CFrame = CFrame.new(0.0185699463, 0.293397784, -0.00256347656, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t33
}
t43["[TacticalShotgun]"].Cloud = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.CyanPack.Cloud,
	CFrame = CFrame.new(0.0441589355, -0.0269355774, -0.000701904297, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t33
}
t43["[Double-Barrel SG]"].Flower = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.CyanPack.DB,
	CFrame = CFrame.new(-0.00828552246, 0.417651355, -0.00537109375, 4.18358377e-6, -1.62920685e-7, 1, 3.4104116e-13, 1, 1.62920685e-7, -1, 3.41041052e-13, -4.18358377e-6),
	BorderColor = t33
}
t43["[RPG]"].Cookie = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.CyanPack.rpg,
	CFrame = CFrame.new(0.00448608398, 0.211129785, 0.108352661, -1, -6.87656033e-15, 4.37113883e-8, 2.44926856e-16, 1, 1.62920628e-7, -4.37113883e-8, 1.62920742e-7, -1),
	BorderColor = t33,
	LauncherCFrame = CFrame.new(0.000183105469, 0.000218987465, -0.0145568848, 4.37113883e-8, -1.62920671e-7, 1, -5.70182736e-14, 1, 1.62920671e-7, -1, 5.03866426e-14, 4.37113883e-8),
	LauncherMesh = script.Meshes.CyanPack.Rocket
}
t43["[Knife]"].Frog = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.763793707, 0.0409240723, -0.0497436523, 0.37460658, 0.927183867, 1.51057435e-7, -0.927183867, 0.37460658, 6.10311588e-8, -1.99520325e-23, -1.62920685e-7, 1),
	BorderColor = t33
}
t43["[Knife]"].Cartoon = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.009542346, 0.0122070312, 0.00538635254, 2.38220323e-8, 1.00000095, -7.88475063e-10, -1.00000298, -2.35862601e-8, 1.92318112e-7, -1.9185245e-7, -7.88077159e-10, 1.00000429),
	BorderColor = t34
}
t43["[Revolver]"].Cartoon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Cartoon.CartoonRev,
	CFrame = CFrame.new(-0.015411377, 0.0135096312, 0.00338745117, 1.00000095, 3.41326549e-13, 2.84217399e-14, 3.41326549e-13, 1.00000191, -9.89490712e-10, 2.84217399e-14, -9.89490712e-10, 1.00000191),
	BorderColor = t34
}
t43["[Double-Barrel SG]"].Cartoon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Cartoon.DBCartoon,
	CFrame = CFrame.new(0.00927734375, -0.00691050291, 0.000732421875, -1, -2.79396772e-8, -9.31322797e-10, -2.79396772e-8, 1, 1.42607872e-8, 9.31322575e-10, 1.42607872e-8, -1),
	BorderColor = t34
}
t43["[RPG]"].Cartoon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Cartoon.RPGCartoon,
	CFrame = CFrame.new(-0.0201721191, 0.289476752, -0.0727844238, 4.37113883e-8, 6.58276836e-37, 1, -5.72632016e-14, 1, 2.50305399e-21, -1, 5.72632016e-14, 4.37113883e-8),
	BorderColor = t34,
	LauncherCFrame = CFrame.new(-0.00137329102, 0.00280761719, -0.321243286, -1, -1.30858874e-16, 4.36997354e-8, -2.50242694e-21, 1, 2.99444292e-9, -4.36997354e-8, 2.99455749e-9, -1),
	LauncherMesh = script.Meshes.Cartoon.RPGCartoonLauncher
}
t43["[Flamethrower]"].Cartoon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Cartoon.CartoonFT,
	CFrame = CFrame.new(-0.272186279, 0.197086751, 0.0440063477, -1, 4.8018768e-7, 8.7078952e-8, 4.80187623e-7, 1, -3.54779985e-7, -8.70791226e-8, -3.54779957e-7, -1),
	BorderColor = t34
}
t43["[Knife]"].Stars = {
	DisplayName = "Star",
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.983487725, 0.0367431641, -0.00146484375, 0, 1, 0, -1, 0, 0, 0, 0, 1),
	BorderColor = t35
}
t43["[Revolver]"].Stars = {
	DisplayName = "Thunder",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Stars.Revolver,
	CFrame = CFrame.new(-0.0765533447, 0.0790345669, 0.00277709961, 1.99520325e-23, 1.62920685e-7, -1, 2.44929371e-16, 1, 1.62920685e-7, 1, -2.44929371e-16, -1.99520294e-23),
	BorderColor = t35
}
t43["[Double-Barrel SG]"].Stars = {
	DisplayName = "Dino",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Stars.DB,
	CFrame = CFrame.new(0.0697937012, 0.0765505433, 0.00863647461, 7.54618668e-7, -1.62920685e-7, 1, 6.1716413e-14, 1, 1.62920685e-7, -1, 6.17164197e-14, -7.54618668e-7),
	BorderColor = t35
}
t43["[RPG]"].Stars = {
	DisplayName = "Speed",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Stars.RPG,
	CFrame = CFrame.new(-0.00457763672, -0.0361404419, -0.636352539, -1, -2.30390549e-28, 4.37113883e-8, -2.50305399e-21, 1, -5.72632084e-14, -4.37113883e-8, 5.72632084e-14, -1),
	BorderColor = t35,
	LauncherCFrame = CFrame.new(0.00271606445, -0.0138825178, -0.384429932, 4.37113883e-8, -2.30390549e-28, 1, -5.72632084e-14, 1, 2.50305399e-21, -1, 5.72632084e-14, 4.37113883e-8),
	LauncherMesh = script.Meshes.Stars.Rocket
}
t43["[Flamethrower]"].Stars = {
	DisplayName = "Starry",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Stars.Flamethrower,
	CFrame = CFrame.new(-0.0000610351562, 0.229534328, 0.0126647949, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t35
}
t43["[Revolver]"]["DH-Verified"] = {
	Rarity = "Exclusive",
	NoTrade = true,
	TextureID = script.Meshes.Popular.VERIFIEDREV,
	CFrame = CFrame.new(0.049407959, -0.0454721451, 0.00158691406, -1, 0, 0, 0, 1, 2.22044605e-15, 0, -2.22044605e-15, -1)
}
t43["[Revolver]"]["DH-Stars II"] = {
	Rarity = "Exclusive",
	NoTrade = true,
	TextureID = script.Meshes.Popular.STARSREV,
	CFrame = CFrame.new(0.0578613281, -0.0479719043, -0.00115966797, -1.00000405, 1.15596135e-16, 1.64267286e-30, -1.15596135e-16, 1, 2.99751983e-14, 1.66683049e-30, -2.99751983e-14, -1.00000405)
}
t43["[Revolver]"].Arcade = {
	Rarity = "Legendary",
	NoTrade = false,
	Crate = 999,
	TextureID = script.Meshes.Arcade.Rev,
	CFrame = CFrame.new(0.0578613281, -0.0479719043, -0.00115966797, -1.00000405, 1.15596135e-16, 1.64267286e-30, -1.15596135e-16, 1, 2.99751983e-14, 1.66683049e-30, -2.99751983e-14, -1.00000405)
}
t43["[Double-Barrel SG]"].Arcade = {
	Rarity = "Legendary",
	NoTrade = false,
	Crate = 999,
	TextureID = script.Meshes.Arcade.DB,
	CFrame = CFrame.new(0.0578613281, -0.0479719043, -0.00115966797, 1, 0, 0, 0, 1, 0, 0, 0, 1)
}
t43["[Revolver]"].Spectre = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Spectre.Rev,
	CFrame = CFrame.new(0.0578613281, -0.0479719043, -0.00115966797, -1.00000405, 1.15596135e-16, 1.64267286e-30, -1.15596135e-16, 1, 2.99751983e-14, 1.66683049e-30, -2.99751983e-14, -1.00000405)
}
t43["[Revolver]"].Blaze = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Blaze.Rev,
	CFrame = CFrame.new(0.3, -0.0479719043, -0.00115966797, 1.00000405, 1.15596135e-16, -1.64267286e-30, 1.15596135e-16, 1, -2.99751983e-14, -1.66683049e-30, -2.99751983e-14, 1.00000405),
	BorderColor = t19
}
t43["[Revolver]"].CandyCane = {
	DisplayName = "GPO-Rev",
	Rarity = "Exclusive",
	TextureID = script.Meshes.CandyCane.Rev,
	CFrame = CFrame.new(0.3, -0.0479719043, -0.00115966797, -1.00000405, 1.15596135e-16, 1.64267286e-30, -1.15596135e-16, 1, 2.99751983e-14, 1.66683049e-30, -2.99751983e-14, -1.00000405),
	BorderColor = t16
}
t43["[Revolver]"].PrestigeCandyCane = {
	DisplayName = "GPO-Rev Prestige",
	Rarity = "Exclusive",
	TextureID = script.Meshes.CandyCane.PrestigeRev,
	CFrame = CFrame.new(0.3, -0.0479719043, -0.00115966797, -1.00000405, 1.15596135e-16, 1.64267286e-30, -1.15596135e-16, 1, 2.99751983e-14, 1.66683049e-30, -2.99751983e-14, -1.00000405),
	BorderColor = t18
}
t43["[Knife]"].CyanKarambit = {
	DisplayName = "Cyan",
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.0699813366, -0.0199928284, 0.151672363, 6.21539241e-22, 1, 0, 1, 6.21539241e-22, -3.57623663e-17, 3.57623663e-17, 0, -1),
	BorderColor = t13
}
t43["[Knife]"].Mystical = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.146238923, 0.0104064941, -0.0165710449, -3.94430029e-31, 1, 0, 1.00000429, 0, 0, 0, 0, -1.00000429),
	BorderColor = t36
}
t43["[Revolver]"].Mystical = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Mystical.Revolver,
	CFrame = CFrame.new(-0.015838623, -0.0802496076, 0.00772094727, 1, 0, 4.37113883e-8, 0, 1, 0, -4.37113883e-8, 0, 1),
	BorderColor = t36
}
t43["[Double-Barrel SG]"].Mystical = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Mystical.DB,
	CFrame = CFrame.new(-0.00408935547, -0.021312356, 0.00366210938, -1, -1.95924309e-33, 2.03287907e-20, 1.95924309e-33, 1, 0, -2.0328781e-20, 0, -0.999999523),
	BorderColor = t36
}
t43["[RPG]"].Mystical = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Mystical.RPG,
	CFrame = CFrame.new(-0.0104980469, -0.132928133, 0.311920166, 4.37113883e-8, -3.72594783e-24, 1, -1.46422097e-10, 1, 6.40030916e-18, -1, 1.46422097e-10, 4.37113883e-8),
	BorderColor = t36,
	LauncherCFrame = CFrame.new(-0.00402832031, -0.00254774094, -0.735931396, -1, -3.30872245e-24, 4.37113883e-8, -6.40531526e-18, 1, -1.46536616e-10, -4.37113883e-8, 1.46536616e-10, -1),
	LauncherMesh = script.Meshes.Mystical.Launcher
}
t43["[Flamethrower]"].Mystical = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Mystical.Flamethrower,
	CFrame = CFrame.new(-0.192108154, 0.183631241, 0.0121765137, 1, -6.33751573e-17, 2.28174031e-8, 1.47408879e-18, 1.00000465, -1.34514666e-8, 1.35041773e-8, -7.12136439e-9, 1),
	BorderColor = t36
}
t43["[Knife]"]["RGB Karambit"] = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.147634387, 0.286956787, -0.00314331055, 8.88577406e-14, 0.798631966, 0.601811886, 1.75618051e-14, -0.601811886, 0.798631966, 1, 6.03960173e-14, 6.75013837e-14),
	BorderColor = t15
}
t43["[Knife]"].Candy = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.844940186, 0.132034421, -0.0134277344, -2.27373675e-13, 3.69608081e-26, -1, -4.33481159e-13, 0.999999523, -3.69608266e-26, 1, -4.33480942e-13, 2.27373675e-13),
	BorderColor = t36
}
t43["[Revolver]"].Candy = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Candy.RevolverCandy,
	CFrame = CFrame.new(0.35, -0.0681198835, 0.00198364258, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t36
}
t43["[Double-Barrel SG]"].Candy = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Candy.DBCandy,
	CFrame = CFrame.new(0.0430603027, -0.0375298262, -0.00198364258, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t36
}
t43["[LMG]"].Candy = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Candy.LMG,
	CFrame = CFrame.new(0.125213623, -0.30771935, -0.0625305176, -4.37113883e-8, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-8),
	BorderColor = t36
}
t43["[RPG]"].Candy = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Candy.RPG,
	CFrame = CFrame.new(0.00387573242, -0.14110744, -0.552215576, -1, 5.55111512e-17, 4.37113883e-8, -5.58290533e-17, 1, -7.27279868e-12, -4.37113883e-8, 7.27279868e-12, -1),
	BorderColor = t36,
	LauncherCFrame = CFrame.new(0.00396728516, 0.00116837025, 0.855957031, -1, 5.55111479e-17, 4.37113883e-8, -5.58340561e-17, 1, -7.38732513e-12, -4.37113883e-8, 7.38732513e-12, -1),
	LauncherMesh = script.Meshes.Candy.RPGLAUNCHER
}
t43["[RPG]"].Cake = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Barbie.rpg,
	CFrame = CFrame.new(-0.0417480469, 0.253171682, 1.63067627, 4.37113883e-8, 3.46944654e-18, 1, -4.00865674e-13, 1, 3.48696912e-18, -1, 4.00865674e-13, 4.37113883e-8),
	BorderColor = t,
	LauncherCFrame = CFrame.new(-0.0161437988, 0.275420427, -0.27822876, 3.46944675e-18, -4.37113883e-8, 1, 1, 5.15392091e-13, 3.49197522e-18, 5.15392091e-13, 1, 4.37113883e-8),
	LauncherMesh = script.Meshes.Barbie.rpglaunhcher
}
t43["[Double-Barrel SG]"].Car = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Barbie.db,
	CFrame = CFrame.new(0.0457763672, 0.0508109927, 0.000579833984, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t
}
t43["[Revolver]"].Skeleton = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Barbie.Revol,
	CFrame = CFrame.new(0.0218505859, -0.0277693868, 0.0029296875, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t
}
t43["[Flamethrower]"].Doll = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Barbie.FT,
	CFrame = CFrame.new(-0.450744629, -0.232652962, 0.0798339844, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t
}
t43["[Knife]"].Banana = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.371171594, -0.131195068, 0.0763549805, 0, 1, 0, 0, 0, -1, -1, 0, 0)
}
t43["[RPG]"].Soul = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Soul.RPG,
	CFrame = CFrame.new(0.0071105957, -0.0523811579, -1.09643555, -4.37113883e-8, -1.16415322e-10, -1, 7.68569407e-6, 1, -1.16751275e-10, 1, -7.68569407e-6, -4.37113847e-8),
	BorderColor = t37,
	LauncherCFrame = CFrame.new(-0.0195617676, 0.0611854792, -0.0733947754, -4.37113883e-8, -1.16415322e-10, -1, 7.68569407e-6, 1, -1.16751275e-10, 1, -7.68569407e-6, -4.37113847e-8),
	LauncherMesh = script.Meshes.Soul.launcher
}
t43["[Double-Barrel SG]"].Soul = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Soul.db,
	CFrame = CFrame.new(0.405822754, 0.0975035429, -0.00506591797, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t37
}
t43["[Revolver]"].Soul = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Soul.rev,
	CFrame = CFrame.new(-0.0646362305, 0.2725088, -0.00242614746, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t37
}
t43["[TacticalShotgun]"].Soul = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Soul.tact,
	CFrame = CFrame.new(-0.347473145, 0.0268714428, 0.00553894043, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t37
}
t43["[Knife]"].Soul = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.129888415, 0.0243530273, -0.0148620605, 1, 0, 0, 0, -1, 0, 0, 0, -1),
	BorderColor = t37
}
t43["[Silencer]"].Mummy = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Raygun.mummy,
	CFrame = CFrame.new(0.0105285645, -0.00735360384, -0.277282715, -1, -2.44256403e-16, 4.37114309e-8, 0, 0.999999046, -5.58793545e-9, -4.37113883e-8, 5.58793545e-9, -1.00000095),
	BorderColor = t37
}
t43["[Revolver]"].Halloween23 = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Halloween.Rev,
	CFrame = CFrame.new(-0.0257873535, -0.0117108226, -0.00671386719, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t37
}
t43["[Knife]"].Halloween23 = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.293486953, -0.203857422, 0.0588989258, -6.05363013e-8, 1, -3.97904366e-13, 1, 6.05363013e-8, 9.94765387e-14, 9.94765658e-14, -3.97904366e-13, -1),
	BorderColor = t37
}
t43["[Double-Barrel SG]"].Halloween23 = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Halloween.DB,
	CFrame = CFrame.new(-0.00271606445, -0.0485508144, 0.000732421875, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t37
}
t43["[TacticalShotgun]"].Halloween23 = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Halloween.Tact,
	CFrame = CFrame.new(-0.0715637207, -0.0843618512, 0.00582885742, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t37
}
t43["[Shotgun]"].Halloween23 = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Halloween.SG,
	CFrame = CFrame.new(0.00573730469, 0.294590235, -0.115814209, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t37
}
t43["[RPG]"].Halloween23 = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Halloween.RPG,
	CFrame = CFrame.new(-0.0249633789, -0.048746109, 0.659362793, -1, 1.73472327e-18, 4.37113883e-8, -1.74223304e-18, 1, -1.7180124e-13, -4.37113883e-8, 1.7180124e-13, -1),
	BorderColor = t37,
	LauncherCFrame = CFrame.new(0.0485229492, 0.0587707758, -0.265991211, -1, 1.73472337e-18, 4.37113883e-8, -1.74723913e-18, 1, -2.86327629e-13, -4.37113883e-8, 2.86327629e-13, -1),
	LauncherMesh = script.Meshes.Halloween.Launcher
}
t43["[TacticalShotgun]"].Numbers = {
	Rarity = "Legendary",
	Crate = 999,
	TextureID = script.Meshes.Numbers.Tactical,
	CFrame = CFrame.new(-0.347015381, -0.101575613, -0.0437011719, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t37
}
t43["[Double-Barrel SG]"].Magma = {
	Rarity = "Legendary",
	Crate = 999,
	TextureID = script.Meshes.Numbers.MagmaDB,
	CFrame = CFrame.new(-0.750671387, 0.339070976, 0.0111999512, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t37
}
t43["[TacticalShotgun]"].Undead = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Undead.Tact,
	CFrame = CFrame.new(-0.558105469, -0.00996416807, 0.0152893066, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t37
}
t43["[RPG]"].Undead = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Undead.RPG,
	CFrame = CFrame.new(0.0429077148, 0.0559833646, 2.07913208, -4.37113883e-8, -7.27595761e-12, -1, 1.20086924e-7, 1, 7.27070834e-12, 1, 1.20086924e-7, -4.37113883e-8),
	BorderColor = t37,
	LauncherCFrame = CFrame.new(0.0203552246, -0.0671813488, 0.119415283, -4.37113883e-8, -7.27595761e-12, -1, 1.20087037e-7, 1, 7.27070834e-12, 1, 1.20087037e-7, -4.37113883e-8),
	LauncherMesh = script.Meshes.Undead.Rocket
}
t43["[Revolver]"].Undead = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Undead.rev,
	CFrame = CFrame.new(0.202331543, 0.0300472379, -0.00631713867, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t37
}
t43["[Knife]"].Undead = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.0730648041, 0.029083252, 0.00421142578, -1, 0, 0, 0, -1, 0, 0, 0, 1),
	BorderColor = t37
}
t43["[Double-Barrel SG]"].Undead = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Undead.AstroDB,
	CFrame = CFrame.new(-0.193084717, 0.17139101, 0.00225830078, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t37
}
t43["[Revolver]"].Spooky = {
	DisplayName = "Jason",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Spooky.rev,
	CFrame = CFrame.new(-0.0029296875, -0.0561903119, -0.011138916, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t37
}
t43["[TacticalShotgun]"].Spooky = {
	DisplayName = "Blood",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Spooky.tact,
	CFrame = CFrame.new(-0.199981689, -0.124790192, -0.00152587891, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t37
}
t43["[RPG]"].Spooky = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Spooky.Rocket,
	CFrame = CFrame.new(0.00857543945, -0.00493192673, -0.046875, -1, 2.8421706e-14, 4.37113883e-8, -2.90778652e-14, 1, -1.5011139e-8, -4.37113883e-8, 1.5011139e-8, -1),
	BorderColor = t37,
	LauncherCFrame = CFrame.new(-0.0168762207, 0.0170578957, 0.00112915039, -1, 2.84217043e-14, 4.37113883e-8, -2.9077872e-14, 1, -1.50112527e-8, -4.37113883e-8, 1.50112527e-8, -1),
	LauncherMesh = script.Meshes.Spooky.Launcher
}
t43["[Flamethrower]"].Spooky = {
	DisplayName = "Eye",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Spooky.FT,
	CFrame = CFrame.new(-0.415008545, 0.349902928, -0.00164794922, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t37
}
t43["[Double-Barrel SG]"].Spooky = {
	DisplayName = "Eye",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Spooky.DB,
	CFrame = CFrame.new(0.170593262, 0.0795405507, -0.0000610351562, 1, 0, 0, 0, 0.999999762, 0, 0, 0, 0.999999762),
	BorderColor = t37
}
t43["[Knife]"].Spooky = {
	DisplayName = "Magma",
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.10736084, -0.0247398615, -0.0214538574, 1.19212316e-7, 1, -2.78531907e-12, 0.999999523, -1.1921226e-7, 6.96321581e-13, 6.96321635e-13, -2.78531885e-12, -1),
	BorderColor = t37
}
t43["[Revolver]"].Etheral = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Etheral.Rev,
	CFrame = CFrame.new(0.0255432129, -0.0427106023, 0.0140380859, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t39
}
t43["[Double-Barrel SG]"].Etheral = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Etheral.db,
	CFrame = CFrame.new(-0.0578613281, -0.0133004785, 0.0168457031, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t39
}
t43["[Flamethrower]"].Etheral = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Etheral.ft,
	CFrame = CFrame.new(0.119934082, 0.0947337747, -0.00924682617, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t39
}
t43["[RPG]"].Etheral = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Etheral.RPG,
	CFrame = CFrame.new(-0.00695800781, 0.150677085, 0.714691162, 4.74366786e-8, -1.11847207e-16, 1, -6.00474408e-8, 1, 2.51291001e-15, -1, 6.00474408e-8, 3.9986098e-8),
	BorderColor = t39,
	LauncherCFrame = CFrame.new(-0.0138549805, -0.0158934593, 0.209564209, 4.74366786e-8, -1.11847313e-16, 1, -6.00475545e-8, 1, 2.51291467e-15, -1, 6.00475545e-8, 3.9986098e-8),
	LauncherMesh = script.Meshes.Etheral.Launcher
}
t43["[Knife]"].Etheral = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.540863037, -0.00247907639, 0.124786377, -1, 0, 0, 0, 0.999999523, 0, 0, 0, -1),
	BorderColor = t39
}
t43["[Revolver]"].Ice = {
	DisplayName = "Frozen",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Ice.rev,
	CFrame = CFrame.new(-0.0299072266, 0.0293902755, -0.0108032227, 1, 0, 0, 0, 0, 1, 0, -1, 0),
	BorderColor = t40
}
t43["[TacticalShotgun]"].Ice = {
	DisplayName = "Frozen",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Ice.tact,
	CFrame = CFrame.new(0.151062012, 0.0138154626, 0.000366210938, 1, 0, 0, 0, 0, 1, 0, -1, 0),
	BorderColor = t40
}
t43["[Knife]"]["Ice Sword"] = {
	DisplayName = "Ice Dagger",
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.248702049, 0.00454711914, -0.00390625, 2.44929371e-16, 1, 1.62920657e-7, 1.99519599e-23, 1.62920202e-7, -0.999997616, -1, 2.44929371e-16, 1.99520262e-23),
	BorderColor = t40
}
t43["[Double-Barrel SG]"].Ice = {
	DisplayName = "Frozen",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Ice.DB,
	CFrame = CFrame.new(-0.574920654, 0.309675515, 0.0344848633, -1, 0, 0, 0, 0, 1, 0, 1, 0),
	BorderColor = t40
}
t43["[RPG]"].Ice = {
	DisplayName = "Frozen",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Ice.RPG,
	CFrame = CFrame.new(-0.00628662109, -0.0235987902, -1.82954407, -4.37113883e-8, 1, 1.62920685e-7, 4.00923896e-13, -1.62920685e-7, 1, 1, 4.37113883e-8, 4.08045397e-13),
	BorderColor = t40,
	LauncherCFrame = CFrame.new(-0.00628662109, 0.00532734394, 0.364135742, -4.37113883e-8, 1, 0, 5.15450313e-13, 2.2531046e-20, 1, 1, 4.37113883e-8, 5.15450313e-13),
	LauncherMesh = script.Meshes.Ice.Launcher
}
t43["[Revolver]"].Hoodmas = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Hoodmas.revolver,
	CFrame = CFrame.new(0.00862121582, -0.000740110874, -0.0009765625, 1, 0, 0, 0, 1, 0, 0, 0, 1)
}
t43["[Double-Barrel SG]"].Hoodmas = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Hoodmas.db,
	CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.pi, 0)
}
t43["[Shotgun]"].Hoodmas = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Hoodmas.shotgun,
	CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(0, -1.5707963267948966, 0)
}
t43["[AR]"].Hoodmas = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Hoodmas.ar,
	CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.pi, 0)
}
t43["[TacticalShotgun]"].Hoodmas = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Hoodmas.tact,
	CFrame = CFrame.new(0, 0, 0)
}
t43["[Flamethrower]"].Hoodmas = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Hoodmas.flamethrower,
	CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.pi, 0)
}
t43["[RPG]"].Hoodmas = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Hoodmas.rpg,
	CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(0, -1.5707963267948966, 0)
}
t43["[Knife]"].Hoodmas = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0)
}
t43["[Revolver]"].XMAS = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.XMAS.Rev,
	CFrame = CFrame.new(-0.0034942627, -0.0323467255, -0.000244140625, -1.00000095, 7.45058149e-9, 0, -7.45058149e-9, 0.999999523, 0, 0, 0, -1)
}
t43["[Knife]"].XMAS = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-1.27282023, -0.128097534, -0.0394134521, 2.75315642e-7, 0.719339967, 0.694658518, -4.80564211e-9, 0.694658518, -0.719339967, -1, 1.94707184e-7, 1.94707169e-7)
}
t43["[Flamethrower]"].XMAS = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.XMAS.Flamethrower,
	CFrame = CFrame.new(-0.528900146, 0.0900247097, 0.00065612793, 1, 0, 0, 0, 1, 0, 0, 0, 1)
}
t43["[RPG]"].XMAS = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.XMAS.rpg,
	CFrame = CFrame.new(0.0332183838, -0.105202198, -2.14428711, 4.37113883e-8, 0, 1, -5.72632016e-14, 1, 2.50305399e-21, -1, 5.72632016e-14, 4.37113883e-8),
	LauncherCFrame = CFrame.new(0.0412902832, 0.0782194138, -0.438598633, 4.37113883e-8, 8.14188054e-17, 1, -1.86270244e-9, 1, 2.50305399e-21, -1, -1.86258786e-9, 4.37113883e-8),
	LauncherMesh = script.Meshes.XMAS.Ornament
}
t43["[Double-Barrel SG]"].XMAS = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.XMAS.DB,
	CFrame = CFrame.new(1.39941406, 0.0596529841, -0.0409545898, 1, 0, 0, 0, 1, 0, 0, 0, 1)
}
t43["[Knife]"]["Crystal Karambit"] = {
	DisplayName = "King Karambit",
	Rarity = "Exclusive",
	CFrame = CFrame.new(-1.59968805, -0.0777282715, -0.0473022461, 0, 0.37460658, -0.927183867, 0, 0.927183867, 0.37460658, 1, 0, 0),
	BorderColor = t19
}
t43["[Knife]"]["Galaxy Karambit"] = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-1.28114009, -0.0814056396, -0.0313110352, -0.342020094, -0.939692557, 0, -0.939692557, 0.342020094, 0, -0, 0, -1),
	BorderColor = t20
}
t43["[Revolver]"]["Wild West"] = {
	Rarity = "Legendary",
	Crate = 999,
	TextureID = script.Meshes.WildWest.Rev,
	CFrame = CFrame.new(0.00323486328, -0.110876054, -0.00628662109, 0, 0, 0.999995708, 0, 1, 0, -1, 0, 0)
}
t43["[Double-Barrel SG]"]["Wild West"] = {
	Rarity = "Legendary",
	Crate = 999,
	TextureID = script.Meshes.WildWest.DB,
	CFrame = CFrame.new(-0.159378052, -0.123334587, -0.00241088867, 0, 0, -0.999995232, 0, 1, 0, 1, 0, 0)
}
t43["[Knife]"]["Wild West"] = {
	Rarity = "Legendary",
	Crate = 999,
	CFrame = CFrame.new(0.383782029, 0.0114746094, -0.00112915039, 0, -1, 0, 1, 0, 0, 0, 0, 1)
}
t43["[Knife]"].WinterKarambit = {
	Rarity = "Exclusive",
	DisplayName = "Ice Karambit",
	CFrame = CFrame.new(0.383782029, 0.0114746094, -0.00112915039, 0, -1, 0, 1, 0, 0, 0, 0, 1)
}
t43["[Revolver]"].Portal = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Portal.rev,
	BorderColor = t2,
	CFrame = CFrame.new(0.072303772, 0.0471935868, -0.0138244629, -1, 0, 0, 0, 0.99999994, 0, 0, 0, -1)
}
t43["[TacticalShotgun]"].Portal = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Portal.Tact,
	BorderColor = t2,
	CFrame = CFrame.new(-1.0434494, 0.0293064713, -0.063079834, -1, 0, 0, 0, 1, 0, 0, 0, -1)
}
t43["[Double-Barrel SG]"].Portal = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Portal.DB,
	BorderColor = t2,
	CFrame = CFrame.new(0.296951294, -0.054553628, 0.0379638672, 0.99999702, 0, 0, 0, 1, 0, 0, 0, 1)
}
t43["[Knife]"].Portal = {
	Rarity = "Exclusive",
	BorderColor = t2,
	CFrame = CFrame.new(-0.102067709, 0.150634766, -0.00653076172, 0, 0.999999225, 0, 0.999999166, 0, 0, 0, 0, -1)
}
t43["[RPG]"].Portal = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Portal.rpg,
	BorderColor = t2,
	CFrame = CFrame.new(0.00946044922, -0.19871664, 0.647293091, 4.37114167e-8, -6.46234854e-27, 1, -4.00862828e-13, 1, 1.75222655e-20, -1, 4.00862828e-13, 4.37113599e-8),
	LauncherCFrame = CFrame.new(-0.0126037598, 0.00348734856, -0.17477417, 4.37114167e-8, -8.07793567e-27, 1, -5.15389272e-13, 1, 2.2528369e-20, -1, 5.15389272e-13, 4.37113599e-8),
	LauncherMesh = script.Meshes.Portal.launcher
}
t43["[Revolver]"].Ninja = {
	Rarity = "Legendary",
	Crate = 999,
	TextureID = script.Meshes.Ninja.NinjaRev,
	CFrame = CFrame.new(0.0598754883, 0.102456093, 0.00305175781, 0, 0, -1, 0, 1, 0, 1, 0, 0)
}
t43["[Double-Barrel SG]"].Ninja = {
	Rarity = "Legendary",
	Crate = 999,
	TextureID = script.Meshes.Ninja.NinjaDB,
	CFrame = CFrame.new(-0.0128631592, 0.0259246826, -0.00207519531, 0, 0, 1, 0, 1, 0, -1, 0, 0)
}
t43["[Revolver]"].Love = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Love.rev,
	BorderColor = t,
	CFrame = CFrame.new(-0.0348358154, -0.112736881, 0.0156860352, 1, 0, 0, 0, 1, 0, 0, 0, 1)
}
t43["[TacticalShotgun]"].Love = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Love.Tact,
	BorderColor = t,
	CFrame = CFrame.new(-0.0231781006, -0.114733696, 0.0161743164, 0, 0, 0.999999821, 0, 0.999998748, 0, -1, 0, 0)
}
t43["[Double-Barrel SG]"].Love = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Love.DB,
	BorderColor = t,
	CFrame = CFrame.new(0.159469604, -0.16393137, -0.00659179688, -1, 0, 0, 0, 0.999999106, 0, 0, 0, -1)
}
t43["[RPG]"].Love = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Love.rpg,
	BorderColor = t,
	CFrame = CFrame.new(0.020324707, -0.0424976349, 0.149459839, -4.37113883e-8, -5.55111512e-17, -1, 3.60756173e-12, 1, 5.53534575e-17, 1, 3.60756173e-12, -4.37113883e-8),
	LauncherCFrame = CFrame.new(0.020690918, 0.02942276, -0.542907715, -4.37113883e-8, -5.55111512e-17, -1, 3.72208818e-12, 1, 5.53484481e-17, 1, 3.72208818e-12, -4.37113883e-8),
	LauncherMesh = script.Meshes.Love.Launcher
}
t43["[Flamethrower]"].Love = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Love.FT,
	CFrame = CFrame.new(0.306655884, -0.30743885, -0.00744628906, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t
}
t43["[Knife]"].Love = {
	Rarity = "Exclusive",
	BorderColor = t,
	CFrame = CFrame.new(-0.352311015, 0.0614624023, -0.0600585938, 5.96049716e-8, 1, 3.97904366e-13, -1, 5.96049716e-8, -9.94765387e-14, -9.94765658e-14, -3.97904366e-13, 1)
}
t43["[Revolver]"].Cupid = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Cupid.rev,
	BorderColor = t,
	CFrame = CFrame.new(0.0240020752, 0.229963183, -0.0170898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
}
t43["[Double-Barrel SG]"].Cupid = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Cupid.db,
	BorderColor = t,
	CFrame = CFrame.new(-0.0375976562, 0.048615396, 0.00555419922, 0, 0, 1, 0, 0.999998212, 0, -1, 0, 0)
}
t43["[Knife]"].Cupid = {
	Rarity = "Exclusive",
	BorderColor = t,
	CFrame = CFrame.new(0.248047352, -0.0400543213, -0.0659179688, 0, 1, 0, 0.999998093, 0, 0, 0, 0, -1)
}
t43["[RPG]"].Cupid = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Cupid.rpg,
	BorderColor = t,
	CFrame = CFrame.new(0.00213623047, 0.156091571, 1.50897217, -4.37113883e-8, 1, -8.8817842e-16, 1.4601792e-11, -8.87540127e-16, 1, 1, 4.37113883e-8, 1.4601792e-11),
	LauncherCFrame = CFrame.new(0.282226562, 0.142233849, -0.418685913, -4.37113883e-8, 1, -8.8817842e-16, 1.47163184e-11, -8.87535151e-16, 1, 1, 4.37113883e-8, 1.47163184e-11),
	LauncherMesh = script.Meshes.Cupid.Launcher
}
t43["[Revolver]"].Shader = {
	Rarity = "Exclusive",
	DisplayName = "Squid",
	TextureID = script.Meshes.Shader.Rev,
	CFrame = CFrame.new(0.00216674805, 0.0199100971, -0.00390625, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t25
}
t43["[Double-Barrel SG]"].Shader = {
	Rarity = "Exclusive",
	DisplayName = "Panda",
	TextureID = script.Meshes.Shader.DB,
	CFrame = CFrame.new(-0.0402069092, -0.0140712261, -0.0110473633, 0, 0, 1, 0, 0.999995232, 0, -1, 0, 0),
	BorderColor = t25
}
t43["[RPG]"].Shader = {
	Rarity = "Exclusive",
	DisplayName = "Arcade",
	TextureID = script.Meshes.Shader.RPG,
	CFrame = CFrame.new(-0.020324707, 0.0273060203, 0.97354126, 1, 0, -4.37113883e-8, 1.05004345e-14, 1, 2.40221937e-7, 4.37113883e-8, 2.40221937e-7, 1),
	LauncherCFrame = CFrame.new(-0.00769042969, -0.0627783537, -1.30299377, 1, 0, -4.37113883e-8, 1.05004396e-14, 1, 2.4022205e-7, 4.37113883e-8, 2.4022205e-7, 1),
	LauncherMesh = script.Meshes.Shader.Bear,
	BorderColor = t25
}
t43["[Knife]"].Shader = {
	Rarity = "Exclusive",
	DisplayName = "Chain",
	CFrame = CFrame.new(0.338645697, 0.000183105469, 0.0258331299, -1, 0, 0, 0, -1, 0, 0, 0, 1),
	BorderColor = t25
}
t43["[Flamethrower]"].Shader = {
	Rarity = "Exclusive",
	DisplayName = "Boba",
	TextureID = script.Meshes.Shader.FT,
	CFrame = CFrame.new(0.144821167, 0.0677314401, -0.00170898438, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t25
}
t43["[Knife]"]["Dual Bayonets"] = {
	Rarity = "Legendary",
	Crate = 999,
	CFrame = CFrame.new(-0.520424962, 0.0484008789, -0.00109863281, 0, 1, 0, 1, 0, 0, 0, 0, -1)
}
t43["[Knife]"]["RGB Dual Bayonets"] = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.520424962, 0.0484008789, -0.00109863281, 0, 1, 0, 1, 0, 0, 0, 0, -1),
	BorderColor = t15
}
t43["[Revolver]"].Military = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Military.Rev,
	CFrame = CFrame.new(-0.0181350708, -0.10841608, -0.00543212891, 0, 0, 1, 1.49010297e-8, 1, 0, -1, 1.49010297e-8, 0),
	BorderColor = t11
}
t43["[TacticalShotgun]"].Military = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Military.Tact,
	CFrame = CFrame.new(-0.916564941, -0.0996659398, 0.128448486, 0, 0, 0.999999642, 2.98023224e-8, 1.00000012, 0, -1.00000012, -2.98023224e-8, 0),
	BorderColor = t11
}
t43["[AUG]"].Military = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Military.Aug,
	CFrame = CFrame.new(0.108810425, 0.0431235433, 0.018737793, 0, 0, 1, 0, 1.00000012, 0, -1.00000012, 0, 0),
	BorderColor = t11
}
t43["[RPG]"].Military = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Military.RPG,
	BorderColor = t11,
	CFrame = CFrame.new(-0.0317993164, 0.0230810642, 0.252548218, -1, -4.06575815e-20, 4.37113883e-8, -3.3601404e-13, 1, -7.68710379e-6, -4.37113883e-8, -7.68710379e-6, -1),
	LauncherCFrame = CFrame.new(0.000793457031, 0.00350522995, 0.530632019, -1, -2.71050543e-20, 4.37113883e-8, -3.3601404e-13, 1, -7.68710379e-6, -4.37113883e-8, -7.68710379e-6, -1),
	LauncherMesh = script.Meshes.Military.Launcher
}
t43["[Double-Barrel SG]"].Military = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Military.db,
	CFrame = CFrame.new(0.547592163, 0.0359069705, -0.00466918945, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t11
}
t43["[Knife]"].Military = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.0253430605, 0.106079102, 0.000465393066, 0, 3.25960725e-9, -1, 0, 1, 3.25960747e-9, 1, 0, -0),
	BorderColor = t11
}
t43["[Vehicle]"]["Toy Tank"] = {
	Rarity = "Exclusive",
	BorderColor = t11
}
t43["[Vehicle]"].Tractor = {
	Rarity = "Exclusive",
	BorderColor = t11
}
t43["[Vehicle]"].Cow = {
	Rarity = "Exclusive",
	BorderColor = t11
}
t43["[Revolver]"].Ruby = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Ruby.rev,
	CFrame = CFrame.new(0.0331878662, -0.0243580937, 0.000518798828, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t3
}
t43["[Double-Barrel SG]"].Ruby = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Ruby.db,
	CFrame = CFrame.new(-0.0772705078, -0.0124946237, -0.00723266602, 0, 0, 0.999999642, 0, 1, 0, -1, 0, 0),
	BorderColor = t3
}
t43["[RPG]"].Ruby = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Ruby.RPG,
	CFrame = CFrame.new(-0.00457763672, 0.226767719, 0.190460205, 1, 5.82076609e-11, -4.37113883e-8, -5.78716935e-11, 1, 7.68612699e-6, 4.37113883e-8, -7.68612699e-6, 1),
	LauncherCFrame = CFrame.new(0.00180053711, 0.000730276108, 0.176605225, 1, 5.82076609e-11, -4.37113883e-8, -5.78716935e-11, 1, 7.68612699e-6, 4.37113883e-8, -7.68612699e-6, 1),
	LauncherMesh = script.Meshes.Ruby.Launcher,
	BorderColor = t3
}
t43["[Flamethrower]"].Ruby = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Ruby.ft,
	CFrame = CFrame.new(0.262329102, 0.352797449, -0.00415039062, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t3
}
t43["[Knife]"]["Ruby Fan"] = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.531107247, -0.00726318359, 0.0272521973, 0, 1, 0, -1, 0, 0, 0, 0, 1),
	BorderColor = t3
}
t43["[Vehicle]"].Beatle = {
	Rarity = "Exclusive"
}
t43["[Vehicle]"].TriWheel = {
	Rarity = "Exclusive"
}
t43["[Vehicle]"]["TriWheel Red"] = {
	Rarity = "Legendary",
	Crate = 999
}
t43["[House]"]["Modern Town"] = {
	Rarity = "Exclusive"
}
t43["[House]"]["Holiday Town"] = {
	Rarity = "Exclusive"
}
t43["[House]"]["Gingerbread House"] = {
	Rarity = "Exclusive"
}
t43["[Knife]"].Spatula = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.301204205, 0.0112304688, -0.0121459961, 0, 1, 0, 0, 0, -1, -1, 0, 0)
}
t43["[House]"]["Pizza Restaurant"] = {
	Rarity = "Exclusive"
}
t43["[Vehicle]"]["Delivery Moped"] = {
	Rarity = "Exclusive"
}
t43["[Vehicle]"]["Delivery Car"] = {
	Rarity = "Exclusive"
}
t43["[Revolver]"].Gothic = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.gothic.Rev,
	CFrame = CFrame.new(-0.0787200928, 0.0141905546, -0.00573730469, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t8
}
t43["[Double-Barrel SG]"].Gothic = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.gothic.db,
	CFrame = CFrame.new(-0.194915771, 0.174392939, -0.001953125, 0.999998927, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t8
}
t43["[Drum-Shotgun]"].Gothic = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.gothic.Drum,
	CFrame = CFrame.new(0.0383834839, 0.183659613, 0.00665283203, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t8
}
t43["[RPG]"].Gothic = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.gothic.rpg,
	CFrame = CFrame.new(0.0112915039, -0.00845080614, 0.563346863, 4.37113883e-8, 3.97903932e-13, 1, -2.4017919e-7, 1, 4.08402479e-13, -1, 2.4017919e-7, 4.37113883e-8),
	LauncherCFrame = CFrame.new(0.0000610351562, 0.00457000732, -0.492790222, 4.37113883e-8, 3.97903932e-13, 0.999999642, -2.40179304e-7, 1, 4.08402343e-13, -1, 2.40179304e-7, 4.37113741e-8),
	LauncherMesh = script.Meshes.gothic.Launcher,
	BorderColor = t8
}
t43["[Knife]"].Gothic = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.140083313, 0.0152206421, 0.00164794922, 0, 1, 0, 1, 0, 0, 0, 0, -1),
	BorderColor = t8
}
t43["[House]"]["Garage Home"] = {
	Rarity = "Exclusive"
}
t43["[Vehicle]"]["Muscle B"] = {
	Rarity = "Exclusive"
}
t43["[Vehicle]"]["Muscle B [Black]"] = {
	Rarity = "Legendary",
	Crate = 999
}
t43["[Vehicle]"]["Muscle C"] = {
	Rarity = "Exclusive"
}
t43["[Vehicle]"]["Muscle C [Black]"] = {
	Rarity = "Legendary",
	Crate = 999
}
t43["[Vehicle]"]["Muscle C [Purple]"] = {
	Rarity = "Legendary",
	Crate = 999
}
t43["[Vehicle]"]["SUV [Black]"] = {
	DisplayName = "PogiMobile [SUV]",
	Rarity = "Exclusive"
}
t43["[Vehicle]"].Police = {
	Rarity = "Exclusive"
}
t43["[Vehicle]"].Sedan = {
	Rarity = "Exclusive"
}
t43["[Vehicle]"]["GT Kart"] = {
	Rarity = "Legendary",
	Crate = 999
}
t43["[Vehicle]"]["Supe Kart"] = {
	Rarity = "Legendary",
	Crate = 999
}
t43["[Vehicle]"].McMelon = {
	Rarity = "Legendary",
	Crate = 999
}
t43["[Knife]"]["Blue Dagger"] = {
	DisplayName = "Blue Blaze",
	Rarity = "Exclusive",
	BorderColor = t19,
	CFrame = CFrame.new(0.672592163, -0.0405571461, -0.129821777, 5.96044032e-8, 0.999998093, -3.97903607e-13, -0.999990463, -5.96044032e-8, 9.94756171e-14, -9.94756171e-14, -3.97903607e-13, 1)
}
t43["[Knife]"]["Purple Dagger"] = {
	DisplayName = "Purple Blaze",
	Rarity = "Exclusive",
	BorderColor = t4,
	CFrame = CFrame.new(0.680389404, -0.0405454636, -0.0369262695, 5.96057674e-8, 0.999998093, 1.19371158e-12, 0.999990463, -1.78813664e-7, -2.98427868e-13, -9.94784563e-14, 3.97905884e-13, -1)
}
t43["[Knife]"]["Green Dagger"] = {
	DisplayName = "Green Blaze",
	Rarity = "Exclusive",
	BorderColor = t34,
	CFrame = CFrame.new(0.0952148438, -0.0405509472, -0.0215454102, 5.96057674e-8, 0.999998093, 1.19371158e-12, 0.999990463, -1.78813664e-7, -2.98427868e-13, -9.94784563e-14, 3.97905884e-13, -1)
}
t43["[Knife]"]["Red Dagger"] = {
	DisplayName = "Red Blaze",
	Rarity = "Exclusive",
	BorderColor = t26,
	CFrame = CFrame.new(0.105102539, -0.0555841923, -0.0150146484, -5.96057674e-8, 0.999998093, -1.19371158e-12, -0.999990463, -1.78813664e-7, 2.98427868e-13, 9.94784563e-14, 3.97905884e-13, 1)
}
t43["[Knife]"]["Penguin Ice Cream"] = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.0781555176, 0.0322579145, -0.172119141, -8.67361738e-19, 1, 4.18487431e-8, 1.86264515e-9, -4.55740334e-8, 1, 1, -8.22861671e-17, 1.86264515e-9),
	BorderColor = t12
}
t43["[Revolver]"].Penguin = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Penguin.rev,
	CFrame = CFrame.new(-0.202697754, 0.0907911062, 0.0120239258, 2.46913861e-12, -3.7252903e-8, 1, 2.98028908e-8, 1.00000191, -3.7252903e-8, -1, -2.98028908e-8, -2.46916289e-12),
	BorderColor = t12
}
t43["[Double-Barrel SG]"].Penguin = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Penguin.db,
	CFrame = CFrame.new(0.00805664062, 0.10456717, -0.0380859375, -2.87964097e-16, -9.31328259e-9, -0.99999994, 9.31322686e-10, 1.00000036, 8.38193159e-9, 1, 1.86264537e-9, 2.90566156e-16),
	BorderColor = t12
}
t43["[RPG]"].Penguin = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Penguin.rpg,
	CFrame = CFrame.new(-0.0556030273, 0.0265565515, 1.0914917, 1, 5.58498714e-9, -4.37113989e-8, 5.5850089e-9, 1.0000031, 4.9060327e-7, 4.37113918e-8, 4.90604634e-7, 1.00000024),
	LauncherCFrame = CFrame.new(-0.00408935547, -0.00542700291, 0.0866088867, 1, -4.37113883e-8, -9.28367105e-10, 9.283877e-10, 4.82221196e-7, -1.0000006, 4.37113883e-8, 1, -4.82221481e-7),
	LauncherMesh = script.Meshes.Penguin.Launcher,
	BorderColor = t12
}
t43["[Flamethrower]"].Penguin = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Penguin.FT,
	CFrame = CFrame.new(0.146240234, 0.487559378, -0.0191040039, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t12
}
t43["[Knife]"].Metal = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.273397565, 0.00601196289, 0.00988769531, 0, 1, 0, -0.999998927, 0, 0, 0, 0, 1)
}
t43["[Revolver]"].Metal = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Metal.rev,
	CFrame = CFrame.new(-0.0964050293, -0.0217685103, -0.000549316406, 1, 0, -1.50995803e-7, 0, 0.999999642, 0, 1.50995803e-7, 0, 1)
}
t43["[Double-Barrel SG]"].Metal = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Metal.db,
	CFrame = CFrame.new(-0.125686646, -0.135336846, 0.00628662109, 0, 0, -1, 0, 0.999998212, 0, 1, 0, 0)
}
t43["[Flamethrower]"].Metal = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Metal.ft,
	CFrame = CFrame.new(0.14163208, 0.573509276, 0.024230957, 0, 0, -1, 0, 0.999999046, 0, 1, 0, 0)
}
t43["[Rifle]"].Metal = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Metal.rifle,
	CFrame = CFrame.new(0.285713196, 0.0110580921, -0.000793457031, 2.01746307e-17, -2.32830588e-10, 1.00000024, -3.18550298e-17, 0.999999523, -2.32830644e-10, -1, 3.18550232e-17, -2.01746307e-17)
}
t43["[RPG]"].Metal = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Metal.rpg,
	CFrame = CFrame.new(-0.00189208984, 0.109036505, 0.657577515, -1, 8.88178314e-16, 4.37113741e-8, -9.08680958e-16, 0.999999881, -4.69042416e-10, -4.37113883e-8, 4.69042527e-10, -0.999999642),
	LauncherCFrame = CFrame.new(-0.00189208984, -0.000738143921, -0.14730072, -1, 8.8817842e-16, 4.37113812e-8, -9.0868604e-16, 0.999999881, -4.69157047e-10, -4.37113883e-8, 4.69157102e-10, -0.999999821),
	LauncherMesh = script.Meshes.Metal.launcher
}
t43["[Revolver]"]["Iced Out"] = {
	Rarity = "Legendary",
	Crate = 1,
	TextureID = script.Meshes.IcedOut.rev,
	CFrame = CFrame.new(-0.0419578552, -0.0496253371, -0.0009765625, 0, 0, -1, 0, 1, 0, 1, 0, 0)
}
t43["[Double-Barrel SG]"]["Iced Out"] = {
	Rarity = "Legendary",
	Crate = 1,
	TextureID = script.Meshes.IcedOut.db,
	CFrame = CFrame.new(-0.0154724121, -0.0110113621, -0.00543212891, 0, 0, 1.00000036, 0, 1.00000036, 0, -1, 0, 0)
}
t43["[Knife]"]["Iced Out"] = {
	Rarity = "Legendary",
	Crate = 1,
	CFrame = CFrame.new(-1.58911133, 0.185030937, -0.00385284424, -1.00000036, 0, 0, 0, 0.999999881, 0, 0, 0, -1)
}
t43["[Revolver]"].Cat = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Cat.Rev,
	BorderColor = t9,
	CFrame = CFrame.new(-0.0353851318, 0.0917409062, -0.001953125, 1, 0, 0, 0, 1, -3.25059848e-30, 0, -3.25059848e-30, 1)
}
t43["[RPG]"].Cat = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Cat.rpg,
	BorderColor = t9,
	CFrame = CFrame.new(-0.0182495117, 0.288909316, -0.0680465698, -4.37113883e-8, 4.54747351e-13, -1, 1.92143443e-6, 1, -5.3873594e-13, 1, 1.92143443e-6, -4.37113883e-8),
	LauncherCFrame = CFrame.new(0.00256347656, 0.0618466139, -0.43542099, -1, 4.54747351e-13, 0, -4.54747351e-13, 1, -1.92143443e-6, 0, 1.92143443e-6, -1),
	LauncherMesh = script.Meshes.Cat.Rocket
}
t43["[Drum-Shotgun]"].Cat = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Cat.drum,
	BorderColor = t9,
	CFrame = CFrame.new(-0.0637664795, 0.164270639, 0.00408935547, -1, 1.62920685e-7, 1.79568244e-22, 1.62920685e-7, 1, -2.44927253e-16, 1.99519584e-23, -2.44929794e-16, -1)
}
t43["[Knife]"].Cat = {
	Rarity = "Exclusive",
	BorderColor = t9,
	CFrame = CFrame.new(-1.25782871, 0.0180130005, 0.0354003906, 0, 5.96046448e-8, 1, 0, 1, -5.96046448e-8, -1, 0, 0)
}
t43["[Double-Barrel SG]"].Cat = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Cat.db,
	BorderColor = t9,
	CFrame = CFrame.new(-0.321357727, -0.021577239, -0.000366210938, -1, 0, 0, 0, 1, -3.25059773e-30, 0, 3.25059773e-30, -1)
}
t43["[Revolver]"].Unicorn = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Unicorn.rev,
	CFrame = CFrame.new(-0.105384827, 0.208259106, 0.00799560547, 1, -5.87381323e-27, 0, -5.87381323e-27, 1, 0, 0, 0, 1),
	BorderColor = t27
}
t43["[Knife]"].Unicorn = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.0699813366, -0.0199928284, 0.151672363, 6.21539241e-22, 1, 0, 1, 6.21539241e-22, -3.57623663e-17, 3.57623663e-17, 0, -1),
	BorderColor = t27
}
t43["[Double-Barrel SG]"].Unicorn = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Unicorn.db,
	CFrame = CFrame.new(0.204410553, 0.268578529, 0.0223999023, -1.00000572, 2.90278896e-27, 0, -2.90275526e-27, 0.999988556, 0, 0, 0, -0.999994278),
	BorderColor = t27
}
t43["[TacticalShotgun]"].Unicorn = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Unicorn.tact,
	CFrame = CFrame.new(-1.15197754, 0.214885235, 0.00622558594, 0.999999523, -5.68433918e-14, 1.8623002e-9, -8.04312603e-14, 1.00000012, -4.54747351e-12, 1.86229743e-9, 4.54747351e-12, 1.00000012),
	BorderColor = t27
}
t43["[RPG]"].Unicorn = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Unicorn.rpg,
	CFrame = CFrame.new(0.0617675781, 0.388903856, 0.322414398, -4.37113883e-8, 2.84217128e-14, -1, 1.20089595e-7, 1, -3.36709962e-14, 1, 1.20089595e-7, -4.37113883e-8),
	LauncherCFrame = CFrame.new(0.00793457031, -0.00685334206, 0.199073792, -4.37115126e-8, 2.84215908e-14, -0.999998569, 1.2009005e-7, 0.999995708, -3.36709556e-14, 1.00000286, 1.20089197e-7, -4.37113243e-8),
	LauncherMesh = script.Meshes.Unicorn.launcher,
	BorderColor = t27
}
t43["[Vehicle]"].Unicorn = {
	Rarity = "Exclusive",
	BorderColor = t27
}
t43["[Knife]"].Reptile = {
	Rarity = "Legendary",
	Crate = 1,
	CFrame = CFrame.new(0.117903709, 0.274299622, -0.0466308594, 1, 0, 0, 0, 0.999995708, 0, 0, 0, 0.999995708)
}
t43["[Revolver]"].Reptile = {
	Rarity = "Legendary",
	Crate = 1,
	TextureID = script.Meshes.Reptile.rev,
	CFrame = CFrame.new(0.0178756714, 0.0200323462, -0.00146484375, 1, 0, 0, 0, 0.999995708, 0, 0, 0, 0.999995708)
}
t43["[Double-Barrel SG]"].Reptile = {
	Rarity = "Legendary",
	Crate = 1,
	TextureID = script.Meshes.Reptile.db,
	CFrame = CFrame.new(-0.277816772, -0.0448647141, 0.0176391602, -1, 0, 0, 0, 0.999995708, 0, 0, 0, -0.999995708)
}
t43["[Knife]"].Boy = {
	Rarity = "Exclusive",
	DisplayName = "His",
	CFrame = CFrame.new(-0.0212402344, 0.169678688, -0.0283966064, -5.96044032e-8, 0.999998093, 3.97903607e-13, 0.999990463, -5.96044032e-8, -9.94756171e-14, 9.94756171e-14, -3.97903607e-13, -1),
	BorderColor = t19
}
t43["[Knife]"].Girl = {
	Rarity = "Exclusive",
	DisplayName = "Hers",
	CFrame = CFrame.new(0.168884277, 0.0223870277, 0.0336074829, 1.03316403e-7, 0.999998093, -8.7420851e-8, 0.999990463, -2.22523965e-7, -2.82794675e-13, -1.03298595e-13, -8.74220518e-8, -0.999997139),
	BorderColor = t
}
t43["[Vehicle]"]["Electric Car"] = {
	Rarity = "Legendary",
	Crate = 1
}
t43["[Vehicle]"].Ultra = {
	Rarity = "Legendary",
	Crate = 1
}
t43["[Vehicle]"].Rayliner = {
	Rarity = "Legendary",
	Crate = 1
}
t43["[Vehicle]"].Ranger = {
	Rarity = "Legendary",
	Crate = 1
}
t43["[Vehicle]"].Ambulance = {
	Rarity = "Exclusive"
}
t43["[Knife]"].Aqua = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.0699813366, -0.0199928284, 0.151672363, 6.21539241e-22, 1, 0, 1, 6.21539241e-22, -3.57623663e-17, 3.57623663e-17, 0, -1),
	BorderColor = t19
}
t43["[RPG]"].Aqua = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Aqua.rpg,
	CFrame = CFrame.new(-0.0422363281, 0.243108392, -0.243370056, -4.37113883e-8, 1.79695434e-18, -1, -5.64731205e-13, 1, -1.7722692e-18, 1, -5.64731205e-13, -4.37113883e-8),
	LauncherCFrame = CFrame.new(0.00384521484, 0.00943088531, -0.653934479, -1, 1.73472337e-18, 4.37113883e-8, -1.7772753e-18, 1, -9.73473906e-13, -4.37113883e-8, 9.73473906e-13, -1),
	LauncherMesh = script.Meshes.Aqua.Rocket,
	BorderColor = t19
}
t43["[Revolver]"].Aqua = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Aqua.rev,
	CFrame = CFrame.new(-0.105384827, 0.208259106, 0.00799560547, 1, -5.87381323e-27, 0, -5.87381323e-27, 1, 0, 0, 0, 1),
	BorderColor = t19
}
t43["[Double-Barrel SG]"].Aqua = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Aqua.db,
	CFrame = CFrame.new(0.204410553, 0.268578529, 0.0223999023, -1.00000572, 2.90278896e-27, 0, -2.90275526e-27, 0.999988556, 0, 0, 0, -0.999994278),
	BorderColor = t19
}
t43["[Knife]"].Wire = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.114868164, 0.13845396, -0.0218524933, 3.97903038e-13, 0.999998093, 4.0978243e-8, -9.94754816e-14, -7.07802172e-8, -0.999992371, -0.999998569, -3.97903607e-13, -9.94758068e-14),
	BorderColor = t19
}
t43["[Revolver]"].Wire = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Wire.rev,
	CFrame = CFrame.new(0.00971221924, 0.0132867098, 0.000122070312, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t19
}
t43["[Double-Barrel SG]"].Wire = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Wire.db,
	CFrame = CFrame.new(-0.12754631, -0.0147626996, -0.0191040039, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t19
}
t43["[SMG]"].Wire = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Wire.smg,
	CFrame = CFrame.new(0.228622437, -0.115716159, -0.0379638672, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t19
}
t43["[Flamethrower]"].Wire = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Wire.ft,
	CFrame = CFrame.new(0.484739304, 0.240048289, 0.0125732422, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t19
}
t43["[RPG]"].Wire = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Wire.rpg,
	CFrame = CFrame.new(-0.000854492188, 0.044478178, 0.30198288, -1, 2.27373621e-13, 4.37113883e-8, -2.27537661e-13, 1, -3.75266085e-9, -4.37113883e-8, 3.75266085e-9, -1),
	LauncherCFrame = CFrame.new(-0.000854492188, -0.00822412968, 0.0817947388, -1, 2.27373621e-13, 4.37113883e-8, -2.27537661e-13, 1, -3.75277542e-9, -4.37113883e-8, 3.75277542e-9, -1),
	LauncherMesh = script.Meshes.Wire.Rocket,
	BorderColor = t19
}
t43["[Knife]"].SoulII = {
	DisplayName = "Ghost",
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.0699813366, -0.0199928284, 0.151672363, 6.21539241e-22, 1, 0, 1, 6.21539241e-22, -3.57623663e-17, 3.57623663e-17, 0, -1),
	BorderColor = t38
}
t43["[RPG]"].SoulII = {
	DisplayName = "Ghost",
	Rarity = "Exclusive",
	TextureID = script.Meshes.SoulII.rpg,
	CFrame = CFrame.new(-0.0422363281, 0.243108392, -0.243370056, -4.37113883e-8, 1.79695434e-18, -1, -5.64731205e-13, 1, -1.7722692e-18, 1, -5.64731205e-13, -4.37113883e-8),
	LauncherCFrame = CFrame.new(0.00384521484, 0.00943088531, -0.653934479, -1, 1.73472337e-18, 4.37113883e-8, -1.7772753e-18, 1, -9.73473906e-13, -4.37113883e-8, 9.73473906e-13, -1),
	LauncherMesh = script.Meshes.SoulII.Rocket,
	BorderColor = t38
}
t43["[Revolver]"].SoulII = {
	DisplayName = "Ghost",
	Rarity = "Exclusive",
	TextureID = script.Meshes.SoulII.rev,
	CFrame = CFrame.new(-0.105384827, 0.208259106, 0.00799560547, 1, -5.87381323e-27, 0, -5.87381323e-27, 1, 0, 0, 0, 1),
	BorderColor = t38
}
t43["[Double-Barrel SG]"].SoulII = {
	DisplayName = "Ghost",
	Rarity = "Exclusive",
	TextureID = script.Meshes.SoulII.db,
	CFrame = CFrame.new(-0.15, 0, 0, -1.00000572, 2.90278896e-27, 0, -2.90275526e-27, 0.999988556, 0, 0, 0, -0.999994278),
	BorderColor = t38
}
t43["[Vehicle]"].SoulII = {
	DisplayName = "Ghost",
	Rarity = "Exclusive",
	BorderColor = t38
}
t43["[Knife]"].Nightmare = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.0172729492, 0.016535759, -0.0452766418, -3.97903607e-13, -5.96044032e-8, -0.999998093, 9.94756171e-14, 0.999990463, 5.96044032e-8, 1, 9.94756171e-14, 3.97903607e-13),
	BorderColor = t37
}
t43["[Revolver]"].Nightmare = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Nightmare.rev,
	CFrame = CFrame.new(0.200012207, -0.0815875828, 0.0110473633, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t37
}
t43["[Double-Barrel SG]"].Nightmare = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Nightmare.db,
	CFrame = CFrame.new(0.36031723, 0.00864857435, -0.00158691406, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t37
}
t43["[RPG]"].Nightmare = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Nightmare.rpg,
	CFrame = CFrame.new(0.00720214844, 0.0332263708, 0.887256622, -4.37113883e-8, -3.23117427e-27, -1, 8.58948112e-13, 1, -3.75458152e-20, 1, 8.58948112e-13, -4.37113883e-8),
	LauncherCFrame = CFrame.new(-0.0835571289, -0.00100052357, 0.105564117, 3.23117427e-27, -4.37113741e-8, -1, -1, 9.73474231e-13, -4.25519252e-20, -9.73474556e-13, 0.999999642, -4.37113883e-8),
	LauncherMesh = script.Meshes.Nightmare.launcher,
	BorderColor = t37
}
t43["[Flamethrower]"].Nightmare = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Nightmare.ft,
	CFrame = CFrame.new(0.395851135, 0.238022804, 0.079284668, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t37
}
t43["[Vehicle]"].Nightmare = {
	Rarity = "Exclusive",
	BorderColor = t37
}
t43["[Revolver]"].Butterfly = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Butterfly.Rev,
	CFrame = CFrame.new(0.0578613281, -0.0479719043, -0.00115966797, -1.00000405, 1.15596135e-16, 1.64267286e-30, -1.15596135e-16, 1, 2.99751983e-14, 1.66683049e-30, -2.99751983e-14, -1.00000405),
	BorderColor = t
}
t43["[Knife]"].Butterfly = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.248047352, -0.0400543213, -0.0659179688, 0, 1, 0, 0.999998093, 0, 0, 0, 0, -1),
	BorderColor = t
}
t43["[Double-Barrel SG]"].Butterfly = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Butterfly.DB,
	CFrame = CFrame.new(0.36031723, 0.00864857435, -0.00158691406, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t
}
t43["[Revolver]"].Emerald = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Emerald.Rev,
	CFrame = CFrame.new(0.200012207, -0.0815875828, 0.0110473633, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t23
}
t43["[Knife]"]["Emerald-Bayonet"] = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.248047352, -0.0400543213, -0.0659179688, 0, 1, 0, 0.999998093, 0, 0, 0, 0, -1),
	BorderColor = t23
}
t43["[Double-Barrel SG]"].Emerald = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Emerald.DB,
	CFrame = CFrame.new(0.200012207, -0.0815875828, 0.0110473633, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t23
}
t43["[AK47]"].Emerald = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Emerald.AK,
	CFrame = CFrame.new(0.200012207, -0.0815875828, 0.0110473633, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t23
}
t43["[Knife]"].GPOII = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.248047352, -0.0400543213, -0.0659179688, 0, 1, 0, 0.999998093, 0, 0, 0, 0, -1),
	BorderColor = t31
}
t43["[SMG]"].GPOII = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.GPOII.Uzi,
	CFrame = CFrame.new(-0.300012207, -0.0815875828, 0.0110473633, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t31
}
t43["[AK47]"].GPOII = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.GPOII.AK,
	CFrame = CFrame.new(-0.200012207, -0.0815875828, 0.0110473633, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t31
}
t43["[AUG]"].GPOII = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.GPOII.AUG,
	CFrame = CFrame.new(-0.200012207, -0.0815875828, 0.0110473633, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t31
}
t43["[RPG]"].GPOII = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.GPOII.RPG,
	CFrame = CFrame.new(-0.4, 0.2, 0.9, -4.37113883e-8, -3.23117427e-27, 1, 8.58948112e-13, 1, -3.75458152e-20, -1, 8.58948112e-13, -4.37113883e-8),
	LauncherCFrame = CFrame.new(-0.35, 0.3, -0.1, 0, 0, 1, 0, -1, 0, 1, 0, 0),
	LauncherMesh = script.Meshes.GPOII.Rocket,
	BorderColor = t31
}
t43["[Double-Barrel SG]"].GPOII = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.GPOII.DB,
	CFrame = CFrame.new(0.15, -0.0815875828, 0.0110473633, 1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t31
}
t43["[Knife]"].XMAS24 = {
	DisplayName = "Hoodmas24",
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.248047352, -1, -0.0659179688, 0, 1, 0, 0.999998093, 0, 0, 0, 0, -1),
	BorderColor = t32
}
t43["[Revolver]"].XMAS24 = {
	DisplayName = "Hoodmas24",
	Rarity = "Exclusive",
	TextureID = script.Meshes.XMAS24.Rev,
	CFrame = CFrame.new(0.15, -0.0815875828, 0.0110473633, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t32
}
t43["[AK47]"].XMAS24 = {
	DisplayName = "Hoodmas24",
	Rarity = "Exclusive",
	TextureID = script.Meshes.XMAS24.AK,
	CFrame = CFrame.new(-0.200012207, -0.0815875828, 0.0110473633, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t32
}
t43["[RPG]"].XMAS24 = {
	DisplayName = "Hoodmas24",
	Rarity = "Exclusive",
	TextureID = script.Meshes.XMAS24.RPG,
	CFrame = CFrame.new(-0.4, 0.3, 0.9, -4.37113883e-8, -3.23117427e-27, 1, 8.58948112e-13, 1, -3.75458152e-20, -1, 8.58948112e-13, -4.37113883e-8),
	LauncherCFrame = CFrame.new(-0.35, 0.15, -0.4, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	LauncherMesh = script.Meshes.XMAS24.Rocket,
	BorderColor = t32
}
t43["[Flamethrower]"].XMAS24 = {
	DisplayName = "Hoodmas24",
	Rarity = "Exclusive",
	TextureID = script.Meshes.XMAS24.Flamethrower,
	CFrame = CFrame.new(-0.200012207, -0.0815875828, 0.0110473633, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t32
}
t43["[Double-Barrel SG]"].XMAS24 = {
	DisplayName = "Hoodmas24",
	Rarity = "Exclusive",
	TextureID = script.Meshes.XMAS24.DB,
	CFrame = CFrame.new(0.05, -0.0815875828, 0.0110473633, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t32
}
t43["[Revolver]"].Grumpy = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Grumpy.rev,
	CFrame = CFrame.new(0.083902359, -0.000752657652, -0.00531005859, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t23
}
t43["[LMG]"].Grumpy = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Grumpy.lmg,
	CFrame = CFrame.new(-0.0024433136, -0.184990644, -0.284179688, 4.37113883e-8, 0, -1, 0, 1, 0, 1, 0, 4.37113883e-8),
	BorderColor = t23
}
t43["[Rifle]"].Grumpy = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Grumpy.rifle,
	CFrame = CFrame.new(-0.0986032486, 0.155781806, 0.00201416016, 2.01746307e-17, -2.32830644e-10, 1.00000024, -3.18550298e-17, 0.999999762, -2.32830644e-10, -1, 3.18550298e-17, -2.01746307e-17),
	BorderColor = t23
}
t43["[Double-Barrel SG]"].Grumpy = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Grumpy.db,
	CFrame = CFrame.new(-0.00919914246, -0.0474078655, 0.0112304688, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t23
}
t43["[Knife]"].Grumpy = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.0426330566, -0.0864753723, 0.0100708008, 0.00275234436, 1, 0, 1, -0.00275234436, 0, 0, 0, -1),
	BorderColor = t23
}
t43["[RPG]"].Grumpy = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Grumpy.rpg,
	CFrame = CFrame.new(0.0670776367, 0.0477321744, 0.919996262, 1, 1.1920929e-7, 1.58932565e-8, 1.1920929e-7, 1, 2.65151563e-8, 1.03316033e-7, 2.65151598e-8, 1),
	LauncherCFrame = CFrame.new(-0.164367676, 0.0731297731, -1.37745857, 1, 1.1920929e-7, 1.58932565e-8, 1.1920929e-7, 1, 2.651527e-8, 1.03316033e-7, 2.65152735e-8, 1),
	LauncherMesh = script.Meshes.Grumpy.launcher,
	BorderColor = t23
}
t43["[Revolver]"].Wrapped = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Wrapped.WrappedRev,
	CFrame = CFrame.new(0.0514059067, -0.0242098272, -0.00512695312, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t32
}
t43["[Revolver]"].Shrimp = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Shrimp.Rev,
	CFrame = CFrame.new(0.083902359, -0.000752657652, -0.00531005859, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t42
}
t43["[Flamethrower]"].Shrimp = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Shrimp.Flamethrower,
	CFrame = CFrame.new(0.06, 0.156, 0, -1.00000024, -2.32830644e-10, 2.01746307e-17, 2.32830644e-10, 0.999999762, -3.18550298e-17, 2.01746307e-17, 3.18550298e-17, -1),
	BorderColor = t42
}
t43["[Double-Barrel SG]"].Shrimp = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Shrimp.DB,
	CFrame = CFrame.new(0.18, -0.001, -0.005, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t42
}
t43["[Double-Barrel SG]"].ShrimpII = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Shrimp.DB2,
	CFrame = CFrame.new(0.083902359, -0.000752657652, -0.00531005859, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t42
}
t43["[RPG]"].Shrimp = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Shrimp.RPG,
	CFrame = CFrame.new(-0.3, 0.2, 0.5, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherCFrame = CFrame.new(-0.3, 0.25, -1.4, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherMesh = script.Meshes.Shrimp.Rocket,
	BorderColor = t42
}
t43["[Knife]"].Shrimp = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.142807961, -0.019982338, -0.0357666016, 0, 1, 0, 0, 0, -1, -1, 0, 0),
	BorderColor = t42
}
t43["[Mask]"].Shrimp = {
	Rarity = "Exclusive",
	BorderColor = t42
}
t43["[Mask]"].VIP = {
	Rarity = "Exclusive",
	BorderColor = t41
}
t43["[Revolver]"].VIP = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.VIP.rev,
	CFrame = CFrame.new(0.0300045013, -0.0102914572, -0.00360107422, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t41
}
t43["[Rifle]"].VIP = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.VIP.rifle,
	CFrame = CFrame.new(0.772966385, 0.218811929, -0.0607299805, 1.00000024, -2.32830644e-10, -2.01746307e-17, -2.32830644e-10, 0.999999762, 3.18550298e-17, -2.01746307e-17, 3.18550298e-17, 1),
	BorderColor = t41
}
t43["[Flamethrower]"].VIP = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.VIP.ft,
	CFrame = CFrame.new(0.394266129, 0.377692699, -0.0838623047, -1.00000036, 0, -3.57802492e-7, 0, 1, 0, -3.57802492e-7, 0, -1.00000083),
	BorderColor = t41
}
t43["[Knife]"].VIP = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.142807961, -0.019982338, -0.0357666016, 0, 1, 0, 0, 0, -1, -1, 0, 0),
	BorderColor = t41
}
t43["[Revolver]"]["Short Cake"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes["Short Cake"].rev,
	CFrame = CFrame.new(-0.0156040192, -0.0425030291, -0.00393676758, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t
}
t43["[Knife]"]["Short Cake"] = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.0201357603, -0.0473470688, -0.0000610351562, 1.94706445e-7, 0.999996185, -0.00275226892, -5.35878009e-10, -0.00275226892, -0.999996185, -1, 1.94707184e-7, -8.51092183e-15),
	BorderColor = t
}
t43["[Double-Barrel SG]"]["Short Cake"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes["Short Cake"].DB,
	CFrame = CFrame.new(-0.0057888031, -0.0116384625, -0.0263671875, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t
}
t43["[Flamethrower]"]["Short Cake"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes["Short Cake"].ft,
	CFrame = CFrame.new(0.162924767, -0.108296156, -0.00122070312, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t
}
t43["[RPG]"]["Short Cake"] = {
	Rarity = "Exclusive",
	TextureID = script.Meshes["Short Cake"].rpg,
	CFrame = CFrame.new(-0.0000610351562, 0.427747428, 1.7615099, -1, 8.88178526e-16, 4.37113883e-8, -1.0522162e-15, 1, -3.75274434e-9, -4.37113883e-8, 3.75274434e-9, -1),
	LauncherCFrame = CFrame.new(-0.0078125, 0.0242747664, -0.0585517883, -1, 8.88178526e-16, 4.37113883e-8, -1.05222128e-15, 1, -3.75285891e-9, -4.37113883e-8, 3.75285891e-9, -1),
	LauncherMesh = script.Meshes["Short Cake"].launcher,
	BorderColor = t
}
t43["[Revolver]"].Beary = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Beary.Rev,
	CFrame = CFrame.new(0.083902359, -0.000752657652, -0.00531005859, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t
}
t43["[Double-Barrel SG]"].Beary = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Beary.DB,
	CFrame = CFrame.new(0.18, -0.001, -0.005, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t
}
t43["[RPG]"].Beary = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Beary.RPG,
	CFrame = CFrame.new(-0.3, 0.2, 0.5, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	LauncherCFrame = CFrame.new(-0.3, 0.25, -1.27, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherMesh = script.Meshes.Beary.Rocket,
	BorderColor = t
}
t43["[Knife]"].Beary = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.1, -0.08, -1.8, 0, 1, 0, 1, 0, 0, 0, 0, -1),
	BorderColor = t
}
t43["[TacticalShotgun]"].Beary = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Beary.Tac,
	CFrame = CFrame.new(-0.02, -0.001, -0.005, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t
}
t43["[Vehicle]"].Beary = {
	Rarity = "Exclusive",
	BorderColor = t
}
t43["[Knife]"]["Ban Hammer"] = {
	Rarity = "Exclusive",
	NoTrade = true,
	CFrame = CFrame.new(-0.0201357603, -0.0473470688, -0.0000610351562, 1.94706445e-7, 0.999996185, -0.00275226892, -5.35878009e-10, -0.00275226892, -0.999996185, -1, 1.94707184e-7, -8.51092183e-15),
	BorderColor = t5
}
t43["[Knife]"].Blossom = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.599981308, 0.0271587372, -0.161071777, 0, 1, 0, -1, 0, 0, 0, 0, 1),
	BorderColor = t
}
t43["[Revolver]"].Blossom = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Blossom.rev,
	CFrame = CFrame.new(0.084897995, -0.0264527202, -0.00415039062, 1, 0, 0, 0, 0.999996185, 0, 0, 0, 1),
	BorderColor = t
}
t43["[Double-Barrel SG]"].Blossom = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Blossom.db,
	CFrame = CFrame.new(0.0497989655, -0.104448169, 0.0203857422, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t
}
t43["[Vehicle]"].Blossom = {
	Rarity = "Exclusive",
	BorderColor = t
}
t43["[Vehicle]"].Duck = {
	Rarity = "Exclusive",
	BorderColor = t24
}
t43["[Revolver]"].Duck = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Duck.Rev,
	CFrame = CFrame.new(-0.15, 0.15, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t24
}
t43["[Double-Barrel SG]"].Duck = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Duck.DB,
	CFrame = CFrame.new(0.5, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t24
}
t43["[RPG]"].Duck = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Duck.RPG,
	CFrame = CFrame.new(-0.1, 0.3, 0.7, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherCFrame = CFrame.new(-0.1, 0.1, -1.07, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	LauncherMesh = script.Meshes.Duck.Rocket,
	BorderColor = t24
}
t43["[Knife]"].Duck = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t24
}
t43["[Flamethrower]"].Duck = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Duck.Flamethrower,
	CFrame = CFrame.new(-0.02, -0.001, -0.005, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t24
}
t43["[RPG]"].Skull = {
	DisplayName = "Midnight",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Skull.rpg,
	CFrame = CFrame.new(0.151672363, 0.272811234, 0.710029602, -4.37113883e-8, 2.84217094e-14, -1, 3.75293441e-9, 1, -2.8585756e-14, 1, 3.75293441e-9, -4.37113883e-8),
	LauncherCFrame = CFrame.new(-0.0116577148, 0.152510166, -0.45423317, 1, 2.84217094e-14, -4.37113883e-8, 2.85857628e-14, 1, 3.75304898e-9, 4.37113883e-8, 3.75304898e-9, 1),
	LauncherMesh = script.Meshes.Skull.Launcher
}
t43["[Revolver]"].Skull = {
	DisplayName = "Midnight",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Skull.rev,
	CFrame = CFrame.new(-0.0100040436, 0.00174093246, -0.156860352, 1, 0, 0, 0, 1, 0, 0, 0, 1)
}
t43["[Double-Barrel SG]"].Skull = {
	DisplayName = "Midnight",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Skull.db,
	CFrame = CFrame.new(0.818656921, -0.0885771513, 0.00787353516, -1, 0, 0, 0, 1, 0, 0, 0, -1)
}
t43["[Knife]"].Skull = {
	DisplayName = "Midnight",
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.599981308, -0.0305194855, -0.0527648926, 0, 1, 0, -1, 0, 0, 0, 0, 1)
}
t43["[Vehicle]"].Skull = {
	DisplayName = "Midnight",
	Rarity = "Exclusive"
}
t43["[Revolver]"].Sushi = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Sushi.Rev,
	CFrame = CFrame.new(0.2, 0.15, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t24
}
t43["[Double-Barrel SG]"].Sushi = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Sushi.DB,
	CFrame = CFrame.new(0.5, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t24
}
t43["[TacticalShotgun]"].Sushi = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Sushi.Tact,
	CFrame = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t24
}
t43["[RPG]"].Sushi = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Sushi.RPG,
	CFrame = CFrame.new(-0.1, 0.3, 0.7, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherCFrame = CFrame.new(-0.1, 0.2, -1.3, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	LauncherMesh = script.Meshes.Sushi.Rocket,
	BorderColor = t24
}
t43["[Knife]"].Sushi = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t24
}
t43["[Knife]"].Arcane = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t5
}
t43["[Revolver]"].Arcane = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Arcane.Rev,
	CFrame = CFrame.new(0.2, 0.15, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t5
}
t43["[Vehicle]"].Arcane = {
	Rarity = "Exclusive",
	BorderColor = t5
}
t43["[Vehicle]"].ArcanePlus = {
	Rarity = "Exclusive",
	BorderColor = t5
}
t43["[Revolver]"].Samurai = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Samurai.Rev,
	CFrame = CFrame.new(-0.014251709, -0.0334861875, 0.00100708008, 0, 0, -1, 0, 1, 0, 1, 0, 0)
}
t43["[Double-Barrel SG]"].Samurai = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Samurai.DB,
	CFrame = CFrame.new(0.116455078, -0.106102258, 0.0293884277, 0, 0, 1, 0, 1, 0, -1, 0, 0)
}
t43["[Knife]"].Samurai = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.599975586, 0.0550231934, 0.0923461914, 0, 1, 0, 1, 0, 0, 0, 0, -1)
}
t43["[Vehicle]"].Samurai = {
	Rarity = "Exclusive"
}
t43["[House]"]["Classic 1"] = {
	Rarity = "Epic",
	Crate = 1
}
t43["[House]"]["Container House"] = {
	Rarity = "Epic",
	Crate = 1
}
t43["[House]"]["Contemporary House"] = {
	Rarity = "Epic",
	Crate = 1
}
t43["[House]"]["Studio House"] = {
	Rarity = "Legendary",
	Crate = 1
}
t43["[House]"]["Villa Oxa Lux"] = {
	Rarity = "Exclusive"
}
t43["[House]"]["Villa Nova"] = {
	Rarity = "Exclusive"
}
t43["[House]"]["Villa Nix"] = {
	Rarity = "Exclusive"
}
t43["[House]"]["Christmas House"] = {
	Rarity = "Exclusive"
}
t43["[House]"]["Edge Residence"] = {
	Rarity = "Exclusive"
}
t43["[House]"]["Halloween House"] = {
	Rarity = "Exclusive"
}
t43["[House]"]["Clout Villa"] = {
	Rarity = "Exclusive"
}
t43["[House]"]["Slope House"] = {
	Rarity = "Exclusive"
}
t43["[House]"]["Casa Contrast"] = {
	Rarity = "Exclusive"
}
t43["[Knife]"].Jellyfish = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t20
}
t43["[Revolver]"].Jellyfish = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Jellyfish.Rev,
	CFrame = CFrame.new(0.2, 0.15, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t20
}
t43["[Double-Barrel SG]"].Jellyfish = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Jellyfish.DB,
	CFrame = CFrame.new(0.2, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t20
}
t43["[TacticalShotgun]"].Jellyfish = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Jellyfish.Tact,
	CFrame = CFrame.new(-0.2, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t20
}
t43["[RPG]"].Jellyfish = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Jellyfish.RPG,
	CFrame = CFrame.new(-0.1, 0.3, 0.7, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherCFrame = CFrame.new(-0.1, 0.2, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	LauncherMesh = script.Meshes.Jellyfish.Rocket,
	BorderColor = t20
}
t43["[Vehicle]"].Jellyfish = {
	Rarity = "Exclusive",
	BorderColor = t20
}
t43["[Revolver]"].Summer = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Summer.Rev,
	CFrame = CFrame.new(0.2, 0.15, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t13
}
t43["[TacticalShotgun]"].Summer = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Summer.Tac,
	CFrame = CFrame.new(-0.2, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t13
}
t43["[Revolver]"].Kingpin = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Kingpin.Rev,
	CFrame = CFrame.new(-0.0528564453, -0.0851585865, -0.00579833984, -1.99520325e-23, -1.62920685e-7, 1, 2.44929371e-16, 1, 1.62920685e-7, -1, 2.44929371e-16, 1.99520294e-23),
	BorderColor = t24
}
t43["[Double-Barrel SG]"].Kingpin = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Kingpin.DB,
	CFrame = CFrame.new(-0.3, -0.0851585865, -0.2579833984, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t24
}
t43["[AK47]"].Kingpin = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Kingpin.AK,
	CFrame = CFrame.new(0.9, -0.0851585865, -0.00579833984, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t24
}
t43["[Knife]"].Kingpin = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.599975586, 0.014465332, 0.00958251953, 0, 1, 0, 0, 0, -1, -1, 0, 0),
	BorderColor = t24
}
t43["[Vehicle]"].Truck = {
	Rarity = "Exclusive"
}
t43["[Knife]"].RoseKarambit = {
	DisplayName = "Rose",
	Rarity = "Legendary",
	Crate = 999,
	CFrame = CFrame.new(-0.0699813366, -0.0199928284, 0.151672363, 6.21539241e-22, 1, 0, 1, 6.21539241e-22, -3.57623663e-17, 3.57623663e-17, 0, -1),
	BorderColor = t
}
t43["[Revolver]"].Bubu = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Bubu.Rev,
	CFrame = CFrame.new(-0.0609436035, -0.0713346004, 0.000366210938, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t27
}
t43["[Double-Barrel SG]"].Bubu = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Bubu.DB,
	CFrame = CFrame.new(-0.25567627, 0.0182077289, -0.0701293945, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t27
}
t43["[Knife]"].Bubu = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.00598144531, 0.521871805, 0.0137939453, -4.76834288e-7, 1.31245104e-9, -0.999996185, 0.999997973, -2.41678208e-7, 4.76834259e-7, 2.41911039e-7, -0.999996066, 1.31245104e-9),
	BorderColor = t27
}
t43["[RPG]"].Bubu = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Bubu.RPG,
	CFrame = CFrame.new(-0.3609436035, -0.0713346004, 1.000366210938, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	LauncherCFrame = CFrame.new(-0.3152893066, 0.0218440592, 0.51171875, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	LauncherMesh = script.Meshes.Bubu.Rocket,
	BorderColor = t27
}
t43["[Knife]"]["RGB Bubu"] = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.00598144531, 0.521871805, 0.0137939453, -4.76834288e-7, 1.31245104e-9, -0.999996185, 0.999997973, -2.41678208e-7, 4.76834259e-7, 2.41911039e-7, -0.999996066, 1.31245104e-9),
	BorderColor = t15
}
t43["[Knife]"].Music = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t7
}
t43["[Revolver]"].Music = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Music.Rev,
	CFrame = CFrame.new(0.2, 0.15, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t7
}
t43["[Double-Barrel SG]"].Music = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Music.DB,
	CFrame = CFrame.new(0.2, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t7
}
t43["[Flintlock]"].Music = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Music.Flintlock,
	CFrame = CFrame.new(0.2, 0.15, -0.1, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t7
}
t43["[Drum-Shotgun]"].Music = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Music.Drum,
	CFrame = CFrame.new(-0.7, 0.25, 0.35, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t7
}
t43["[RPG]"].Music = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Music.RPG,
	CFrame = CFrame.new(-0.1, 0.3, 0.7, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherCFrame = CFrame.new(-0.1, 0.2, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	LauncherMesh = script.Meshes.Music.Rocket,
	BorderColor = t7
}
t43["[Vehicle]"].Music = {
	Rarity = "Exclusive",
	BorderColor = t7
}
t43["[Knife]"].Brainrot = {
	DisplayName = "Bananini",
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t24
}
t43["[Revolver]"].Brainrot = {
	DisplayName = "Cappuccina",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Brainrot.Rev,
	CFrame = CFrame.new(0.2, 0.15, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t10
}
t43["[Double-Barrel SG]"].Brainrot = {
	DisplayName = "Watermelini",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Brainrot.DB,
	CFrame = CFrame.new(0.2, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t17
}
t43["[TacticalShotgun]"].Brainrot = {
	DisplayName = "Tung",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Brainrot.Tac,
	CFrame = CFrame.new(0.2, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t24
}
t43["[Shotgun]"].Brainrot = {
	DisplayName = "Frulla",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Brainrot.Shotgun,
	CFrame = CFrame.new(0.2, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t7
}
t43["[RPG]"].Brainrot = {
	DisplayName = "Bombardino",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Brainrot.RPG,
	CFrame = CFrame.new(-0.1, 0.3, 0.7, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherCFrame = CFrame.new(-0.1, 0.3, -0.5, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherMesh = script.Meshes.Brainrot.ROCKET,
	BorderColor = t23
}
t43["[RPG]"].BrainrotShark = {
	DisplayName = "Tralalero",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Brainrot.SharkRPG,
	CFrame = CFrame.new(-0.1, 0.3, 0.7, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherCFrame = CFrame.new(-0.1, 0, -0.5, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherMesh = script.Meshes.Brainrot.SharkROCKET,
	BorderColor = t5
}
t43["[RPG]"].BrainrotSharkGolden = {
	DisplayName = "Tralalero",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Brainrot.SharkGoldRPG,
	CFrame = CFrame.new(-0.1, 0.3, 0.7, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherCFrame = CFrame.new(-0.1, 0, -0.5, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherMesh = script.Meshes.Brainrot.SharkGoldROCKET,
	BorderColor = t24
}
t43["[Double-Barrel SG]"].Ribbon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Ribbon.DB,
	CFrame = CFrame.new(0.273925781, -0.0719049275, -0.0044708252, 1.59256203e-7, -1.28089744e-6, -1.00000286, 3.02059533e-9, 1.00000072, 1.60673972e-6, 1, 3.02062375e-9, -1.59256246e-7),
	BorderColor = t22
}
t43["[Revolver]"].Ribbon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Ribbon.Rev,
	CFrame = CFrame.new(0.027923584, 0.012791872, -0.00779724121, -1.99520294e-23, -1.62920671e-7, 1, 2.44929371e-16, 1, 1.62920671e-7, -1, 2.44929371e-16, 1.99520294e-23),
	BorderColor = t22
}
t43["[RPG]"].Ribbon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Ribbon.RPG,
	CFrame = CFrame.new(0.00366973877, 0.237731695, 0.447662354, 1, 1.32440608e-13, -1.9937153e-23, 1.32930451e-13, 1, 1.62920671e-7, -2.16371546e-20, -1.62920671e-7, 1),
	LauncherCFrame = CFrame.new(0, 0, -0.5, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherMesh = script.Meshes.Ribbon.Rocket,
	BorderColor = t22
}
t43["[Vehicle]"].Ribbon = {
	Rarity = "Exclusive",
	BorderColor = t22
}
t43["[Knife]"].Ribbon = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.0296325684, 0.5272789, -0.0353269577, 4.3711065e-8, -0.0000729402382, -1, 1, 1.59829455e-10, 4.37112142e-8, 7.69139682e-11, -1, 0.0000686496351),
	BorderColor = t22
}
t43["[Knife]"].Popsicle = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.0296325684, 0.5272789, -0.0353269577, 4.3711065e-8, -0.0000729402382, -1, 1, 1.59829455e-10, 4.37112142e-8, 7.69139682e-11, -1, 0.0000686496351),
	BorderColor = t13
}
t43["[Knife]"].Watermelon = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.160507202, 0.0066832304, 0.00640869141, 2.44929344e-16, 0.99999994, -7.54978942e-8, 9.24582452e-24, 7.54978942e-8, 0.99999994, 0.99999994, -2.44929344e-16, 9.2458261e-24),
	BorderColor = t23
}
t43["[Knife]"].Mochi = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.0296325684, 0.5272789, -0.0353269577, 4.3711065e-8, -0.0000729402382, -1, 1, 1.59829455e-10, 4.37112142e-8, 7.69139682e-11, -1, 0.0000686496351),
	BorderColor = t
}
t43["[Revolver]"].PurpleRedDualRev = {
	DisplayName = "Absolute Authority Revolvers",
	Rarity = "Exclusive",
	TextureID = script.Meshes.PurpleRedDualRev.DisplayRev,
	CFrame = CFrame.new(-0.520424962, 0.0484008789, -0.00109863281, 0, 1, 0, 1, 0, 0, 0, 0, -1)
}
t43["[Knife]"].Moon = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t20
}
t43["[Knife]"].Solar = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t24
}
t43["[Knife]"].Jade = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t23
}
t43["[Double-Barrel SG]"].Wraith = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Wraith.DB,
	CFrame = CFrame.new(-0.1, -0.056758523, 0.016998291, 1, 2.44929371e-16, -1.99520325e-23, -2.44929371e-16, 1, -1.62920685e-7, -1.99520294e-23, 1.62920685e-7, 1),
	BorderColor = t26
}
t43["[Revolver]"].Wraith = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Wraith.Rev,
	CFrame = CFrame.new(0.2, 0.4128, -0.0078, -0, 0, 1, 0, 1, 0, -1, 0, -0),
	BorderColor = t26
}
t43["[Knife]"].Wraith = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t26
}
t43["[Mask]"].Wraith = {
	Rarity = "Exclusive",
	BorderColor = t26
}
t43["[Vehicle]"].Wraith = {
	Rarity = "Exclusive",
	BorderColor = t26
}
t43["[Knife]"].PumpkinCat = {
	DisplayName = "Halloween25",
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t37
}
t43["[Revolver]"].PumpkinCat = {
	DisplayName = "Halloween25",
	Rarity = "Exclusive",
	TextureID = script.Meshes.PumpkinCat.Rev,
	CFrame = CFrame.new(0.2, 0.15, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t37
}
t43["[Double-Barrel SG]"].PumpkinCat = {
	DisplayName = "Halloween25",
	Rarity = "Exclusive",
	TextureID = script.Meshes.PumpkinCat.DB,
	CFrame = CFrame.new(0.2, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t37
}
t43["[RPG]"].PumpkinCat = {
	DisplayName = "Halloween25",
	Rarity = "Exclusive",
	TextureID = script.Meshes.PumpkinCat.RPG,
	CFrame = CFrame.new(-0.1, 0.3, 0.7, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherCFrame = CFrame.new(-0.1, 0, 0.5, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherMesh = script.Meshes.PumpkinCat.Explosion,
	BorderColor = t37
}
t43["[Vehicle]"].PumpkinCat = {
	DisplayName = "Halloween25",
	Rarity = "Exclusive",
	BorderColor = t37
}
t43["[Revolver]"].Paper = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Paper.Rev,
	CFrame = CFrame.new(0.2, 0.15, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t14
}
t43["[Double-Barrel SG]"].Paper = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Paper.DB,
	CFrame = CFrame.new(0.2, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t14
}
t43["[RPG]"].Paper = {
	Rarity = "Exclusive",
	ShootAnimation = 92090024228161,
	TextureID = script.Meshes.Paper.RPG,
	CFrame = CFrame.new(-0.1, 0.3, 0.7, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherCFrame = CFrame.new(-0.1, -0.1, 0.5, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherMesh = script.Meshes.Paper.Rocket,
	BorderColor = t14
}
t43["[Knife]"].Paper = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t14
}
t43["[Revolver]"].Block = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Block.Rev,
	CFrame = CFrame.new(-0.104034424, 0.0293453932, 0.0101318359, 1.50933559e-7, 8.94069672e-8, -1, 2.09807345e-11, 1, 8.94069672e-8, 1, 2.09894324e-11, 1.51058046e-7),
	BorderColor = t24
}
t43["[Double-Barrel SG]"].Block = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Block.DB,
	CFrame = CFrame.new(0.0315551758, 0.0530057549, 0.00366210938, -0.0000110949168, -1.62920685e-7, 1, 2.44929371e-16, 1, 1.62920685e-7, -1, 1.80783654e-12, -0.0000110949177),
	BorderColor = t24
}
t43["[TacticalShotgun]"].Block = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Block.Tact,
	CFrame = CFrame.new(-0.124694824, -0.0698990822, 0.0850219727, 1.51062673e-22, 7.29165436e-7, -1.00000143, 2.44929821e-16, 1.00000167, 1.29540945e-6, 1, -2.44929397e-16, -2.37417266e-23),
	BorderColor = t24
}
t43["[DrumGun]"].Block = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Block.Drum,
	CFrame = CFrame.new(0.156951904, 0.200253785, 0.0171508789, 1.50995803e-7, 7.54979013e-8, -1, -1.13998666e-14, 1, 7.54979013e-8, 1, -1.84916506e-23, 1.50995803e-7),
	BorderColor = t24
}
t43["[Rifle]"].Block = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Block.Rifle,
	CFrame = CFrame.new(0.169555664, 0.0486595631, -0.0192260742, -1.50995362e-7, -8.94069672e-8, 0.999997497, 9.23705556e-14, 0.999997497, 8.94069672e-8, -1, -1.04235454e-13, -1.50995859e-7),
	BorderColor = t24
}
t43["[AK47]"].Block = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Block.AK47,
	CFrame = CFrame.new(0.00985717773, 0.0976537466, -0.00799560547, -1.50996371e-7, -7.63684511e-8, 1.00000381, 1.02140518e-14, 1.00000381, 7.63684511e-8, -1, -2.15231987e-14, -1.50995803e-7),
	BorderColor = t24
}
t43["[SMG]"].Block = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Block.SMG,
	CFrame = CFrame.new(0.00442504883, 0.173258245, -0.00872802734, -1.24203946e-11, -1.63912773e-7, 1, 2.2774635e-10, 1, 1.63912773e-7, -1, -2.27745864e-10, 1.24203564e-11),
	BorderColor = t24
}
t43["[Knife]"].Block = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.419830322, -0.000917971134, 0.0198974609, -1.50997025e-7, 0.00275223562, -1, 4.15579432e-10, 1, 0.00275223562, 1, -4.72940846e-18, -1.50996996e-7),
	BorderColor = t24
}
t43["[Vehicle]"].Block = {
	DisplayName = "BlockBoat",
	Rarity = "Exclusive",
	BorderColor = t24
}
t43["[Double-Barrel SG]"].GingerBread = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Gingerbread.DB,
	CFrame = CFrame.new(0.0888671875, -0.0121414065, 0.0123901367, 1.99520309e-23, 1.62920685e-7, -1, 2.07710121e-16, 1, 1.62920699e-7, 1, -2.07710108e-16, -1.38882418e-23),
	BorderColor = t26
}
t43["[Revolver]"].GingerBread = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Gingerbread.Rev,
	CFrame = CFrame.new(-0.0711975098, -0.0356101692, -0.00689697266, -2.34649633e-10, -1.62918255e-7, 1.00000453, 2.56601855e-16, 1, 1.62923868e-7, -1.00000453, 1.95027642e-16, 2.34649633e-10),
	BorderColor = t26
}
t43["[TacticalShotgun]"].GingerBread = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Gingerbread.Tact,
	CFrame = CFrame.new(0.0204467773, 0.0533223748, 0.0176391602, -2.45869956e-7, -1.62920855e-7, 1.00000525, 1.88737914e-14, 1, 1.62921424e-7, -1.00000596, -5.86197757e-14, 2.45869956e-7),
	BorderColor = t26
}
t43["[RPG]"].GingerBread = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Gingerbread.RPG,
	CFrame = CFrame.new(0.00121307373, 0.261434197, -0.318969727, 1, 2.5768439e-12, -4.37113883e-8, 2.57684412e-12, 1, 6.29895225e-12, 4.37113883e-8, 6.29895225e-12, 1),
	BorderColor = t26,
	LauncherCFrame = CFrame.new(-0.0002, 0.45, -1.07, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	LauncherMesh = script.Meshes.Gingerbread.Launcher
}
t43["[Knife]"].GingerBread = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0.3, 0, 0, -0, 1, 0, 0, 0, -1, -1, -0, -0),
	BorderColor = t26
}
t43["[Revolver]"].Xmas25 = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Xmas25.Rev,
	CFrame = CFrame.new(0.7, 0.15, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t32
}
t43["[Double-Barrel SG]"].Xmas25 = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Xmas25.DB,
	CFrame = CFrame.new(-0.3, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t32
}
t43["[Knife]"].Xmas25 = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t32
}
t43["[RPG]"].Xmas25 = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Xmas25.RPG,
	CFrame = CFrame.new(-0.1, 0.3, 0.7, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherCFrame = CFrame.new(-0.1, 0.15, -0.5, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherMesh = script.Meshes.Xmas25.Rocket,
	BorderColor = t32
}
t43["[Revolver]"].Runic = {
	DisplayName = "Rune",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Runic.Rev,
	CFrame = CFrame.new(0.55, 0.15, -0.1, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t7
}
t43["[Knife]"].Runic = {
	Rarity = "Exclusive",
	DisplayName = "Rune",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t7
}
t43["[Revolver]"].Gift = {
	DisplayName = "Gift",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Gift.Rev,
	CFrame = CFrame.new(0.55, 0.15, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t32
}
t43["[Revolver]"]["67"] = {
	DisplayName = "67",
	Rarity = "Exclusive",
	TextureID = script.Meshes["67"].Rev,
	CFrame = CFrame.new(0.55, 0.15, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t13
}
t43["[Knife]"].Wither = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t20
}
t43["[Knife]"].Sakura = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.8, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t
}
t43["[Vehicle]"].Gati = {
	DisplayName = "Gati",
	Rarity = "Exclusive",
	BorderColor = t20
}
t43["[Revolver]"].Petal = {
	DisplayName = "Petal",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Petal.rev,
	CFrame = CFrame.new(-0.105384827, 0.208259106, 0.00799560547, 1, -5.87381323e-27, 0, -5.87381323e-27, 1, 0, 0, 0, 1),
	BorderColor = t21
}
t43["[Double-Barrel SG]"].Petal = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Petal.db,
	CFrame = CFrame.new(0.204410553, 0.268578529, 0.0223999023, -1.00000572, 2.90278896e-27, 0, -2.90275526e-27, 0.999988556, 0, 0, 0, -0.999994278),
	BorderColor = t21
}
t43["[Knife]"].Petal = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.599981308, 0.0271587372, -0.161071777, 0, 1, 0, -1, 0, 0, 0, 0, 1),
	BorderColor = t21
}
t43["[Revolver]"].Heartbreak = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Heartbreak.Rev,
	CFrame = CFrame.new(0.7, 0.15, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t
}
t43["[Double-Barrel SG]"].Heartbreak = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Heartbreak.DB,
	CFrame = CFrame.new(-0.3, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t
}
t43["[TacticalShotgun]"].Heartbreak = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Heartbreak.Tact,
	CFrame = CFrame.new(-0.3, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t
}
t43["[AK47]"].Heartbreak = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Heartbreak.AK,
	CFrame = CFrame.new(-0.3, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t
}
t43["[Knife]"].Heartbreak = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t
}
t43["[Vehicle]"].Heartbreak = {
	Rarity = "Exclusive",
	BorderColor = t
}
t43["[RPG]"].Heartbreak = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Heartbreak.RPG,
	CFrame = CFrame.new(-0.1, 0.3, 0.7, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherCFrame = CFrame.new(-0.1, 0.15, -0.5, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherMesh = script.Meshes.Heartbreak.Rocket,
	BorderColor = t
}
t43["[Double-Barrel SG]"].Lovely = {
	DisplayName = "Lovely",
	Rarity = "Exclusive",
	TextureID = script.Meshes.Lovely.db,
	CFrame = CFrame.new(0.3054, 0.25, 0.008, -1, 0, -0, 0, 1, 0, 0, 0, -1),
	BorderColor = t
}
t43["[Revolver]"].Lovely = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Lovely.rev,
	CFrame = CFrame.new(0.12, 0.2083, 0.008, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t
}
t43["[TacticalShotgun]"].Lovely = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Lovely.tact,
	CFrame = CFrame.new(-0.59, 0.3608, 0.008, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t
}
t43["[AK47]"].Lovely = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Lovely.ak,
	CFrame = CFrame.new(0.4, 0.3608, 0.008, -1, 0, -0, 0, 1, -0, 0, 0, -1),
	BorderColor = t
}
t43["[Rifle]"].Lovely = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Lovely.rifle,
	CFrame = CFrame.new(0.05, 0.25, 0.008, -1, 0, -0, 0, 1, -0, 0, 0, -1),
	BorderColor = t
}
t43["[Shotgun]"].Lovely = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Lovely.shotgun,
	CFrame = CFrame.new(0, 0, -0.1, -0, 0, -1, 0, 1, -0, 1, 0, -0),
	BorderColor = t
}
t43["[DrumGun]"].Lovely = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Lovely.drum,
	CFrame = CFrame.new(0.1, 0.3, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t
}
t43["[RPG]"].Lovely = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Lovely.rpg,
	CFrame = CFrame.new(-0.3, 0.2, 1.8, -0, 0, -1, 0, 1, -0, 1, 0, -0),
	LauncherCFrame = CFrame.new(-0.3, 0.2, 0.1, 0.999848, 0, 0.017452, 0, 1, 0, -0.017452, 0, 0.999848),
	LauncherMesh = script.Meshes.Lovely.launcher,
	BorderColor = t
}
t43["[Knife]"].Lovely = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.8, 0, 0, -1, 0, 0, -0, -0.984808, -0.173648, -0, -0.173648, 0.984808),
	BorderColor = t
}
t43["[Vehicle]"].Grand = {
	Rarity = "Exclusive",
	BorderColor = t
}
t43["[Vehicle]"]["Balloon Kart"] = {
	Rarity = "Exclusive",
	BorderColor = t5
}
t43["[Revolver]"].Balloon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Balloon.Revolver,
	CFrame = CFrame.new(0.283187866, 0.175641909, 0.000518798828, -8.74227766e-8, 0, 1, 0, 1, 0, -1, 0, -8.74227766e-8),
	BorderColor = t5
}
t43["[Double-Barrel SG]"].Balloon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Balloon["Double-Barrel"],
	CFrame = CFrame.new(0.0331878662, -0.0243580937, 0.000518798828, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t5
}
t43["[Flamethrower]"].Balloon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Balloon.Flamethrower,
	CFrame = CFrame.new(-0.216812134, 0.475641906, 0.000518798828, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t5
}
t43["[Deagle]"].Balloon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Balloon.Deagle,
	CFrame = CFrame.new(0.0331878662, -0.0243580937, 0.000518798828, -1, 0, 4.37113883e-8, 0, 1, 0, -4.37113883e-8, 0, -1),
	BorderColor = t5
}
t43["[DrumGun]"].Balloon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Balloon.DrumGun,
	CFrame = CFrame.new(0.228030384, 0.234426305, 0.075378418, -4.37113883e-8, 0, 1, 0.453990519, 0.891006529, 1.98445562e-8, -0.891006529, 0.453990519, -3.89471317e-8),
	BorderColor = t5
}
t43["[Rifle]"].Balloon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Balloon.Rifle,
	CFrame = CFrame.new(0.228030384, -0.365573704, 0.075378418, -4.37113883e-8, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-8),
	BorderColor = t5
}
t43["[Flintlock]"].Balloon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Balloon.Flintlock,
	CFrame = CFrame.new(-0.0219696164, 0.284426302, 0.275378406, -1, 0, -8.74227766e-8, 0, 1, 0, 8.74227766e-8, 0, -1),
	BorderColor = t5
}
t43["[AK47]"].Balloon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Balloon.AK47,
	CFrame = CFrame.new(0, -0.0165419579, 0, -0.087155737, 8.74227766e-8, -0.99619472, 5.11644487e-8, 1, 8.32804119e-8, 0.99619472, -4.37113883e-8, -0.087155737),
	BorderColor = t5
}
t43["[Shotgun]"].Balloon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Balloon.Shotgun,
	CFrame = CFrame.new(0.278030396, -0.26557368, -0.174621582, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t5
}
t43["[TacticalShotgun]"].Balloon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Balloon.TacticalShotgun,
	CFrame = CFrame.new(0.378030419, 0.184426308, 0.075378418, -4.37113883e-8, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-8),
	BorderColor = t5
}
t43["[RPG]"].Balloon = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Balloon.RPG,
	CFrame = CFrame.new(-0.198786929, 0.261434197, 1.43103027, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t5,
	LauncherCFrame = CFrame.new(-0.200209811, 0.300125539, 0.46232295, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	LauncherMesh = script.Meshes.Balloon.Launcher
}
t43["[Knife]"].Balloon = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(-0.706951499, 0.109667972, -0.00289916992, 4.37113883e-8, 1, 0, 1, -4.37113883e-8, -0, 0, 0, -1),
	BorderColor = t5
}
t43["[Deagle]"].Gold = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Gold.Deagle,
	CFrame = CFrame.new(0, 0, -0.85, 8.74227766e-8, 0, -1, 0, 1, 0, 1, 0, 8.74227766e-8),
	BorderColor = t24
}
t43["[Deagle]"].Sakura = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Sakura.Deagle,
	CFrame = CFrame.new(0, 0, 0, 8.74227766e-8, 0, -1, 0, 1, 0, 1, 0, 8.74227766e-8),
	BorderColor = t
}
t43["[Knife]"].DualCryptos = {
	Rarity = "Exclusive",
	BorderColor = t15,
	CFrame = CFrame.new(0.114868164, 0.13845396, -0.0218524933, 3.97903038e-13, 0.999998093, 4.0978243e-8, -9.94754816e-14, -7.07802172e-8, -0.999992371, -0.999998569, -3.97903607e-13, -9.94758068e-14)
}
t43["[Vehicle]"].Kawaii = {
	Rarity = "Exclusive",
	BorderColor = t
}
t43["[Double-Barrel SG]"].Kawaii = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Kawaii.db,
	CFrame = CFrame.new(0.0331878662, -0.0243580937, 0.000518798828, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	BorderColor = t
}
t43["[Deagle]"].Kawaii = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Kawaii.deagle,
	CFrame = CFrame.new(-0.16942215, 0.000852178782, 0.0669250488, -1, 0, 4.37113883e-8, 0, 1, 0, -4.37113883e-8, 0, -1),
	BorderColor = t
}
t43["[SilencerAR]"].Kawaii = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.Kawaii.ar,
	CFrame = CFrame.new(-0.25, -0.116541982, 0.100000001, 0, 0, -1, -4.37113883e-8, 1, -0, 1, 4.37113883e-8, 0),
	BorderColor = t
}
t43["[Knife]"].Kawaii = {
	Rarity = "Exclusive",
	BorderColor = t,
	CFrame = CFrame.new(-0.285131842, 0.0384539589, -0.0218524933, 8.74227766e-8, -1, -0, 0, 0, -1, 1, 8.74227766e-8, 0)
}
t43["[Vehicle]"].SpiderLily = {
	Rarity = "Exclusive",
	BorderColor = t26
}
t43["[Deagle]"].SpiderLily = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.SpiderLily.deagle,
	CFrame = CFrame.new(0, 0, 0, 0.999999464, 0, 0, 0, 0.99999994, 0, 1.04308128e-7, 0, 0.999999642),
	BorderColor = t26
}
t43["[Knife]"].SpiderLily = {
	Rarity = "Exclusive",
	BorderColor = t26,
	CFrame = CFrame.new(-0.599975586, 0.014465332, 0.00958251953, 0, 1, 0, 0, 0, -1, -1, 0, 0)
}
t43["[Revolver]"].World = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.World.Rev,
	CFrame = CFrame.new(0.3, 0.15, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	BorderColor = t23
}
t43["[Double-Barrel SG]"].World = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.World.DB,
	CFrame = CFrame.new(-0.3, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),
	BorderColor = t23
}
t43["[Deagle]"].World = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.World.Deagle,
	CFrame = CFrame.new(-0.05, 0, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0),
	BorderColor = t23
}
t43["[Knife]"].World = {
	Rarity = "Exclusive",
	CFrame = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, -1),
	BorderColor = t23
}
t43["[RPG]"].World = {
	Rarity = "Exclusive",
	TextureID = script.Meshes.World.RPG,
	CFrame = CFrame.new(-0.35, 0.3, 0.7, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherCFrame = CFrame.new(-0.3, 0.29, -0.4, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	LauncherMesh = script.Meshes.World.Rocket,
	BorderColor = t23
}

return t43
