do
    local _g = getinfo or debug.getinfo
    local _d = false
    local _h = {}
    local _x, _y

    setthreadidentity(2)
    for i, v in getgc(true) do
        if typeof(v) == "table" then
            local a = rawget(v, "Detected")
            local b = rawget(v, "Kill")

            if typeof(a) == "function" and not _x then
                _x = a
                local _o; _o = hookfunction(_x, function(c, f, n)
                    if c ~= "_" then
                        if _d then warn(("Adonis AntiCheat flagged\nMethod: %s\nInfo: %s"):format(tostring(c), tostring(f))) end
                    end
                    return true
                end)
                table.insert(_h, _x)
            end

            if rawget(v, "Variables") and rawget(v, "Process") and typeof(b) == "function" and not _y then
                _y = b
                local _o; _o = hookfunction(_y, function(f)
                    if _d then warn(("Adonis AntiCheat tried to kill (fallback): %s"):format(tostring(f))) end
                end)
                table.insert(_h, _y)
            end
        end
    end

    local _o; _o = hookfunction(getrenv().debug.info, newcclosure(function(...)
        local a, f = ...
        if _x and a == _x then
            if _d then warn("azov | adonis bypassed") end
            return coroutine.yield(coroutine.running())
        end
        return _o(...)
    end))

    setthreadidentity(7)
end

do
    local _HttpService = game:GetService("HttpService")
    local _Players = game:GetService("Players")

    if not _G.AzovScriptInstances then
        _G.AzovScriptInstances = {}
    end

    local currentInstanceId = _HttpService:GenerateGUID(false)
    local _lp = _Players.LocalPlayer

    _G.AzovScriptInstances[currentInstanceId] = {
        instanceId = currentInstanceId,
        startTime  = os.time(),
        playerName = _lp and _lp.Name or "Unknown",
        userId     = _lp and _lp.UserId or 0,
    }

    local function _cleanup()
        if shared.azov and shared.azov.connections then
            for _, conn in pairs(shared.azov.connections) do
                if conn and conn.Disconnect then pcall(conn.Disconnect, conn) end
            end
        end
        _G.AzovScriptInstances[currentInstanceId] = nil
    end
    _G.AzovScriptInstances[currentInstanceId].cleanup = _cleanup

    local toRemove = {}
    for id, data in pairs(_G.AzovScriptInstances) do
        if id ~= currentInstanceId then
            if type(data.cleanup) == "function" then pcall(data.cleanup) end
            table.insert(toRemove, id)
        end
    end
    for _, id in ipairs(toRemove) do _G.AzovScriptInstances[id] = nil end

    _Players.PlayerRemoving:Connect(function(p)
        if p == _lp then
            for _, data in pairs(_G.AzovScriptInstances) do
                if type(data.cleanup) == "function" then pcall(data.cleanup) end
            end
            _G.AzovScriptInstances = {}
        end
    end)
end

task.spawn(function()
    task.wait(2)
    local ok, err = pcall(function()
        local _Http  = game:GetService("HttpService")
        local _Mkt   = game:GetService("MarketplaceService")
        local _lp    = game:GetService("Players").LocalPlayer
        if not _lp then return end

        local gOk, gInfo = pcall(function() return _Mkt:GetProductInfo(game.PlaceId) end)
        local gameName    = gOk and gInfo.Name or "Unknown"
        local gameCreator = gOk and gInfo.Creator.Name or "Unknown"

        local hwid = "Unknown"
        pcall(function() hwid = game:GetService("RbxAnalyticsService"):GetClientId() end)
        if hwid == "" then hwid = _Http:GenerateGUID(false) end

        local embed = {
            title  = "execution log lil nigga",
            color  = 0x00ff00,
            fields = {
                { name = "Player Information",
                  value = string.format("**Username:** %s\n**Display Name:** %s\n**User ID:** %d",
                      _lp.Name, _lp.DisplayName or _lp.Name, _lp.UserId),
                  inline = false },
                { name = "Game Information",
                  value = string.format("**Game:** %s\n**Creator:** %s\n**Place ID:** %d",
                      gameName, gameCreator, game.PlaceId),
                  inline = false },
                { name = "System Information",
                  value = string.format("**HWID:** `%s`", hwid),
                  inline = false },
                { name = "Timestamp",
                  value = os.date("%Y-%m-%d %H:%M:%S UTC", os.time()),
                  inline = false },
            },
            footer    = { text = "Azov Logs" },
            timestamp = os.date("!%Y-%m-%dT%H:%M:%S.000Z"),
        }

        local requestFunc = syn and syn.request or http_request or request
        if requestFunc then
            requestFunc({
                Url     = "https://discord.com/api/webhooks/1479068372623949894/pOqNbYDDc3--i30WAqSOK1MgDrdAGTfwtaeC_WBn9_fmiiAdUB2KafhHY5orNL4ZAJ4U",
                Method  = "POST",
                Headers = { ["Content-Type"] = "application/json" },
                Body    = _Http:JSONEncode({ embeds = { embed } }),
            })
        end
    end)
    if not ok then warn("azov webhook error: " .. tostring(err)) end
end)

    local HttpService = game:GetService("HttpService")
    local Players = game:GetService("Players")
    local Workspace = game.Workspace
    local RunService = game:GetService("RunService")
    local TweenService = game:GetService("TweenService")
    local UserInputService = game:GetService("UserInputService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Self = Players.LocalPlayer
    local Mouse = Self:GetMouse()
    local Camera = workspace.CurrentCamera
    local MainEvent = ReplicatedStorage:WaitForChild("MainEvent")

    -- Das Hood Infinite Range Version
    local oldNamecall
    if typeof(hookmetamethod) == "function" then
        oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
            local method = getnamecallmethod()
            local args = {...}

            if self == MainEvent and method == "FireServer" and args[1] == "ShootGun" then
                local irCfg = shared.azov["rage"]["infinite range"]
                if irCfg and irCfg["enabled"] and irCfg["method"] == "hooks" then
                    if args[6] and type(args[6]) == "number" then
                        args[6] = 10 
                    end
                    if args[3] and args[5] then
                        local direction = (args[3] - args[5]).Unit
                        args[3] = args[5] + (direction * 10)
                    end
                    return oldNamecall(self, unpack(args))
                end
            end

            if args[1] == "CHECKER_4" then
                local irCfg = shared.azov["rage"]["infinite range"]
                if irCfg and irCfg["enabled"] and irCfg["method"] == "hooks" then
                    return nil
                end
            end

            return oldNamecall(self, unpack(args))
        end)
    else
        task.spawn(function()
            while task.wait(5) do
                local irCfg = shared.azov["rage"]["infinite range"]
                if irCfg and irCfg["enabled"] and irCfg["method"] == "hooks" then
                    warn("your executor doesnt support hook. please use the hookless version.")
                end
            end
        end)
    end

    local AppliedSkins = {};
    local KnifeData = {};
    local ToolRegistry = {};
    local SkinAssets = ReplicatedStorage:FindFirstChild("SkinAssets")
    local SkinModules = ReplicatedStorage:FindFirstChild("SkinModules")
    local SkinData = nil;

    local function IsKnifeSkin(name)
        local n = name:lower():gsub(" ", "");
        return n == "goldenagetanto" or n == "gpo-knife" or n == "gpo-knifeprestige" or n == "heaven"
            or n == "lovekukri" or n == "purpledagger" or n == "bluedagger" or n == "greendagger" or n == "reddagger";
    end;

    local function CleanKnife(Tool)
        local data = KnifeData[Tool];
        if data then
            if data.track then
                data.track:Stop();
                data.track:Destroy();
                data.track = nil;
            end;
            if data.welds then
                for _, w in next, data.welds do
                    if w then w:Destroy() end;
                end;
            end;
            if data.sounds then
                for _, s in next, data.sounds do
                    if s and s.Parent then s:Destroy() end;
                end;
            end;
        end;
        local mesh = Tool:FindFirstChild("Default");
        if mesh then
            for _, v in next, mesh:GetChildren() do
                if v.Name == "Handle.R" or v:IsA("Model") or (v:IsA("BasePart") and v.Name ~= "Default") then
                    v:Destroy();
                end;
            end;
            mesh.Transparency = 0;
        end;
        KnifeData[Tool] = nil;
    end;

    local function ApplyKnife(Character, Tool, SkinName)
        if not IsKnifeSkin(SkinName) then return end;
        if Tool.Parent ~= Character then return end;
        local Humanoid = Character:FindFirstChild("Humanoid");
        local rhand = Character:FindFirstChild("RightHand");
        if not Humanoid or not rhand then return end;

        local existing = KnifeData[Tool];
        if existing and existing.welds and #existing.welds > 0 then
            local handleR = Tool:FindFirstChild("Default") and Tool:FindFirstChild("Default"):FindFirstChild("Handle.R");
            if handleR and handleR.Parent then
                local m6d = handleR:FindFirstChildOfClass("Motor6D");
                if m6d then
                    m6d.Part0 = rhand;
                end;
                local Animator = Humanoid:FindFirstChildOfClass("Animator");
                if Animator then
                    local n = SkinName:lower():gsub(" ", "");
                    local animId, sndId;
                    if n == "goldenagetanto" then animId = "rbxassetid://13473404819"; sndId = "rbxassetid://5917819099";
                    elseif n == "gpo-knife" or n == "gpo-knifeprestige" then animId = "rbxassetid://14014278925"; sndId = "rbxassetid://4604390759";
                    elseif n == "heaven" then animId = "rbxassetid://14500266726"; sndId = "rbxassetid://14489860007";
                    elseif n == "purpledagger" then animId = "rbxassetid://17824999722"; sndId = "rbxassetid://17822743153";
                    elseif n == "bluedagger" then animId = "rbxassetid://17824995184"; sndId = "rbxassetid://17822737046";
                    elseif n == "greendagger" then animId = "rbxassetid://17825004320"; sndId = "rbxassetid://17822741762";
                    elseif n == "reddagger" then animId = "rbxassetid://17825008844"; sndId = "rbxassetid://17822952417";
                    end;
                    if animId then
                        if existing.track then
                            existing.track:Stop();
                            existing.track:Destroy();
                            existing.track = nil;
                        end;
                        local anim = Instance.new("Animation");
                        anim.AnimationId = animId;
                        local track = Animator:LoadAnimation(anim);
                        track.Looped = false;
                        track:Play();
                        existing.track = track;
                        anim:Destroy();
                        track.Ended:Once(function()
                            if existing.track == track then existing.track = nil end;
                            track:Destroy();
                        end);
                    end;
                    if sndId then
                        local snd = Instance.new("Sound");
                        snd.SoundId = sndId;
                        snd.Parent = Workspace;
                        snd:Play();
                        table.insert(existing.sounds, snd);
                        snd.Ended:Connect(function()
                            snd:Destroy();
                        end);
                    end;
                end;
                return;
            end;
        end;

        CleanKnife(Tool);
        KnifeData[Tool] = { track = nil, welds = {}, sounds = {} };
        local data = KnifeData[Tool];
        local mesh = Tool:FindFirstChild("Default");
        if not mesh then return end;
        mesh.Transparency = 1;
        local knives = SkinModules and SkinModules:FindFirstChild("Knives");
        if not knives then return end;
        local skinmodel = knives:FindFirstChild(SkinName);
        if not skinmodel then return end;
        local clone = skinmodel:Clone();
        clone.Name = SkinName;
        local handr = Instance.new("Part");
        handr.Name = "Handle.R";
        handr.Transparency = 1;
        handr.CanCollide = false;
        handr.Anchored = false;
        handr.Size = Vector3.new(0.001, 0.001, 0.001);
        handr.Massless = true;
        handr.Parent = mesh;
        local m6d = Instance.new("Motor6D");
        m6d.Name = "Handle.R";
        m6d.Part0 = rhand;
        m6d.Part1 = handr;
        m6d.Parent = handr;

        local offset, animId, sndId;
        local n = SkinName:lower():gsub(" ", "");

        if n == "goldenagetanto" then
            offset = CFrame.new(0, -0.20, -1.2) * CFrame.Angles(math.rad(90), math.rad(263.7), math.rad(180));
            animId = "rbxassetid://13473404819";
            sndId = "rbxassetid://5917819099";
        elseif n == "gpo-knife" or n == "gpo-knifeprestige" then
            offset = CFrame.new(0, -0.32, -1.07) * CFrame.Angles(math.rad(90), math.rad(-97.4), math.rad(90));
            animId = "rbxassetid://14014278925";
            sndId = "rbxassetid://4604390759";
        elseif n == "heaven" then
            offset = CFrame.new(-0.02, -0.82, 0.20) * CFrame.Angles(math.rad(64.42), math.rad(3.79), math.rad(0));
            animId = "rbxassetid://14500266726";
            sndId = "rbxassetid://14489860007";
        elseif n == "lovekukri" then
            offset = CFrame.new(-0.14, 0.14, -1.62) * CFrame.Angles(math.rad(-90), math.rad(180), math.rad(-4.97));
        elseif n == "purpledagger" then
            offset = CFrame.new(-0.13, -0.24, -1.80) * CFrame.Angles(math.rad(89.05), math.rad(96.63), math.rad(180));
            animId = "rbxassetid://17824999722";
            sndId = "rbxassetid://17822743153";
        elseif n == "bluedagger" then
            offset = CFrame.new(-0.13, -0.24, -1.80) * CFrame.Angles(math.rad(89.05), math.rad(96.63), math.rad(180));
            animId = "rbxassetid://17824995184";
            sndId = "rbxassetid://17822737046";
        elseif n == "greendagger" then
            offset = CFrame.new(-0.13, -0.24, -1.07) * CFrame.Angles(math.rad(89.05), math.rad(96.63), math.rad(180));
            animId = "rbxassetid://17825004320";
            sndId = "rbxassetid://17822741762";
        elseif n == "reddagger" then
            offset = CFrame.new(-0.13, -0.24, -1.07) * CFrame.Angles(math.rad(89.05), math.rad(96.63), math.rad(180));
            animId = "rbxassetid://17825008844";
            sndId = "rbxassetid://17822952417";
        end;

        if not offset then return end;

        if clone:IsA("Model") then
            if not clone.PrimaryPart then
                for _, c in next, clone:GetChildren() do
                    if c:IsA("BasePart") then
                        clone.PrimaryPart = c;
                        break;
                    end;
                end;
            end;
            if clone.PrimaryPart then
                for _, p in next, clone:GetDescendants() do
                    if p:IsA("BasePart") then
                        p.CanCollide = false;
                        p.Massless = true;
                        p.Anchored = false;
                        local w = Instance.new("Weld");
                        w.Part0 = handr;
                        w.Part1 = p;
                        w.C0 = offset;
                        w.C1 = p.CFrame:ToObjectSpace(clone.PrimaryPart.CFrame);
                        w.Parent = p;
                        table.insert(data.welds, w);
                    end;
                end;
            end;
            clone.Parent = mesh;
        elseif clone:IsA("BasePart") then
            clone.CanCollide = false;
            clone.Massless = true;
            clone.Anchored = false;
            clone.Parent = mesh;
            local w = Instance.new("Weld");
            w.Part0 = handr;
            w.Part1 = clone;
            w.C0 = offset;
            w.Parent = clone;
            table.insert(data.welds, w);
        end;

        local Animator = Humanoid:FindFirstChildOfClass("Animator");
        if not Animator then
            Animator = Instance.new("Animator");
            Animator.Parent = Humanoid;
        end;
        if animId then
            local anim = Instance.new("Animation");
            anim.AnimationId = animId;
            local track = Animator:LoadAnimation(anim);
            track.Looped = false;
            track:Play();
            data.track = track;
            anim:Destroy();
            track.Ended:Once(function()
                if data.track == track then
                    data.track = nil;
                end;
                track:Destroy();
            end);
        end;
        if sndId then
            local snd = Instance.new("Sound");
            snd.SoundId = sndId;
            snd.Parent = Workspace;
            snd:Play();
            table.insert(data.sounds, snd);
            snd.Ended:Connect(function()
                snd:Destroy();
            end);
        end;
    end;

    local function LoadSkinData()
        if SkinData then return SkinData end;
        if SkinModules and SkinModules:IsA("ModuleScript") then
            local success, result = pcall(require, SkinModules);
            if success then SkinData = result end;
        end;
        return SkinData;
    end;

    local function GetSkinInfo(weaponName, skinName)
        local data = LoadSkinData();
        if not data then return nil end;
        local weaponSkins = data[weaponName];
        if not weaponSkins then
            local bracketName = "[" .. weaponName:gsub("%[", ""):gsub("%]", "") .. "]";
            weaponSkins = data[bracketName];
        end;
        if not weaponSkins then return nil end;
        local info = weaponSkins[skinName];
        if not info then
            info = weaponSkins[skinName:gsub("-", " ")];
        end;
        if not info then
            info = weaponSkins[skinName:gsub("-", "")];
        end;
        return info;
    end;

    local function FindSourceMesh(skinName, meshRef, isKnife)
        if not SkinModules then return nil end;
        if isKnife then
            local cleanSkin = skinName:lower():gsub(" ", "");
            local KnivesFolder = SkinModules:FindFirstChild("Knives");
            if KnivesFolder then
                for _, child in next, KnivesFolder:GetChildren() do
                    if child:IsA("MeshPart") then
                        local cleanName = child.Name:lower():gsub(" ", "");
                        if child.Name == skinName or cleanName == cleanSkin then
                            return child;
                        end;
                    elseif child:IsA("Folder") or child:IsA("Model") then
                        local cleanName = child.Name:lower():gsub(" ", "");
                        if child.Name == skinName or cleanName == cleanSkin then
                            for _, sub in next, child:GetChildren() do
                                if sub:IsA("MeshPart") then
                                    return sub;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
            if SkinAssets then
                local KnifeFolder = SkinAssets:FindFirstChild("KnifeMeshes") or SkinAssets:FindFirstChild("Knives");
                if KnifeFolder then
                    for _, child in next, KnifeFolder:GetChildren() do
                        if child:IsA("MeshPart") then
                            local cleanName = child.Name:lower():gsub(" ", "");
                            if child.Name == skinName or cleanName == cleanSkin then
                                return child;
                            end;
                        elseif child:IsA("Folder") or child:IsA("Model") then
                            local cleanName = child.Name:lower():gsub(" ", "");
                            if child.Name == skinName or cleanName == cleanSkin then
                                for _, sub in next, child:GetChildren() do
                                    if sub:IsA("MeshPart") then
                                        return sub;
                                    end;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
            return nil;
        end;
        local MeshesFolder = SkinModules:FindFirstChild("Meshes");
        if not MeshesFolder then return nil end;
        local folderNames = { skinName, skinName:gsub(" ", ""), skinName:gsub(" ", "_") };
        for _, folderName in next, folderNames do
            local skinFolder = MeshesFolder:FindFirstChild(folderName);
            if skinFolder then
                if meshRef then
                    for _, child in next, skinFolder:GetChildren() do
                        if child:IsA("MeshPart") then
                            local cleanChild = child.Name:lower():gsub(" ", ""):gsub("-", "");
                            local cleanRef = meshRef:lower():gsub(" ", ""):gsub("-", "");
                            if child.Name == meshRef or cleanChild == cleanRef then
                                return child;
                            end;
                        end;
                    end;
                end;
                for _, child in next, skinFolder:GetChildren() do
                    if child:IsA("MeshPart") then
                        return child;
                    end;
                end;
            end;
        end;
        if SkinAssets then
            local GunMeshes = SkinAssets:FindFirstChild("GunMeshes");
            if GunMeshes then
                for _, folderName in next, folderNames do
                    local skinFolder = GunMeshes:FindFirstChild(folderName);
                    if skinFolder then
                        for _, child in next, skinFolder:GetChildren() do
                            if child:IsA("MeshPart") then
                                return child;
                            end;
                        end;
                    end;
                end;
            end;
        end;
        return nil;
    end;

    local function GetShootSound(weaponName, skinName)
        if not SkinAssets then return nil end;
        local GunShootSounds = SkinAssets:FindFirstChild("GunShootSounds");
        if not GunShootSounds then return nil end;
        local WeaponFolder = GunShootSounds:FindFirstChild(weaponName);
        if not WeaponFolder then return nil end;
        local SoundValue = WeaponFolder:FindFirstChild(skinName);
        if SoundValue and SoundValue:IsA("StringValue") then
            return SoundValue.Value;
        end;
        return nil;
    end;

    local function RemoveSkinFromTool(Tool)
        if not Tool or not AppliedSkins[Tool] then return end;
        CleanKnife(Tool);
        local original = AppliedSkins[Tool];
        if original.Connections then
            for _, connection in next, original.Connections do
                if connection and connection.Connected then
                    connection:Disconnect();
                end;
            end;
        end;
        for _, child in next, original.ClonedChildren or {} do
            if child and child.Parent then
                child:Destroy();
            end;
        end;
        if original.Default and original.Default.Parent then
            for _, child in next, original.Default:GetChildren() do
                if child.Name == "\0" then
                    child:Destroy();
                end;
            end;
            original.Default.Transparency = original.OriginalTransparency or 0;
            original.Default.TextureID = original.OriginalTextureID or "";
        end;
        if original.ShootSound and original.OriginalShootSoundId then
            original.ShootSound.SoundId = original.OriginalShootSoundId;
        end;
        local Handle = Tool:FindFirstChild("Handle");
        if Handle then
            Handle:SetAttribute("SkinName", original.OriginalSkinName or "");
        end;
        AppliedSkins[Tool] = nil;
    end;

    local function ApplySkinToTool(Tool, SkinName)
        if not Tool then return end;
        if AppliedSkins[Tool] and AppliedSkins[Tool].SkinName == SkinName then return end;
        local Handle = Tool:FindFirstChild("Handle");
        if not Handle then return end;
        local default = Tool:FindFirstChild("Default");
        if not default or not default:IsA("MeshPart") then
            default = Handle:FindFirstChildOfClass("MeshPart");
            if not default then
                for _, child in next, Tool:GetDescendants() do
                    if child:IsA("MeshPart") then
                        default = child;
                        break;
                    end;
                end;
            end;
        end;
        if not default then return end;
        local ShootSound = nil;
        for _, child in next, Tool:GetDescendants() do
            if child:IsA("Sound") and (child.Name == "Shoot" or child.Name == "ShootSound") then
                ShootSound = child;
                break;
            end;
        end;
        if AppliedSkins[Tool] then
            RemoveSkinFromTool(Tool);
        end;
        AppliedSkins[Tool] = {
            SkinName = SkinName,
            OriginalTextureID = default.TextureID,
            OriginalTransparency = default.Transparency,
            OriginalSkinName = Handle:GetAttribute("SkinName") or "",
            Default = default,
            ShootSound = ShootSound,
            OriginalShootSoundId = ShootSound and ShootSound.SoundId or nil,
            ClonedChildren = {},
            Connections = {},
        };
        Handle:SetAttribute("SkinName", SkinName);
        local attrConn = Handle:GetAttributeChangedSignal("SkinName"):Connect(function()
            if Handle:GetAttribute("SkinName") ~= SkinName then
                Handle:SetAttribute("SkinName", SkinName);
            end;
        end);
        table.insert(AppliedSkins[Tool].Connections, attrConn);
        local isKnife = Tool.Name:lower():find("knife") ~= nil or Tool.Name == "[Knife]";
        local weaponName = Tool.Name:lower():sub(2, -2);
        local skinInfo = GetSkinInfo(Tool.Name, SkinName);
        local existingFake = default:FindFirstChildOfClass("MeshPart");
        if existingFake then
            existingFake:Destroy();
        end;
        local mesh = nil;
        if isKnife then
            mesh = FindSourceMesh(SkinName, nil, true);
        else
            if SkinModules then
                local MeshesFolder = SkinModules:FindFirstChild("Meshes");
                if MeshesFolder then
                    local skinFolder = MeshesFolder:FindFirstChild(SkinName)
                        or MeshesFolder:FindFirstChild(SkinName:gsub(" ", ""))
                        or MeshesFolder:FindFirstChild(SkinName:gsub(" ", "_"))
                        or MeshesFolder:FindFirstChild(SkinName:gsub("-", " "))
                        or MeshesFolder:FindFirstChild(SkinName:gsub("-", ""));
                    if skinFolder then
                        if skinFolder:IsA("MeshPart") then
                            mesh = skinFolder;
                        else
                            mesh = skinFolder:GetChildren();
                        end;
                    end;
                end;
                if not mesh then
                    local GunModels = SkinModules:FindFirstChild("GunModels");
                    if GunModels then
                        local model = GunModels:FindFirstChild(SkinName)
                        or GunModels:FindFirstChild("[" .. SkinName .. "]")
                        or GunModels:FindFirstChild(SkinName:gsub("-", " "))
                        or GunModels:FindFirstChild(SkinName:gsub("-", ""));
                        if model then
                            if model:IsA("MeshPart") then
                                mesh = model;
                            elseif model:IsA("Model") then
                                mesh = model:FindFirstChildOfClass("MeshPart");
                            end;
                        end;
                    end;
                end;
            end;
        end;
        if mesh then
            local newMesh = nil;
            if typeof(mesh) == "Instance" and mesh:IsA("MeshPart") then
                newMesh = mesh;
            elseif type(mesh) == "table" then
                for _, child in next, mesh do
                    if typeof(child) == "Instance" and child:IsA("MeshPart") then
                        local lowered = child.Name:lower();
                        if lowered:find("rpg") and weaponName == "rpg" then
                            newMesh = child; break;
                        elseif lowered:find("aug") and weaponName == "aug" then
                            newMesh = child; break;
                        elseif lowered:find("tac") and weaponName == "tacticalshotgun" then
                            newMesh = child; break;
                        elseif lowered:find("rev") and weaponName == "revolver" then
                            newMesh = child; break;
                        elseif (lowered:find("db") or lowered:find("double")) and (weaponName == "double-barrel sg" or weaponName == "double-barrelsg") then
                            newMesh = child; break;
                        elseif lowered:find("knife") and isKnife then
                            newMesh = child; break;
                        elseif lowered:find("rifle") and weaponName == "rifle" then
                            newMesh = child; break;
                        elseif lowered:find("flame") and weaponName == "flamethrower" then
                            newMesh = child; break;
                        end;
                    end;
                end;
            end;
            if newMesh and not isKnife then
                local newFake = newMesh:Clone();
                newFake.Anchored = false;
                newFake.CanCollide = false;
                newFake.CFrame = default.CFrame;
                local skinCFrame = (skinInfo and skinInfo.CFrame and typeof(skinInfo.CFrame) == "CFrame") and skinInfo.CFrame or CFrame.new();
                local weld = Instance.new("Weld");
                weld.Part0 = newFake;
                weld.Part1 = default;
                weld.C0 = skinCFrame:Inverse();
                weld.Name = "\0";
                weld.Parent = newFake;
                newFake.Name = "\0";
                newFake.Parent = Tool;
                default.Transparency = 1;
            end;
        else
            if skinInfo then
                local textureValue = skinInfo.TextureID;
                if textureValue then
                    if typeof(textureValue) == "Instance" and textureValue:IsA("MeshPart") then
                        local clone = textureValue:Clone();
                        clone.Anchored = false;
                        clone.CanCollide = false;
                        clone.CFrame = default.CFrame;
                        clone.Name = "\0";
                        clone.Parent = Tool;
                        local skinCFrame = (skinInfo.CFrame and typeof(skinInfo.CFrame) == "CFrame") and skinInfo.CFrame or CFrame.new();
                        local weld = Instance.new("Weld");
                        weld.Part0 = clone;
                        weld.Part1 = default;
                        weld.C0 = skinCFrame:Inverse();
                        weld.Name = "\0";
                        weld.Parent = clone;
                        default.Transparency = 1;
                    elseif type(textureValue) == "string" then
                        default.TextureID = textureValue;
                        default.Transparency = 0;
                    end;
                end;
            end;
        end;
        for _, child in next, Handle:GetChildren() do
            if #child.Name == 0 then
                child:Destroy();
            end;
        end;
        if SkinAssets then
            local GunHandleParticle = SkinAssets:FindFirstChild("GunHandleParticle");
            if GunHandleParticle then
                local particleFolder = GunHandleParticle:FindFirstChild(SkinName)
                    or GunHandleParticle:FindFirstChild(SkinName:gsub("-", " "))
                    or GunHandleParticle:FindFirstChild(SkinName:gsub("-", ""));
                if particleFolder then
                    local emitter = particleFolder:FindFirstChildOfClass("ParticleEmitter");
                    if emitter then
                        local clonedParticle = emitter:Clone();
                        clonedParticle.Parent = Handle;
                        clonedParticle.Name = "\0";
                        table.insert(AppliedSkins[Tool].ClonedChildren, clonedParticle);
                    end;
                end;
            end;
        end;
        if isKnife and SkinAssets then
            local SkinScripts = SkinAssets:FindFirstChild("SkinScripts");
            if SkinScripts then
                for _, folder in next, SkinScripts:GetChildren() do
                    if folder.Name:lower():gsub(" ", "") == SkinName:lower():gsub(" ", "") then
                        local sound = folder:FindFirstChildOfClass("Sound");
                        if sound then
                            local cloned = sound:Clone();
                            cloned.Name = "\0";
                            cloned.Parent = Handle;
                            cloned:Play();
                            game.Debris:AddItem(cloned, 3);
                        end;
                        for _, obj in next, folder:GetDescendants() do
                            if obj:IsA("Sound") or obj:IsA("StringValue") then
                                local objLower = obj.Name:lower():gsub(" ", "");
                                if objLower == "equipsfx" or objLower == "sfx" or objLower == "equip" or objLower == "tantoequip" then
                                    AppliedSkins[Tool].KnifeEquipSound = obj:IsA("Sound") and obj.SoundId or obj.Value;
                                elseif objLower == "attacksfx" or objLower == "attack" then
                                    AppliedSkins[Tool].KnifeAttackSound = obj:IsA("Sound") and obj.SoundId or obj.Value;
                                end;
                            end;
                        end;
                        break;
                    end;
                end;
            end;
            local SkinScriptsStorage = SkinAssets:FindFirstChild("SkinScriptsStorage");
            if SkinScriptsStorage then
                for _, folder in next, SkinScriptsStorage:GetChildren() do
                    if folder.Name:lower():gsub(" ", "") == SkinName:lower():gsub(" ", "") then
                        for _, anim in next, folder:GetDescendants() do
                            if anim:IsA("Animation") then
                                local animLower = anim.Name:lower():gsub(" ", "");
                                if animLower == "knife" or animLower == "equipknife" or animLower == "knifeequip" or animLower == "tantoequip" then
                                    AppliedSkins[Tool].KnifeEquipAnim = anim;
                                    break;
                                end;
                            end;
                        end;
                        break;
                    end;
                end;
            end;
            local KnifeSkinAnimation = SkinAssets:FindFirstChild("KnifeSkinAnimation");
            if KnifeSkinAnimation then
                for _, folder in next, KnifeSkinAnimation:GetChildren() do
                    if folder.Name:lower():gsub(" ", "") == SkinName:lower():gsub(" ", "") then
                        for _, anim in next, folder:GetDescendants() do
                            if anim:IsA("Animation") then
                                AppliedSkins[Tool].KnifeAttackAnim = anim;
                                break;
                            end;
                        end;
                        break;
                    end;
                end;
            end;
        end;
        if isKnife and SkinName:lower():gsub(" ", "") == "goldenagetanto" then
            if not AppliedSkins[Tool].KnifeEquipAnim then
                local anim = Instance.new("Animation");
                anim.AnimationId = "rbxassetid://13473404819";
                AppliedSkins[Tool].KnifeEquipAnim = anim;
            else
                AppliedSkins[Tool].KnifeEquipAnim.AnimationId = "rbxassetid://13473404819";
            end;
        end;
        if isKnife and (SkinName:lower():gsub(" ", "") == "gpoknife" or SkinName:lower():gsub(" ", "") == "gpoknifeprestige") then
            if not AppliedSkins[Tool].KnifeEquipAnim then
                local anim = Instance.new("Animation");
                anim.AnimationId = "rbxassetid://102007904524177";
                AppliedSkins[Tool].KnifeEquipAnim = anim;
            else
                AppliedSkins[Tool].KnifeEquipAnim.AnimationId = "rbxassetid://102007904524177";
            end;
        end;
        local soundId = GetShootSound(Tool.Name, SkinName);
        if soundId and AppliedSkins[Tool].ShootSound then
            AppliedSkins[Tool].ShootSound.SoundId = soundId;
        end;
    end;

    local function ProcessTool(Tool)
        if ToolRegistry[Tool] then return end;
        ToolRegistry[Tool] = true;

        -- Range Enhancer logic (teleport bullet style)
        pcall(function()
            local reCfg = shared.azov["rage"]["range enhancer"]
            if reCfg then
                for _, conn in ipairs(getconnections(Tool:GetPropertyChangedSignal("Grip"))) do
                    conn:Disable()
                end

                Tool.Activated:Connect(function()
                    local reCfg = shared.azov["rage"]["range enhancer"]
                    if reCfg and reCfg["enabled"] and Self.Character and Self.Character:FindFirstChild("RightHand") then
                        local targetPos = Script.Locals.HitPosition or Mouse.Hit.p
                        local handCFrame = Self.Character.RightHand.CFrame
                        local studs = reCfg["studs"] or 12
                        
                        -- grip teleport logic
                        local originalGrip = Tool.Grip
                        local actualOrigin = handCFrame * CFrame.new(0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
                        
                        -- Calculate look direction from hand to target
                        local dir = (targetPos - handCFrame.Position).Unit
                        local targetCFrame = CFrame.new(handCFrame.Position + (dir * studs), targetPos)
                        local newGrip = actualOrigin:ToObjectSpace(targetCFrame):Inverse()
                        
                        local oldParent = Tool.Parent
                        Tool.Parent = Self.Backpack
                        Tool.Grip = newGrip
                        Tool.Parent = oldParent
                        task.wait()
                        Tool.Parent = Self.Backpack
                        Tool.Grip = originalGrip
                        Tool.Parent = oldParent
                    end
                end)
            end
        end)

        local SkinChangerCfg = shared.azov["skins"];
        if not SkinChangerCfg["enabled"] then return end;
        local Skins = SkinChangerCfg["options"];
        local ConfiguredSkin = Skins[Tool.Name];
        if not ConfiguredSkin then
            local stripped = Tool.Name:gsub("%[", ""):gsub("%]", "");
            ConfiguredSkin = Skins["[" .. stripped .. "]"];
        end;
        if not ConfiguredSkin or ConfiguredSkin == "" or ConfiguredSkin == "None" then return end;
        local isKnife = Tool.Name:lower():find("knife") ~= nil or Tool.Name == "[Knife]";
        if isKnife and IsKnifeSkin(ConfiguredSkin) then
            ApplySkinToTool(Tool, ConfiguredSkin);
            local equipConn;
            equipConn = Tool.Equipped:Connect(function()
                if not AppliedSkins[Tool] then
                    if equipConn then equipConn:Disconnect() end;
                    return;
                end;
                local char = Tool.Parent;
                if char ~= Self.Character then return end;
                ApplyKnife(char, Tool, ConfiguredSkin);
            end);
            if not AppliedSkins[Tool].Connections then
                AppliedSkins[Tool].Connections = {};
            end;
            table.insert(AppliedSkins[Tool].Connections, equipConn);
            if Self.Character and Tool.Parent == Self.Character then
                ApplyKnife(Self.Character, Tool, ConfiguredSkin);
            end;
            if AppliedSkins[Tool] and (AppliedSkins[Tool].KnifeAttackAnim or AppliedSkins[Tool].KnifeAttackSound) then
                local attackConnection;
                attackConnection = Tool.Activated:Connect(function()
                    local skinData = AppliedSkins[Tool];
                    if not skinData then
                        if attackConnection then attackConnection:Disconnect() end;
                        return;
                    end;
                    if skinData.KnifeAttackSound then
                        local sound = Instance.new("Sound");
                        sound.SoundId = skinData.KnifeAttackSound;
                        sound.Volume = 1;
                        sound.Parent = Tool:FindFirstChild("Handle") or Tool;
                        sound:Play();
                        game.Debris:AddItem(sound, 3);
                    end;
                    if skinData.KnifeAttackAnim then
                        local Character = Self.Character;
                        if Character then
                            local Humanoid = Character:FindFirstChildOfClass("Humanoid");
                            if Humanoid then
                                local Animator = Humanoid:FindFirstChildOfClass("Animator");
                                if not Animator then
                                    Animator = Instance.new("Animator");
                                    Animator.Parent = Humanoid;
                                end;
                                local anim = Instance.new("Animation");
                                anim.AnimationId = skinData.KnifeAttackAnim.AnimationId;
                                local track = Animator:LoadAnimation(anim);
                                track.Priority = Enum.AnimationPriority.Action;
                                track:Play();
                                anim:Destroy();
                            end;
                        end;
                    end;
                end);
                table.insert(AppliedSkins[Tool].Connections, attackConnection);
            end;
        else
            ApplySkinToTool(Tool, ConfiguredSkin);
            Tool.Equipped:Connect(function()
                local char = Tool.Parent;
                if char ~= Self.Character then return end;
                ApplySkinToTool(Tool, ConfiguredSkin);
            end);
            if Self.Character and Tool.Parent == Self.Character then
                ApplySkinToTool(Tool, ConfiguredSkin);
            end;
        end;
    end;

    local function ProcessCharacter(Character)
        if not Character then return end;
        for _, Child in next, Character:GetChildren() do
            if Child:IsA("Tool") then
                ProcessTool(Child);
            end;
        end;
        Character.ChildAdded:Connect(function(Child)
            if Child:IsA("Tool") then
                task.wait(0.1);
                ProcessTool(Child);
            end;
        end);
    end;

    local function ProcessBackpack(Backpack)
        if not Backpack then return end;
        for _, Tool in next, Backpack:GetChildren() do
            if Tool:IsA("Tool") then
                ProcessTool(Tool);
            end;
        end;
        Backpack.ChildAdded:Connect(function(Tool)
            if Tool:IsA("Tool") then
                task.wait(0.1);
                ProcessTool(Tool);
            end;
        end);
    end;

    LoadSkinData();
    local Character = Self.Character or Self.CharacterAdded:Wait();
    local Backpack = Self:WaitForChild("Backpack", 5);
    ProcessCharacter(Character);
    if Backpack then ProcessBackpack(Backpack) end;
    Self.CharacterAdded:Connect(function(NewCharacter)
        task.wait(0.5);
        ProcessCharacter(NewCharacter);
        local NewBackpack = Self:WaitForChild("Backpack", 5);
        if NewBackpack then ProcessBackpack(NewBackpack) end;
    end);

    local IsFiringRapid  = false
    local LastRapidFire  = 0

    local function GetRapidGun()
        local Char = Self and Self.Character
        if not Char then return nil end
        local Tool = Char:FindFirstChildOfClass("Tool")
        if Tool and Tool.Name ~= "[Knife]" then
            return Tool
        end
        return nil
    end

    local lastrapidfire = 0

    local function getrapidgun()
        local char = Self.Character
        if not char then return nil end
        for _, tool in next, char:GetChildren() do
            if tool:IsA("Tool") and tool:FindFirstChild("Ammo") then
                return tool
            end
        end
        return nil
    end

    local function patchtool(tool)
        pcall(function()
            if not shared.azov["delay changer"]["enabled"] then return end
            local DelayCfg = shared.azov["delay changer"]
            
            local Cooldown = 0.3
            local CD = tool:FindFirstChild("ShootingCooldown")
            if CD then Cooldown = CD.Value end

            local WeaponDelay = DelayCfg["delay"]
            local WeaponCfg = DelayCfg["weapon configs"]
            if WeaponCfg and WeaponCfg["enabled"] then
                local name = tool.Name:lower()
                if name:find("shotgun") or name:find("barrel") then
                    WeaponDelay = WeaponCfg["shotguns"]["delay"] or WeaponDelay
                elseif name:find("revolver") or name:find("pistol") or name:find("glock") then
                    WeaponDelay = WeaponCfg["pistols"]["delay"] or WeaponDelay
                else
                    WeaponDelay = WeaponCfg["others"]["delay"] or WeaponDelay
                end
            end
            Cooldown = WeaponDelay or Cooldown

            for _, conn in pairs(getconnections(tool.Activated)) do
                local info = debug.getinfo(conn.Function)
                for i = 1, info.nups do
                    local val = debug.getupvalue(conn.Function, i)
                    if type(val) == "number" then
                        debug.setupvalue(conn.Function, i, Cooldown)
                    end
                end
            end
            if CD then CD.Value = Cooldown end
        end)
    end

    local function OnCharRapidFire(Char)
        IsFiringRapid = false

        for _, Tool in next, Char:GetChildren() do
            if Tool:IsA("Tool") then
                patchtool(Tool)
            end
        end

        Char.ChildAdded:Connect(function(Tool)
            if Tool:IsA("Tool") then
                patchtool(Tool)
            end
        end)
    end

    do
        local cfg = shared.azov["avatar changer"]
        local MarketplaceService = game:GetService("MarketplaceService")
        local UserService = game:GetService("UserService")
        local CoreGui = game:GetService("CoreGui")

        local ACTUAL_REAL_NAME = Self.Name
        local ACTUAL_REAL_DISPLAY_NAME = Self.DisplayName

        local usernameCache = {}
        local originalDescription = nil
        local backendLocked = false
        local spoofedName = nil
        local spoofedDisplayName = nil
        local spoofedUserId = nil
        local targetHumanoidDescription = nil
        local precalculatedTargetAssets = {}
        local itemAssetInfoCache = {}
        local lastConfigHash = nil
        local lastAppliedUserId = nil
        local lastCharacter = nil

        local function log(...)
            if cfg and cfg["debug"] then
                warn(...)
            end
        end

        local function getHumanoid()
            local character = Self.Character or lastCharacter
            if not character or not character.Parent then return nil end
            return character:FindFirstChildOfClass("Humanoid")
        end

        local function cacheOriginalDescription()
            if originalDescription then return end
            local ok, result = pcall(function()
                return Players:GetHumanoidDescriptionFromUserId(Self.UserId)
            end)
            if ok and result then
                originalDescription = result
            end
        end

        local function getAssetInfo(id)
            if not id or id == 0 or id == "" then return nil end
            local nid = tonumber(id)
            if not nid or nid <= 0 then return nil end
            if itemAssetInfoCache[nid] then return itemAssetInfoCache[nid] end
            local ok, info = pcall(function()
                return MarketplaceService:GetProductInfo(nid)
            end)
            if ok and info then
                itemAssetInfoCache[nid] = info
                return info
            end
            return nil
        end

        local function updatePrecalculatedAssets(description)
            if not description then return end
            local assets = {}
            local function add(id)
                if id then
                    local nid = tonumber(id)
                    if nid and nid > 0 then
                        local found = false
                        for _, existing in ipairs(assets) do
                            if existing == nid then found = true break end
                        end
                        if not found then table.insert(assets, nid) end
                    end
                end
            end
            local function addStr(s)
                if typeof(s) == "string" then
                    for _, id in ipairs(string.split(s, ",")) do
                        add(id)
                    end
                end
            end
            local function safeAdd(prop)
                local ok, val = pcall(function() return description[prop] end)
                if ok then
                    if typeof(val) == "string" then
                        addStr(val)
                    else
                        add(val)
                    end
                end
            end
            safeAdd("HatAccessory")
            safeAdd("HairAccessory")
            safeAdd("FaceAccessory")
            safeAdd("NeckAccessory")
            safeAdd("ShoulderAccessory")
            safeAdd("FrontAccessory")
            safeAdd("BackAccessory")
            safeAdd("WaistAccessory")
            safeAdd("Shirt")
            safeAdd("Pants")
            safeAdd("GraphicTShirt")
            safeAdd("Face")
            pcall(function()
                local emotes = description:GetEmotes()
                local equipped = description:GetEquippedEmotes()
                for _, emoteData in ipairs(equipped) do
                    local assetIds = emotes[emoteData.Name]
                    if assetIds then
                        for _, id in ipairs(assetIds) do add(id) end
                    end
                end
                for _, assetIds in pairs(emotes) do
                    for _, id in ipairs(assetIds) do add(id) end
                end
            end)
            safeAdd("Head")
            safeAdd("Torso")
            safeAdd("LeftArm")
            safeAdd("RightArm")
            safeAdd("LeftLeg")
            safeAdd("RightLeg")
            precalculatedTargetAssets = assets
            log("assets calculated")
        end

        local function resolveUserIdFromConfigTarget()
            if not cfg then return nil, "missing config" end
            local mode = string.lower(tostring(cfg["mode"] or "username"))
            local target = tostring(cfg["target"] or "")
            if mode == "userid" then
                local n = tonumber(target)
                if not n then return nil, "invalid id" end
                return math.floor(n), nil
            end
            if mode == "username" then
                local trimmed = string.gsub(target, "^%s*(.-)%s*$", "%1")
                if trimmed == "" or trimmed == "username" then return nil, "empty username" end
                if usernameCache[trimmed] then return usernameCache[trimmed], nil end
                local ok, userId = pcall(function() return Players:GetUserIdFromNameAsync(trimmed) end)
                if not ok or not userId then return nil, "not found" end
                usernameCache[trimmed] = userId
                return userId, nil
            end
            if mode == "reset" then
                return nil, nil
            end
            return nil, "unsupported mode"
        end

        local function getConfigHash()
            if not cfg then return "" end
            local h = tostring(cfg["enabled"]) .. tostring(cfg["mode"]) .. tostring(cfg["target"]) .. tostring(cfg["skinny"]) .. tostring(cfg["override animation"])
            if cfg["additional items"] then
                h = h .. tostring(cfg["additional items"].headless)
                if cfg["additional items"].accessories then
                    for _, id in ipairs(cfg["additional items"].accessories) do
                        h = h .. tostring(id)
                    end
                end
            end
            h = h .. tostring(cfg["target displayname"]) .. tostring(cfg["reapply on spawn"])
            return h
        end

        local function applySkinnyScales(description)
            description.HeightScale = 1
            description.WidthScale = 0.5
            description.DepthScale = 0.5
            description.HeadScale = 1
            description.ProportionScale = 0
            description.BodyTypeScale = 0
        end

        local function applyDescription(description, targetUserId)
            local hum = getHumanoid()
            if not hum then return false, "missing humanoid" end

            local char = hum.Parent
            local currentTool = char:FindFirstChildOfClass("Tool")
            local isR15 = hum.RigType == Enum.HumanoidRigType.R15

            if isR15 and cfg and (cfg["skinny"] or cfg["skinny only"]) then
                applySkinnyScales(description)
            end

            if targetUserId then
                targetHumanoidDescription = description
                updatePrecalculatedAssets(description)
                task.spawn(function()
                    local function prefetch(val)
                        if not val then return end
                        if typeof(val) == "string" then
                            for _, id in ipairs(string.split(val, ",")) do getAssetInfo(id) end
                        else
                            getAssetInfo(val)
                        end
                    end
                    local function safePrefetch(prop)
                        local ok, val = pcall(function() return description[prop] end)
                        if ok then prefetch(val) end
                    end
                    safePrefetch("HatAccessory")
                    safePrefetch("HairAccessory")
                    safePrefetch("FaceAccessory")
                    safePrefetch("NeckAccessory")
                    safePrefetch("ShoulderAccessory")
                    safePrefetch("FrontAccessory")
                    safePrefetch("BackAccessory")
                    safePrefetch("WaistAccessory")
                    safePrefetch("Shirt")
                    safePrefetch("Pants")
                    safePrefetch("Face")
                    safePrefetch("GraphicTShirt")
                    safePrefetch("Head")
                    safePrefetch("Torso")
                    safePrefetch("LeftArm")
                    safePrefetch("RightArm")
                    safePrefetch("LeftLeg")
                    safePrefetch("RightLeg")
                    pcall(function()
                        local emotes = description:GetEmotes()
                        for _, assetIds in pairs(emotes) do
                            for _, id in ipairs(assetIds) do prefetch(id) end
                        end
                    end)
                end)
                task.spawn(function()
                    local configDN = tostring(cfg and cfg["target displayname"] or "")
                    if configDN ~= "" then spoofedDisplayName = configDN end
                    local ok_name, targetName = pcall(function() return Players:GetNameFromUserIdAsync(targetUserId) end)
                    if ok_name and targetName then spoofedName = targetName end
                    if not spoofedDisplayName then
                        local fetchedDN = nil
                        pcall(function()
                            local json = game:HttpGet("https://users.roblox.com/v1/users/" .. targetUserId)
                            local data = HttpService:JSONDecode(json)
                            if data and data.displayName then fetchedDN = data.displayName end
                        end)
                        if not fetchedDN then
                            pcall(function()
                                local userInfos = UserService:GetUserInfosByIdAsync({targetUserId})
                                if userInfos and #userInfos > 0 then fetchedDN = userInfos[1].DisplayName end
                            end)
                        end
                        if not fetchedDN then
                            pcall(function()
                                local p = Players:GetPlayerByUserId(targetUserId)
                                if p then fetchedDN = p.DisplayName end
                            end)
                        end
                        spoofedDisplayName = fetchedDN or spoofedName or "vrt"
                    end
                    if spoofedName then
                        spoofedUserId = targetUserId
                        pcall(function() hum.DisplayName = spoofedDisplayName end)
                        pcall(function() Self.DisplayName = spoofedDisplayName end)
                    end
                end)
            end

            pcall(function()
                local function clear(parent)
                    for _, v in ipairs(parent:GetChildren()) do
                        if v:IsA("Tool") or v:FindFirstAncestorOfClass("Tool") then 
                            continue 
                        end
                        if v:IsA("Accessory") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") or v:IsA("BodyColors") then
                            v:Destroy()
                        elseif not v:IsA("BasePart") and not v:IsA("Humanoid") then
                            clear(v)
                        end
                    end
                end
                clear(char)
                local head = char:FindFirstChild("Head")
                if head then
                    for _, v in ipairs(head:GetChildren()) do
                        if v:IsA("Decal") then v:Destroy() end
                    end
                end
            end)

            local ok, err
            if typeof(hum.ApplyDescriptionClientServer) == "function" then
                ok, err = pcall(function() hum:ApplyDescriptionClientServer(description) end)
            elseif typeof(hum.ApplyDescriptionReset) == "function" then
                ok, err = pcall(function() hum:ApplyDescriptionReset(description) end)
            elseif typeof(hum.ApplyDescription) == "function" then
                ok, err = pcall(function() hum:ApplyDescription(description) end)
            else
                return false, "no apply method"
            end

            if not ok then
                local errText = tostring(err)

                if string.find(string.lower(errText), "backend server", 1, true) and not string.find(string.lower(errText), "throt", 1, true) then 
                    backendLocked = true 
                end
                return false, errText
            end

            if currentTool then
                task.spawn(function()
                    task.wait(0.15)
                    if currentTool and currentTool.Parent == Self.Backpack then
                        pcall(function() hum:EquipTool(currentTool) end)
                    end
                    task.wait(0.2)
                    if currentTool and currentTool.Parent == Self.Backpack then
                        pcall(function() hum:EquipTool(currentTool) end)
                    end
                end)
            end

            if hum.RigType == Enum.HumanoidRigType.R6 then
                local animate = char:FindFirstChild("Animate")
                if animate then
                    local animMap = {
                        ["idle"] = description.IdleAnimation,
                        ["walk"] = description.WalkAnimation,
                        ["run"] = description.RunAnimation,
                        ["jump"] = description.JumpAnimation,
                        ["climb"] = description.ClimbAnimation,
                        ["fall"] = description.FallAnimation,
                        ["swim"] = description.SwimAnimation
                    }
                    for animName, animId in pairs(animMap) do
                        if animId and animId > 0 then
                            local animContainer = animate:FindFirstChild(animName)
                            if animContainer then
                                for _, child in pairs(animContainer:GetChildren()) do
                                    if child:IsA("Animation") then
                                        child.AnimationId = "rbxassetid://" .. tostring(animId)
                                    end
                                end
                            end
                        end
                    end
                    for _, track in pairs(hum:GetPlayingAnimationTracks()) do
                        track:Stop()
                    end
                end

                local bodyPartMap = {
                    ["Torso"] = Enum.BodyPart.Torso,
                    ["LeftArm"] = Enum.BodyPart.LeftArm,
                    ["RightArm"] = Enum.BodyPart.RightArm,
                    ["LeftLeg"] = Enum.BodyPart.LeftLeg,
                    ["RightLeg"] = Enum.BodyPart.RightLeg
                }
                for field, bodyPartEnum in pairs(bodyPartMap) do
                    local assetId = description[field]
                    if assetId and assetId > 0 then
                        local found = false
                        for _, mesh in pairs(char:GetChildren()) do
                            if mesh:IsA("CharacterMesh") and mesh.BodyPart == bodyPartEnum then
                                mesh.MeshId = "rbxassetid://" .. tostring(assetId)
                                found = true
                                break
                            end
                        end
                        if not found then
                            local nm = Instance.new("CharacterMesh")
                            nm.BodyPart = bodyPartEnum
                            nm.MeshId = "rbxassetid://" .. tostring(assetId)
                            nm.Parent = char
                        end
                    else
                        for _, mesh in pairs(char:GetChildren()) do
                            if mesh:IsA("CharacterMesh") and mesh.BodyPart == bodyPartEnum then
                                mesh:Destroy()
                            end
                        end
                    end
                end
            end

            backendLocked = false
            return true, nil
        end

        local function applyFromUserId(userId)
            local ok, description = pcall(function()
                return Players:GetHumanoidDescriptionFromUserId(userId)
            end)
            if not ok or not description then return false, "fetch failed" end
            return applyDescription(description, userId)
        end

        local function restoreOriginal()
            cacheOriginalDescription()
            if not originalDescription then return false, "no original" end
            spoofedName, spoofedUserId, spoofedDisplayName = nil, nil, nil
            return applyDescription(originalDescription, Self.UserId)
        end

        local function runAvatarChanger(force)
            if not cfg or not cfg["enabled"] then return true end
            if backendLocked then return false, "backend locked" end

            local currentHash = getConfigHash()
            local mode = string.lower(tostring(cfg["mode"] or "username"))
            local userId, resolveErr = resolveUserIdFromConfigTarget()

            if cfg["skinny only"] then
                local hum = getHumanoid()
                if hum then
                    local desc = hum:GetAppliedDescription()
                    if desc then
                        applySkinnyScales(desc)
                        pcall(function() hum:ApplyDescription(desc) end)
                    end
                end
                lastConfigHash = currentHash
                return true
            end

            if not force and currentHash == lastConfigHash and userId == lastAppliedUserId then
                return true
            end

            if mode == "reset" then
                lastConfigHash = currentHash
                lastAppliedUserId = nil
                return restoreOriginal()
            end

            if not userId then return false, resolveErr end

            local success, result = pcall(function()
                local ok = applyFromUserId(userId)
                if ok then
                    lastConfigHash = currentHash
                    lastAppliedUserId = userId
                end
                return ok
            end)
            if not success then
                warn(tostring(result))
                return false, result
            end
            return result
        end

        Self.CharacterAdded:Connect(function(character)
            if character == lastCharacter then return end
            lastCharacter = character
            
            character.ChildAdded:Connect(function(tool)
                if tool:IsA("Tool") and shared.azov["delay changer"]["enabled"] then
                    patchtool(tool)
                end
            end)
            for _, tool in ipairs(character:GetChildren()) do
                if tool:IsA("Tool") and shared.azov["delay changer"]["enabled"] then
                    patchtool(tool)
                end
            end
            
            if cfg and cfg["enabled"] and cfg["reapply on spawn"] then
                task.spawn(function()
                    local hum = character:WaitForChild("Humanoid", 10)
                    if hum then
                        task.wait(1)
                        local ok, err = pcall(function()
                            return runAvatarChanger(true)
                        end)
                        if not ok or err == false then
                            task.wait(2)
                            pcall(runAvatarChanger, true)
                        end
                    end
                end)
            end
        end)

        task.delay(1, function()
            pcall(runAvatarChanger, true)
        end)
    end

    do
        local AnimationChanger = shared.azov["animation changer"]
        local MasterBundles = { 
            Ninja = { walk = "rbxassetid://656121766", run = "rbxassetid://656118852", jump = "rbxassetid://656117878", fall = "rbxassetid://10921159222" }, 
            Robot = { walk = "rbxassetid://616095330", run = "rbxassetid://616091570", jump = "rbxassetid://616090535", fall = "rbxassetid://616092998" }, 
            Stylish = { walk = "rbxassetid://616146177", run = "rbxassetid://616140816", jump = "rbxassetid://616139451", fall = "rbxassetid://616134815" }, 
            Catwalk = { walk = "rbxassetid://109168724482748", run = "rbxassetid://81024476153754", jump = "rbxassetid://116936326516985", fall = "rbxassetid://119377220967554" }, 
            Zombie = { walk = "rbxassetid://616168032", run = "rbxassetid://616163682", jump = "rbxassetid://616161997", fall = "rbxassetid://616157476" }, 
            Oldschool = { walk = "rbxassetid://10921244891", run = "rbxassetid://10921240218", jump = "rbxassetid://10921242013", fall = "rbxassetid://10921241244" }, 
            Mage = { walk = "rbxassetid://707897309", run = "rbxassetid://707861613", jump = "rbxassetid://707853694", fall = "rbxassetid://707829716" }, 
            Hero = { walk = "rbxassetid://616122287", run = "rbxassetid://616117076", jump = "rbxassetid://616115533", fall = "rbxassetid://616108001" }, 
            Default = { walk = "rbxassetid://10921269718", run = "rbxassetid://10921261968", jump = "rbxassetid://10921263860", fall = "rbxassetid://10921262864" }, 
            Werewolf = { walk = "rbxassetid://1083178339", run = "rbxassetid://1083216690", jump = "rbxassetid://1083218792", fall = "rbxassetid://1083189019" }, 
            Knight = { walk = "rbxassetid://657552124", run = "rbxassetid://657564596", jump = "rbxassetid://658409194", fall = "rbxassetid://657600338" }, 
            Vampire = { walk = "rbxassetid://1083473930", run = "rbxassetid://1083462077", jump = "rbxassetid://1083455352", fall = "rbxassetid://1083443587" }, 
        }

        local function getAnim(style, animType) 
            local bundle = MasterBundles[style] 
            if not bundle then return MasterBundles.Default[animType] end 
            return bundle[animType] 
        end 

        local function applyAnims(char) 
            local avatarCfg = shared.azov["avatar changer"]
            
            if not AnimationChanger["animations"]["enabled"] then return end 
            
            if avatarCfg and avatarCfg["enabled"] and not avatarCfg["override animation"] then 
                return 
            end
            
            local animate = char:FindFirstChild("Animate") 
            if not animate then animate = char:WaitForChild("Animate", 5) end 
            
            if animate then 
                if animate:FindFirstChild("run") and animate.run:FindFirstChild("RunAnim") then 
                    animate.run.RunAnim.AnimationId = getAnim(AnimationChanger["animations"]["run"], "run") 
                end 
                if animate:FindFirstChild("walk") and animate.walk:FindFirstChild("WalkAnim") then 
                    animate.walk.WalkAnim.AnimationId = getAnim(AnimationChanger["animations"]["walk"], "walk") 
                end 
                if animate:FindFirstChild("jump") and animate.jump:FindFirstChild("JumpAnim") then 
                    animate.jump.JumpAnim.AnimationId = getAnim(AnimationChanger["animations"]["jump"], "jump") 
                end 
                if animate:FindFirstChild("fall") and animate.fall:FindFirstChild("FallAnim") then 
                    animate.fall.FallAnim.AnimationId = getAnim(AnimationChanger["animations"]["fall"], "fall") 
                end 
                
                animate.Disabled = true 
                task.wait() 
                animate.Disabled = false 
            end 
        end 

        if Self.Character then applyAnims(Self.Character) end 
        Self.CharacterAdded:Connect(function(char) task.wait(0.5) applyAnims(char) end)
    end

    local Script = {
        RBXConnections = {},
        Locals = {},
        Visuals = {}
    }

    local WeaponMap = {}
    local Velocity_Data = {
        Tick = tick(),
        Sample = nil,
        State = Enum.HumanoidStateType.Running,
        Y = nil,
        Recorded = {
            Alpha = nil,
            B_0 = nil,
            V_T = nil,
            V_B = nil
        }
    }
    local aliases = {
        ["[Double-Barrel SG]"] = {"db", "double barrel", "double-barrel", "dbl sg", "double sg", "db sg"},
        ["[TacticalShotgun]"] = {"tac", "tac sg", "tactical shotgun", "tactical sg", "tacshot", "tactical"},
        ["[Drum-Shotgun]"] = {"drum sg", "drum shotgun", "auto sg", "drum auto", "drum"},
        ["[Shotgun]"] = {"sg", "shotgun", "pump", "pump sg", "pump shotgun", "buckshot"},
        ["[Revolver]"] = {"rev", "revolver", "six shooter", "wheel gun", "colt", "magnum"},
        ["[Silencer]"] = {"silencer", "suppressed", "supp pistol", "silenced pistol", "quiet gun"},
        ["[Glock]"] = {"glock", "g17", "glock 17", "pistol", "semi", "9mm"},
        ["[Rifle]"] = {"rifle", "ar", "assault rifle", "m4", "m4a1", "m16"},
        ["[AUG]"] = {"aug", "steyr aug", "bullpup", "aug rifle"},
        ["[AR]"] = {"ar", "assault rifle", "m4", "m4a1", "rifle"},
        ["[SMG]"] = {"smg", "submachine gun", "uzi", "mp5", "mp7", "vector"},
        ["[LMG]"] = {"lmg", "light machine gun", "m249", "saw", "negev"},
        ["[P90]"] = {"p90", "fn p90", "pdw", "personal defense weapon"},
        ["[AK47]"] = {"ak", "ak47", "kalashnikov", "akm", "russian rifle"},
        ["[SilencerAR]"] = {"silencer ar", "suppressed ar", "silenced rifle", "quiet ar"},
        ["[DrumGun]"] = {"drum gun", "tommy gun", "thompson", "drum ar", "drum rifle"}
    }
    for weapon, names in pairs(aliases) do
        for _, alias in ipairs(names) do
            WeaponMap[alias] = weapon
        end
    end
    local Modules = { Cache = {} }
    function Modules.Get(Id)
        if not Modules.Cache[Id] then
            Modules.Cache[Id] = {
                c = Modules[Id](),
            }
        end

        return Modules.Cache[Id].c
    end
    local function InitializeLocals()
        local defaults = {
            "GunScriptDisabled", "IsTriggerBotting", "TriggerbotTarget", "IsDoubleTapping", "SilentAimTarget",
            "AimAssistTarget", "IsWalkSpeeding", "IsJumping", "DoubleTapState", "CurrentWeapon",
            "IsBoxFocused", "TriggerState", "HitPosition", "HitTrigger", "MoveVector", "LastShot",
            "IsAimed", "HitPart", "CodeRegion", "FieldOfViewOne", "FieldOfViewTwo"
        }

        for _, v in ipairs(defaults) do Script.Locals[v] = nil end
        Script.Locals.LastShot = 0
        Script.Locals.CodeRegion = "Initialization"
        Script.Locals.HitPosition = Vector3.new()
        Script.Locals.InfRangeActive = false
    end
    local function SetRegion(Region)
        Script.Locals.CodeRegion = Region
    end
    local function GetRegion()
        return Script.Locals.CodeRegion
    end
    InitializeLocals()

    getgenv().test = {
        dmg_override = {
            enabled = true,
            mode = 'full'
        }
    }

    local DamageHookInstalled = false
    local function TryInstallDamageHook()
        local ModulesFolder = ReplicatedStorage:FindFirstChild("Modules")
        local GunHandlerModule = ModulesFolder and ModulesFolder:FindFirstChild("GunHandler")
        if not GunHandlerModule or not GunHandlerModule:IsA("ModuleScript") then
            return false
        end

        local _ok, GunHandler = pcall(require, GunHandlerModule)
        if not _ok or type(GunHandler) ~= "table" or type(GunHandler.shoot) ~= "function" then
            return false
        end

        if GunHandler.__azovDmgHooked then
            return true
        end

        local OldShoot
        if type(hookfunction) == "function" then
            OldShoot = hookfunction(GunHandler.shoot, function(...)
                local args = {...}
                local realArgs = args[1]
                if realArgs == GunHandler then realArgs = args[2] end

                local HitPos, HitPart, HitNormal = OldShoot(unpack(args))

                if not realArgs or typeof(realArgs) ~= "table" or not realArgs.Handle or realArgs.Shooter ~= Self.Character then
                    return HitPos, HitPart, HitNormal
                end

                local fhCfg = shared.azov["rage"]["damage modification"]
                local tool = realArgs.Handle.Parent
                local isAllowed = false
                if tool and fhCfg and fhCfg["enabled"] then
                    if fhCfg["weapons"] then

                        if fhCfg["weapons"]["revolver"] and (tool.Name == "[Revolver]" or tool.Name == "[Glock]" or tool.Name == "[Silencer]") then
                            isAllowed = true
                        elseif fhCfg["weapons"]["double-barrel shotgun"] and (tool.Name == "[Double-Barrel SG]" or tool.Name == "[TacticalShotgun]" or tool.Name == "[Shotgun]") then
                            isAllowed = true
                        elseif fhCfg["weapons"]["all"] then
                            isAllowed = true
                        end
                    end
                end

                if fhCfg and fhCfg["enabled"] and isAllowed and HitPart and HitPart.Parent then
                    local Character = HitPart:FindFirstAncestorOfClass("Model")
                    if Character then
                        local Humanoid = Character:FindFirstChildOfClass("Humanoid")
                        if Humanoid then
                            local Instance = nil
                            if fhCfg["mode"] == "full" then
                                Instance = Character:FindFirstChild("Head")
                            elseif fhCfg["mode"] == "half" then
                                Instance = Character:FindFirstChild("HumanoidRootPart")
                            else
                                return HitPos, HitPart, HitNormal
                            end
                            
                            if Instance then
                                return HitPos, Instance, HitNormal
                            end
                        end
                    end
                end
                return HitPos, HitPart, HitNormal
            end)
        else

            local OriginalShoot = GunHandler.shoot
            GunHandler.shoot = function(...)
                local args = {...}
                local realArgs = args[1]
                if realArgs == GunHandler then realArgs = args[2] end

                local HitPos, HitPart, HitNormal = OriginalShoot(unpack(args))

                if not realArgs or typeof(realArgs) ~= "table" or not realArgs.Handle or realArgs.Shooter ~= Self.Character then
                    return HitPos, HitPart, HitNormal
                end

                local fhCfg = shared.azov["rage"]["damage modification"]
                local tool = realArgs.Handle.Parent
                local isAllowed = false
                if tool and fhCfg and fhCfg["enabled"] then
                    if fhCfg["weapons"] then
                        if fhCfg["weapons"]["revolver"] and (tool.Name == "[Revolver]" or tool.Name == "[Glock]" or tool.Name == "[Silencer]") then
                            isAllowed = true
                        elseif fhCfg["weapons"]["double-barrel shotgun"] and (tool.Name == "[Double-Barrel SG]" or tool.Name == "[TacticalShotgun]" or tool.Name == "[Shotgun]") then
                            isAllowed = true
                        elseif fhCfg["weapons"]["all"] then
                            isAllowed = true
                        end
                    end
                end

                if fhCfg and fhCfg["enabled"] and isAllowed and HitPart and HitPart.Parent then
                    local Character = HitPart:FindFirstAncestorOfClass("Model")
                    if Character then
                        local Humanoid = Character:FindFirstChildOfClass("Humanoid")
                        if Humanoid then
                            local Instance = nil
                            if fhCfg["mode"] == "full" then
                                Instance = Character:FindFirstChild("Head")
                            elseif fhCfg["mode"] == "half" then
                                Instance = Character:FindFirstChild("HumanoidRootPart")
                            else
                                return HitPos, HitPart, HitNormal
                            end
                            
                            if Instance then
                                return HitPos, Instance, HitNormal
                            end
                        end
                    end
                end
                return HitPos, HitPart, HitNormal
            end
        end

        GunHandler.__azovDmgHooked = true
        return true
    end
    task.spawn(function()
        local ModulesFolder = ReplicatedStorage:FindFirstChild("Modules")
        if not ModulesFolder then return end

        for i = 1, 120 do
            if TryInstallDamageHook() then break end
            task.wait(1)
            
            if i > 5 and not ModulesFolder:FindFirstChild("GunHandler") then
                break
            end
        end
    end)
    local ESP, Resolver = {
        Priority = {}, PriorityLines = {}, PriorityTexts = {}, PrioritySquares = {},
        PriorityLabels = {}, PriorityTools = {}, PrioritySquaresOutlines = {}
    }, {
        Connections = {}, ToolConnections = {}, Tracked = {}, Previous = {}, Current = nil, Tick = tick()
    }
    local WeaponInfo = {
        Shotguns = {"[Double-Barrel SG]", "[TacticalShotgun]", "[Shotgun]"},
        AutoShotguns = {"[Drum-Shotgun]"},
        Pistols = {"[Revolver]", "[Silencer]", "[Glock]"},
        Rifles = {"[AR]", "[SilencerAR]", "[AK47]", "[LMG]", "[DrumGun]"},
        Bursts = {"[AUG]"},
        SMG = {"[SMG]", "[P90]"},
        Snipers = {"[Rifle]"},
        Offsets = {
            ["[Double-Barrel SG]"] = CFrame.new(0, 0.35, -2.2),
            ["[TacticalShotgun]"] = CFrame.new(0, 0.25, -2.5),
            ["[Drum-Shotgun]"] = CFrame.new(-0.1, 0.5, -2.5),
            ["[Shotgun]"] = CFrame.new(0, 0.25, -2.5),
            ["[Revolver]"] = CFrame.new(-1, 0.4, 0),
            ["[Silencer]"] = CFrame.new(0, 0.4, 1.3),
            ["[Glock]"] = CFrame.new(0.6, 0.25, 0),
            ["[Rifle]"] = CFrame.new(0, 0.25, 2.5),
            ["[AUG]"] = CFrame.new(-0.1, 0.4, 1.8),
            ["[AR]"] = CFrame.new(2, 0.35, 0),
            ["[SMG]"] = CFrame.new(0, 1, 0.5),
            ["[LMG]"] = CFrame.new(0, 0.7, -3.8),
            ["[P90]"] = CFrame.new(0, 0.2, -1.7),
            ["[AK47]"] = CFrame.new(-0.1, 0.5, -2.5),
            ["[SilencerAR]"] = CFrame.new(2.5, 0.35, 0),
            ["[DrumGun]"] = CFrame.new(0, 0.4, 2.4)
        },
        Delays = {
            ["[Double-Barrel SG]"] = 0.0595, ["[TacticalShotgun]"] = 0.0095, ["[Drum-Shotgun]"] = 0.415,
            ["[Shotgun]"] = 1.2, ["[Revolver]"] = 0.0095, ["[Silencer]"] = 0.0095, ["[Glock]"] = 0.0095,
            ["[Rifle]"] = 1.3095, ["[AUG]"] = 0.0095, ["[AR]"] = 0.15, ["[SMG]"] = 0.6,
            ["[LMG]"] = 0.62, ["[P90]"] = 0.6, ["[AK47]"] = 0.15, ["[SilencerAR]"] = 0.02
        }
    }
    local CurrentFOV, CurrentFOVX, CurrentFOVY = nil, nil, nil
    local TriggerPart = Instance.new("Part")
    TriggerPart.Name = math.random(1, 99999999)
    local SilentAimPart = Instance.new("Part")
    TriggerPart.Name = math.random(1, 99999999)

    local IsSilentAiming = true
    local BrandFrame, LblAzov, LblCcBloom, LblCcMid, LblCcSharp
    Script.Locals.EspLabels = Script.Locals.EspLabels or {}
    Script.Locals.EspEnabled = false
    
    local function GameFunctions()
        SetRegion("Game Functions")
        return {
            IsKnocked = function(Player)
                return Player and Player:FindFirstChild('BodyEffects') and
                       Player.BodyEffects['K.O'].Value or false
            end,
            IsGrabbed = function(Player)
                return Player and Player.Character and Player.Character:FindFirstChild('GRABBING_CONSTRAINT') ~= nil
            end,
        }
    end
    local Games = {
        ['Da Hood'] = { HoodGame = true, Functions = GameFunctions() },
        ['Dee Hood'] = { HoodGame = true, Updater = "", Functions = GameFunctions(),
                          RemotePath = function() return game.ReplicatedStorage.MainEvent end },
        ['Zee Hood'] = { HoodGame = true, Updater = "XEEHOODMOUSEPOSx3^3", Functions = GameFunctions(),
                          RemotePath = function() return game.ReplicatedStorage.MainRemotes.MainRemoteEvent end },
        ['Das Hood'] = { HoodGame = true, Updater = "UpdateMousePos", Functions = GameFunctions(),
                          RemotePath = function() return game.ReplicatedStorage.MainEvent.MainRemoteEvent end },
        ['a literal baseplate.'] = { HoodGame = false, Functions = GameFunctions() },
        ['Universal'] = { HoodGame = false, Functions = GameFunctions() }
        
    }
    local MarketplaceService = game:GetService("MarketplaceService")
    local Success, Info = pcall(function()
        return MarketplaceService:GetProductInfo(game.PlaceId)
    end)
    local GameName = Success and Info.Name or "Universal"
    local Match
    for Index in pairs(Games) do
        if string.match(GameName, Index) then
            Match = Index
            break
        end
    end
    local CurrentGame = Games[Match] or Games.Universal

    if CurrentGame == Games.Universal or not CurrentGame.HoodGame then
        local function IsExecutorSupported()
            return typeof(getrawmetatable) == "function" and typeof(hookmetamethod) == "function" and typeof(checkcaller) == "function"
        end

        if type(hookfunction) == "function" then
            local old_random; old_random = hookfunction(math.random, function(...)
                local args = {...}

                if checkcaller() then
                    return old_random(...)
                end

                if (#args == 0) or 
                   (args[1] == -0.05 and args[2] == 0.05) or 
                   (args[1] == -0.1) or
                   (args[1] == -0.05) then

                    if shared.azov["rage"]["spread modifier"]["enabled"] then
                        local spread = shared.azov["rage"]["spread modifier"]["value"]
                        local n = #args
                        local midpoint = 0.5
                        if n == 1 then
                            midpoint = (1 + args[1]) / 2
                        elseif n == 2 then
                            midpoint = (args[1] + args[2]) / 2
                        end

                        return midpoint + (old_random(...) - midpoint) * spread
                    else
                        return old_random(...)
                    end
                end
                
                return old_random(...)
            end)
        end

        if IsExecutorSupported() then
            warn("switching to hookmetamethod silent aim")
            local OldIndex
            OldIndex = hookmetamethod(game, "__index", function(Self, Index)
                if not checkcaller() and shared.azov["silentaim"]["enabled"] and Script.Locals.SilentAimTarget then
                    if Index == "Hit" or Index == "Target" then
                        if Self:IsA("Mouse") then
                            if Index == "Hit" then
                                return Script.Locals.HitPosition and CFrame.new(Script.Locals.HitPosition) or OldIndex(Self, Index)
                            elseif Index == "Target" then
                                return Script.Locals.SilentAimTarget.Character and Script.Locals.SilentAimTarget.Character:FindFirstChild("HumanoidRootPart") or OldIndex(Self, Index)
                            end
                        end
                    end
                end
                return OldIndex(Self, Index)
            end)
        else
            warn("game not supported!")
        end
    end
    SetRegion("Threading")
    local function ThreadLoop(Wait, Func)
        task.spawn(function()
            while true do
                local Delta = task.wait(Wait)
                local Success, Result = pcall(Func, Delta)
                if not Success then
                    warn("Thread error:", Result)
                elseif Result == "break" then
                    break
                end
            end
        end)
    end

    local function ThreadFunction(Func, Name, ...)
        local WrappedFunc = Name and function()
            local Passed, Statement = pcall(Func)
            if not Passed then
                warn('ThreadFunction Error:\n', '              ' .. Name .. ':', Statement)
            end
        end or Func
        local Thread = coroutine.create(WrappedFunc)
        coroutine.resume(Thread, ...)
        return Thread
    end

    local function RBXConnection(Signal, Callback)
        local connection = Signal:Connect(Callback)
        Script.RBXConnections[#Script.RBXConnections + 1] = connection
        return connection
    end

    local function GetAimPosition()
        local isMobile = UserInputService.TouchEnabled and not UserInputService.MouseEnabled
        if isMobile then
            return Camera.ViewportSize / 2
        end
        return UserInputService:GetMouseLocation()
    end
    do
        SetRegion("Drawing")
        local CustomLibIndex = 0
        local UtilityUI = Instance.new('ScreenGui'); UtilityUI.Parent = game:GetService("CoreGui"); UtilityUI.IgnoreGuiInset = true
        local UserInputService = game:GetService("UserInputService")
        local Clamp = math.clamp
        local Atan2 = math.atan2
        local Deg = math.deg
        local LibraryMeta = setmetatable({
            Visible = true,
            ZIndex = 0,
            Transparency = 1,
            Color = Color3.new(),
            Remove = function(self)
                setmetatable(self, nil)
            end,
            Destroy = function(self)
                setmetatable(self, nil)
            end
        }, {
            __add = function(t1, t2)
                local result = table.clone(t1)

                for index, value in t2 do
                    result[index] = value
                end
                return result
            end
        })
        local function ClampTransparency(number)
            return Clamp(1 - number, 0, 1)
        end
        function Script.Visuals.new(ClassType)
            if typeof(Drawing) == "table" and typeof(Drawing.new) == "function" then
                local success, obj = pcall(function() return Drawing.new(ClassType) end)
                if success and obj then
                    return obj
                end
            end
            
            CustomLibIndex += 1
            if ClassType == 'Line' then
                local LineObject = ({
                    From = Vector2.zero,
                    To = Vector2.zero,
                    Thickness = 1
                } + LibraryMeta)
                local Line = Instance.new('Frame')
                Line.Name = CustomLibIndex
                Line.AnchorPoint = (Vector2.one * 0.5)
                Line.BorderSizePixel = 0
                Line.BackgroundColor3 = LineObject.Color
                Line.Visible = LineObject.Visible
                Line.ZIndex = LineObject.ZIndex
                Line.BackgroundTransparency = ClampTransparency(LineObject.Transparency)
                Line.Size = UDim2.new()
                Line.Parent = UtilityUI
                return setmetatable(table.create(0), {
                    __newindex = function(_, Property, Value)
                        if Property == 'From' then
                            LineObject.From = Value
                            local Direction = (LineObject.To - Value)
                            local Center = (LineObject.To + Value) / 2
                            local Magnitude = Direction.Magnitude
                            local Theta = Deg(Atan2(Direction.Y, Direction.X))
                            Line.Position = UDim2.fromOffset(Center.X, Center.Y)
                            Line.Rotation = Theta
                            Line.Size = UDim2.fromOffset(Magnitude, LineObject.Thickness)
                        elseif Property == 'To' then
                            LineObject.To = Value
                            local Direction = (Value - LineObject.From)
                            local Center = (Value + LineObject.From) / 2
                            local Magnitude = Direction.Magnitude
                            local Theta = Deg(Atan2(Direction.Y, Direction.X))
                            Line.Position = UDim2.fromOffset(Center.X, Center.Y)
                            Line.Rotation = Theta
                            Line.Size = UDim2.fromOffset(Magnitude, LineObject.Thickness)
                        elseif Property == 'Thickness' then
                            LineObject.Thickness = Value
                            local Magnitude = (LineObject.To - LineObject.From).Magnitude
                            Line.Size = UDim2.fromOffset(Magnitude, Value)
                        elseif Property == 'Visible' then
                            LineObject.Visible = Value
                            Line.Visible = Value
                        elseif Property == 'ZIndex' then
                            LineObject.ZIndex = Value
                            Line.ZIndex = Value
                        elseif Property == 'Transparency' then
                            LineObject.Transparency = Value
                            Line.BackgroundTransparency = ClampTransparency(Value)
                        elseif Property == 'Color' then
                            LineObject.Color = Value
                            Line.BackgroundColor3 = Value
                        end
                    end,
                    __index = function(self, index)
                        if index == 'Remove' or index == 'Destroy' then
                            return function()
                                Line:Destroy()
                                LineObject.Remove(self)
                                return LineObject:Remove()
                            end
                        end
                        return LineObject[index]
                    end,
                    __tostring = function() return 'CustomLib' end
                })
            elseif ClassType == 'Circle' then
                local circleObj = ({
                    Radius = 150,
                    Position = Vector2.zero,
                    Thickness = 0.7,
                    Filled = false
                } + LibraryMeta)

                local circleFrame, uiCorner, uiStroke = Instance.new('Frame'), Instance.new('UICorner'), Instance.new('UIStroke')
                circleFrame.Name = CustomLibIndex
                circleFrame.AnchorPoint = (Vector2.one * 0.5)
                circleFrame.BorderSizePixel = 0

                circleFrame.BackgroundTransparency = (circleObj.Filled and ClampTransparency(circleObj.Transparency) or 1)
                circleFrame.BackgroundColor3 = circleObj.Color
                circleFrame.Visible = circleObj.Visible
                circleFrame.ZIndex = circleObj.ZIndex

                uiCorner.CornerRadius = UDim.new(1, 0)
                circleFrame.Size = UDim2.fromOffset(circleObj.Radius, circleObj.Radius)

                uiStroke.Thickness = circleObj.Thickness
                uiStroke.Enabled = not circleObj.Filled
                uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

                circleFrame.Parent, uiCorner.Parent, uiStroke.Parent = UtilityUI, circleFrame, circleFrame
                return setmetatable(table.create(0), {
                    __newindex = function(_, index, value)
                        if typeof(circleObj[index]) == 'nil' then return end

                        if index == 'Radius' then
                            local radius = value * 2
                            circleFrame.Size = UDim2.fromOffset(radius, radius)
                        elseif index == 'Position' then
                            circleFrame.Position = UDim2.fromOffset(value.X, value.Y)
                        elseif index == 'Thickness' then
                            value = Clamp(value, 0.6, 0x7fffffff)
                            uiStroke.Thickness = value
                        elseif index == 'Filled' then
                            circleFrame.BackgroundTransparency = (circleObj.Filled and ClampTransparency(circleObj.Transparency) or 1)
                            uiStroke.Enabled = not value
                        elseif index == 'Visible' then
                            circleFrame.Visible = value
                        elseif index == 'ZIndex' then
                            circleFrame.ZIndex = value
                        elseif index == 'Transparency' then
                            local transparency = ClampTransparency(value)

                            circleFrame.BackgroundTransparency = (circleObj.Filled and transparency or 1)
                            uiStroke.Transparency = transparency
                        elseif index == 'Color' then
                            circleFrame.BackgroundColor3 = value
                            uiStroke.Color = value
                        end
                        circleObj[index] = value
                    end,
                    __index = function(self, index)
                        if index == 'Remove' or index == 'Destroy' then
                            return function()
                                circleFrame:Destroy()
                                circleObj.Remove(self)
                                return circleObj:Remove()
                            end
                        end
                        return circleObj[index]
                    end,
                    __tostring = function() return 'CustomLib' end
                })
            elseif ClassType == 'Square' then
                local squareObj = ({
                    Size = Vector2.zero,
                    Position = Vector2.zero,
                    Thickness = 0.7,
                    Filled = false,
                    Drag = false,
                } + LibraryMeta)

                local squareFrame, uiStroke = Instance.new('Frame'), Instance.new('UIStroke')
                squareFrame.Name = CustomLibIndex
                squareFrame.BorderSizePixel = 0
                local transparency
                if squareObj.Filled then
                    transparency = ClampTransparency(squareObj.Transparency)
                else
                    transparency = 1
                end
                squareFrame.BackgroundTransparency = transparency
                squareFrame.ZIndex = squareObj.ZIndex
                squareFrame.BackgroundColor3 = squareObj.Color
                squareFrame.Visible = squareObj.Visible
                uiStroke.Thickness = squareObj.Thickness
                uiStroke.Enabled = not squareObj.Filled
                uiStroke.LineJoinMode = Enum.LineJoinMode.Miter
                squareFrame.Parent, uiStroke.Parent = UtilityUI, squareFrame
                local dragging = false
                local dragStart = nil
                local startPos = nil
                squareFrame.MouseEnter:Connect(function()
                    if squareObj.Drag then
                        local inputConnection
                        inputConnection = UserInputService.InputBegan:Connect(function(input)
                            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                dragging = true
                                dragStart = input.Position
                                startPos = squareFrame.Position
                            end
                        end)
                        local leaveConnection
                        leaveConnection = squareFrame.MouseLeave:Connect(function()
                            inputConnection:Disconnect()
                            leaveConnection:Disconnect()
                        end)
                    end
                end)
                UserInputService.InputChanged:Connect(function(input)
                    if squareObj.Drag then
                        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                            local delta = input.Position - dragStart
                            local newX = startPos.X.Offset + delta.X
                            local newY = startPos.Y.Offset + delta.Y
                            squareFrame.Position = UDim2.new(startPos.X.Scale, newX, startPos.Y.Scale, newY)
                        end
                    end
                end)
                UserInputService.InputEnded:Connect(function(input)
                    if squareObj.Drag then
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false
                        end
                    end
                end)
                return setmetatable(table.create(0), {
                    __newindex = function(_, index, value)
                        if typeof(squareObj[index]) == 'nil' then return end

                        if index == 'Size' then
                            squareFrame.Size = UDim2.fromOffset(value.X, value.Y)
                        elseif index == 'Position' then
                            squareFrame.Position = UDim2.fromOffset(value.X, value.Y)
                        elseif index == 'Thickness' then
                            value = Clamp(value, 0.6, 0x7fffffff)
                            uiStroke.Thickness = value
                        elseif index == 'Visible' then
                            squareFrame.Visible = value
                        elseif index == 'Transparency' then
                            local transparency = ClampTransparency(value)
                            squareFrame.BackgroundTransparency = 1
                            uiStroke.Transparency = transparency
                        elseif index == 'Color' then
                            uiStroke.Color = value
                            squareFrame.BackgroundColor3 = value
                        end
                        squareObj[index] = value
                    end,
                    __index = function(self, index)
                        if index == 'Remove' or index == 'Destroy' then
                            return function()
                                squareFrame:Destroy()
                                squareObj.Remove(self)
                                return squareObj:Remove()
                            end
                        end
                        return squareObj[index]
                    end,
                    __tostring = function() return 'CustomLib' end
                })
            elseif ClassType == 'Text' then
                local textObj = ({
                    Text = '',
                    Font = Enum.Font.SourceSansBold,
                    Size = 0,
                    Position = Vector2.zero,
                    Center = false,
                    Outline = false,
                    OutlineColor = Color3.new()
                } + LibraryMeta)

                local textLabel, uiStroke = Instance.new('TextLabel'), Instance.new('UIStroke')
                textLabel.Name = CustomLibIndex
                textLabel.AnchorPoint = (Vector2.one * 0.5)
                textLabel.BorderSizePixel = 0
                textLabel.BackgroundTransparency = 1
                textLabel.RichText = true
                textLabel.Visible = textObj.Visible
                textLabel.TextColor3 = textObj.Color
                textLabel.TextTransparency = ClampTransparency(textObj.Transparency)
                textLabel.ZIndex = textObj.ZIndex

                textLabel.Font = (shared.azov and shared.azov["esp"] and shared.azov["esp"]["font"]) == "Plex" and Enum.Font.Arcade or Enum.Font.Roboto
                textLabel.TextSize = textObj.Size

                textLabel:GetPropertyChangedSignal('TextBounds'):Connect(function()
                    local textBounds = textLabel.TextBounds
                    local offset = textBounds / 2

                    local offsetX
                    if not textObj.Center then
                        offsetX = offset.X
                    else
                        offsetX = 0
                    end

                    textLabel.Position = UDim2.fromOffset(textObj.Position.X + offsetX, textObj.Position.Y + offset.Y)
                end)

                uiStroke.Thickness = 1
                uiStroke.Enabled = textObj.Outline
                uiStroke.Color = textObj.Color

                textLabel.Parent, uiStroke.Parent = UtilityUI, textLabel
                return setmetatable(table.create(0), {
                    __newindex = function(_, index, value)
                        if typeof(textObj[index]) == 'nil' then return end

                        if index == 'Text' then
                            textLabel.Text = value
                        elseif index == 'Font' then
                            value = Clamp(value, 0, 3)
                        elseif index == 'Size' then
                            textLabel.TextSize = value
                        elseif index == 'Position' then
                            local offset = textLabel.TextBounds / 2

                            local offsetX
                            if not textObj.Center then
                                offsetX = offset.X
                            else
                                offsetX = 0
                            end

                            textLabel.Position = UDim2.fromOffset(textObj.Position.X + offsetX, textObj.Position.Y + offset.Y)
                        elseif index == 'Center' then
                            local position
                            if value then
                                position = workspace.CurrentCamera.ViewportSize / 2
                            else
                                position = textObj.Position
                            end
                            textLabel.Position = UDim2.fromOffset(position.X, position.Y)
                        elseif index == 'Outline' then
                            uiStroke.Enabled = value
                        elseif index == 'OutlineColor' then
                            uiStroke.Color = value
                        elseif index == 'Visible' then
                            textLabel.Visible = value
                        elseif index == 'ZIndex' then
                            textLabel.ZIndex = value
                        elseif index == 'Transparency' then
                            local transparency = ClampTransparency(value)

                            textLabel.TextTransparency = transparency
                            uiStroke.Transparency = transparency
                        elseif index == 'Color' then
                            textLabel.TextColor3 = value
                        end
                        textObj[index] = value
                    end,
                    __index = function(self, index)
                        if index == 'Remove' or index == 'Destroy' then
                            return function()
                                textLabel:Destroy()
                                textObj.Remove(self)
                                return textObj:Remove()
                            end
                        elseif index == 'TextBounds' then
                            return textLabel.TextBounds
                        end
                        return textObj[index]
                    end,
                    __tostring = function() return 'CustomLib' end
                })
            end
        end
    end
    do
        SetRegion("Game")
        function Script:RayCast(Target, Origin, Ignore)
            local PartPosition = typeof(Target) == "Vector3" and Target or (Target:IsA("BasePart") and Target.Position)
            if not PartPosition then return false end
            
            Ignore = Ignore or {}
            local Direction = (PartPosition - Origin)
            local Params = RaycastParams.new()
            Params.FilterType = Enum.RaycastFilterType.Exclude
            Params.FilterDescendantsInstances = Ignore
            local Result = Workspace:Raycast(Origin, Direction, Params)
            
            if not Result then
                return true
            end
            
            if typeof(Target) == "Instance" then
                if Result.Instance == Target then
                    return true
                end
                
                local Character = Target:FindFirstAncestorOfClass("Model")
                if Character and Result.Instance:IsDescendantOf(Character) then
                    return true
                end
            end

            return false
        end

        function Script:ValidateClient(Player)
            local Object = Player.Character
            local Humanoid = (Object and Object:FindFirstChild("Humanoid")) or false
            local RootPart = (Humanoid and Humanoid.RootPart) or false
            return Object, Humanoid, RootPart
        end

        function Script:GetOrigin(Origin)
            local Object, Humanoid, RootPart = Script:ValidateClient(Self)
            if Origin == 'Head' and Object then
                local Head = Object:FindFirstChild('Head')
                if Head and Head:IsA('BasePart') then
                    return Head.CFrame.Position
                end
            elseif Origin == 'Torso' and RootPart then
                return RootPart.CFrame.Position
            end
            return Workspace.CurrentCamera.CFrame.Position
        end

        function Script:CalculateAngle(v1, v2)
            local dotProduct = v1:Dot(v2)
            local magnitude1 = v1.Magnitude
            local magnitude2 = v2.Magnitude
            local cosTheta = dotProduct / (magnitude1 * magnitude2)
            return math.acos(cosTheta) * (180 / math.pi)
        end

        function Script:GetClosestPlayerToCursor(Max, FOV, AllowOffscreen)
            local CurrentCamera = workspace.CurrentCamera
            local MousePosition = GetAimPosition()
            local Closest
            local Distance = Max or math.huge
            FOV = FOV or math.huge

            for _, Player in ipairs(Players:GetPlayers()) do
                if (Player == Self) then
                    continue
                end

                local Character = Player.Character

                if Player and Player.Character then

                    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
                    if (not HumanoidRootPart) then
                        continue
                    end

                    local Position, OnScreen = CurrentCamera:WorldToViewportPoint(HumanoidRootPart.Position)

                    if not OnScreen and not AllowOffscreen then
                        continue
                    end

                    if shared.azov["checks"]["silent aim targeting"]["forcefield"] and Character:FindFirstChild("Forcefield") then
                        continue
                    end

                    if shared.azov["checks"]["silent aim targeting"]["visible"] then
                        if not Script:RayCast(Character.HumanoidRootPart, Script:GetOrigin('Camera'), {Self.Character, TriggerPart, SilentAimPart}) then
                            continue
                        end
                    end

                    if shared.azov["checks"]["silent aim targeting"]["knocked"] and Player.Character and CurrentGame.Functions.IsKnocked(Player.Character) then
                        continue
                    end

                    if shared.azov["checks"]["silent aim targeting"]["player knocked"] and CurrentGame.Functions.IsKnocked(Self.Character) then
                        continue
                    end

                    if shared.azov["checks"]["silent aim targeting"]["knocked"] and CurrentGame.Functions.IsGrabbed(Player) then
                        continue
                    end

                    local Magnitude = (Vector2.new(Position.X, Position.Y) - MousePosition).Magnitude
                    if (Magnitude < Distance and Magnitude < FOV) then
                        Closest = Player
                        Distance = Magnitude
                    end
                end
            end
            return Closest
        end
    end
    do
        SetRegion("Gun System")
        function Modules.DaHood()
            if string.find(GameName, "Da Hood") or game.PlaceId == 88976059384565 then
                local IsClient = RunService:IsClient()
                local PlaceIDCheck = game.PlaceId == 88976059384565
                local function CanShoot(Character)
                    if Character then
                        local Humanoid = Character:FindFirstChild("Humanoid")
                        if Humanoid and (Humanoid.Health > 0 and Humanoid:GetState() ~= Enum.HumanoidStateType.Dead) then
                            local BodyEffects = Character:FindFirstChild("BodyEffects")
                            if BodyEffects then
                                local Tool = Character:FindFirstChildWhichIsA("Tool")
                                if Tool and (Tool:FindFirstChild("Handle") and Tool:FindFirstChild("Ammo")) then
                                    if not PlaceIDCheck and IsClient then
                                        if BodyEffects:FindFirstChild("Block") then
                                            shared.playerShot(Tool.Handle)
                                            Tool.Handle.NoAmmo:Play()
                                            return
                                        end
                                        if Tool.Ammo.Value == 0 then
                                            Tool.Handle.NoAmmo:Play()
                                            return
                                        end
                                    end
                                    if Character:FindFirstChild("FULLY_LOADED_CHAR") == nil then
                                        return
                                    elseif Character:FindFirstChild("FORCEFIELD") then
                                        return
                                    elseif Character:FindFirstChild("GRABBING_CONSTRAINT") then
                                        return
                                    elseif Character:FindFirstChild("Christmas_Sock") then
                                        return
                                    elseif BodyEffects.Cuff.Value == true then
                                        return
                                    elseif BodyEffects.Attacking.Value == true then
                                        return
                                    elseif BodyEffects["K.O"].Value == true then
                                        return
                                    elseif BodyEffects.Grabbed.Value then
                                        return
                                    elseif BodyEffects.Reload.Value == true then
                                        return
                                    elseif BodyEffects.Dead.Value == true then
                                        return
                                    elseif not Tool:GetAttribute("Cooldown") then
                                        local LastShot = Character:GetAttribute("LastGunShot")
                                        Character:SetAttribute("LastGunShot", Tool.Name)
                                        if not IsClient or (LastShot == Tool.Name or not Character:GetAttribute("ShotgunDebounce")) then
                                            if not IsClient and (not Character:GetAttribute("ShotgunDebounce") and (Tool.Name == "[Shotgun]" or (Tool.Name == "[Double-Barrel SG]" or (Tool.Name == "TacticalShotgun" or Tool.Name == "Drum-Shotgun")))) then

                                                Character:SetAttribute("ShotgunDebounce", true)
                                                task.delay(0.65, function()
                                                    Character:SetAttribute("ShotgunDebounce", nil)
                                                end)

                                            end
                                            return true
                                        end
                                    end
                                else
                                    return
                                end
                            else
                                return
                            end
                        else
                            return
                        end
                    else
                        return
                    end
                end

                local function ColorTransform(p14, p15)
                    if p15 == 0 then
                        return p14.Keypoints[1].Value
                    end
                    if p15 == 1 then
                        return p14.Keypoints[#p14.Keypoints].Value
                    end
                    for v16 = 1, #p14.Keypoints - 1 do
                        local v17 = p14.Keypoints[v16]
                        local v18 = p14.Keypoints[v16 + 1]
                        if v17.Time <= p15 and p15 < v18.Time then
                            local v19 = (p15 - v17.Time) / (v18.Time - v17.Time)
                            return Color3.new((v18.Value.R - v17.Value.R) * v19 + v17.Value.R, (v18.Value.G - v17.Value.G) * v19 + v17.Value.G, (v18.Value.B - v17.Value.B) * v19 + v17.Value.B)
                        end
                    end
                end

                local weaponNames = {
                    "[Shotgun]",
                    "[Drum-Shotgun]",
                    "[Rifle]",
                    "[TacticalShotgun]",
                    "[AR]",
                    "[AUG]",
                    "[AK47]",
                    "[LMG]",
                    "[SilencerAR]",
                }

                local replicatedStorage = game:GetService("ReplicatedStorage")
                local playersService = game:GetService("Players")
                local localPlayer = playersService.LocalPlayer
                local playerCharacter = Self.Character or Self.CharacterAdded:Wait()
                local shootAnimation
                local aimShootAnimation
                task.spawn(function()
                    local char = Self.Character or Self.CharacterAdded:Wait()
                    local humanoid = char:WaitForChild("Humanoid", 10)
                    if not humanoid then return end
                    local animator = humanoid:WaitForChild("Animator", 10)
                    if not animator then return end
                    local anims = replicatedStorage:WaitForChild("Animations", 10)
                    if not anims then return end
                    local gc = anims:WaitForChild("GunCombat", 10)
                    if not gc then return end
                    shootAnimation = animator:LoadAnimation(gc:WaitForChild("Shoot"))
                    aimShootAnimation = animator:LoadAnimation(gc:WaitForChild("AimShoot"))
                end)

                local v_u_14 = {}

                local function changefunc()
                    local v_u_38 = {
                        ["functions"] = {},
                    }

                    function v_u_38.Connect(_, p36)
                        local v37 = v_u_38.functions
                        table.insert(v37, p36)
                    end
                    local v_u_39 = nil
                    function v_u_38.updatechanges(_, p_u_40)
                        for _, v_u_41 in pairs(v_u_38.functions) do
                            task.spawn(function()
                                v_u_41(p_u_40.Press, p_u_40.Time, v_u_39)
                            end)
                        end
                        v_u_39 = p_u_40.Time
                    end
                    return v_u_38
                end

                setmetatable(v_u_14, {
                    ["__index"] = function(_, p42)
                        local v43 = v_u_14
                        if getmetatable(v43)[p42] == nil then
                            v_u_14[p42] = {}
                        end
                        local v44 = v_u_14
                        return getmetatable(v44)[p42]
                    end,
                    ["__newindex"] = function(_, p45, p46)
                        local v47 = v_u_14
                        if getmetatable(v47)[p45] == nil then
                            local v48 = v_u_14
                            getmetatable(v48)[p45] = {
                                ["val"] = p46,
                                ["changed"] = changefunc()
                            }
                        else
                            local v49 = v_u_14
                            getmetatable(v49)[p45].val = p46
                            local v50 = v_u_14
                            getmetatable(v50)[p45].changed:updatechanges(p46)
                        end
                    end
                })

                UserInputService.InputBegan:Connect(function(p51, p52)
                    if not p52 then
                        if p51.UserInputType == Enum.UserInputType.Keyboard or p51.UserInputType == Enum.UserInputType.Gamepad1 then
                            v_u_14[p51.KeyCode.Name] = {
                                ["Press"] = true,
                                ["Time"] = tick()
                            }
                            return
                        end
                        if p51.UserInputType == Enum.UserInputType.MouseButton2 then
                            v_u_14[Enum.UserInputType.MouseButton2.Name] = {
                                ["Press"] = true,
                                ["Time"] = tick()
                            }
                        end
                    end
                end)
                UserInputService.InputEnded:Connect(function(p53, p54)
                    if not p54 then
                        if p53.UserInputType == Enum.UserInputType.Keyboard or p53.UserInputType == Enum.UserInputType.Gamepad1 then
                            v_u_14[p53.KeyCode.Name] = {
                                ["Press"] = false,
                                ["Time"] = tick()
                            }
                            return
                        end
                        if p53.UserInputType == Enum.UserInputType.MouseButton2 then
                            v_u_14[Enum.UserInputType.MouseButton2.Name] = {
                                ["Press"] = false,
                                ["Time"] = tick()
                            }
                        end
                    end
                end)

                local v_u_70 = true
                v_u_14.MouseButton2.changed:Connect(function(p71, _, _)
                    if v_u_70 ~= false then
                        Script.Locals.IsAimed = p71
                        if Script.Locals.IsAimed == false then
                            v_u_70 = false
                            task.wait(0.1)
                            v_u_70 = true
                        end
                    end
                end)

                local function Animate(target)
                    playerCharacter = localPlayer.Character or localPlayer.CharacterAdded:Wait()

                    if playerCharacter and playerCharacter:FindFirstChild("Humanoid") and playerCharacter.Humanoid:FindFirstChild("Animator") then
                        shootAnimation = playerCharacter.Humanoid.Animator:LoadAnimation(replicatedStorage.Animations.GunCombat.Shoot)
                        aimShootAnimation = playerCharacter.Humanoid.Animator:LoadAnimation(replicatedStorage.Animations.GunCombat.AimShoot)

                        if Script.Locals.IsAimed or table.find(weaponNames, target.Parent.Name) then
                            aimShootAnimation:Play()
                        else
                            shootAnimation:Play()
                        end
                    end
                end

                shared.playerShot = Animate
                local v3 = game:GetService("Players")
                local v_u_5 = game:GetService("TweenService")
                local v_u_7 = v3.LocalPlayer
                local v_u_9 = ReplicatedStorage.SkinAssets
                local v_u_13 = workspace:GetServerTimeNow()
                local _ = game.PlaceId == 88976059384565
                local SoundsPlaying = {}

                local function GetAim(Position)

                    if _G.MobileShiftLock then
                        return (Camera.CFrame.p + Camera.CFrame.LookVector * 60 - Position).unit
                    end
                    local v24
                    if Mouse.Target then
                        v24 = Mouse.Hit.p
                    else
                        local v25 = Camera.CFrame
                        local v26 = v25.p + v25.LookVector * 60
                        local v27 = v25.LookVector
                        local v28 = Camera:ScreenPointToRay(Mouse.X, Mouse.Y)
                        local v29 = v28.Direction
                        local v30 = v28.Origin
                        v24 = v30 + v29 * ((v26 - v30):Dot(v27) / v29:Dot(v27))
                    end
                    return (v24 - Position).Unit, (v24 - Position).Magnitude
                end

                local function ShootGun(p34)

                    local v35 = p34.Shooter
                    local v_u_36 = p34.Handle
                    local v37 = p34.AimPosition
                    local v38 = p34.BeamColor
                    local v39 = p34.isReflecting
                    local v40 = p34.Hit
                    local v41 = p34.Range or 200
                    local LegitPosition = p34.LegitPosition
                    local v_u_42
                    if not v_u_36 then
                        return
                    end
                    v_u_42 = v_u_36:GetAttribute("SkinName")
                    local _, v43 = GetAim(v_u_36.Position)
                    local v_u_44 = p34.ForcedOrigin or v_u_36.Muzzle.WorldPosition
                    local v45 = (v37 - v_u_44).Unit
                    local v46 = RaycastParams.new()
                    local v47 = {}
                    local function set_list(targetTable, index, values)
                        for i, v in ipairs(values) do
                            targetTable[index + i - 1] = v
                        end
                    end

                    local v48 = { workspace:WaitForChild("Bush"), workspace:WaitForChild("Ignored"), TriggerPart, SilentAimPart }
                    set_list(v47, 1, {v35, table.unpack(v48)})

                    v46.FilterDescendantsInstances = v47
                    v46.FilterType = Enum.RaycastFilterType.Exclude
                    v46.IgnoreWater = true
                    local v_u_49, v_u_50, v_u_51
                    if v40 then
                        v_u_49 = p34.Hit
                        v_u_50 = p34.AimPosition
                        v_u_51 = p34.Normal
                    else
                        local v52 = workspace:Raycast(v_u_44, v45 * v41, v46)
                        if v52 then
                            v_u_49 = v52.Instance
                            v_u_50 = v52.Position
                            v_u_51 = v52.Normal
                        else
                            v_u_50 = v_u_44 + v45 * math.min(v43, v41)
                            v_u_51 = nil
                            v_u_49 = nil
                        end

                        local fhCfg = shared.azov["rage"]["damage modification"]
                        local tool = p34.Handle and p34.Handle.Parent
                        local isAllowed = false
                        if tool and fhCfg and fhCfg["weapons"] then
                            if tool.Name == "[Revolver]" and fhCfg["weapons"]["revolver"] then
                                isAllowed = true
                            elseif tool.Name == "[Double-Barrel SG]" and fhCfg["weapons"]["double-barrel shotgun"] then
                                isAllowed = true
                            end
                        end

                        if fhCfg and fhCfg["enabled"] and isAllowed and v_u_49 and v_u_49.Parent then
                            local Character = v_u_49:FindFirstAncestorOfClass("Model")
                            if Character then
                                local Humanoid = Character:FindFirstChildOfClass("Humanoid")
                                if Humanoid then
                                    local Instance = nil
                                    if fhCfg["mode"] == "full" then
                                        Instance = Character:FindFirstChild("Head")
                                    elseif fhCfg["mode"] == "half" then
                                        Instance = Character:FindFirstChild("HumanoidRootPart")
                                    end
                                    if Instance then
                                        v_u_49 = Instance

                                    end
                                end
                            end
                        end
                    end

                    local v_u_53 = Instance.new("Part")
                    v_u_53:SetAttribute("OwnerCharacter", v35.Name)
                    v_u_53.Name = "BULLET_RAYS"
                    v_u_53.Anchored = true
                    v_u_53.CanCollide = false
                    v_u_53.Size = Vector3.new(0, 0, 0)
                    v_u_53.Transparency = 1
                    game.Debris:AddItem(v_u_53, 1)
                    local Tool = Self.Character:FindFirstChildWhichIsA("Tool")
                    if shared.azov["silentaim"]["client redirection"]["enabled"] then
                        v_u_53.CFrame = CFrame.new(v_u_44, LegitPosition)
                    else
                        v_u_53.CFrame = CFrame.new(v_u_44, v_u_50)
                    end
                    v_u_53.Material = Enum.Material.SmoothPlastic
                    v_u_53.Parent = workspace.Ignored.Siren.Radius
                    local v54 = Instance.new("Attachment")
                    v54.Position = Vector3.new(0, 0, 0)
                    v54.Parent = v_u_53
                    local v55 = Instance.new("Attachment")
                    local v56 = -(v_u_50 - v_u_44).magnitude
                    v55.Position = Vector3.new(0, 0, v56)
                    v55.Parent = v_u_53
                    local v_u_57 = false
                    local v_u_58 = nil
                    local v59
                    if v_u_36 then
                        local v60 = v_u_36.Parent.Name
                        if v_u_42 and v_u_42 ~= "" then
                            if v_u_9.GunSkinMuzzleParticle:FindFirstChild(v_u_42) then
                                if not v39 then
                                    if v_u_9.GunSkinMuzzleParticle[v_u_42]:FindFirstChild("Muzzle") then
                                        if v_u_36.Parent:FindFirstChild("Default") and (v_u_36.Parent.Default:FindFirstChild("Mesh") and v_u_36.Parent.Default.Mesh:FindFirstChild("Muzzle")) then
                                            local v61
                                            if v_u_9.GunSkinMuzzleParticle[v_u_42].Muzzle:FindFirstChild("Different_GunMuzzle") then
                                                v61 = v_u_9.GunSkinMuzzleParticle[v_u_42].Muzzle.Different_GunMuzzle[v60]
                                            else
                                                v61 = v_u_9.GunSkinMuzzleParticle[v_u_42].Muzzle
                                            end
                                            for _, v62 in pairs(v61:GetChildren()) do
                                                local v63 = v62:GetAttribute("EmitCount") or 1
                                                local v_u_64 = v62:Clone()
                                                v_u_64.Parent = v_u_36.Parent.Default.Mesh.Muzzle
                                                v_u_64:Emit(v63)
                                                task.delay(v_u_64.Lifetime.Max, function()
                                                    v_u_64:Destroy()
                                                end)
                                            end
                                        end
                                    else
                                        local v65 = v_u_9.GunSkinMuzzleParticle[v_u_42]:GetChildren()
                                        local v66 = v65[math.random(#v65)]:Clone()
                                        v66.Parent = v54
                                        v66:Emit(v66.Rate)
                                    end
                                end
                                v_u_57 = true
                            end
                            if v_u_9.GunBeam:FindFirstChild(v_u_42) then
                                if v_u_9.GunBeam[v_u_42].GunBeam:IsA("BasePart") then
                                    v59 = {
                                        ["Parent"] = nil,
                                        ["Attachment0"] = nil,
                                        ["Attachment1"] = nil
                                    }
                                    if v_u_9.GunBeam[v_u_42].GunBeam:FindFirstChild("Different_GunBeam") then
                                        if v_u_9.GunBeam[v_u_42].GunBeam.Different_GunBeam[v60].GunBeam:IsA("BasePart") then
                                            v_u_58 = v_u_9.GunBeam[v_u_42].GunBeam.Different_GunBeam[v60].GunBeam:Clone()
                                        else
                                            v59 = v_u_9.GunBeam[v_u_42].GunBeam.Different_GunBeam[v60].GunBeam:Clone()
                                        end
                                    else
                                        v_u_58 = v_u_9.GunBeam[v_u_42].GunBeam:Clone()
                                    end
                                else
                                    v59 = v_u_9.GunBeam[v_u_42].GunBeam:Clone()
                                end
                            else
                                v59 = game.ReplicatedStorage.GunBeam:Clone()
                                v59.Color = v38 and ColorSequence.new(v38) or v59.Color
                            end
                        else
                            v59 = game.ReplicatedStorage.GunBeam:Clone()
                            v59.Color = v38 and ColorSequence.new(v38) or v59.Color
                        end
                    else
                        v59 = nil
                    end
                    task.spawn(function()
                        if v_u_58 then
                            local v67 = (v_u_50 - v_u_44).magnitude
                            local v68 = v67 / 725
                            v_u_58.Anchored = true
                            v_u_58.CanCollide = false
                            v_u_58.CanQuery = false
                            v_u_58.CFrame = CFrame.new(v_u_44, v_u_50)
                            local v69 = v_u_58.CFrame * CFrame.new(0, 0, -v67)
                            v_u_58.Parent = workspace.Ignored.Siren.Radius
                            task.delay(v68 + 5, function()
                                v_u_58:Destroy()
                                v_u_58 = nil
                            end)
                            if v_u_58:GetAttribute("SpecialEffects") then
                                for _, v70 in pairs(v_u_58:GetDescendants()) do
                                    if v70:IsA("Trail") and v70:GetAttribute("ColorRandom") then
                                        local v71 = v70:GetAttribute("ColorRandom")
                                        v70.Color = ColorSequence.new(ColorTransform(v71, math.random()))
                                    end
                                end
                            end
                            local v72 = game:GetService("TweenService"):Create(v_u_58, TweenInfo.new(0.05, Enum.EasingStyle.Linear), {
                                ["CFrame"] = v_u_58.CFrame * CFrame.new(0, 0, -0.1)
                            })
                            v72:Play()
                            task.wait(0.05)
                            if v72.PlaybackState ~= Enum.PlaybackState.Completed then
                                v72:Pause()
                            end
                            local v73 = nil
                            if _G.Reduce_Lag and not v_u_58:GetAttribute("NoSlow") or v_u_58:GetAttribute("LOWGFX") then
                                v_u_58.CFrame = v69
                            else
                                v73 = game:GetService("TweenService"):Create(v_u_58, TweenInfo.new(v68, Enum.EasingStyle.Linear), {
                                    ["CFrame"] = v69
                                })
                                v73:Play()
                                task.wait(v68)
                            end
                            if v_u_58:FindFirstChild("Impact") and (v_u_49 and (v_u_51 and not v_u_49.Parent:FindFirstChild("Humanoid"))) then
                                if v73 and v73.PlaybackState ~= Enum.PlaybackState.Completed then
                                    task.wait(0.05)
                                end
                                if not v_u_58:FindFirstChild("NoNormal") then
                                    v_u_58.CFrame = CFrame.new(v_u_50, v_u_50 - v_u_51)
                                end
                                for _, v74 in pairs(v_u_58.Impact:GetChildren()) do
                                    if v74:IsA("ParticleEmitter") then
                                        v74:Emit(v74:GetAttribute("EmitCount") or 1)
                                    end
                                end
                            else
                                for _, v75 in pairs(v_u_58:GetChildren()) do
                                    if v75:IsA("BasePart") then
                                        v75.Transparency = 1
                                    end
                                end
                            end
                            if v_u_58 then
                                for _, v76 in pairs(v_u_58:GetDescendants()) do
                                    if v76:IsA("ParticleEmitter") then
                                        v76.Enabled = false
                                    end
                                end
                            end
                        elseif v_u_49 and (v_u_49:IsDescendantOf(workspace.MAP) and (v_u_42 and (v_u_9.GunBeam:FindFirstChild(v_u_42) and v_u_9.GunBeam[v_u_42]:FindFirstChild("Impact")))) then
                            local v_u_77 = v_u_9.GunBeam[v_u_42].Impact:Clone()
                            v_u_77.Parent = workspace.Ignored
                            v_u_77:PivotTo(CFrame.new(v_u_50, v_u_50 + v_u_51 * 5) * CFrame.Angles(-1.5707963267948966, 0, 0))
                            for _, v78 in pairs(v_u_77:GetDescendants()) do
                                if v78:IsA("ParticleEmitter") then
                                    v78:Emit(v78:GetAttribute("EmitCount") or 1)
                                end
                            end
                            task.delay(1.5, function()
                                v_u_77:Destroy()
                                v_u_77 = nil
                            end)
                        end
                        local v79 = Instance.new("PointLight")
                        v79.Brightness = 0.5
                        v79.Range = 15
                        v79.Shadows = true
                        v79.Color = Color3.new(1, 1, 1)
                        v79.Parent = v_u_53
                        local v80 = v_u_36:FindFirstChild("ShootBBGUI")
                        local v81 = v80 and (not v_u_57 and v80:FindFirstChild("Shoot"))
                        if v81 then
                            v81.Size = UDim2.new(0, 0, 0, 0)
                            v81.ImageTransparency = 1
                            v81.Visible = true
                            v_u_5:Create(v81, TweenInfo.new(0.4, Enum.EasingStyle.Bounce, Enum.EasingDirection.In, 0, false, 0), {
                                ["Size"] = UDim2.new(1, 0, 1, 0),
                                ["ImageTransparency"] = 0.4
                            }):Play()
                            v_u_5:Create(v79, TweenInfo.new(0.4, Enum.EasingStyle.Bounce, Enum.EasingDirection.In, 0, false, 0), {
                                ["Range"] = 0
                            }):Play()
                            task.wait(0.4)
                            v_u_53:Destroy()
                            v_u_5:Create(v81, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.In, 0, false, 0), {
                                ["Size"] = UDim2.new(1, 0, 1, 0),
                                ["ImageTransparency"] = 1
                            }):Play()
                            task.wait(0.2)
                            v81.Visible = false
                        end
                    end)
                    v59.Attachment0 = v54
                    v59.Attachment1 = v55
                    v59.Name = "NewGunBeam"
                    v59.Parent = v_u_53
                    if v35 == v_u_7.Character and workspace:GetServerTimeNow() - v_u_13 > 0.95 then
                        Animate(v_u_36)
                    end
                    local playsound = function(p1, p2)
                        local v3 = p1.ShootSound:GetAttribute("SequenceSFX")
                        if v3 then
                            if p1.ShootSound:GetAttribute("CurrentSequence") == nil then
                                p1.ShootSound:SetAttribute("CurrentSequence", 1)
                            else
                                p1.ShootSound:SetAttribute("CurrentSequence", p1.ShootSound:GetAttribute("CurrentSequence") + 1)
                            end
                            local v4 = p1.ShootSound:GetAttribute("CurrentSequence")
                            local v5 = {}
                            for v6 in string.gmatch(v3, "%d+") do
                                table.insert(v5, v6)
                            end
                            p1.ShootSound.SoundId = "rbxassetid://" .. v5[v4 % #v5 + 1]
                        end
                        if p2 then
                            local v_u_7 = p1.ShootSound:Clone()
                            v_u_7.Name = "MG"
                            v_u_7.Parent = p1
                            v_u_7:Play()
                            task.delay(1, function()
                                v_u_7:Destroy()
                            end)
                        else
                            p1.ShootSound:Play()
                        end
                    end

                    if not SoundsPlaying[v_u_36] then
                        task.spawn(playsound, v_u_36, true)
                        SoundsPlaying[v_u_36] = true
                        task.delay(0.021, function()
                            SoundsPlaying[v_u_36] = nil
                        end)
                    end
                    if game.Lighting:GetAttribute("printhits") then
                        local v82 = print
                        local v83 = v_u_49
                        if v83 then
                            v83 = v_u_49:GetFullName()
                        end
                        v82(v83)
                    end
                    return v_u_50, v_u_49, v_u_51
                end
                return {
                    CanShoot = CanShoot,
                    Animate = Animate,
                    GetAim = GetAim,
                    ColorTransform = ColorTransform,
                    ShootGun = ShootGun,
                }
            else
                return {}
            end
        end
    end
    do
        SetRegion("Main")
        local DaHood = Modules.Get("DaHood")
        function Script:GetClosestPointOnPart(Part, Scale)
            local PartCFrame = Part.CFrame
            local PartSize = Part.Size
            local PartSizeTransformed = PartSize * (Scale / 2)

            local MousePosition = GetAimPosition()
            local CurrentCamera = Workspace.CurrentCamera

            local MouseRay = CurrentCamera:ViewportPointToRay(MousePosition.X, MousePosition.Y)
            local Transformed = PartCFrame:PointToObjectSpace(MouseRay.Origin + (MouseRay.Direction * MouseRay.Direction:Dot(PartCFrame.Position - MouseRay.Origin)))

            if (Mouse.Target == Part) then
                return Vector3.new(Mouse.Hit.X, Mouse.Hit.Y, Mouse.Hit.Z)
            end

            return PartCFrame * Vector3.new(
                math.clamp(Transformed.X, -PartSizeTransformed.X, PartSizeTransformed.X),
                math.clamp(Transformed.Y, -PartSizeTransformed.Y, PartSizeTransformed.Y),
                math.clamp(Transformed.Z, -PartSizeTransformed.Z, PartSizeTransformed.Z)
            )
        end

        function Script:GetClosestPointOnPartBasic(Part)
            if Part then
                local MouseRay = Mouse.UnitRay
                MouseRay = MouseRay.Origin + (MouseRay.Direction * (Part.Position - MouseRay.Origin).Magnitude)
                local Point = (MouseRay.Y >= (Part.Position - Part.Size / 2).Y and MouseRay.Y <= (Part.Position + Part.Size / 2).Y) and (Part.Position + Vector3.new(0, -Part.Position.Y + MouseRay.Y, 0)) or Part.Position
                local Check = RaycastParams.new()
                Check.FilterType = Enum.RaycastFilterType.Whitelist
                Check.FilterDescendantsInstances = {Part}
                local Ray = Workspace:Raycast(MouseRay, (Point - MouseRay), Check)

                if Mouse.Target == Part then
                    return Mouse.Hit.Position
                end

                if Ray then
                    return Ray.Position
                else
                    return Mouse.Hit.Position
                end
            end
        end

        function Script:GetClosestPartToCursor(Character)
            local CurrentCamera = Workspace.CurrentCamera
            local Closest
            local Distance = 1/0
            for _, Part in ipairs(Character:GetChildren()) do
                if (not Part:IsA("BasePart")) then
                    continue
                end

                local Position = CurrentCamera:WorldToViewportPoint(Part.Position)
                Position = Vector2.new(Position.X, Position.Y)
                local Magnitude = (GetAimPosition() - Position).Magnitude

                if (Magnitude < Distance) then
                    Closest = Part
                    Distance = Magnitude
                end
            end

            return Closest
        end

        function Script:GetClosestPartToCursorFilter(Character, PartsToCheck)
            local CurrentCamera = Workspace.CurrentCamera
            local Closest
            local Distance = 1/0

            for _, Part in ipairs(Character:GetChildren()) do
                if not Part:IsA("BasePart") or (PartsToCheck and not table.find(PartsToCheck, Part.Name)) then
                    continue
                end

                local Position = CurrentCamera:WorldToViewportPoint(Part.Position)
                Position = Vector2.new(Position.X, Position.Y)
                local Magnitude = (GetAimPosition() - Position).Magnitude

                if Magnitude < Distance then
                    Closest = Part
                    Distance = Magnitude
                end
            end

            return Closest
        end

        function Script:ApplyNormalPredictionFormula(Humanoid, Position, Velocity)
            local IsInAir = Humanoid:GetState() == Enum.HumanoidStateType.Freefall or Humanoid:GetState() == Enum.HumanoidStateType.Jumping
            local TargetVelocity = Velocity
            local pred = shared.azov["silentaim"]["prediction"]
            local px, py, pz = pred["x"] or 0, pred["y"] or 0, pred["z"] or 0
            if pred["mode"] == 'manual' and pred["manual"] then
                px, py, pz = pred["manual"]["x"], pred["manual"]["y"], pred["manual"]["z"]
            end
            local PredictionVelocity = Vector3.new(TargetVelocity.X, shared.azov["silentaim"]["yaxis"] and TargetVelocity.Y or 0, TargetVelocity.Z) * Vector3.new(px, py, pz)
            local Gravity = Workspace.Gravity
            if IsInAir and shared.azov["silentaim"]["ystabilizer"] > 0 then
                local TimeToHit = 2 * PredictionVelocity.Y / Gravity
                local GravityAdjustment = Vector3.new(0, -0.5 * Gravity * TimeToHit * TimeToHit, 0)
                PredictionVelocity = PredictionVelocity + GravityAdjustment

                local YOffset = Vector3.new(0, shared.azov["silentaim"]["ystabilizer"], 0)
                PredictionVelocity = PredictionVelocity + YOffset
            end
            local ClosestPoint = Position
            local PredictedCFrame = ClosestPoint + PredictionVelocity

            return Vector3.new(PredictedCFrame.X, PredictedCFrame.Y, PredictedCFrame.Z)
        end

        function Script:ApplyRecalculatedPredictionFormula(RootPart, Position)
            local pred = shared.azov["silentaim"]["prediction"]
            local px, py, pz = pred["x"] or 0, pred["y"] or 0, pred["z"] or 0
            if pred["mode"] == 'manual' and pred["manual"] then
                px, py, pz = pred["manual"]["x"], pred["manual"]["y"], pred["manual"]["z"]
            end
            local PredictionVelocity = Script:GetResolvedVelocity(RootPart) * Vector3.new(px, py, pz)
            local PredictedCFrame = Position + PredictionVelocity
            return PredictedCFrame
        end

        function Script:GetResolvedVelocity(Part)
            return Part.AssemblyLinearVelocity
        end

        local smoothedVelocity = Vector3.new(0, 0, 0)

        local function GetResolvedVelocity(Part)
            local Velocity = Part.AssemblyLinearVelocity
            local velocityMagnitude = Velocity.Magnitude
            local dynamicSmoothing
            if velocityMagnitude < 5 then
                dynamicSmoothing = 0.05
            elseif velocityMagnitude < 20 then
                dynamicSmoothing = 0.1
            else
                dynamicSmoothing = 0.2
            end
            smoothedVelocity = smoothedVelocity * (1 - dynamicSmoothing) + Velocity * dynamicSmoothing
            return smoothedVelocity * Vector3.new(1, 0, 1)
        end

        function Script:GetHitPosition(Mode)
            if Mode == 'Assist' then
                local Config = shared.azov["aimbot"]
                local Object = Script.Locals.AimAssistTarget.Character
                if not Object then return end

                local Humanoid = Object:FindFirstChild("Humanoid")
                if not Humanoid then return end

                local NearestPart = Script:GetClosestPartToCursor(Object)
                local HitPosition

                if Config["part"] == 'closest point' then
                    local NearestPoint
                    if Config["closest point"]["mode"] == 'advanced' then
                        NearestPoint = Script:GetClosestPointOnPart(NearestPart, Config["closest point"]["scale"])
                    else
                        NearestPoint = Script:GetClosestPointOnPartBasic(NearestPart)
                    end
                    HitPosition = NearestPoint

                elseif Config["part"] == 'closest part' then
                    HitPosition = NearestPart.Position

                elseif typeof(Config["part"]) == 'table' then
                    HitPosition = Script:GetClosestPartToCursorFilter(Object, Config["part"]).Position

                else
                    HitPosition = Object[Config["part"]].Position
                end

                if Config["prediction"]["enabled"] then
                    local px, py, pz = Config["prediction"]["x"] or 0, Config["prediction"]["y"] or 0, Config["prediction"]["z"] or 0
                    if Config["prediction"]["mode"] == 'manual' and Config["prediction"]["manual"] then
                        px, py, pz = Config["prediction"]["manual"]["x"], Config["prediction"]["manual"]["y"], Config["prediction"]["manual"]["z"]
                    end
                    local BasePrediction = Vector3.new(px, py, pz)
                    local Prediction = HitPosition + Script:GetResolvedVelocity(Object.HumanoidRootPart) * BasePrediction

                    return Prediction
                else
                    return HitPosition
                end
            end

            if Mode == 'Silent' then
                local Config = shared.azov["silentaim"]
                local Object = Script.Locals.SilentAimTarget.Character
                if not Object then return end

                local Humanoid = Object:FindFirstChild("Humanoid")
                if not Humanoid then return end

                local NearestPart = Script:GetClosestPartToCursor(Object)
                local HitPosition

                local HitPart = Config["part"]

                if HitPart == 'closest point' then
                    local NearestPoint
                    if Config["closest point"]["mode"] == 'advanced' then
                        NearestPoint = Script:GetClosestPointOnPart(NearestPart, Config["closest point"]["scale"])
                    else
                        NearestPoint = Script:GetClosestPointOnPartBasic(NearestPart)
                    end
                    HitPosition = NearestPoint

                elseif HitPart == 'closest part' then
                    HitPosition = NearestPart.Position

                elseif typeof(HitPart) == 'table' then
                    HitPosition = Script:GetClosestPartToCursorFilter(Object, HitPart).Position

                else
                    HitPosition = Object[HitPart].Position
                end

                if Config["prediction"]["enabled"] then
                    if Config["prediction"]["mode"] == 'hitscan' then
                        local RootPart = Object.HumanoidRootPart
                        local Velocity = RootPart.Velocity

                        local px, py, pz = Config["prediction"]["x"] or 0, Config["prediction"]["y"] or 0, Config["prediction"]["z"] or 0

                        if Humanoid.FloorMaterial == Enum.Material.Air and Velocity_Data.State == Enum.HumanoidStateType.Jumping then
                            return HitPosition + GetResolvedVelocity(RootPart) * Vector3.new(px, py, px)
                        else
                            return HitPosition + GetResolvedVelocity(RootPart) * Vector3.new(px, py, px)
                        end
                    else
                        local finalPos = Script:ApplyNormalPredictionFormula(Humanoid, HitPosition, Object.HumanoidRootPart.Velocity)
                        
                        local tool = Self.Character and Self.Character:FindFirstChildOfClass("Tool")
                        local weaponName = tool and string.lower(tool.Name)
                        
                        local futureData = Config["future"]
                        local futureCfg
                        if futureData then
                            if weaponName:find("shotgun") or weaponName:find("barrel") then
                                futureCfg = futureData["shotguns"]
                            elseif weaponName:find("revolver") or weaponName:find("pistol") or weaponName:find("glock") then
                                futureCfg = futureData["pistols"]
                            else
                                futureCfg = futureData["others"]
                            end
                        end
                        
                        local FutureX, FutureY, FutureZ = 0, 0, 0
                        if futureCfg and futureCfg["enabled"] then
                            if futureCfg["lure"] then

                                local root = Object:FindFirstChild("HumanoidRootPart")
                                if root then
                                    local velocity = root.AssemblyLinearVelocity
                                    local mag = velocity.Magnitude
                                    local lureScale = mag > 0 and (mag / 100) or 0
                                    FutureX, FutureY, FutureZ = lureScale, lureScale, lureScale
                                end
                            else
                                local s = futureCfg["settings"]
                                FutureX, FutureY, FutureZ = s["x"] or 0, s["y"] or 0, s["z"] or 0
                            end
                        end
                        
                        if FutureX ~= 0 or FutureY ~= 0 or FutureZ ~= 0 then
                            local root = Object:FindFirstChild("HumanoidRootPart")
                            if root then
                                finalPos = finalPos + (root.AssemblyLinearVelocity * Vector3.new(FutureX, FutureY, FutureZ))
                            end
                        end
                        
                        return finalPos
                    end
                else
                    return HitPosition
                end
            end
        end

        function Script:UpdateBox()
            if Script.Locals.SilentAimTarget and Script.Locals.SilentAimTarget.Character then
                local Object, Humanoid, RootPart = Script:ValidateClient(Script.Locals.SilentAimTarget)
                if (Object and Humanoid and RootPart) then
                    local Pos
                    Pos = RootPart.Position
                    local Position, Visible = Camera:WorldToViewportPoint(Pos)
                    local Size = RootPart.Size.Y
                    local scaleFactor = (Size * Camera.ViewportSize.Y) / (Position.Z * 2) * 80 / workspace.CurrentCamera.FieldOfView
                    local w, h = CurrentFOVX * scaleFactor, CurrentFOVY * scaleFactor

                    Script.Locals.FieldOfViewOne.Position = Vector2.new(Position.X - w / 2, Position.Y - h / 2)
                    Script.Locals.FieldOfViewOne.Size = Vector2.new(w, h)
                    Script.Locals.FieldOfViewOne.Visible = (Visible and shared.azov["silentaim"]["fov"]["type"] == 'box' and shared.azov["silentaim"]["fov"]["visible"]) or false

                    local mouseLocation = GetAimPosition()
                    local boxPos = Script.Locals.FieldOfViewOne.Position
                    local boxSize = Script.Locals.FieldOfViewOne.Size

                    if mouseLocation.X >= boxPos.X and mouseLocation.X <= boxPos.X + boxSize.X and
                        mouseLocation.Y >= boxPos.Y and mouseLocation.Y <= boxPos.Y + boxSize.Y then
                        Script.Locals.IsBoxFocused = true
                        Script.Locals.FieldOfViewOne.Color = Color3.fromRGB(255, 0, 0)
                        else
                            Script.Locals.IsBoxFocused = false
                        Script.Locals.FieldOfViewOne.Color =Color3.fromRGB(255, 255, 255)
                    end
                else
                    Script.Locals.FieldOfViewOne.Visible = false
                end
            else
                Script.Locals.FieldOfViewOne.Visible = false
            end
        end

        function Script:UpdateLabels()
            local viewportSize = Camera.ViewportSize
            local cx     = viewportSize.X / 2
            local uiCfg  = shared.azov["globals"]["hotkey ui"] or {}
            local FONT   = uiCfg["font"] or Enum.Font.Arcade
            local SZ     = uiCfg["text size"] or 11
            local AZOV_SZ = SZ + 5
            local AZOV_COL = uiCfg["azov color"] or Color3.fromRGB(255, 255, 255)
            local ROW_H  = SZ + 4
            local BRAND_H = AZOV_SZ + 4
            local GAP    = 1
            local MAX_ROWS = 10
            local DEFAULT_COLOR = Color3.fromRGB(255, 255, 255)

            if not BrandFrame then
                local gui = game:GetService("CoreGui"):FindFirstChild("UtilityUI_HUD")
                if not gui then
                    gui = Instance.new("ScreenGui")
                    gui.Name           = "UtilityUI_HUD"
                    gui.IgnoreGuiInset = true
                    gui.ResetOnSpawn   = false
                    gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
                    pcall(function() gui.Parent = game:GetService("CoreGui") end)
                    if not gui.Parent then gui.Parent = Self.PlayerGui end
                end

                BrandFrame = Instance.new("Frame")
                BrandFrame.BackgroundTransparency = 1
                BrandFrame.BorderSizePixel        = 0
                BrandFrame.AnchorPoint            = Vector2.new(0.5, 0)
                BrandFrame.Size                   = UDim2.new(0, 140, 0, BRAND_H)
                BrandFrame.Parent                 = gui

                LblAzov = Instance.new("TextLabel")
                LblAzov.BackgroundTransparency = 1
                LblAzov.BorderSizePixel        = 0
                LblAzov.Size                   = UDim2.new(0.5, -1, 1, 0)
                LblAzov.AnchorPoint            = Vector2.new(1, 0.5)
                LblAzov.Position               = UDim2.fromScale(0.5, 0.5)
                LblAzov.Font                   = FONT
                LblAzov.TextSize               = AZOV_SZ
                LblAzov.TextColor3             = AZOV_COL
                LblAzov.TextStrokeColor3       = Color3.fromRGB(0, 0, 0)
                LblAzov.TextStrokeTransparency = 0
                LblAzov.TextXAlignment         = Enum.TextXAlignment.Right
                LblAzov.ZIndex                 = 5
                LblAzov.Text                   = "azov."
                LblAzov.Parent                 = BrandFrame

                local CcFrame = Instance.new("Frame")
                CcFrame.BackgroundTransparency = 1
                CcFrame.BorderSizePixel        = 0
                CcFrame.Size                   = UDim2.new(0.5, 0, 1, 0)
                CcFrame.AnchorPoint            = Vector2.new(0, 0.5)
                CcFrame.Position               = UDim2.fromScale(0.5, 0.5)
                CcFrame.Parent                 = BrandFrame

                local function CcLabel(zidx, offsetX, offsetY, extraSz, textColor, textA, strokeColor, strokeA)
                    local l = Instance.new("TextLabel")
                    l.BackgroundTransparency = 1
                    l.BorderSizePixel        = 0
                    l.Size                   = UDim2.fromScale(1, 1)
                    l.AnchorPoint            = Vector2.new(0, 0.5)
                    l.Position               = UDim2.new(0, offsetX or 0, 0.5, offsetY or 0)
                    l.Font                   = FONT
                    l.TextSize               = AZOV_SZ + (extraSz or 0)
                    l.TextColor3             = textColor or AZOV_COL
                    l.TextTransparency       = textA or 0
                    l.TextStrokeColor3       = strokeColor or Color3.fromRGB(0, 0, 0)
                    l.TextStrokeTransparency = strokeA == nil and 1 or strokeA
                    l.TextXAlignment         = Enum.TextXAlignment.Left
                    l.ZIndex                 = zidx
                    l.Text                   = "cc"
                    l.Parent                 = CcFrame
                    return l
                end

                CcLabel(5, 0, 0, 0, AZOV_COL, 0, Color3.fromRGB(0, 0, 0), 0)

                Script.Locals.HudLines = {}
                for i = 1, MAX_ROWS do
                    local container = Instance.new("Frame")
                    container.BackgroundTransparency = 1
                    container.BorderSizePixel        = 0
                    container.AnchorPoint            = Vector2.new(0.5, 0)
                    container.Size                   = UDim2.new(0, 500, 0, ROW_H)
                    container.Visible                = false
                    container.Parent                 = gui

                    local feat = Instance.new("TextLabel")
                    feat.BackgroundTransparency = 1
                    feat.BorderSizePixel        = 0
                    feat.Size                   = UDim2.new(0, 120, 0, ROW_H)
                    feat.AnchorPoint            = Vector2.new(1, 0.5)
                    feat.Position               = UDim2.new(0.5, -2, 0.5, 0)
                    feat.Font                   = FONT
                    feat.TextSize               = SZ
                    feat.TextColor3             = Color3.fromRGB(255, 255, 255)
                    feat.TextStrokeColor3       = Color3.fromRGB(0, 0, 0)
                    feat.TextStrokeTransparency = 0
                    feat.TextXAlignment         = Enum.TextXAlignment.Right
                    feat.ZIndex                 = 5
                    feat.Text                   = ""
                    feat.Parent                 = container

                    local tFrame = Instance.new("Frame")
                    tFrame.BackgroundTransparency = 1
                    tFrame.BorderSizePixel        = 0
                    tFrame.Size                   = UDim2.new(1, 0, 1, 0)
                    tFrame.AnchorPoint            = Vector2.new(0.5, 0.5)
                    tFrame.Position               = UDim2.new(0.5, 0, 0.5, 0)
                    tFrame.Parent                 = container

                    local tLayers = {}
                    local function TLayer(zidx, extraSz, strokeA, fillA)
                        local l = Instance.new("TextLabel")
                        l.BackgroundTransparency = 1
                        l.BorderSizePixel        = 0
                        l.Size                   = UDim2.fromScale(1, 1)
                        l.AnchorPoint            = Vector2.new(0.5, 0.5)
                        l.Position               = UDim2.fromScale(0.5, 0.5)
                        l.RichText               = true
                        l.Font                   = FONT
                        l.TextSize               = SZ + extraSz
                        l.TextColor3             = Color3.fromRGB(255, 255, 255)
                        l.TextStrokeColor3       = Color3.fromRGB(0, 0, 0)
                        l.TextStrokeTransparency = strokeA
                        l.TextTransparency       = fillA
                        l.TextXAlignment         = Enum.TextXAlignment.Center
                        l.ZIndex                 = zidx
                        l.Text                   = ""
                        l.Parent                 = tFrame
                        table.insert(tLayers, l)
                    end
                    TLayer(3, 4, 0.0, 1.0)
                    TLayer(4, 2, 0.0, 1.0)
                    TLayer(5, 0, 0.0, 0.0)

                    Script.Locals.HudLines[i] = {
                        container = container,
                        feat      = feat,
                        tFrame    = tFrame,
                        tLayers   = tLayers,
                    }
                end
            end

            if not shared.azov["globals"]["show hotkeys"] then
                BrandFrame.Visible = false
                for i = 1, MAX_ROWS do
                    Script.Locals.HudLines[i].container.Visible = false
                end
                return
            end

            local lines = {}

            local function getArmor(char, player)
                local be = char:FindFirstChild("BodyEffects")
                if be then
                    local av = be:FindFirstChild("Armor") or be:FindFirstChild("Armour") or be:FindFirstChild("Defense")
                    if av and (av:IsA("NumberValue") or av:IsA("IntValue")) and av.Value > 0 then
                        return math.floor(av.Value + 0.5)
                    end
                end
                if player then
                    local ls = player:FindFirstChild("leaderstats")
                    if ls then
                        local av = ls:FindFirstChild("Armor") or ls:FindFirstChild("Armour") or ls:FindFirstChild("Defense") or ls:FindFirstChild("Vest")
                        if av and av.Value then return math.floor(av.Value + 0.5) end
                    end
                end
                local armorAttr = char:GetAttribute("Armor") or char:GetAttribute("Defense") or char:GetAttribute("Vest")
                if armorAttr then return math.floor(armorAttr + 0.5) end
                local av = char:FindFirstChild("Armor") or char:FindFirstChild("Armour") or char:FindFirstChild("Defense") or char:FindFirstChild("Vest")
                if av and av.Value then return math.floor(av.Value + 0.5) end
                return 0
            end

            local infoAdded = false
            local function addTargetInfo(target)
                if infoAdded then return end
                if target and target.Character and Self.Character then

                    if uiCfg["show target health"] then
                        local hp, maxhp, armor = 0, 0, 0
                        local hum = target.Character:FindFirstChildOfClass("Humanoid")
                        if hum then
                            hp = math.floor(hum.Health + 0.5)
                            maxhp = math.floor(hum.MaxHealth + 0.5)
                        end
                        armor = getArmor(target.Character, target)
                        local hCol, aCol = "rgb(85,255,85)", "rgb(85,170,255)"
                        local healthStr = string.format("health <font color=\"%s\">%d</font>", hCol, hp)
                        local armorStr = string.format("armor <font color=\"%s\">%d</font>", aCol, armor)
                        table.insert(lines, { text = healthStr .. "   " .. armorStr })
                    end

                    if uiCfg["show target distance"] then
                        local hrp = target.Character:FindFirstChild("HumanoidRootPart")
                        local myHRP = Self.Character:FindFirstChild("HumanoidRootPart")
                        if hrp and myHRP then
                            local dist = (myHRP.Position - hrp.Position).Magnitude
                            local tool = Self.Character:FindFirstChildOfClass("Tool")
                            local rObj = tool and tool:FindFirstChild("Range")
                            local weaponRange = (rObj and rObj:IsA("NumberValue")) and rObj.Value or 0
                            
                            local inRange = dist <= weaponRange
                            local distColor = inRange 
                                and (uiCfg["effective distance color"] or Color3.fromRGB(85, 255, 85)) 
                                or (uiCfg["ineffective distance color"] or Color3.fromRGB(255, 85, 85))
                            
                            local r, g, b = math.floor(distColor.R*255), math.floor(distColor.G*255), math.floor(distColor.B*255)
                            local colorStr = string.format("rgb(%d,%d,%d)", r, g, b)
                            
                            table.insert(lines, { text = string.format("distance <font color=\"%s\">%.1fm</font>", colorStr, dist) })
                        end
                    end
                    infoAdded = true
                end
            end

            if shared.azov["silentaim"]["enabled"] and IsSilentAiming and Script.Locals.SilentAimTarget then
                local target = Script.Locals.SilentAimTarget
                local tname  = string.lower(target.DisplayName)
                table.insert(lines, { text = "silent aim: " .. tname })
                if uiCfg["show can hit"] then
                    local canHit = Script.Locals.SilentAimCanHit and true or false
                    local hitTxt = canHit and "yes" or "no"
                    local hitCol = canHit and "rgb(85,255,85)" or "rgb(255,85,85)"
                    table.insert(lines, { text = string.format("can hit: <font color=\"%s\">%s</font>", hitCol, hitTxt) })
                end
                addTargetInfo(target)
            end

            if shared.azov["aimbot"]["enabled"] and Script.Locals.AimAssistTarget then
                local target = Script.Locals.AimAssistTarget
                local tname  = string.lower(target.DisplayName)
                table.insert(lines, { text = "aimbot: " .. tname })
                addTargetInfo(target)
            end

            if shared.azov["triggerbot"]["enabled"] and Script.Locals.TriggerState and Script.Locals.TriggerbotTarget then
                local target = Script.Locals.TriggerbotTarget
                local tname  = string.lower(target.DisplayName)
                table.insert(lines, { text = "triggerbot: " .. tname })
                addTargetInfo(target)
            end

            local _speedMode = shared.azov["movement"]["speed"]["mode"] or 'toggle'
            if shared.azov["movement"]["speed"]["enabled"] and (_speedMode == 'always' or Script.Locals.IsWalkSpeeding) then
                table.insert(lines, { text = "walk speed" })
            end

            local _jumpMode = shared.azov["movement"]["jump"]["mode"] or 'hold'
            if shared.azov["movement"]["jump"]["value"] and (_jumpMode == 'always' or Script.Locals.IsJumping) then
                table.insert(lines, { text = "jump" })
            end

            if shared.azov["rage"]["doubletap"]["enabled"] and Script.Locals.IsDoubleTapping then
                table.insert(lines, { text = "double tap" })
            end

            local activeCount = #lines
            local totalH = BRAND_H + (activeCount > 0 and (GAP + activeCount * (ROW_H + GAP) - GAP) or 0)
            local blockTop = (viewportSize.Y - 110) - totalH

            BrandFrame.Visible  = true
            BrandFrame.Position = UDim2.fromOffset(cx, blockTop)

            -- update azov size
            LblAzov.TextSize = AZOV_SZ
            for _, l in ipairs(BrandFrame:GetDescendants()) do
                if l:IsA("TextLabel") and l.Name ~= "LblAzov" and l.Text == "beta" then
                    l.TextSize = AZOV_SZ
                end
            end

            for i = 1, MAX_ROWS do
                Script.Locals.HudLines[i].container.Visible = false
                -- update normal texts size
                Script.Locals.HudLines[i].feat.TextSize = SZ
                for _, layer in ipairs(Script.Locals.HudLines[i].tLayers) do
                    -- layers have different extra sizes
                    if layer.ZIndex == 3 then
                        layer.TextSize = SZ + 4
                    elseif layer.ZIndex == 4 then
                        layer.TextSize = SZ + 2
                    else
                        layer.TextSize = SZ
                    end
                end
            end

            local rowTop = blockTop + BRAND_H + GAP
            for idx, e in ipairs(lines) do
                local row = Script.Locals.HudLines[idx]
                row.container.Visible  = true
                row.container.Position = UDim2.fromOffset(cx, rowTop)
                
                row.feat.Visible = false
                row.tFrame.Visible = true
                
                for _, l in ipairs(row.tLayers) do
                    l.Text = e.text
                    l.TextColor3 = DEFAULT_COLOR
                end
                
                rowTop = rowTop + ROW_H + GAP
            end
        end

        function Script:ShouldShoot(Target)
            if not Target then
                SilentAimPart.Position = Vector3.zero
                return false
            end
            if not Target.Character then
                SilentAimPart.Position = Vector3.zero
                return false
            end

            local allConditionsPassed = true

            if not IsSilentAiming then
                allConditionsPassed = false
                SilentAimPart.Position = Vector3.zero
            end

            if shared.azov["checks"]["forcefield"] and Target.Character:FindFirstChild("Forcefield") then
                allConditionsPassed = false
                SilentAimPart.Position = Vector3.zero
            end

            local tPart = Target.Character:FindFirstChild("HumanoidRootPart") or Target.Character:FindFirstChild("Head")
            if not tPart or not Script:RayCast(tPart, Script:GetOrigin('Camera'), {Self.Character, TriggerPart, SilentAimPart}) then
                allConditionsPassed = false
                SilentAimPart.Position = Vector3.zero
            end

            if shared.azov["checks"]["knocked"] and CurrentGame.Functions.IsKnocked(Target.Character) then
                allConditionsPassed = false
                SilentAimPart.Position = Vector3.zero
            end

            if shared.azov["checks"]["player knocked"] and CurrentGame.Functions.IsKnocked(Self.Character) then
                allConditionsPassed = false
                SilentAimPart.Position = Vector3.zero
            end

            if shared.azov["checks"]["grabbed"] and CurrentGame.Functions.IsGrabbed(Target) then
                allConditionsPassed = false
                SilentAimPart.Position = Vector3.zero
            end

            local raycastParams = RaycastParams.new()
            raycastParams.FilterType = Enum.RaycastFilterType.Exclude
            raycastParams.FilterDescendantsInstances = {Self.Character, TriggerPart, SilentAimPart}
            raycastParams.IgnoreWater = true

            local screen, onScreen = Camera:WorldToViewportPoint(Script.Locals.HitPosition)

            local _aimPos = GetAimPosition()
            local DistanceX = math.abs(screen.X - _aimPos.X)
            local DistanceY = math.abs(screen.Y - _aimPos.Y)

            if shared.azov["silentaim"]["fov"]["enabled"] then
                local fovType = shared.azov["silentaim"]["fov"]["type"]
                if fovType == 'box' then
                    if not onScreen or not Script.Locals.IsBoxFocused then
                        allConditionsPassed = false
                        SilentAimPart.Position = Vector3.zero
                    end
                elseif fovType == 'circle' then
                    local fov = CurrentFOV or shared.azov["silentaim"]["fov"]["circle"]
                    local dist = math.sqrt(DistanceX * DistanceX + DistanceY * DistanceY)
                    if not onScreen or dist > fov then
                        allConditionsPassed = false
                        SilentAimPart.Position = Vector3.zero
                    end
                end
            end

            if shared.azov["silentaim"]["fov"]["enabled"] and shared.azov["silentaim"]["fov"]["type"] == '3d' then
                local function Ray(origin, direction, raycastParams, _depth)
                    _depth = (_depth or 0) + 1
                    if _depth > 8 then return nil end
                    local result = workspace:Raycast(origin, direction, raycastParams)
                    if result and result.Instance then
                        if result.Instance ~= SilentAimPart then
                            origin = result.Position + direction.Unit * 0.1
                            return Ray(origin, direction, raycastParams, _depth)
                        else
                            return result
                        end
                    end
                    return nil
                end

                local mouseLocation = GetAimPosition()
                local ray = Camera:ViewportPointToRay(mouseLocation.X, mouseLocation.Y)
                local result = Ray(ray.Origin, ray.Direction * 1000, raycastParams)

                SilentAimPart.Size = Vector3.new(shared.azov["silentaim"]["fov"]["3d"][1], shared.azov["silentaim"]["fov"]["3d"][2], shared.azov["silentaim"]["fov"]["3d"][3])
                SilentAimPart.Parent = workspace
                SilentAimPart.Anchored = true
                SilentAimPart.CanCollide = false
                SilentAimPart.Transparency = shared.azov["silentaim"]["fov"]["visible"] and 0.7 or 1
                SilentAimPart.Color = Color3.new(1, 0, 0)

                if allConditionsPassed then
                    local tPart = Target.Character:FindFirstChild("HumanoidRootPart") or Target.Character:FindFirstChild("Head")
                    SilentAimPart.Position = tPart and tPart.Position or Vector3.zero
                else
                    SilentAimPart.Position = Vector3.zero
                end
                if result and result.Instance ~= SilentAimPart then
                    allConditionsPassed = false
                    SilentAimPart.Position = Vector3.zero
                end
            end

            return allConditionsPassed
        end

        local Ticks = {}
        local SGTick = tick()

        function Script:GetGunCategory()
            if Self and Self.Character then
                local Tool = Self.Character:FindFirstChildWhichIsA("Tool")
                if Tool then
                    if table.find(WeaponInfo.Shotguns, Tool.Name) then
                        return "Shotgun"
                    end

                    if table.find(WeaponInfo.Pistols, Tool.Name) then
                        return "Pistol"
                    end

                    if table.find(WeaponInfo.Rifles, Tool.Name) then
                        return "Rifle"
                    end

                    if table.find(WeaponInfo.Bursts, Tool.Name) then
                        return "Burst"
                    end

                    if table.find(WeaponInfo.SMG, Tool.Name) then
                        return "SMG"
                    end

                    if table.find(WeaponInfo.Snipers, Tool.Name) then
                        return "Sniper"
                    end

                    if table.find(WeaponInfo.AutoShotguns, Tool.Name) then
                        return "Auto"
                    end
                end
            end
            return nil
        end

        function Script:SilentAimFunc(Tool)
            if string.find(GameName, "Dee Hood") or string.find(GameName, "Der Hood") and shared.azov["silentaim"]["enabled"] then
                if Script.Locals.SilentAimTarget and Script.Locals.SilentAimTarget.Character then
                    local Player = Script.Locals.SilentAimTarget
                    local Character = Player.Character

                    local Position, OnScreen = Camera:WorldToViewportPoint(Script.Locals.HitPosition)

                    if not OnScreen then
                        return
                    end

                    if Script:ShouldShoot(Script.Locals.SilentAimTarget) then
                        local Arguments = {
                            [1] = CurrentGame.Updater,
                            [2] = Script.Locals.HitPosition
                        }

                        CurrentGame.RemotePath():FireServer(table.unpack(Arguments))
                    else
                        SilentAimPart.Position = Vector3.zero
                    end
                end
            else
                if string.find(GameName, "Da Hood") or game.PlaceId == 88976059384565 then

                    if shared.azov["checks"]["silent aim targeting"]["knife"] and Tool.Name == "[Knife]" then
                        ShootFunc(Gun, false)
                        return
                    end
                    if not Ticks[Tool.Name] then
                        Ticks[Tool.Name] = 0
                    end

                    local WeaponOffset = WeaponInfo.Offsets[Tool.Name]
                    local Gun = Script:GetGunCategory()
                    local ToolHandle = Tool:WaitForChild("Handle")
                    local LocalCharacter = Self.Character or Self.CharacterAdded:Wait()
                    
                    local Cooldown = Tool:WaitForChild("ShootingCooldown").Value
                    local DelayCfg = shared.azov["delay changer"]
                    if DelayCfg and DelayCfg["enabled"] then
                        local WeaponCfg = DelayCfg["weapon configs"]
                        if WeaponCfg and WeaponCfg["enabled"] then
                            local gunType = Script:GetGunCategory()
                            if gunType == "Shotgun" then
                                Cooldown = WeaponCfg["shotguns"]["delay"] or Cooldown
                            elseif gunType == "Pistol" then
                                Cooldown = WeaponCfg["pistols"]["delay"] or Cooldown
                            else
                                Cooldown = WeaponCfg["others"]["delay"] or Cooldown
                            end
                        else
                            Cooldown = DelayCfg["delay"] or Cooldown
                        end
                    end
                    
                    local NoClueWhatThisIs = game.PlaceId == 88976059384565 and {
                        ["value"] = 5
                    } or Tool.Ammo
                    local Time = workspace:GetServerTimeNow()
                    local Check = tick() - Ticks[Tool.Name] >= Cooldown + WeaponInfo.Delays[Tool.Name]
                    local ToolEvent = Tool:WaitForChild("RemoteEvent", 2) or { ["FireServer"] = function(_, _) end }

                    local DoubleTap
                    if shared.azov["rage"]["doubletap"]["enabled"]  then
                        if Script.Locals.IsDoubleTapping then
                            DoubleTap = true
                        else
                            DoubleTap = false
                        end
                    else
                        DoubleTap = false
                    end

                    local BeamCol = Color3.new(1, 0.545098, 0.14902)

                    local function ShootFunc(GunType, SilentAim)
                        if GunType == "Shotgun" then
                            if Check and (NoClueWhatThisIs.Value >= 1 and (not _G.GUN_COMBAT_TOGGLE and DaHood.CanShoot(Self.Character))) then
                                Ticks[Tool.Name] = tick()
                                ToolEvent:FireServer("Shoot")

                                if DoubleTap then
                                    local ForcedOriginDT = Tool:FindFirstChild("Default") and (Tool.Default:FindFirstChild("Mesh") and Tool.Default.Mesh:FindFirstChild("Muzzle")) or { ["WorldPosition"] = (ToolHandle.CFrame * WeaponOffset).Position }
                                    local WeaponRangeDT = Tool:WaitForChild("Range")
                                    local HitPositionDT = Script.Locals.HitPosition
                                    local AimPositionDT = SilentAim and HitPositionDT or (ForcedOriginDT.WorldPosition + DaHood.GetAim(ForcedOriginDT.WorldPosition) * WeaponRangeDT.Value)
                                    local A0, A1, A2 = DaHood.ShootGun({
                                        ["Shooter"] = LocalCharacter,
                                        ["Handle"] = ToolHandle,
                                        ["AimPosition"] = AimPositionDT,
                                        ["BeamColor"] = BeamCol,
                                        ["ForcedOrigin"] = ForcedOriginDT.WorldPosition,
                                        ["LegitPosition"] = AimPositionDT,
                                        ["Range"] = WeaponRangeDT.Value
                                    })
                                    ReplicatedStorage.MainEvent:FireServer("ShootGun", ToolHandle, ForcedOriginDT.WorldPosition, A0, A1, A2, Time)
                                    ToolEvent:FireServer()
                                end
                                for _ = 1, 5 do
                                    local HitPosition = Script.Locals.HitPosition
                                    local SpreadX
                                    local SpreadY
                                    local SpreadZ
                                    if shared.azov["rage"]["spread modifier"]["enabled"] then
                                        local toolName = Tool.Name
                                        local spreadReduction = shared.azov["rage"]["spread modifier"]["value"] or 1
                                        local randomizer = shared.azov["rage"]["spread modifier"]["randomizer"]
                                        spreadReduction = math.clamp(spreadReduction, 0, 1)
                                        local spreadFactor = spreadReduction

                                        if randomizer["enabled"] then
                                            spreadFactor = spreadFactor * (1 - math.random() * randomizer["value"])
                                        end
                                        SpreadX = math.random() > 0.5 and math.random() * 0.05 * spreadFactor or -math.random() * 0.05 * spreadFactor
                                        SpreadY = math.random() > 0.5 and math.random() * 0.1 * spreadFactor or -math.random() * 0.1 * spreadFactor
                                        SpreadZ = math.random() > 0.5 and math.random() * 0.05 * spreadFactor or -math.random() * 0.05 * spreadFactor

                                    else
                                        SpreadX = math.random() > 0.5 and math.random() * 0.05 or -math.random() * 0.05
                                        SpreadY = math.random() > 0.5 and math.random() * 0.1 or -math.random() * 0.1
                                        SpreadZ = math.random() > 0.5 and math.random() * 0.05 or -math.random() * 0.05
                                    end

                                    local ForcedOrigin = Tool:FindFirstChild("Default") and (Tool.Default:FindFirstChild("Mesh") and Tool.Default.Mesh:FindFirstChild("Muzzle")) or { ["WorldPosition"] = (ToolHandle.CFrame * WeaponOffset).Position }

                                    local TotalSpread = Vector3.new(SpreadX, SpreadY, SpreadZ)
                                    local AimPosition
                                    local WeaponRange = Tool:WaitForChild("Range")
                                    AimPosition = SilentAim and (ForcedOrigin.WorldPosition + ((HitPosition - ForcedOrigin.WorldPosition).Unit + TotalSpread) * WeaponRange.Value) or (ForcedOrigin.WorldPosition + (DaHood.GetAim(ForcedOrigin.WorldPosition) + TotalSpread) * WeaponRange.Value)
                                    local Arg0, Arg1, Arg2 = DaHood.ShootGun({
                                        ["Shooter"] = LocalCharacter,
                                        ["Handle"] = ToolHandle,
                                        ["AimPosition"] = AimPosition,
                                        ["BeamColor"] = BeamCol,
                                        ["ForcedOrigin"] = ForcedOrigin.WorldPosition,
                                        ["LegitPosition"] = ForcedOrigin.WorldPosition + (DaHood.GetAim(ForcedOrigin.WorldPosition) + TotalSpread) * WeaponRange.Value,
                                        ["Range"] = WeaponRange.Value
                                    })
                                    ReplicatedStorage.MainEvent:FireServer("ShootGun", ToolHandle, ForcedOrigin.WorldPosition, Arg0, Arg1, Arg2, Time)
                                end
                                ToolEvent:FireServer()
                            end
                        elseif Gun == "Pistol" then
                            if Check and (NoClueWhatThisIs.Value >= 1 and (not _G.GUN_COMBAT_TOGGLE and DaHood.CanShoot(Self.Character))) then
                                Ticks[Tool.Name] = tick()
                                local HitPosition = Script.Locals.HitPosition
                                if DoubleTap then
                                    ToolEvent:FireServer("Shoot")
                                    Script.Locals.DoubleTapState = true
                                    local AimPosition
                                    local ForcedOrigin = Tool:FindFirstChild("Default") and (Tool.Default:FindFirstChild("Mesh") and Tool.Default.Mesh:FindFirstChild("Muzzle")) or { ["WorldPosition"] = (ToolHandle.CFrame * WeaponOffset).Position }

                                    local WeaponRange = Tool:WaitForChild("Range")
                                    AimPosition = SilentAim and HitPosition or (ForcedOrigin.WorldPosition + DaHood.GetAim(ForcedOrigin.WorldPosition) * 200)
                                    local Arg0, Arg1, Arg2 = DaHood.ShootGun({
                                        ["Shooter"] = LocalCharacter,
                                        ["Handle"] = ToolHandle,
                                        ["ForcedOrigin"] = ForcedOrigin.WorldPosition or (ToolHandle.CFrame * WeaponOffset).Position,
                                        ["AimPosition"] = AimPosition,
                                        ["BeamColor"] = BeamCol,
                                        ["LegitPosition"] = ForcedOrigin.WorldPosition + DaHood.GetAim(ForcedOrigin.WorldPosition) * 200,
                                        ["Range"] = WeaponRange.Value
                                    })
                                    ReplicatedStorage.MainEvent:FireServer("ShootGun", ToolHandle, ForcedOrigin.WorldPosition, Arg0, Arg1, Arg2)
                                    ToolEvent:FireServer()
                                    Script.Locals.DoubleTapState = false
                                end
                                ToolEvent:FireServer("Shoot")

                                local AimPosition
                                local ForcedOrigin = Tool:FindFirstChild("Default") and (Tool.Default:FindFirstChild("Mesh") and Tool.Default.Mesh:FindFirstChild("Muzzle")) or { ["WorldPosition"] = (ToolHandle.CFrame * WeaponOffset).Position }

                                local WeaponRange = Tool:WaitForChild("Range")
                                AimPosition = SilentAim and HitPosition or (ForcedOrigin.WorldPosition + DaHood.GetAim(ForcedOrigin.WorldPosition) * 200)
                                local WeaponRange = Tool:WaitForChild("Range")
                                local Arg0, Arg1, Arg2 = DaHood.ShootGun({
                                    ["Shooter"] = LocalCharacter,
                                    ["Handle"] = ToolHandle,
                                    ["ForcedOrigin"] = ForcedOrigin.WorldPosition or (ToolHandle.CFrame * WeaponOffset).Position,
                                    ["AimPosition"] = AimPosition,
                                    ["BeamColor"] = BeamCol,
                                    ["LegitPosition"] = ForcedOrigin.WorldPosition + DaHood.GetAim(ForcedOrigin.WorldPosition) * 200,
                                    ["Range"] = WeaponRange.Value
                                })
                                ReplicatedStorage.MainEvent:FireServer("ShootGun", ToolHandle, ForcedOrigin.WorldPosition, Arg0, Arg1, Arg2)
                                ToolEvent:FireServer()
                            end
                        elseif Gun == "Auto" then
                            if Check and (not _G.GUN_COMBAT_TOGGLE and DaHood.CanShoot(LocalCharacter)) then
                                Ticks[Tool.Name] = tick()
                                ToolEvent:FireServer("Shoot")
                                local Flag = true
                                task.spawn(function()
                                    while Flag and (Tool.Parent == LocalCharacter and (NoClueWhatThisIs.Value > 0 and DaHood.CanShoot(LocalCharacter))) do
                                        local HitPosition = Script.Locals.HitPosition
                                        local CurrentTime = workspace:GetServerTimeNow()
                                        for _ = 1, 5 do
                                            local SpreadX
                                            local SpreadY
                                            local SpreadZ
                                            if shared.azov["rage"]["spread modifier"]["enabled"] then
                                                local toolName = Tool.Name
                                                local spreadReduction = shared.azov["rage"]["spread modifier"]["value"] or 1
                                                local randomizer = shared.azov["rage"]["spread modifier"]["randomizer"]
                                                spreadReduction = math.clamp(spreadReduction, 0, 1)
                                                local spreadFactor = spreadReduction

                                                if randomizer["enabled"] then
                                                    spreadFactor = spreadFactor * (1 - math.random() * randomizer["value"])
                                                end
                                                SpreadX = math.random() > 0.5 and math.random() * 0.05 * spreadFactor or -math.random() * 0.05 * spreadFactor
                                                SpreadY = math.random() > 0.5 and math.random() * 0.1 * spreadFactor or -math.random() * 0.1 * spreadFactor
                                                SpreadZ = math.random() > 0.5 and math.random() * 0.05 * spreadFactor or -math.random() * 0.05 * spreadFactor

                                            else
                                                SpreadX = math.random() > 0.5 and math.random() * 0.05 or -math.random() * 0.05
                                                SpreadY = math.random() > 0.5 and math.random() * 0.1 or -math.random() * 0.1
                                                SpreadZ = math.random() > 0.5 and math.random() * 0.05 or -math.random() * 0.05
                                            end

                                            local ForcedOrigin = Tool:FindFirstChild("Default") and (Tool.Default:FindFirstChild("Mesh") and Tool.Default.Mesh:FindFirstChild("Muzzle")) or { ["WorldPosition"] = (ToolHandle.CFrame * WeaponOffset).Position }

                                            local TotalSpread = Vector3.new(SpreadX, SpreadY, SpreadZ)
                                            local AimPosition
                                            local WeaponRange = Tool:WaitForChild("Range")
                                            AimPosition = SilentAim and (ForcedOrigin.WorldPosition + ((HitPosition - ForcedOrigin.WorldPosition).Unit + TotalSpread) * WeaponRange.Value) or (ForcedOrigin.WorldPosition + (DaHood.GetAim(ForcedOrigin.WorldPosition) + TotalSpread) * WeaponRange.Value)
                                            local Arg0, Arg1, Arg2 = DaHood.ShootGun({
                                                ["Shooter"] = LocalCharacter,
                                                ["Handle"] = ToolHandle,
                                                ["AimPosition"] = AimPosition,
                                                ["BeamColor"] = BeamCol,
                                                ["ForcedOrigin"] = ForcedOrigin.WorldPosition,
                                                ["LegitPosition"] = ForcedOrigin.WorldPosition + (DaHood.GetAim(ForcedOrigin.WorldPosition) + TotalSpread) * WeaponRange.Value,
                                                ["Range"] = WeaponRange.Value
                                            })
                                            ReplicatedStorage.MainEvent:FireServer("ShootGun", ToolHandle, ForcedOrigin.WorldPosition, Arg0, Arg1, Arg2, CurrentTime)
                                        end
                                        task.wait(Cooldown + 0.0095)
                                        Ticks[Tool.Name] = tick()
                                    end
                                    ToolEvent:FireServer()
                                end)
                                Tool.Deactivated:Wait()
                                Flag = false
                            end
                        elseif Gun == "Burst" then
                            local Tolerance = Tool:WaitForChild("ToleranceCooldown").Value
                            local ShootingCool = Tool:WaitForChild("ShootingCooldown").Value
                            if tick() - Ticks[Tool.Name] >= Tolerance and (not _G.GUN_COMBAT_TOGGLE and DaHood.CanShoot(LocalCharacter)) then
                                Ticks[Tool.Name] = tick()
                                ToolEvent:FireServer("Shoot")
                                workspace:GetServerTimeNow()
                                task.spawn(function()
                                    for _ = 1, NoClueWhatThisIs.Value > 3 and 3 or NoClueWhatThisIs.Value do
                                        local HitPosition = Script.Locals.HitPosition
                                        local v17
                                        local ForcedOrigin = Tool:FindFirstChild("Default") and (Tool.Default:FindFirstChild("Mesh") and Tool.Default.Mesh:FindFirstChild("Muzzle")) or { ["WorldPosition"] = (ToolHandle.CFrame * WeaponOffset).Position }
                                        local WeaponRange = Tool:WaitForChild("Range")
                                        v17 = SilentAim and (ForcedOrigin.WorldPosition + ((HitPosition - ForcedOrigin.WorldPosition).Unit) * 200) or (ForcedOrigin.WorldPosition + DaHood.GetAim(ForcedOrigin.WorldPosition) * 200)
                                        local v18, v19, v20 = DaHood.ShootGun({
                                            ["Shooter"] = LocalCharacter,
                                            ["Handle"] = ToolHandle,
                                            ["ForcedOrigin"] = ForcedOrigin.WorldPosition,
                                            ["AimPosition"] = v17,
                                            ["LegitPosition"] = ForcedOrigin.WorldPosition + DaHood.GetAim(ForcedOrigin.WorldPosition) * 200,
                                            ["BeamColor"] = BeamCol,
                                            ["Range"] = WeaponRange.Value
                                        })
                                        ReplicatedStorage.MainEvent:FireServer("ShootGun", ToolHandle, ForcedOrigin.WorldPosition, v18, v19, v20)
                                        task.wait(ShootingCool + 0.0095)
                                    end
                                    ToolEvent:FireServer()
                                end)
                            end
                        elseif Gun == "Rifle" or GunType == "SMG" then
                            local ShootingCool = Tool:WaitForChild("ShootingCooldown").Value
                            if Check and (not _G.GUN_COMBAT_TOGGLE and DaHood.CanShoot(LocalCharacter)) then
                                Ticks[Tool.Name] = tick()
                                ToolEvent:FireServer("Shoot")
                                local Flag = true
                                task.spawn(function()
                                    while task.wait(ShootingCool + 0.0095) and (Flag and (Tool.Parent == LocalCharacter and (NoClueWhatThisIs.Value > 0 and DaHood.CanShoot(LocalCharacter)))) do
                                        local HitPosition = Script.Locals.HitPosition
                                        local ForcedOrigin = Tool:FindFirstChild("Default") and (Tool.Default:FindFirstChild("Mesh") and Tool.Default.Mesh:FindFirstChild("Muzzle")) or { ["WorldPosition"] = (ToolHandle.CFrame * WeaponOffset).Position }

                                        local AimPosition
                                        local WeaponRange = Tool:WaitForChild("Range")
                                        AimPosition = SilentAim and (ForcedOrigin.WorldPosition + ((HitPosition - ForcedOrigin.WorldPosition).Unit) * 200) or (ForcedOrigin.WorldPosition + DaHood.GetAim(ForcedOrigin.WorldPosition) * 200)
                                        local WeaponRange = Tool:WaitForChild("Range")

                                        local v18, v19, v20 = DaHood.ShootGun({
                                            ["Shooter"] = LocalCharacter,
                                            ["Handle"] = ToolHandle,
                                            ["ForcedOrigin"] = ForcedOrigin.WorldPosition,
                                            ["AimPosition"] = AimPosition,
                                            ["LegitPosition"] = ForcedOrigin.WorldPosition + DaHood.GetAim(ForcedOrigin.WorldPosition) * 200,
                                            ["BeamColor"] = BeamCol,
                                            ["Range"] = WeaponRange.Value
                                        })
                                        ReplicatedStorage.MainEvent:FireServer("ShootGun", ToolHandle, ForcedOrigin.WorldPosition, v18, v19, v20)
                                        Ticks[Tool.Name] = tick()
                                    end
                                    ToolEvent:FireServer()
                                end)
                                Tool.Deactivated:Wait()
                                Flag = false
                            end
                        elseif Gun == "Sniper" then
                            if Check and (not _G.GUN_COMBAT_TOGGLE and DaHood.CanShoot(LocalCharacter)) then
                                Ticks[Tool.Name] = tick()
                                ToolEvent:FireServer("Shoot")
                                local HitPosition = Script.Locals.HitPosition
                                local ForcedOrigin = Tool:FindFirstChild("Default") and (Tool.Default:FindFirstChild("Mesh") and Tool.Default.Mesh:FindFirstChild("Muzzle")) or { ["WorldPosition"] = (ToolHandle.CFrame * WeaponOffset).Position }

                                local AimPosition
                                local WeaponRange = Tool:WaitForChild("Range")
                                AimPosition = SilentAim and (ForcedOrigin.WorldPosition + ((HitPosition - ForcedOrigin.WorldPosition).Unit) * 50) or (ForcedOrigin.WorldPosition + DaHood.GetAim(ForcedOrigin.WorldPosition) * 50)

                                local v16, v17, v18 = DaHood.ShootGun({
                                    ["Shooter"] = LocalCharacter,
                                    ["Handle"] = ToolHandle,
                                    ["ForcedOrigin"] = ForcedOrigin.WorldPosition,
                                    ["AimPosition"] = AimPosition,
                                    ["LegitPosition"] = ForcedOrigin.WorldPosition + DaHood.GetAim(ForcedOrigin.WorldPosition) * 50,
                                    ["BeamColor"] = BeamCol,
                                    ["Range"] = WeaponRange.Value
                                })
                                ReplicatedStorage.MainEvent:FireServer("ShootGun", ToolHandle, ForcedOrigin.WorldPosition, v16, v17, v18)
                                ToolEvent:FireServer()
                            end
                        end
                    end

                    if shared.azov["silentaim"]["enabled"] and Script.Locals.SilentAimTarget and Script.Locals.SilentAimTarget.Character then
                        local target = Script.Locals.SilentAimTarget
                        ShootFunc(Gun, Script:ShouldShoot(target))
                    elseif shared.azov["triggerbot"]["enabled"] and Script.Locals.TriggerbotTarget and Script.Locals.TriggerbotTarget.Character then
                        local target = Script.Locals.TriggerbotTarget
                        if Script.Locals.HitTrigger then
                            Script.Locals.HitPosition = Script.Locals.HitTrigger.Position
                        end
                        ShootFunc(Gun, Script:ShouldShoot(target))
                    else
                        ShootFunc(Gun, false)
                    end
                end
            end
        end

        local function ActivateTool()
            if not Self.Character then return end
            local Tool = Self.Character:FindFirstChildOfClass("Tool")
            if Tool ~= nil and Tool:IsDescendantOf(Self.Character) and Tool.Name ~= '[Knife]' then
                Tool:Activate()
            end
        end

        local function raycast(origin, direction, raycastParams, _depth)
            _depth = (_depth or 0) + 1
            if _depth > 8 then return nil end
            local result = workspace:Raycast(origin, direction, raycastParams)
            if result and result.Instance then
                if result.Instance ~= TriggerPart then
                    origin = result.Position + direction.Unit * 0.1
                    return raycast(origin, direction, raycastParams, _depth)
                else
                    return result
                end
            end
            return nil
        end

        local raycastParams = RaycastParams.new()
        raycastParams.FilterType = Enum.RaycastFilterType.Whitelist
        raycastParams.FilterDescendantsInstances = {TriggerPart}

        function Script:Triggerbot()
            local triggerBotConfig = shared.azov["triggerbot"]
            if not triggerBotConfig["enabled"] then
                TriggerPart.Position = Vector3.zero
                return
            end

            local locals = Script.Locals
            if not locals.TriggerState then
                TriggerPart.Position = Vector3.zero
                return
            end

            local selfCharacter = Self.Character
            if not selfCharacter then
                TriggerPart.Position = Vector3.zero
                return
            end

            local tool = selfCharacter:FindFirstChildOfClass("Tool")
            if not tool or not tool:FindFirstChild("Ammo") then
                TriggerPart.Position = Vector3.zero
                return
            end

            if shared.azov["checks"]["triggerbot targeting"]["knife"] and tool.Name == "[Knife]" then
                TriggerPart.Position = Vector3.zero
                return
            end

            local target = locals.TriggerbotTarget
            if not target or not target.Character then
                TriggerPart.Position = Vector3.zero
                return
            end

            local targetCharacter = target.Character
            local targetHRP = targetCharacter:FindFirstChild("HumanoidRootPart")
            if not targetHRP then
                TriggerPart.Position = Vector3.zero
                return
            end

            TriggerPart.Size = Vector3.new(triggerBotConfig["fov"]["x"], triggerBotConfig["fov"]["y"], triggerBotConfig["fov"]["z"])
            TriggerPart.Parent = workspace
            TriggerPart.Anchored = true
            TriggerPart.CanCollide = false
            TriggerPart.Transparency = triggerBotConfig["fov"]["visible"] and 0.7 or 1
            TriggerPart.Color = Color3.new(1, 0, 0)

            if shared.azov["checks"]["triggerbot targeting"]["forcefield"] and targetCharacter:FindFirstChild("Forcefield") then
                TriggerPart.Position = Vector3.zero
                return
            end

            if shared.azov["checks"]["visible"] then
                local vPart = targetCharacter:FindFirstChild("HumanoidRootPart") or targetCharacter:FindFirstChild("Head") or TriggerPart
                if not Script:RayCast(vPart, Script:GetOrigin('Camera'), {selfCharacter, TriggerPart, SilentAimPart}) then
                    TriggerPart.Position = Vector3.zero
                    return
                end
            end

            if shared.azov["checks"]["knocked"] and CurrentGame.Functions.IsKnocked(targetCharacter) then
                TriggerPart.Position = Vector3.zero
                return
            end

            if shared.azov["checks"]["player knocked"] and CurrentGame.Functions.IsKnocked(selfCharacter) then
                TriggerPart.Position = Vector3.zero
                return
            end

            if shared.azov["checks"]["chat"] and UserInputService:GetFocusedTextBox() then
                TriggerPart.Position = Vector3.zero
                return
            end

            local targetDistance = (selfCharacter.HumanoidRootPart.Position - targetHRP.Position).Magnitude
            if targetDistance > 200 then
                TriggerPart.Position = Vector3.zero
                return
            end

            local triggerFov = triggerBotConfig["fov"] or {}
            local fovEnabled = triggerFov["enabled"]
            local fovType = triggerFov["type"] or "box"
            local canFire = false

            if fovEnabled then
                if fovType == "box" then
                    local velocity = GetResolvedVelocity(targetHRP)
                    local prediction = triggerBotConfig["prediction"]

                    if prediction["enabled"] then
                        local px, py, pz = prediction["x"] or 0, prediction["y"] or 0, prediction["z"] or 0
                        if prediction["manual"] then
                            px, py, pz = prediction["manual"]["x"], prediction["manual"]["y"], prediction["manual"]["z"]
                        end
                        TriggerPart.Position = targetHRP.Position + Vector3.new(velocity.X * px, velocity.Y * py, velocity.Z * pz)
                    else
                        TriggerPart.Position = targetHRP.Position
                    end

                    local mouseLocation = GetAimPosition()
                    local ray = Camera:ViewportPointToRay(mouseLocation.X, mouseLocation.Y)
                    local result = raycast(ray.Origin, ray.Direction * 1000, raycastParams)

                    if result and result.Instance == TriggerPart then
                        canFire = true
                        TriggerPart.Color = Color3.new(0, 1, 0)
                    elseif triggerBotConfig["offscreen targeting"] then
                        canFire = true
                    else
                        TriggerPart.Color = Color3.new(1, 0, 0)
                    end
                elseif fovType == "circle" then
                    TriggerPart.Position = Vector3.zero
                    local mousePos = GetAimPosition()
                    local screenPos, onScreen = Camera:WorldToViewportPoint(targetHRP.Position)
                    if onScreen then
                        local dist = (Vector2.new(screenPos.X, screenPos.Y) - Vector2.new(mousePos.X, mousePos.Y)).Magnitude
                        if dist <= (triggerFov["circle"] or 20) then
                            canFire = true
                        end
                    elseif triggerBotConfig["offscreen targeting"] then
                        canFire = true
                    end
                end
            else
                TriggerPart.Position = Vector3.zero
                canFire = true
            end

            if canFire and tool.Name ~= '[Knife]' then
                Script:TriggerShot(triggerBotConfig["delay"])
            end
        end

        function Script:TriggerShot(interval)
            local locals = Script.Locals
            local now = tick()
            if now - (locals.LastShot or 0) >= (interval or 0) then
                locals.LastShot = now
                ActivateTool()
            end
        end

        function Script:Physics()
            if not Self.Character then return end
            local Object, Humanoid, RootPart = Script:ValidateClient(Self)
            if Humanoid then
                local speedCfg = shared.azov["movement"]["speed"]
                local jumpCfg  = shared.azov["movement"]["jump"]
                local speedMode = speedCfg["mode"] or 'toggle'
                local jumpMode  = jumpCfg["mode"] or 'hold'
                local speedActive = speedMode == 'always' or Script.Locals.IsWalkSpeeding
                local jumpActive  = jumpMode == 'always' or Script.Locals.IsJumping

                if speedCfg["enabled"] and speedActive then
                    Humanoid.WalkSpeed = speedCfg["value"]
                elseif speedCfg["enabled"] then
                    Humanoid.WalkSpeed = 16
                end

                if jumpCfg["enabled"] and jumpActive then
                    Humanoid.UseJumpPower = true
                    Humanoid.JumpPower = jumpCfg["value"]
                elseif jumpCfg["enabled"] then
                    Humanoid.JumpPower = 50
                end
            end
            if shared.azov["movement"]["no tripping"] then
                local Humanoid2 = Self.Character:FindFirstChild("Humanoid")
                if Humanoid2 and Humanoid2.Health > 1 and Humanoid2:GetState() == Enum.HumanoidStateType.FallingDown then
                    Humanoid2:ChangeState(Enum.HumanoidStateType.GettingUp)
                end
            end
            local noHitCfg = shared.azov["rage"]["no hitting"]
            if noHitCfg and noHitCfg["enabled"] and RootPart then
                Script.Locals.NoHitState = Script.Locals.NoHitState or { active = false, untilTime = 0, original = {} }
                local state = Script.Locals.NoHitState
                local now = tick()
                local v = RootPart.AssemblyLinearVelocity
                local speedMag = v.Magnitude
                local threshold = 100

                if speedMag > threshold then
                    local dir = v.Magnitude > 0 and v.Unit or (Humanoid and Humanoid.MoveDirection) or Vector3.new()
                    if dir.Magnitude > 0 then
                        local params = RaycastParams.new()
                        params.FilterType = Enum.RaycastFilterType.Exclude
                        params.FilterDescendantsInstances = { Self.Character }
                        local result = Workspace:Raycast(RootPart.Position, dir * 3, params)
                        if result and result.Instance then
                            state.active = true
                            state.untilTime = now + 0.2
                        end
                    end
                end

                local active = state.active and now < state.untilTime
                if active then
                    for _, part in ipairs(Self.Character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            if state.original[part] == nil then
                                state.original[part] = part.CanCollide
                            end
                            part.CanCollide = false
                        end
                    end
                elseif state.active and now >= state.untilTime then
                    for part, canCollide in pairs(state.original) do
                        if part and part.Parent then
                            part.CanCollide = canCollide
                        end
                    end
                    state.original = {}
                    state.active = false
                end
            end
        end

        function Script:AimbotStep(Delta)
            local cfg = shared.azov["aimbot"]
            if not cfg then return end
            if not cfg["enabled"] then return end
            
            local target = Script.Locals.AimAssistTarget
            if not target then
                return 
            end
            if not target.Character then return end

            if shared.azov["checks"]["camlock targeting"]["visible"] == false then return end

            if shared.azov["checks"]["forcefield"] and target.Character:FindFirstChild("Forcefield") then return end
            if shared.azov["checks"]["knocked"] and CurrentGame.Functions.IsKnocked(target.Character) then return end
            if shared.azov["checks"]["grabbed"] and CurrentGame.Functions.IsGrabbed(target) then return end

            local tPart = target.Character:FindFirstChild("HumanoidRootPart") or target.Character:FindFirstChild("Head")
            if not tPart then return end
            if shared.azov["checks"]["visible"] then
                if not Script:RayCast(tPart, Script:GetOrigin('Camera'), {Self.Character, TriggerPart, SilentAimPart}) then
                    return
                end
            end

            local hitPos = Script:GetHitPosition('Assist')
            if not hitPos then return end

            local camPos = Camera.CFrame.Position
            local desired = CFrame.new(camPos, hitPos)

            local smoothCfg = cfg["smoothing"]
            if not smoothCfg or not smoothCfg["enabled"] then
                Camera.CFrame = desired
                return
            end

            local factor = { x = 0.02, y = 0.02, z = 0.02 }
            if smoothCfg["mode"] == 'auto' and smoothCfg["auto"] then
                local spd = 0
                local hrp = target.Character:FindFirstChild("HumanoidRootPart")
                if hrp then spd = hrp.AssemblyLinearVelocity.Magnitude end
                local sMin = smoothCfg["auto"]["speed"]["min"] or 0
                local sMax = smoothCfg["auto"]["speed"]["max"] or 0.8
                local rMin = smoothCfg["auto"]["range"]["min"] or 0.05
                local rMax = smoothCfg["auto"]["range"]["max"] or 0.30
                local t = (sMax ~= sMin) and math.clamp((spd - sMin) / (sMax - sMin), 0, 1) or 0
                local f = rMin + (rMax - rMin) * t
                factor = { x = f, y = f, z = f }
            elseif smoothCfg["mode"] == 'manual' then
                local m = smoothCfg["manual"]
                if type(m) == "table" then
                    factor = { x = m.x or 0.02, y = m.y or 0.02, z = m.z or 0.02 }
                else
                    factor = { x = m or 0.02, y = m or 0.02, z = m or 0.02 }
                end
            end

            local easingCfg = smoothCfg["easing"]
            if easingCfg and easingCfg["enabled"] then
                local TweenInfo = TweenInfo.new(easingCfg["time"] or 0.08, easingCfg["style"] or Enum.EasingStyle.Cubic, easingCfg["direction"] or Enum.EasingDirection.Out)
                local tween = TweenService:Create(Camera, TweenInfo, {CFrame = desired})
                tween:Play()
            else
                local currX, currY, currZ = Camera.CFrame:ToEulerAnglesYXZ()
                local targetX, targetY, targetZ = desired:ToEulerAnglesYXZ()
                
                local function lerpAngle(a, b, t)
                    local d = b - a
                    d = (d + math.pi) % (2 * math.pi) - math.pi
                    return a + d * math.clamp(t, 0, 1)
                end
                
                local newX = lerpAngle(currX, targetX, factor.x)
                local newY = lerpAngle(currY, targetY, factor.y)
                local newZ = lerpAngle(currZ, targetZ, factor.z)
                
                Camera.CFrame = CFrame.new(camPos) * CFrame.fromEulerAnglesYXZ(newX, newY, newZ)
            end        end
    end
    do
 
        local FieldOfViewSquare = Script.Visuals.new("Square")
        FieldOfViewSquare.Visible = shared.azov["silentaim"]["fov"]["visible"]
        FieldOfViewSquare.Color = Color3.fromRGB(255, 255, 255)
        FieldOfViewSquare.Thickness = 1
        FieldOfViewSquare.Transparency = 1

        local FieldOfViewCircle = Script.Visuals.new("Circle")
        FieldOfViewCircle.Visible = shared.azov["silentaim"]["fov"]["visible"]
        FieldOfViewCircle.Color = Color3.fromRGB(255, 255, 255)
        FieldOfViewCircle.Thickness = 1
        FieldOfViewCircle.Transparency = 1
        Script.Locals.FieldOfViewOne = FieldOfViewSquare

        local TargetTracerLine = Script.Visuals.new("Line")
        TargetTracerLine.Visible   = false
        TargetTracerLine.Thickness = 1
        TargetTracerLine.Color     = Color3.fromRGB(255, 255, 255)

        local ExploitTracerLine = Script.Visuals.new("Line")
        ExploitTracerLine.Visible   = false
        ExploitTracerLine.Thickness = 1
        ExploitTracerLine.Color     = Color3.fromRGB(255, 85, 85)

        local function GetBodySize(Character)
            local Part = Script:GetClosestPartToCursor(Character)
            if (Part) then
                local l = workspace.CurrentCamera:WorldToScreenPoint(Part.Position - Part.Size / 2)
                local r = workspace.CurrentCamera:WorldToScreenPoint(Part.Position + Part.Size / 2)
                local w = math.abs(l.X - r.X)
                local h = math.abs(l.Y - r.Y)
                return w, h
            end
            return 0, 0
        end

        local function get_quad(a, b, c)
            local s = b^2 - 4 * a * c
            if s < 0 then
                return nil
            end
            local d = math.sqrt(s)
            local t1 = (-b + d) / (2 * a)
            local t2 = (-b - d) / (2 * a)
            if t1 >= 0 and t2 >= 0 then
                return math.min(t1, t2)
            elseif t1 >= 0 then
                return t1
            elseif t2 >= 0 then
                return t2
            end
            return nil
        end
        local function get_interception(A, B0, v_t, v_b)
            local function getCoefficients(A_comp, B_comp, v_t_comp)
                local a = v_t_comp * v_t_comp - v_b^2
                local b = 2 * (A_comp - B_comp) * v_t_comp
                local c = (A_comp - B_comp) * (A_comp - B_comp)
                return a, b, c
            end

            local function solveDimension(A_comp, B_comp, v_t_comp)
                local a, b, c = getCoefficients(A_comp, B_comp, v_t_comp)
                return get_quad(a, b, c)
            end

            local t_x, err_x = solveDimension(A.x, B0.x, v_t.x)
            local t_y, err_y = solveDimension(A.y, B0.y, v_t.y)
            local t_z, err_z = solveDimension(A.z, B0.z, v_t.z)

            if not t_x or not t_y or not t_z then
                return nil, 'how did we end up here'
            end

            local t = math.max(t_x, t_y, t_z)

            local Bt = B0 + v_t * t
            return Bt, t_x, t_y, t_z
        end
        local function get_ground(position)
            local ray = Ray.new(position, Vector3.new(0, -1000, 0))
            local hitPart, hitPosition = workspace:FindPartOnRay(ray)
            if hitPart then
                return hitPosition.Y
            else
                return position.Y
            end
        end
        local function backup_velocity(t, width, height)
            local average_size = (width + height) / 2
            local base_size = 100
            local size_factor = (average_size / base_size) - 1
            size_factor = math.clamp(size_factor, -1, 1)
            local min_adjustment = 0.05
            local max_adjustment = 0.145
            local adjustment_range = max_adjustment - min_adjustment
            local adjusted_t = min_adjustment + (size_factor ^ 2) * adjustment_range
            return adjusted_t
        end
        local function get_velocity(t, width, height)
            local average_size = (width + height) / 2
            local base_size = 100
            local size_factor = (average_size / base_size) - 1
            size_factor = math.clamp(size_factor, -1, 1)

            local min_adjustment = 0.05
            local max_adjustment = 0.145
            local adjustment_range = max_adjustment - min_adjustment

            local adjustment = min_adjustment + (size_factor ^ 2) * adjustment_range
            return Vector3.new(adjustment, adjustment, adjustment) * t
        end

        local _CachedPing   = 50
        local _LastPingTick = 0
        local function m_wait()
            local now = tick()
            if now - _LastPingTick < 2 then return _CachedPing end
            _LastPingTick = now
            local t = tick()
            pcall(function()
                game.ReplicatedStorage.DefaultChatSystemChatEvents.MutePlayerRequest:InvokeServer()
            end)
            _CachedPing = (tick() - t) * 1000 / 0.5
            return _CachedPing
        end

        local function AutomatedPrediction()
            local silentAimSettings = shared.azov["silentaim"]
            local TargetPlayerData = Script.Locals.SilentAimTarget

            local silentAimTarget = TargetPlayerData
            local playerCharacter = Self.Character

            if silentAimTarget and silentAimTarget.Character and playerCharacter and silentAimSettings["mode"] == 'hitscan' then
                local tool = playerCharacter:FindFirstChildOfClass('Tool')
                local handle = tool and tool:FindFirstChild('Handle')
                local shootBBGUI = handle and handle:FindFirstChild('ShootBBGUI')

                if not silentAimTarget.Character:FindFirstChild("Humanoid") then
                    return
                end
                if handle and shootBBGUI then
                    local humanoidRootPart = TargetPlayerData.Character.HumanoidRootPart
                    local Velocity = humanoidRootPart.Velocity
                    local handlePosition = handle.Position
                    local origin = handlePosition + handle.CFrame:VectorToWorldSpace(shootBBGUI.StudsOffsetWorldSpace)

                    Velocity_Data.Recorded = {
                        Alpha = origin,
                        B_0 = humanoidRootPart.Position,
                        V_T = Velocity,
                        V_B = m_wait() * silentAimSettings["prediction"]["scale"]
                    }

                    local Bt, t_x, t_y, t_z = get_interception(
                        origin,
                        humanoidRootPart.Position,
                        Velocity,
                        Velocity_Data.Recorded.V_B
                    )

                    if Bt then
                        local predictionVector = Vector3.new(t_x, t_y, t_z)
                        local width, height = GetBodySize(silentAimTarget)
                        silentAimSettings["prediction"]["x"] = backup_velocity(predictionVector.Magnitude, width, height)
                        silentAimSettings["prediction"]["y"] = backup_velocity(predictionVector.Magnitude, width, height)

                        local adjustedPrediction = get_velocity(predictionVector, width, height)
                        if adjustedPrediction then
                            local groundLevel = get_ground(Bt)
                            Bt = Vector3.new(Bt.X, math.max(Bt.Y, groundLevel), Bt.Z)

                            local heightAdjustment = math.max(0, Bt.Y - humanoidRootPart.Position.Y)
                            Velocity_Data.Y = adjustedPrediction.Y * (heightAdjustment / (Bt.Y - humanoidRootPart.Position.Y + 1))
                            Velocity_Data.State = TargetPlayerData.Character.Humanoid:GetState()
                        end
                    end
                end
            end
        end

        if string.find(GameName, "Dee Hood") then
            local function GetArgument()
                for _, Player in next, game:GetService("Players"):GetPlayers() do
                    if Player.Backpack:GetAttribute(string.upper("muv")) then
                        return Player.Backpack:GetAttribute(string.upper("muv"))
                    end
                end
                return nil
            end

            local Argument = GetArgument()
            if Argument then
                CurrentGame.Updater = Argument
            end
        end

        local Activated
        local function OnLocalCharacterAdded(Character)
            if (not Character) then
                return
            end

            Character.ChildAdded:Connect(function(Tool)
                if (not Tool:IsA("Tool")) then
                    return
                end
                Activated = Tool.Activated:Connect(function()
                    if type(Script.SilentAimFunc) == "function" then
                        Script:SilentAimFunc(Tool)
                    end
                end)
                local deferFn = (task and (task.defer or task.spawn)) or nil
                if type(deferFn) == "function" then
                    deferFn(function()
                        local function DisableGripConnections()
                            if not Tool or not Tool.Parent then return end
                            if type(getconnections) ~= "function" then return end
                            local okConn, connections = pcall(getconnections, Tool:GetPropertyChangedSignal("Grip"))
                            if not okConn or type(connections) ~= "table" then return end
                            for _, c in ipairs(connections) do
                                if c and c.Disable then
                                    pcall(function() c:Disable() end)
                                end
                            end
                        end

                        DisableGripConnections()
                        task.delay(0.2, DisableGripConnections)
                    end)
                end
            end)

            Character.ChildRemoved:Connect(function(Tool)
                if (not Tool:IsA("Tool")) then
                    return
                end

                if Activated then
                    Activated:Disconnect()
                end
            end)
        end
        local DebugCircle = Script.Visuals.new("Circle")
        OnLocalCharacterAdded(Self.Character)
        Self.CharacterAdded:Connect(OnLocalCharacterAdded)

        if Self.Character then
            OnCharRapidFire(Self.Character)
        end
        Self.CharacterAdded:Connect(function(Char)
            OnCharRapidFire(Char)
        end)

        local backpacktools = Self.Backpack:GetChildren()
        for i = 1, #backpacktools do
            local v = backpacktools[i]
            if v:IsA("Tool") then
                -- logic moved to ProcessTool
            end
        end
        Self.Backpack.ChildAdded:Connect(function(v)
            if v:IsA("Tool") then
                -- logic moved to ProcessTool
            end
        end)
        local WeaponConfigs = shared.azov["silentaim"]["fov"]["weapon configs"]
        local function UpdateDrawings()
            local Character = Self.Character
            if not Character then return end
            local Tool = Character:FindFirstChildWhichIsA("Tool")
            if WeaponConfigs["enabled"] and Tool then
                if table.find(WeaponInfo.Shotguns, Tool.Name) then
                    CurrentFOV = WeaponConfigs["shotguns"]["circle"]
                    CurrentFOVX = WeaponConfigs["shotguns"]["box"][1]
                    CurrentFOVY = WeaponConfigs["shotguns"]["box"][2]
                elseif table.find(WeaponInfo.Pistols, Tool.Name) then
                    CurrentFOV = WeaponConfigs["pistols"]["circle"]
                    CurrentFOVX = WeaponConfigs["pistols"]["box"][1]
                    CurrentFOVY = WeaponConfigs["pistols"]["box"][2]
                else
                    CurrentFOV = WeaponConfigs["others"]["circle"]
                    CurrentFOVX = WeaponConfigs["others"]["box"][1]
                    CurrentFOVY = WeaponConfigs["others"]["box"][2]
                end
            else
                CurrentFOV = shared.azov["silentaim"]["fov"]["circle"]
                CurrentFOVX = shared.azov["silentaim"]["fov"]["box"][1]
                CurrentFOVY = shared.azov["silentaim"]["fov"]["box"][2]
            end

            do
                local espCfg = shared.azov["esp"]
                if espCfg then
                    local espActive = espCfg["enabled"]
                    local espNameType = string.lower(espCfg["name"] or "name")
                    local espSize = espCfg["size"] or 13
                    local espColor = espCfg["color"] or Color3.fromRGB(255, 255, 255)
                    local espTargetColor = espCfg["target color"] or Color3.fromRGB(255, 0, 0)

                    for _, player in ipairs(Players:GetPlayers()) do
                        if player ~= Self then
                            local uid = player.UserId

                            if not Script.Locals.EspLabels[uid] then
                                local bbg = Instance.new("BillboardGui")
                                bbg.Name = "AzovESP_" .. uid
                                bbg.AlwaysOnTop = true
                                bbg.Size = UDim2.new(0, 200, 0, 50)
                                bbg.StudsOffset = Vector3.new(0, -3.0, 0)
                                bbg.Parent = (gethui and gethui()) or (syn and syn.protect_gui and syn.protect_gui(bbg)) or game:GetService("CoreGui") or (Self:FindFirstChild("PlayerGui"))

                                local lbl = Instance.new("TextLabel")
                                lbl.Parent = bbg
                                lbl.BackgroundTransparency = 1
                                lbl.Size = UDim2.new(1, 0, 1, 0)
                                lbl.TextColor3 = Color3.new(1, 1, 1)
                                lbl.TextStrokeTransparency = 0
                                lbl.ZIndex = 999
                                
                                Script.Locals.EspLabels[uid] = { gui = bbg, label = lbl }
                            end

                            local data = Script.Locals.EspLabels[uid]
                            if data and data.gui and data.label then
                                local bbg = data.gui
                                local lbl = data.label
                                local char = player.Character
                                local hrp = char and char:FindFirstChild("HumanoidRootPart")

                                if not espActive or not hrp then
                                    bbg.Enabled = false
                                    bbg.Adornee = nil
                                else
                                    bbg.Enabled = true
                                    bbg.Adornee = hrp
                                    
                                    lbl.TextSize = espSize
                                    lbl.Font = espCfg["font"] or Enum.Font.RobotoMono
                                    
                                    local rawTxt = espNameType == "displayname" and (player.DisplayName or player.Name) or player.Name
                                    lbl.Text = string.lower(rawTxt)
                                    local isTarget = (Script.Locals.SilentAimTarget == player) or (Script.Locals.AimAssistTarget == player)
                                    lbl.TextColor3 = isTarget and espTargetColor or espColor
                                end
                            end
                        end
                    end

                    for uid, data in pairs(Script.Locals.EspLabels) do
                        if not Players:GetPlayerByUserId(uid) then
                            if data and data.gui then
                                pcall(function() data.gui:Destroy() end)
                            end
                            Script.Locals.EspLabels[uid] = nil
                        end
                    end
                end
            end

            DebugCircle.Visible = false
            Script.Locals.FieldOfViewTwo = FieldOfViewCircle
            Script.Locals.FieldOfViewTwo.Visible = shared.azov["silentaim"]["fov"]["type"] == 'circle' and shared.azov["silentaim"]["fov"]["visible"]
            Script.Locals.FieldOfViewTwo.Radius = CurrentFOV
            Script.Locals.FieldOfViewTwo.Position = GetAimPosition()
            Script:UpdateBox()
            Script:UpdateLabels()

            local ttCfg = shared.azov["globals"]["target tracer"]
            local etCfg = shared.azov["globals"]["exploit tracer"]
            local fhCfg = shared.azov["rage"]["damage modification"]
            
            local saActive = shared.azov["silentaim"]["enabled"] and (shared.azov["silentaim"]["key mode"] == 'always' or IsSilentAiming)
            local tbActive = shared.azov["triggerbot"]["enabled"] and Script.Locals.TriggerState
            
            local ttTarget = saActive and Script.Locals.SilentAimTarget
            
            if ttCfg["enabled"] and saActive and ttTarget and ttTarget.Character then
                local tPart = ttTarget.Character:FindFirstChild("HumanoidRootPart") or ttTarget.Character:FindFirstChild("Head")
                if tPart then
                    local screenPos, onScreen = Camera:WorldToViewportPoint(tPart.Position)
                    local aimPos = GetAimPosition()
                    local fromPt = Vector2.new(aimPos.X, aimPos.Y)
                    local toPt
                    
                    if onScreen then
                        toPt = Vector2.new(screenPos.X, screenPos.Y)
                    else
                        local vp = Camera.ViewportSize
                        local center = Vector2.new(vp.X / 2, vp.Y / 2)
                        local off = Vector2.new(screenPos.X, screenPos.Y)
                        local dir = off - center
                        if screenPos.Z < 0 then
                            dir = -dir
                        end
                        if dir.Magnitude < 1 then
                            dir = Vector2.new(0, -1)
                        end
                        dir = dir.Unit
                        local pad = 8
                        local minX, maxX = pad, vp.X - pad
                        local minY, maxY = pad, vp.Y - pad
                        local tx = math.huge
                        if dir.X > 0 then
                            tx = (maxX - center.X) / dir.X
                        elseif dir.X < 0 then
                            tx = (minX - center.X) / dir.X
                        end
                        local ty = math.huge
                        if dir.Y > 0 then
                            ty = (maxY - center.Y) / dir.Y
                        elseif dir.Y < 0 then
                            ty = (minY - center.Y) / dir.Y
                        end
                        local t = math.min(tx, ty)
                        toPt = center + dir * t
                    end

                    local isEffective = false
                    if saActive and ttTarget == Script.Locals.SilentAimTarget then
                        isEffective = Script.Locals.SilentAimCanHit and true or false
                    else
                        local visibleToCamera = Script:RayCast(tPart, Camera.CFrame.Position, {Self.Character, TriggerPart, SilentAimPart})
                        local ttTool = Character:FindFirstChildWhichIsA("Tool")
                        local ttRange = ttTool and ttTool:FindFirstChild("Range")
                        local ttMyHRP = Self.Character and Self.Character:FindFirstChild("HumanoidRootPart")
                        local inRange = (not ttRange or not ttMyHRP) or (ttMyHRP.Position - tPart.Position).Magnitude <= ttRange.Value
                        if visibleToCamera and inRange then
                            isEffective = true
                        end
                    end

                    TargetTracerLine.To = toPt
                    TargetTracerLine.From = fromPt
                    TargetTracerLine.Thickness = ttCfg["thickness"]
                    TargetTracerLine.Color = isEffective and ttCfg["effective color"] or ttCfg["ineffective color"]
                    TargetTracerLine.Visible = true
                    
                    pcall(function() TargetTracerLine.Transparency = 1 end)
                else
                    TargetTracerLine.Visible = false
                end
            else
                TargetTracerLine.Visible = false
            end

        end

        ThreadLoop(0, function()

            if string.find(GameName, "Da Hood") or game.PlaceId == 88976059384565 then
                local GunType = Script:GetGunCategory()
                local Tool = Self.Character:FindFirstChildWhichIsA("Tool")
                if Tool then
                    if GunType == "Pistol" or GunType == "Sniper" then
                        for I, v in pairs(Tool:GetChildren()) do
                            if v.Name == "GunClient" then
                                v:Destroy()
                            end
                        end
                    elseif GunType == "Shotgun" then
                        for I, v in pairs(Tool:GetChildren()) do
                            if v.Name == "GunClientShotgun" then
                                v:Destroy()
                            end
                        end
                    elseif GunType == "Auto" then
                        for I, v in pairs(Tool:GetChildren()) do
                            if v.Name == "GunClientAutomaticShotgun" then
                                v:Destroy()
                            end
                        end
                    elseif GunType == "Burst" then
                        for I, v in pairs(Tool:GetChildren()) do
                            if v.Name == "GunClientBurst" then
                                v:Destroy()
                            end
                        end
                    elseif GunType == "Rifle" or GunType == "SMG" then
                        for I, v in pairs(Tool:GetChildren()) do
                            if v.Name == "GunClientAutomatic" then
                                v:Destroy()
                            end
                        end
                    end
                end
            end
        end)
        local SilentToggle    = false
        local AimToggle      = false
        local TriggerToggle  = false
        local ForcehitToggle = false
        RBXConnection(UserInputService.InputBegan, function(Input, Processed)

            if shared.azov["checks"]["silent aim targeting"]["chat"] and UserInputService:GetFocusedTextBox() then return end
            local AimAssist = Enum.KeyCode[shared.azov["aimbot"]["key"]:upper()]
            local WalkSpeed = Enum.KeyCode[shared.azov["movement"]["speed"]["key"]:upper()]
            local DoubleTap = Enum.KeyCode[shared.azov["rage"]["doubletap"]["key"]:upper()]
            local TriggerBotTarget = Enum.KeyCode[shared.azov["triggerbot"]["target key"]:upper()]
            local SilentAimTarget = Enum.KeyCode[shared.azov["silentaim"]["target key"]:upper()]
            local SilentAim = Enum.KeyCode[shared.azov["silentaim"]["key"]:upper()]
            
            if Input.KeyCode == SilentAim then
                local saMode = shared.azov["silentaim"]["key mode"] or 'toggle'
                if saMode == 'toggle' then
                    IsSilentAiming = not IsSilentAiming
                elseif saMode == 'hold' then
                    IsSilentAiming = true
                end
            end

            if Input.KeyCode == SilentAimTarget and shared.azov["silentaim"]["mode"] == 'target' then
                SilentToggle = not SilentToggle
                if SilentToggle then
                    Script.Locals.SilentAimTarget = Script:GetClosestPlayerToCursor(
                        shared.azov["silentaim"]["max distance"] * 100,
                        shared.azov["silentaim"]["fov"]["enabled"] and CurrentFOV or math.huge,
                        shared.azov["silentaim"]["offscreen targeting"]
                    )
                else
                    Script.Locals.SilentAimTarget = nil
                end
            end

            if Input.KeyCode == TriggerBotTarget and shared.azov["triggerbot"]["targeting mode"] == 'target' then
                TriggerToggle = not TriggerToggle
                if TriggerToggle then
                    Script.Locals.TriggerbotTarget = Script:GetClosestPlayerToCursor(
                        shared.azov["triggerbot"]["max distance"] * 100,
                        math.huge,
                        shared.azov["triggerbot"]["offscreen targeting"]
                    )
                else
                    if Script.Locals.TriggerbotTarget then
                        Script.Locals.TriggerbotTarget = nil
                    end
                end
            end

            if Input.KeyCode == AimAssist then
                local aimMode = shared.azov["aimbot"]["mode"] or 'toggle'
                if aimMode == 'toggle' then
                    AimToggle = not AimToggle
                    if AimToggle then

                        if Script.Locals.SilentAimTarget then
                            Script.Locals.AimAssistTarget = Script.Locals.SilentAimTarget
                        else
                            Script.Locals.AimAssistTarget = Script:GetClosestPlayerToCursor(
                                shared.azov["silentaim"]["max distance"] * 100,
                                shared.azov["aimbot"]["fov"]["enabled"] and shared.azov["aimbot"]["fov"]["size"] or math.huge
                            )
                        end
                    else
                        Script.Locals.AimAssistTarget = nil
                    end
                elseif aimMode == 'hold' then

                    if Script.Locals.SilentAimTarget then
                        Script.Locals.AimAssistTarget = Script.Locals.SilentAimTarget
                    else
                        Script.Locals.AimAssistTarget = Script:GetClosestPlayerToCursor(
                            shared.azov["silentaim"]["max distance"] * 100,
                            shared.azov["aimbot"]["fov"]["enabled"] and shared.azov["aimbot"]["fov"]["size"] or math.huge
                        )
                    end
                end
            end

            if Input.KeyCode == WalkSpeed and (shared.azov["movement"]["speed"]["mode"] or 'toggle') ~= 'always' then
                Script.Locals.IsWalkSpeeding = not Script.Locals.IsWalkSpeeding
            end

            if Input.KeyCode == DoubleTap then
                local dtMode = shared.azov["rage"]["doubletap"]["mode"] or 'toggle'
                if dtMode == 'toggle' then
                    Script.Locals.IsDoubleTapping = not Script.Locals.IsDoubleTapping
                elseif dtMode == 'hold' then
                    Script.Locals.IsDoubleTapping = true
                end
            end

            local jumpCfg = shared.azov["movement"]["jump"]
            local jumpMode = jumpCfg["mode"] or 'hold'
            local jumpKey = Enum.KeyCode[jumpCfg["key"]:upper()]
            if jumpMode == 'toggle' and Input.KeyCode == jumpKey then
                Script.Locals.IsJumping = not Script.Locals.IsJumping
            elseif jumpMode == 'hold' and Input.KeyCode == jumpKey then
                Script.Locals.IsJumping = true
            end

            local triggerConfig = shared.azov["triggerbot"]
            local isMouseInput = triggerConfig["key mode"]["bind"] == 'mouse'
            local isKeyboardInput = triggerConfig["key mode"]["bind"] == 'keybind'
            local toggleKey = shared.azov["triggerbot"]["key"]
            local success, keyCode = pcall(function()
                return Enum.KeyCode[toggleKey:upper()]
            end)

            if isMouseInput and table.find({"MouseButton1", "MouseButton2"}, toggleKey) and Input.UserInputType == Enum.UserInputType[toggleKey] then
                if triggerConfig["mode"] == "toggle" then
                    Script.Locals.TriggerState = not Script.Locals.TriggerState
                elseif triggerConfig["mode"] == "hold" then
                    Script.Locals.TriggerState = true
                end
            elseif isKeyboardInput and success and Input.KeyCode == keyCode then
                if triggerConfig["mode"] == "toggle" then
                    Script.Locals.TriggerState = not Script.Locals.TriggerState
                elseif triggerConfig["mode"] == "hold" then
                    Script.Locals.TriggerState = true
                end
            end

            if Input.KeyCode == Enum.KeyCode.LeftControl then
                CanTriggerbotShoot = false
            end

            local espCfgHK = shared.azov["esp"]
            if espCfgHK then
                local okESP, espKeyCode = pcall(function() return Enum.KeyCode[espCfgHK["key"]:upper()] end)
                if okESP and Input.KeyCode == espKeyCode then
                    local espType = espCfgHK["mode"] or 'toggle'
                    if espType == 'toggle' then
                        shared.azov["esp"]["enabled"] = not shared.azov["esp"]["enabled"]
                    elseif espType == 'hold' then
                        shared.azov["esp"]["enabled"] = true
                    end
                    
                    if not shared.azov["esp"]["enabled"] then
                        for _, data in pairs(Script.Locals.EspLabels or {}) do
                            if data.gui then data.gui.Enabled = false end
                        end
                    end
                end
            end

            if shared.azov["utilities"]["inventory helper"]["enabled"] and Input.KeyCode == Enum.KeyCode[shared.azov["utilities"]["inventory helper"]["key"]:upper()] then
                local GunOrder = shared.azov["utilities"]["inventory helper"]["order"]
                local BackPack = Self:FindFirstChildOfClass("Backpack")
                local Character = Self.Character
                if not BackPack or not Character then return end
                
                local hum = Character:FindFirstChildOfClass("Humanoid")
                if hum then
                    hum:UnequipTools()
                end
                
                local FakeFolder = Instance.new('Folder', Workspace)
                FakeFolder.Name = 'FakeFolder'
                
                for _, v in pairs(BackPack:GetChildren()) do
                    if v:IsA('Tool') then
                        v.Parent = FakeFolder
                    end
                end
                
                for _, v in ipairs(GunOrder) do
                    local Gun = FakeFolder:FindFirstChild(v)
                    if Gun then
                        Gun.Parent = BackPack
                    end
                end
                
                for _, v in pairs(FakeFolder:GetChildren()) do
                    if v:IsA('Tool') then
                        v.Parent = BackPack
                    end
                end
                
                FakeFolder:Destroy()
            end
        end)

        RBXConnection(UserInputService.InputEnded, function(Input, Processed)
            if not (string.find(GameName, "Da Hood") or game.PlaceId == 88976059384565) then
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    isfiring = false
                end
            end

            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                Script.Locals.RapidFiringLoop = false
            end

            if shared.azov["checks"]["silent aim targeting"]["chat"] and UserInputService:GetFocusedTextBox() then return end
            local jumpCfg2 = shared.azov["movement"]["jump"]
            if (jumpCfg2["mode"] or 'hold') == 'hold' then
                local jumpKey2 = Enum.KeyCode[jumpCfg2["key"]:upper()]
                if Input.KeyCode == jumpKey2 then
                    Script.Locals.IsJumping = false
                end
            end
            local triggerConfig = shared.azov["triggerbot"]
            local isMouseInput = triggerConfig["key mode"]["bind"] == 'mouse'
            local isKeyboardInput = triggerConfig["key mode"]["bind"] == 'keybind'
            local toggleKey = shared.azov["triggerbot"]["key"]
            local success, keyCode = pcall(function()
                return toggleKey
            end)

            if triggerConfig["mode"] == "hold" then

                if isMouseInput and table.find({"MouseButton1", "MouseButton2"}, toggleKey) and Input.UserInputType == Enum.UserInputType[toggleKey] then
                    Script.Locals.TriggerState = false
                elseif isKeyboardInput and success and Input.KeyCode == keyCode then
                    Script.Locals.TriggerState = false
                end
            end

            local espCfgE = shared.azov["esp"]
            if espCfgE and (espCfgE["mode"] or 'toggle') == 'hold' then
                local okESP_E, espKeyE = pcall(function() return Enum.KeyCode[espCfgE["key"]:upper()] end)
                if okESP_E and Input.KeyCode == espKeyE then
                    shared.azov["esp"]["enabled"] = false
                    for _, data in pairs(Script.Locals.EspLabels or {}) do
                        if data.gui then data.gui.Enabled = false end
                    end
                end
            end

            if Input.KeyCode == Enum.KeyCode.LeftControl then
                CanTriggerbotShoot = true
            end

            if (shared.azov["silentaim"]["key mode"] or 'toggle') == 'hold' then
                if Input.KeyCode == Enum.KeyCode[shared.azov["silentaim"]["key"]:upper()] then
                    IsSilentAiming = false
                end
            end
            if (shared.azov["aimbot"]["mode"] or 'toggle') == 'hold' then
                if Input.KeyCode == Enum.KeyCode[shared.azov["aimbot"]["key"]:upper()] then
                    Script.Locals.AimAssistTarget = nil
                    AimToggle = false
                end
            end
            if (shared.azov["rage"]["doubletap"]["mode"] or 'toggle') == 'hold' then
                if Input.KeyCode == Enum.KeyCode[shared.azov["rage"]["doubletap"]["key"]:upper()] then
                    Script.Locals.IsDoubleTapping = false
                end
            end
        end)
        RBXConnection(RunService.PreRender, function()
            if not (shared and shared.azov and shared.azov.silentaim and shared.azov.silentaim.fov) then return end
            if shared.azov["silentaim"]["mode"] == 'automatic' then
                local fovType = shared.azov["silentaim"]["fov"]["type"]
                local fovLimit
                if fovType == 'circle' then
                    fovLimit = CurrentFOV or shared.azov["silentaim"]["fov"]["circle"]
                elseif fovType == 'box' then
                    fovLimit = shared.azov["silentaim"]["fov"]["hit scan"]
                else
                    fovLimit = shared.azov["silentaim"]["fov"]["hit scan"]
                end
                Script.Locals.SilentAimTarget = Script:GetClosestPlayerToCursor(
                    shared.azov["silentaim"]["max distance"] * 100,
                    fovLimit,
                    shared.azov["silentaim"]["offscreen targeting"]
                )
            end

            if shared.azov["triggerbot"]["targeting mode"] == 'automatic' then
                Script.Locals.TriggerbotTarget = Script:GetClosestPlayerToCursor(
                    shared.azov["triggerbot"]["max distance"] * 100,
                    math.huge,
                    shared.azov["triggerbot"]["offscreen targeting"]
                )
            end

            if Script.Locals.SilentAimTarget and Script.Locals.SilentAimTarget.Character then
                Script.Locals.HitPosition = Script:GetHitPosition('Silent')
            end
            Script.Locals.SilentAimCanHit = Script:ShouldShoot(Script.Locals.SilentAimTarget)
            if Script.Locals.TriggerbotTarget and Script.Locals.TriggerbotTarget.Character then
                Script.Locals.HitTrigger = Script:GetClosestPartToCursor(Script.Locals.TriggerbotTarget.Character)
            end

            Script:AimbotStep()
            Script:Triggerbot()
            Script:Physics()
            UpdateDrawings()
            task.spawn(AutomatedPrediction)

            local irCfg = shared.azov["rage"]["infinite range"]
            if irCfg and irCfg["enabled"] then
                local character = Self.Character
                if character then
                    local tool = character:FindFirstChildOfClass("Tool")
                    if tool then
                        local maxRange = 99999999
                        local rangeProps = { "Range", "MaxRange", "FireRange", "Distance", "MaxDistance" }
                        for _, propName in ipairs(rangeProps) do
                            local rangeValue = tool:FindFirstChild(propName)
                            if rangeValue and rangeValue:IsA("NumberValue") then
                                rangeValue.Value = maxRange
                            end
                            local config = tool:FindFirstChild("Configuration") or tool:FindFirstChild("GunConfig")
                            if config then
                                local r = config:FindFirstChild(propName)
                                if r and r:IsA("NumberValue") then
                                    r.Value = maxRange
                                end
                            end
                        end
                    end
                end
            end

            if shared.azov["hitbox"]["enabled"] then
                for _, Player in ipairs(Players:GetPlayers()) do
                    if Player ~= Self and Player.Character then
                        local HRP = Player.Character:FindFirstChild("HumanoidRootPart")
                        if HRP then
                            local Sz = shared.azov["hitbox"]["size"]
                            HRP.Size = Vector3.new(Sz, Sz, Sz)
                            HRP.CanCollide = false
                            if shared.azov["hitbox"]["visualize"] then
                                HRP.Transparency = 0.7
                                HRP.BrickColor   = BrickColor.new("Really blue")
                                HRP.Material     = Enum.Material.Neon
                            else
                                HRP.Transparency = 1
                            end
                        end
                    end
                end
            end
        end)
    end
