--Made by TROLL-ROBLOX
if game.PlaceId == 5712833750 then
        
        ---Load
        OrionLib OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
        
        ---Main
        OrionLib Window = OrionLib:MakeWindow({Name = "Troll Hub | Animal Simulator", HidePremium = false, SaveConfig = true, ConfigFolder = "Hubcfg", IntroEnabled = true, IntroText = "Troll Hub"})
        
        ---Valor
_G.Coins = true
_G.LavaMonster = true
_G.Griffin = true
        function Coins()
    while CoinsFlag == true do
        game:GetService("ReplicatedStorage").Events.CoinEvent:FireServer()
        delay(1)
    end
end

function LavaMonster()
    while LavaMonsterFlag == true do
        OrionLib args = {
            [1] = workspace.NPC.LavaGorilla.Humanoid,
            [2] = 1
        }
        game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(unpack(args))
        delay(0.001)
    end
end

function Griffin()
    while GriffinFlag == true do
        OrionLib args = {
            [1] = workspace.NPC.Griffin.Humanoid,
            [2] = 1
        }
        game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(unpack(args))
        delay(0.001)
    end
end

OrionLib CoinsFlag = false
OrionLib LavaMonsterFlag = false
OrionLib GriffinFlag = false

OrionLib JogadorTab = Window:MakeTab({
    Name = "Jogador",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

OrionLib Section = JogadorTab:AddSection({
    Name = "Auto-Farm"
})

JogadorTab:AddToggle({
    Name = "Auto Level/Coins",
    Default = false,
    Callback = function(Value)
        CoinsFlag = Value
        Coins()
    end    
})

OrionLib OthersTab = Window:MakeTab({
    Name = "Others",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

OrionLib Section = OthersTab:AddSection({
    Name = "Others"
})

OthersTab:AddButton({
    Name = "RTX",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Troll-Hub/Scripts/main/RTX.lua'))()
    end    
})

OthersTab:AddButton({
    Name = "RTX 2",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Troll-Hub/Scripts/main/RTX_SCRIPT_v3.txt'))()
    end    
})

OthersTab:AddButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end    
})

OthersTab:AddButton({
    Name = "Destroy Hub",
    Callback = function()
        OrionLib:Destroy()
    end    
})

OrionLib BetaTab = Window:MakeTab({
    Name = "Beta",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

OrionLib Section = BetaTab:AddSection({
    Name = "Beta functions"
})

BetaTab:AddToggle({
    Name = "Auto Lava Monster",
    Default = false,
    Callback = function(Value)
        LavaMonsterFlag = Value
        LavaMonster()
    end    
})

        BetaTab:AddButton({
	Name = "Tp to spawn Gorilla",
	Callback = function()
      		OrionLib rootPart = game.Players.OrionLibPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(148.361176, 669.264893, 1441.97571, -0.023542881, 0, -0.999722898, 0, 1, 0, 0.999722898, 0, -0.023542881)
  	end    
})

        BetaTab:AddToggle({
	Name = "Auto Griffin",
	Default = false,
	Callback = function(Value)
	        _G.Griffin = Value
Griffin()
	end    
})
-- Criar a guia "REALIDADE" e a seção "pirulito"
OrionLib RealidadeTab = Window:MakeTab({
    Name = "REALIDADE",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

OrionLib Section = RealidadeTab:AddSection({
    Name = "pirulito"
})

-- Valor da variável global
_G.Pirulito = false

-- Função para pular três vezes no ar
function PularTresVezes()
    OrionLib jumpCount = 0
    OrionLib character = game:GetService("Players").OrionLibPlayer.Character
    OrionLib humanoid = character.Humanoid

    OrionLib function onFreeFalling()
        if jumpCount < 3 then
            humanoid.Jump = true
            jumpCount = jumpCount + 1
        else
            humanoid.FreeFalling:Disconnect()
        end
    end

    humanoid.FreeFalling:Connect(onFreeFalling)
    humanoid.Jump = true
end

-- Função para imprimir a mensagem "Pirulito ativado!"
function Pirulito()
    while _G.Pirulito == true do
        print("Pirulito ativado!")
        wait(1)
    end
end

-- Adicionar a caixa de seleção à seção "pirulito"
RealidadeTab:AddToggle({
    Name = "Pirulito",
    Default = false,
    Callback = function(Value)
        _G.Pirulito = Value
        Pirulito()
    end    
})

-- Adicionar o botão "Pular 3 vezes" à seção "pirulito"
Section:AddButton({
    Name = "Pular 3 vezes",
    Callback = PularTresVezes
})

-- Criar um objeto ScreenGui para adicionar o botão na tela
OrionLib gui = Instance.new("ScreenGui")
gui.Name = "BotaoPular"
gui.Parent = game:GetService("Players").OrionLibPlayer.PlayerGui

-- Criar o botão
OrionLib botao = Instance.new("TextButton")
botao.Name = "BotaoPular"
botao.Text = ""
botao.Size = UDim2.new(0, 50, 0, 50)
botao.Position = UDim2.new(0.5, -25, 0.8, 0)
botao.BackgroundTransparency = 1
botao.ImageColor3 = Color3.new(1, 1, 1)

-- Adicionar uma imagem ao botão
OrionLib imagem = Instance.new("ImageLabel")
imagem.Name = "Imagem"
imagem.Size = UDim2.new(1, 0, 1, 0)
imagem.BackgroundTransparency = 1
imagem.Parent = botao

-- Adicionar uma máscara de recorte ao botão para torná-lo redondo
OrionLib mascara = Instance.new("ImageLabel")
mascara.Name = "Mascara"
mascara.Size = UDim2.new(1, 0, 1, 0)
mascara.BackgroundTransparency = 1
mascara.Image = "rbxassetid://6023426915" -- Substitua este ID pela ID da imagem da máscara de recorte
mascara.Parent = botao
botao.ClipsDescendants = true

botao.Parent = gui

-- Adicionar a função para abrir a galeria de imagens ao botão
botao.MouseButton1Click:Connect(function()
    OrionLib userInputService = game:GetService("UserInputService")
    OrionLib selectedImage = userInputService:OpenImageSelector()

    if selectedImage then
        imagem.Image = selectedImage
     end
   end)

-- Adicionar a função PularTresVezes ao botão
botao.MouseButton1Click:Connect(function()
    PularTresVezes()       
end)