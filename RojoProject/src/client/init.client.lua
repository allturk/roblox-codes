
local ReplicatedStorage=game:GetService("ReplicatedStorage")
local remoteEvent=ReplicatedStorage:FindFirstChild("RemoteEvent")
local Players=game:GetService("Players")
local playerGui=Players.LocalPlayer:WaitForChild("PlayerGui")
local textLabel, textButton=playerGui:WaitForChild("ScreenGui").TextLabel,playerGui:WaitForChild("ScreenGui").TextButton
textButton.MouseButton1Click:Connect(function()
    remoteEvent:FireServer(Players.LocalPlayer)
end)
remoteEvent.onClientEvent:Connect(function(text)
    textLabel.Text=text
end)