game.RunService.Stepped:Connect(function()
    for i, v in pairs(game.Players:GetPlayers()) do
        if not v.Character:FindFirstChild("Highlight") then
            Instance.new("Highlight", v.Character)
            BG = Instance.new("BillboardGui", v.Character)
            TL = Instance.new("TextLabel", BG)
            BG.AlwaysOnTop = true
            BG.Size = UDim2.new(0, 100, 0, 50)
            BG.StudsOffset = Vector3.new(0, 4, 0)
            TL.BackgroundTransparency = 1
            TL.Size = UDim2.new(0, 100, 0, 50)
        end
        v.Character.BillboardGui.TextLabel.Text = v.Name.."\nHealth: "..math.round(v.Character.Humanoid.Health).."\nDistance: "..math.round((v.Character.HumanoidRootPart.CFrame.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude)
        v.Character.BillboardGui.TextLabel.TextColor = v.TeamColor
        v.Character.BillboardGui.Enabled = EP
        v.Character.Highlight.Enabled = EP
    end
end)

game.RunService.Stepped:Connect(function()
    if LT or LK then
        for i, v in pairs(game.Players:GetPlayers()) do
            if string.find(v.Name, User) then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                if LK then
                    game.ReplicatedStorage.meleeEvent:FireServer(v)
                end
            end
        end
    end
end)

game.RunService.Stepped:Connect(function()
    if Aura or All then
        for i, v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character.Humanoid.Health ~= 0 and not v.Character:FindFirstChild("ForceField") then
                if All then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                end
                game.ReplicatedStorage.meleeEvent:FireServer(v)
            end
        end
    end
end)

game.RunService.Stepped:Connect(function()
    if Aura or All then
        for i, v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character.Humanoid.Health ~= 0 and not v.Character:FindFirstChild("ForceField") then
                if All then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                end
                game.ReplicatedStorage.meleeEvent:FireServer(v)
            end
        end
    end
end)

function Seat()
    Value = All or LT or LK
    game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled("Seated", not Value)
end

game.RunService.Stepped:Connect(function()
    if Type == "FullName" then
        TL.Text = "game."..game.Players.LocalPlayer:GetMouse().Target:GetFullName()
    end
end)

game.RunService.RenderStepped:Connect(function(step)
    if Type == "FPS" then
        TL.Text = math.round(1/step)
    end
end)

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AWDX-DYVB/test/main/%E6%B2%B3%E6%B5%81%E6%9C%80%E9%87%8D%E8%A6%81%E7%9A%84%E6%BA%90%E7%A0%81.lua"))()
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/ownckn/choose/main/%E9%9D%A2%E6%9D%BFUI.lua"))()

local window = DrRayLibrary:Load(identifyexecutor(), "Default")

local tab = DrRayLibrary.newTab("火箭发射模拟器", "rbxassetid://15571104634")

tab.newLabel("这个只是展示-是那款游戏的脚本-没有任何用处")

tab.newLabel("")

tab.newLabel("以下是工作人员使用-普通玩家建议别用")

tab.newLabel("下面还有很多-请往下面滑")

tab.newButton("获取全名", "全名-可以获得你触碰到的物体的全名-在写代码中对于你有帮助-不是工作人员或-者就-是不会用的就不要使用了", function()
     Tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
        Tool.RequiresHandle = false
        Tool.Activated:Connect(function()
            setclipboard("game."..game.Players.LocalPlayer:GetMouse().Target:GetFullName())
        end)
end)

tab.newButton("获得当前位置的坐标", "坐标-可以获得当前所在的这个位置的坐标-不是工作人员或-者就-是不会用的就不要使用了", function()
setclipboard("CFrame.new("..tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position)..")")
end)

tab.newButton("查看当前服务器日志", "日志-可以看到使用功能报错或者就是成功之类的东西-不是工作人员或-者就-是不会用的就不要使用了", function()
game.VirtualInputManager:SendKeyEvent(true, "F9", false, game)
end)

tab.newButton("Dex Explorer", "无敌模式-Dex-可以使用这个东西抓取到一些数据-而制作更好的代码-不是工作人员或-者就-是不会用的就不要使用了", function()
OrionLib:MakeNotification({
	        Name = "正在启动(Dex Explorer)",
            Content = "正 在 加 载 Dex - Explorer (启动中耐心等待)",
            Image = "rbxassetid://15571104634",
            Time = 8
        })
      	loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
end)

tab.newButton("Simple Spy", "Spy-可以抓取到更多数据-帮助你写好代码-不是工作人员或-者就-是不会用的就不要使用了", function()
OrionLib:MakeNotification({
	        Name = "正在启动(Simple Spy)",
            Content = "正 在 加 载 Simple - Spy (启动中耐心等待)",
            Image = "rbxassetid://15571104634",
            Time = 8
        })
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RS/main/SimpleSpyMobile"))()
end)

tab.newLabel("")

tab.newDropdown("类型-没弄好-暂时用不了", "类型-我忘了这个是干啥用的-你们自己去研究吧-不是工作人员或-者就-是不会用的就不要使用了-有问题暂时用不了", {"FullName", "FPS"}, function(Value)
    Type = Value
end)

tab.newToggle("可见", "显示类型-我忘了这个是干啥用的-你们自己去研究吧-不是工作人员或-者就-是不会用的就不要使用了-有问题暂时用不了", false, function(Value)
   TL.Visible = Value
end)

local tab1 = DrRayLibrary.newTab("玩家-大厅", "rbxassetid://15571104634")

tab1.newLabel("下面还有很多-请往下面滑")

tab1.newSlider("修改速度", "修改速度-过后-你将变得特别快-有些地图恐怕会有拉回", 500, false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)

tab1.newSlider("跳跃高度", "修改跳跃力-过后-你将变得跳跃力特别高", 500, false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)

tab1.newSlider("修改重力", "修改重力-过后-你将变得特别轻可以飘在空中", 500, false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)

tab1.newButton("飞行-汉化版", "飞行-可以让你在天空中一直遨游飞行-有些地图恐怕会有防检测", function()
    OrionLib:MakeNotification({
	        Name = "正在启动(飞行-汉化版)",
            Content = "正 在 加 载 飞 行 - 汉 化 版 (启动中耐心等待)",
            Image = "rbxassetid://15571104634",
            Time = 8
        })
      	loadstring(game:HttpGet("https://pastebin.com/raw/eUK3tbiM"))()
end)

tab1.newToggle("飞行踏空", "飞行踏空-持续点击跳跃键可以飞起来-长按跳跃键可以一直飞", false, function(Value)
  Jump = Value
        game.UserInputService.JumpRequest:Connect(function()
            if Jump then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
            end
        end)
end)

tab1.newToggle("穿墙", "穿墙-可以穿透任何东西-无视任何障碍-有些地图恐怕会有拉回", false, function(Value)
  Noclip = Value
        Stepped = game.RunService.Stepped:Connect(function()
            if Noclip then
                for a, b in pairs(game.Workspace:GetChildren()) do
                    if b.Name == game.Players.LocalPlayer.Name then
                        for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                    end
                end
            else
                Stepped:Disconnect()
            end
        end)
end)

tab1.newToggle("显示玩家", "显示玩家-可以看到任何玩家被墙壁挡住的也能看见-可以让你更精确的定位玩家在哪里", false, function(Value)
  EP = Value
end)

tab1.newLabel("锁定杀戮-和-锁定传送")

tab1.newInput("用户名", "输入玩家用户名可以一直锁定那个玩家", function(Value)
    User = Value
end)

tab1.newToggle("锁定传送", "锁定传送-可以让你的人物一直跟随到那个玩家的身边-前提是必须在上面输入玩家的用户名才可以传送", false, function(Value)
  LT = Value
    Seat()
end)

tab1.newToggle("锁定杀戮", "锁定杀戮-可以一直追踪一个人-让他一直死亡-需要先在上面输入玩家用户名才可使用-只适配一小部分地图", false, function(Value)
  LK = Value
    Seat()
end)

tab1.newLabel("循环杀戮-和-光环杀戮")

tab1.newToggle("杀戮光环", "杀戮光环-可以靠近玩家过后迅速让他死亡-只适配一小部分地图", false, function(Value)
  Aura = Value
end)

tab1.newToggle("循环杀戮", "循环杀戮-可以在杀死一个玩家过后继续杀死下一个玩家-只适配一小部分地图", false, function(Value)
  All = Value
    Seat()
end)

tab1.newLabel("最终杀死全部玩家--仅支持一小部分地图")

tab1.newButton("杀死全部人 (新版一直杀)", "杀死全部人-可以在这个房间里面一直攻击全部人-让他们死亡-只支持一小部分地图-开了无法关闭", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/kXjfpFPh"))()
end)

local tab2 = DrRayLibrary.newTab("其他-大厅", "rbxassetid://15571104634")

tab2.newLabel("下面还有很多-请往下面滑")

tab2.newButton("跟随玩家", "这个坏了-还正在修复", function()
end)

tab2.newButton("建筑工具", "建筑工具-可以给你一把锤子和一把魔术棍-锤子可以删除一切-魔法棍可以复制东西", function()
    Hammer = Instance.new("HopperBin")
        Hammer.Name = "Hammer"
        Hammer.BinType = 4
        Hammer.Parent = game.Players.LocalPlayer.Backpack
        Clone = Instance.new("HopperBin")
        Clone.Name = "Clone"
        Clone.BinType = 3
        Clone.Parent = game.Players.LocalPlayer.Backpack
        Grab = Instance.new("HopperBin")
        Grab.Name = "Grab"
        Grab.BinType = 2
end)

tab2.newButton("点击传送", "点击传送-可以在你任意点的一个地方瞬间移动到达那个目的地", function()
    Tool = Instance.new("Tool")
        Tool.Name = "点击传送"
        Tool.RequiresHandle = false
        Tool.Parent = game.Players.LocalPlayer.Backpack
        Tool.Activated:Connect(function()
            Mouse = game.Players.LocalPlayer:GetMouse().Hit+Vector3.new(0, 2.5, 0)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Mouse.X, Mouse.Y, Mouse.Z)
        end)
end)

tab2.newButton("星河-高级版刷物品", "暂时用不了了-这个还在修复中", function()
end)

tab2.newButton("死亡笔记-河流汉化版", "死亡笔记-在笔记上写下-玩家名字可以让那个玩家迅速死亡-只适配一小部分地图", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AWDX-DYVB/test/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0.lua"))()
end)

tab2.newButton("无敌模式 (其他人可以看见)", "无敌模式-可以让你在游戏中免疫任何伤害-只支持一小部分地图-最近这个出了点问题", function()
loadstring(game:HttpGet("https://pastebin.com/raw/LdTVujTA"))()
end)

tab2.newButton("无敌的棒子 (瞬间秒杀)  (有些地图可使用)", "暂时用不了了-这个还在修复中", function()
end)

tab2.newButton("4K光影", "4K光影-可以让你的体验感变得更好-拍照也变得超好看-有一种很温暖的感觉", function()
loadstring(game:HttpGet("https://pastebin.com/raw/SQ2nYcre"))()
end)

tab2.newToggle("修改明亮", "修改明亮-可以让很黑的环境变得特别亮", false, function(Value)
  if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
end)

local tab3 = DrRayLibrary.newTab("音乐-大厅", "rbxassetid://15571104634")

tab3.newLabel("很抱歉-音乐盒子正在开发中-请耐心等待")

tab3.newButton("在你的身边(点击播放音乐)", "音乐还没有开发完成-暂时无法使用-请耐心等待", function()
end)

tab3.newButton("铃芽之旅中文版(点击播放音乐)", "音乐还没有开发完成-暂时无法使用-请耐心等待", function()
end)

tab3.newButton("铃芽之旅日文版(点击播放音乐)", "音乐还没有开发完成-暂时无法使用-请耐心等待", function()
end)

tab3.newButton("无人区玫瑰(点击播放音乐)", "音乐还没有开发完成-暂时无法使用-请耐心等待", function()
end)

local Tip1 = DrRayLibrary.newTab("传送-小岛", "rbxassetid://15571104634")

Tip1.newLabel("以下是次元①星球传送坐标-点击按钮可以传送到对应的星球")

Tip1.newButton("陆地星球(0)", "暂时没有设计描述", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.7267163991928101,32.9536678131103516,1.8616175651550293)
end)

Tip1.newButton("云朵星球(1)", "暂时没有设计描述", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(39.04117965698242,216.82992553710938,-8.190390586853027)
end)

Tip1.newButton("跑酷星球(2)", "暂时没有设计描述", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2.468339681625366,807.8297729492188,-1.6224114894866943)
end)

Tip1.newButton("航天星球(3)", "暂时没有设计描述", function()
OrionLib:MakeNotification({
	        Name = "已到达航天星球(3)",
            Content = "航天星球-大门密码:1 4 2 3",
            Image = "rbxassetid://15571104634",
            Time = 8
        })
      	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-38.237899780272344,1430.4459228515625,2.284259796142578)
end)

Tip1.newButton("迷宫星球(4)", "暂时没有设计描述", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4.828145503997803,3132.19580078125,-29.6539402000805664)
end)

Tip1.newButton("娃娃星球(5)", "暂时没有设计描述", function()
      	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20.010889053344727,5017.28857421875,-52.0813407979492)
end)

Tip1.newButton("科技星球(6)", "暂时没有设计描述", function()
      	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.109124674072266,6817.84326171875,-2.0230681896209717)

end)

Tip1.newButton("陨石星球(7)", "暂时没有设计描述", function()
      	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6.053472518920898,8623.6357421875,-6.926145076751709)
end)

Tip1.newButton("机器星球(8)", "暂时没有设计描述", function()
      	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-41.834129333496094,11285.853515625,0.3438911736011505)
end)

Tip1.newButton("矿物星球(9)", "暂时没有设计描述", function()
      	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.9175405502319336,15300.3681640625,10.21182632446289)
end)

Tip1.newButton("彩色星球(10)", "暂时没有设计描述", function()
      	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9.958927154541016,18411.908203125,2.3199031352996826)
end)

Tip1.newButton("消失星球(11)", "暂时没有设计描述", function()
      	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.43498001540374756,22540.44140625,-75.1148681640625)
end)

Tip1.newButton("闪耀星球(12)", "暂时没有设计描述", function()
      	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.971971333026886,27941.1230468875,4.407316207885742)
end)

Tip1.newButton("终点星球(13)", "暂时没有设计描述", function()
      	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.3990498781204224,33998.9375,-0.6763823628425598)
end)

local Tip2 = DrRayLibrary.newTab("自动-任务", "rbxassetid://15571104634")

Tip2.newLabel("全部自动任务-代码是纳西妲给的-移动-和-传送补帧-没有这些-恐怕制作不了自动任务")

Tip2.newLabel("河流的话-坐标-是-河流一个一个检查调试-特别辛苦-不能给差评哟")

Tip2.newButton("次元①完成全部任务", "这个只能启动一次-想再次启动-请退出游戏重新进入-开了关不掉", function()
      	OrionLib:MakeNotification({
	        Name = "一键全部任务",
            Content = "正在获取服务器数据-请稍等",
            Image = "rbxassetid://15571104634",
            Time = 3
        })
        
        wait(4)
        OrionLib:MakeNotification({
	        Name = "关于自动任务",
            Content = "自动任务的代码是纳西达给的\n坐标是本作者一个一个测试改良的\n\n注意事项\n一个服务器只能启动一次-因为会删除数据-启动过后会把一部分的数据给删除掉-再次启动第2次恐怕会有卡住的风险\n使用第二被退出游戏重开\n启动了自动任务就不要再动了",
            Image = "rbxassetid://15571104634",
            Time = 10
        })
        
        wait(4)
        OrionLib:MakeNotification({
	        Name = "服务器数据获得完成",
            Content = "正在启动中-请等待5秒",
            Image = "rbxassetid://15571104634",
            Time = 5
        })
        wait(5)
        
        game.Players.LocalPlayer.Character.Humanoid:MoveTo("53.956295013427734, 3.4200010299682617, 75.46720123291016")
        
        wait(8)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-0.7267163991928101,32.9536678131103516,1.8616175651550293)
        }):Play()
        
        wait(3)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(58.77163314819336, 170.8881378173828, 108.50308227539062)
        }):Play()
        
        wait(1)
        
        OrionLib:MakeNotification({
	        Name = "成功到达第1关",
            Content = "已开启自动任务-第1关\n请不要触动屏幕\n防止结束自动任务",
            Image = "rbxassetid://15571104634",
            Time = 5
        })
        
        wait(3)
        
        game.Players.LocalPlayer.Character.Humanoid:MoveTo("76.02871704101562, 170.8881378173828, 18.917255401611328")
        
        wait(5)
        
        game.Players.LocalPlayer.Character.Humanoid:MoveTo("58.4177131652832, 176.5598907470703, 15.437352180480957")
        
        wait(1) --第1层
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(36.0091438293457, 187.7443389892578, 15.297051429748535)
        }):Play()
        
        wait(1)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(8.723432540893555, 195.6272430419922, 15.771968841552734)
        }):Play()
        
        wait(1)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-14.79552936553955, 204.70877075195312, 16.65951919555664)
        }):Play()
        
        wait(1)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-36.3622932434082, 218.75108337402344, 16.471853256225586)
        }):Play()
        
        wait(1)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-35.612403869628906, 224.20657348632812, -9.638911247253418)
        }):Play()
        
        wait(1)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-10.422353744506836, 232.22190856933594, -9.634367942810059)
        }):Play()
        
        wait(1)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(17.180591583251953, 224.26109313964844, -9.423446655273438)
        }):Play()
        
        wait(1)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(30.75589370727539, 216.2129364013672, -8.747017860412598)
        }):Play()
        
        wait(1.5)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("44.83259582519531, 216.2129669189453, -7.468850135803223")
       
       game.ProximityPromptService.PromptShown:Connect(function(v)
        v:InputHoldBegin()
       end)

       wait(6)--第2层
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(11.701202392578125, 700.8162231445312, -118.13903045654297)
        }):Play()
        
        wait(1)
        
        OrionLib:MakeNotification({
	        Name = "成功到达第2关",
            Content = "已开启自动任务-第2关\n请不要触动屏幕\n防止结束自动任务",
            Image = "rbxassetid://15571104634",
            Time = 5
        })
        
        wait(3)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(7.616613864898682, 720.8165893554688, -92.59808349609375)
        }):Play()
        
        wait(1.5)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("5.645782947540283, 740.8165283203125, -56.185245513916016")
       
       wait(5)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(5.7609052658081055, 755.8165283203125, -24.117677688598633)
        }):Play()
        
        wait(2)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(10.070548057556152, 776.81640625, -10.329689979553223)
        }):Play()
        
        wait(2)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(48.58443069458008, 777.0667724609375, -12.182292938232422)
        }):Play()
        
        wait(1.5)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("48.49563980102539, 777.0667724609375, 25.813934326171875")
       
       wait(2)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(58.52403259277344, 785.0667724609375, 37.55086898803711)
        }):Play()
        
        wait(1.5)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-0.5609598755836487, 785.0667724609375, 37.42219543457031")
       
       wait(2)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-9.745688438415527, 790.0667724609375, 38.21592330932617)
        }):Play()
        
        wait(1.5)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-30.093595504760742, 790.0667724609375, 38.591339111328125")
       
       wait(2)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-39.959720611572266, 796.0667724609375, 37.733192443847656)
        }):Play()
        
        wait(1.5)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-60.55562210083008, 796.0667724609375, 38.26283645629883")
       
       wait(2)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-61.99498748779297, 807.5667724609375, 15.316813468933105)
        }):Play()
        
        wait(2)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-60.106056213378906, 813.0667724609375, -3.403738498687744)
        }):Play()
        
        wait(1.5)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-24.33995246887207, 813.0667724609375, -3.0874462127685547")
       
       wait(2)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-11.392175674438477, 807.2127685546875, -2.5619924068450928)
        }):Play()
        
        wait(1.5)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("1.572505235671997, 807.2127685546875, -2.085339069366455")
       
       game.ProximityPromptService.PromptShown:Connect(function(v)
        v:InputHoldBegin()
        end)

        wait(6)--第3层
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-84.84370422363281, 1502.741455078125, -44.0843505859375)
        }):Play()

       wait(1)
        
        OrionLib:MakeNotification({
	        Name = "成功到达第3关",
            Content = "已开启自动任务-第关\n请不要触动屏幕\n防止结束自动任务\n请注意第3关-有字符和动画耗的时间可能会有点点长",
            Image = "rbxassetid://15571104634",
            Time = 5
        })
        
        wait(3)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-99.32933044433594, 1429.8289794921875, -3.621978521347046")
       
       wait(5)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-31.000885009765625, 1429.8289794921875, 14.16535758972168")
       
       wait(7)
       
       local args = {
       [1] = "???",
       [2] = "All"
       }
       game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

       wait(3)
       
       local args = {
       [1] = "这怎么需要卡密呢",
       [2] = "All"
       }
       game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
       
       wait(3)
       
       local args = {
       [1] = "他们说不需要卡密的-又被骗了",
       [2] = "All"
       }
       game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
       
       wait(3)
       
       local args = {
       [1] = "试试看能不能直接转过去",
       [2] = "All"
       }
       game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
       
       wait(2)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-91.38470458984375, 1429.8289794921875, 1.2969483137130737")
       
       wait(4)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-81.1162109375, 1429.8289794921875, 2.01106595993042")

       wait(5)
       
       local args = {
       [1] = " OK-我准备好-冲刺了",
       [2] = "All"
       }
       game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
       
       wait(3)
       
       local args = {
       [1] = "蓄力",
       [2] = "All"
       }
       game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
       
       wait(3)
       
       local args = {
       [1] = "冲啊",
       [2] = "All"
       }
       game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
       
       wait(2)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-23.62499237060547, 1435.1871337890625, 2.5177783966064453")
       
       wait(4)
       
       local args = {
       [1] = "哦-不好疼",
       [2] = "All"
       }
       game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
       
       wait(4)
       
       local args = {
       [1] = "还是再想想其他办法吧",
       [2] = "All"
       }
       game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
       wait(5)
       
       local args = {
       [1] = "???",
       [2] = "All"
       }
       game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-38.82107162475586, 1429.8289794921875, 0.9958659410476685")
       
       wait(1)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-36.92313766479492, 1429.8289794921875, -15.44999885559082")
       
       wait(1)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-39.621612548828125, 1429.8289794921875, 20.02869415283203")
       
       wait(1)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-36.92313766479492, 1429.8289794921875, -15.44999885559082")
       
       wait(1)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-39.621612548828125, 1429.8289794921875, 20.02869415283203")
       
       wait(2)
        
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-36.92313766479492, 1429.8289794921875, -15.44999885559082")
       
       wait(1)
       
       game.Workspace.Islands.SatelliteIsland.Room.LaserWall.Lazer1:Destroy()
       game.Workspace.Islands.SatelliteIsland.Room.LaserWall.Lazer:Destroy()
       game.Workspace.Islands.SatelliteIsland.Room.LaserWall.Lazer:Destroy()
       game.Workspace.Islands.SatelliteIsland.Room.LaserWall.Lazer:Destroy()
       game.Workspace.Islands.SatelliteIsland.Room.LaserWall.Lazer:Destroy()
       
       wait(3)
       
       local args = {
       [1] = "门开了-太好了-终于可以进去了",
       [2] = "All"
       }
       game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
       
       wait(3)
       
       local args = {
       [1] = "也不知道是哪个好心人开的门-非常感谢",
       [2] = "All"
       }
       game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
       
       wait(2)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-38.82107162475586, 1429.8289794921875, 0.9958659410476685")
       
       wait(3)
        
        game.Players.LocalPlayer.Character.Humanoid:MoveTo("4.414693832397461, 1430.7125244140625, 2.417976140975952")
        
        game.ProximityPromptService.PromptShown:Connect(function(v)
        v:InputHoldBegin()
        end)
        
        wait(4)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-38.82107162475586, 1429.8289794921875, 0.9958659410476685")
       
       wait(3)
        
       game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
         CFrame = CFrame.new(-10.219609260559082, 1481.7457275390625, 14.856772422790527)
       }):Play()
        
       wait(3.5) --第4层
        
       game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-130.8479766845703, 3131.578857421875, -14.50576400756836)
        }):Play()
        
       wait(1)
        
        OrionLib:MakeNotification({
	        Name = "成功到达第4关",
            Content = "已开启自动任务-第4关\n请不要触动屏幕\n防止结束自动任务",
            Image = "rbxassetid://15571104634",
            Time = 5
        })
        
        wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-52.30768585205078, 3131.578857421875, -1.3865562677383423")
       
       wait(3.8)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-53.687374114990234, 3131.578857421875, 15.951065063476562")
       
       wait(0.8)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-32.358360290527344, 3131.578857421875, 37.418243408203125")
       
       wait(1.5)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-18.2766170501709, 3131.578857421875, 29.386442184448242")
       
       wait(0.5)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-17.975982666015625, 3131.57861328125, 3.636461019515991")
       
       wait(1.3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-6.883869647979736, 3131.578857421875, 15.305177688598633")
       
       wait(0.6)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-8.781661033630371, 3131.578857421875, 48.93266296386719")
   
       wait(1.7)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("52.26164627075195, 3131.578857421875, 43.95557403564453")
       
       wait(2.83)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("43.21501541137695, 3131.57861328125, 22.160436630249023")
       
       wait(1.2)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("14.233139038085938, 3131.578857421875, 38.279441833496094")
       
       wait(1.6)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("0.6010890007019043, 3131.578857421875, 32.29283905029297")
       
       wait(0.7)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("0.8592482209205627, 3131.578857421875, -30.771060943603516")
       
       wait(3)
       
       game.Workspace.Islands.BeeIsland.Maze.TopParts.Part:Destroy()
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("8.135343551635742, 3131.578857421875, -32.410518646240234")
       
       game.ProximityPromptService.PromptShown:Connect(function(v)
        v:InputHoldBegin()
        end)
        
        wait(3.5)
        
       game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-15.198663711547852, 3155.573974609375, -37.656707763671875)
        }):Play()
        
        wait(2)
        
       game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(19.91824722290039, 3172.036865234375, -0.730617344379425)
        }):Play()
        
        wait(1)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-21.213823318481445, 3183.41259765625, 9.381558418273926")
       
       wait(5)--第5层
        
       game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(38.27522659301758, 5016.671875, 120.24668884277344)
        }):Play()
        
        wait(4)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("12.12252140045166, 5016.671875, -22.293537139892578")
       
       wait(8)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-11.035452842712402, 5016.671875, -20.216062545776367")
       
       wait(4)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-7.630963325500488, 5034.521484375, -35.678340911865234")
       
       wait(2)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-7.630963325500488, 5034.521484375, -35.678340911865234")
       
       wait(2)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("4.066200256347656, 5016.671875, 37.46546936035156")
       
       wait(4)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("39.82611846923828, 5016.671875, 24.119300842285156")
       
       wait(2)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("58.11660385131836, 5016.671875, 68.67652130126953")
       
       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("37.455814361572266, 5016.671875, 82.42864990234375")
       
       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("14.16783618927002, 5016.671875, 103.69420623779297")
       
       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("9.534880638122559, 5028.0986328125, 68.32062530517578")
       
       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-29.59623146057129, 5016.671875, 86.6665267944336")
       
       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("4.257648468017578, 5016.671875, 37.47351837158203")
       
       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("39.52341842651367, 5016.671875, 23.87413215637207")
       
       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("38.056053161621094, 5016.923828125, -4.4631667137146")
       
       wait(2)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("51.453033447265625, 5020.12744140625, -3.430506706237793")
       
       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("102.97010040283203, 5016.671875, -27.264028549194336")
       
       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("102.97010040283203, 5016.671875, -27.264028549194336")
       
       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("26.954448699951172, 5016.671875, -52.781070709228516")
       
       wait(4)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("7.262470245361328, 5016.765625, -87.65338134765625")
       
       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-54.76985549926758, 5017.01708984375, -76.80165100097656")
       
       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-72.52371215820312, 5017.6748046875, -73.21234893798828")
       
       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-99.05986022949219, 5016.671875, -24.495817184448242")
       
       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-106.51956176757812, 5016.671875, 11.55949592590332")
       
       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-79.66084289550781, 5016.671875, 37.49420928955078")
       
       wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-52.191280364990234, 5023.412109375, 12.897080421447754")
   
       wait(3)
        
       game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(4.854793548583984, 5016.671875, 38.67512893676758)
        }):Play()
        
       wait(3)
        
       game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(102.97010040283203, 5016.671875, -27.264028549194336)
        }):Play()
        
       wait(3)
        
       game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-29.59623146057129, 5016.671875, 86.6665267944336)
        }):Play()
        
       wait(3)
        
       game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-14.16783618927002, 5016.671875, 103.69420623779297)
        }):Play()
        
        wait(5)
        
       game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-14.16783618927002, 5016.671875, 103.69420623779297)
        }):Play()
        
        wait(5)
        
       game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-51.86631393432617, 5016.671875, -42.67530822753906)
        }):Play()
        
        wait(3)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-18.662782669067383, 5016.671875, -52.80474853515625")
       
       game.Workspace.Islands.MoonIsland.Safety:Destroy()
       
       game.ProximityPromptService.PromptShown:Connect(function(v)
        v:InputHoldBegin()
        end)
        
        wait(7)
       
       game.Players.LocalPlayer.Character.Humanoid:MoveTo("-101.48936462402344, 5016.671875, -59.25886535644531")
       
       wait(4)
       
       local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AWDX-DYVB/test/main/%E6%B2%B3%E6%B5%81%E6%9C%80%E9%87%8D%E8%A6%81%E7%9A%84%E6%BA%90%E7%A0%81.lua"))()
       
       OrionLib:MakeNotification({
	        Name = "全部任务-已完成",
            Content = "半成品还没有制作完",
            Image = "rbxassetid://15571104634",
            Time = 8
        })
        
        wait(2)
        
        game.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(), {
          CFrame = CFrame.new(-0.7267163991928101,32.9536678131103516,1.8616175651550293)
        }):Play()
end)

Tip2.newLabel("单独自动任务-单独的自动任务还没弄-等我先把全部自动给弄完")

local tab4 = DrRayLibrary.newTab("其他-脚本-大厅", "rbxassetid://15571104634")

tab4.newLabel("我只添加了(2)个脚本-可能以后我会添加更多的脚本")

tab4.newButton("纳西达-脚本中心", "纳西妲-脚本中心-我不知道怎么形容-你们自己研究吧", function()
OrionLib:MakeNotification({
	        Name = "正在启动(纳西妲-脚本中心)",
            Content = "正 在 加 载 纳 西 妲 - 脚 本 中 心 (启动中耐心等待)",
            Image = "rbxassetid://15571104634",
            Time = 8
        })
      	loadstring(game:HttpGet("https://pastebin.com/raw/De4aYHDY"))()
end)

tab4.newButton("无名字-透视玩家脚本-没汉化", "透视-可以显示玩家位置-或者透视墙壁或者是添加线条", function()
OrionLib:MakeNotification({
	        Name = "正在启动(无名字-透视玩家脚本)",
            Content = "正 在 加 载 无 名 字 - 透 视 玩 家 脚 (启动中耐心等待)",
            Image = "rbxassetid://15571104634",
            Time = 8
        })
      	loadstring(game:HttpGet("https://pastebin.com/raw/uw2P2fbY"))()
end)

local tab4 = DrRayLibrary.newTab("关于我们", "rbxassetid://15571104634")

tab4.newLabel("下面还有很多-请往下面滑")

tab4.newButton("飞行-汉化版", "飞行-可以让你在天空中一直遨游飞行-有些地图恐怕会有防检测", function()
    OrionLib:MakeNotification({
	        Name = "正在启动(飞行-汉化版)",
            Content = "正 在 加 载 飞 行 - 汉 化 版 (启动中耐心等待)",
            Image = "rbxassetid://15571104634",
            Time = 8
        })
      	loadstring(game:HttpGet("https://pastebin.com/raw/eUK3tbiM"))()
end)

tab4.newInput("移动速度", "修改速度-过后-你将变得特别快-有些地图恐怕会有拉回", function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)

tab4.newInput("跳跃高度", "修改跳跃力-过后-你将变得跳跃力特别高", function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)

tab4.newInput("修改重力", "修改重力-过后-你将变得特别轻可以飘在空中", function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)

tab4.newButton("作者的留言", "欢 迎 你 使 用 河 流 roblox 你 对 他 的 支 持 就 是 我 们 的 动 力", function()
end)

tab4.newButton("河流QQ官方群", "587185906", function()
end)

tab4.newButton("河流QQ官方群(点击复制)", "点击即可复制河流QQ群号", function()
OrionLib:MakeNotification({
	        Name = "通知复制成功",
            Content = "可以在QQ里面的搜索搜索群号",
            Image = "rbxassetid://15571104634",
            Time = 8
        })
    setclipboard("587185906")
end)

tab4.newButton("河流工具箱-脚本", "工作人员专用", function()
OrionLib:MakeNotification({
	        Name = "正在启动(河流工具箱)",
            Content = "正 在 加 载 河 流 工 具 箱 (启动中耐心等待)",
            Image = "rbxassetid://15571104634",
            Time = 8
        })
      	loadstring(game:HttpGet("https://pastebin.com/raw/2frP15Mh"))()
end)
