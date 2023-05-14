local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local LocalCharacter = LocalPlayer.Character
local LocalHumanoid = LocalCharacter:FindFirstChildOfClass("Humanoid")
local LocalRootPart = LocalCharacter.HumanoidRootPart

getgenv().ChangeHumanoidStateType = function(State)
    LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(State)
end

getgenv().SetPosition = function(Object, Positioning)
    Object.Position = Positioning
end

getgenv().SetCFrame = function(Object, CFrameValue)
    Object.CFrame = CFrameValue
end

getgenv().Encrypt = function(data, method)
    local key = tostring(method) or "aes-gcm"

    syn.crypt.encrypt(tostring(data), key)  
end

getgenv().Decrypt = function(data, method)
    local key = tostring(method) or "aes-gcm"

    syn.crypt.decrypt(tostring(data), key)
end

getgenv().Hash = function(data)
    syn.crypt.hash(tostring(data))
end

getgenv().Encode = function(data)
    syn.crypt.base64.encode(tostring(data))  
end

getgenv().Decode = function(data)
    syn.crypt.base64.decode(tostring(data))  
end

getgenv().Weld = function(x,y)
    getgenv().W = Instance.new("Weld")
    W.Part0 = x
    W.Part1 = y
    local CJ = CFrame.new(x.Position)
    local C0 = x.CFrame:inverse(CJ)
    local C1 = y.CFrame:inverse(CJ)
    W.C0 = C0
    W.C1 = C1
    W.Parent = x
end

getgenv().tominutes = function(custominutes)
    local mathscal = custominutes*60

    return mathscal
end

getgenv().GetPropertyValue = function(Property, PropertyType)
    if PropertyType == Normal then
        local PropertyValue = Property
    elseif PropertyType == String then
        local PropertyValue = tostring(Property)
        else
            local PropertyValue = Property
            end

    return PropertyValue
end

getgenv().MovementCheck = function(Player, Check)
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local Humanoid = Character:FindFirstChild("Humanoid")

    if MainTable[Check] then
        if (Humanoid.MoveDirection.Magnitude > 0) then
            return false
        else
            return true
        end
            else
        return true
    end
end

getgenv().GetPlayers = function()
    getgenv().PlayersTable = {}

    for i,v in pairs(Players:GetPlayers()) do
        table.insert(getgenv().PlayersTable, v)
    end

    return getgenv().PlayersTable
end

getgenv().CurrentPlayers = function()
    local CurrentTPlayers = {}
    for i,v in pairs(GetPlayers()) do
        CurrentTPlayers = {i}
    end
    return CurrentTPlayers
end

getgenv().GetClassedChild = function(Parent, Class)
    local TheParentService = game:GetService(tostring(Parent))

    for i,v in pairs(TheParentService:GetChildren()) do
        print(v.ClassName)
        print(Class)
        if v.ClassName == tostring(Class) then
            print(v)
        local CustomChild = v.Name
        end
    end
    return CustomChild
end

getgenv().InsertMultiProperties = function(Table, Properties)
    local Properties = Properties or {}

    for i,v in pairs(Properties) do
        table.insert(Table, v)
    end
end

getgenv().GetHumanoidRNumbers = function(v)
    local R = nil

    if v.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
        R = "R6"
    elseif v.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R15 then
        R = "R15"
    end
    return R
end

getgenv().GetAllBodyParts = function(v)
    local Parts = {}

    if GetHumanoidRNumbers(v) == "R6" then
        InsertMultiProperties(Parts, {"Head", "Torso", "Right Arm", "Left Arm", "Left Leg", "Right Leg", "HumanoidRootPart"})
    elseif GetHumanoidRNumbers(v) == "R15" then
        InsertMultiProperties(Parts, {"Head", "UpperTorso", "LowerTorso", "LeftLowerArm", "LeftUpperArm", "LeftHand", "RightLowerArm", "RightUpperArm", "RightHand", "LeftLowerLeg", "LeftUpperLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "HumanoidRootPart"})
    end

    return Parts
end
