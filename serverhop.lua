repeat wait() until game:IsLoaded()
if not isfile("vstyf.txt") then
writefile("vstyf.txt", game.JobId)
else
appendfile("vstyf.txt", game.JobId)
end
local file = readfile("vstyf.txt")
wait(5)
local rifts = workspace.Rendered.Rifts:GetChildren()
for i,v in pairs(rifts) do
if v.Name == "royal-chest" or v.Name=="aura-egg" then
(loadstring or load)(game:HttpGet("https://raw.githubusercontent.com/vestyx/VestyHub/refs/heads/main/loader.lua", true))()
else 
local queue = queueonteleport or queue_on_teleport or nil
 if queue then
queue('(loadstring or load)(game:HttpGet("https://raw.githubusercontent.com/vestyx/VestyHub/refs/heads/main/loader.lua", true))()')
 end
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")

local placeId = game.PlaceId
local servers = {}

local success, response = pcall(function()
    return HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100"))
end)

if success and response and response.data then
    for _, server in pairs(response.data) do
        if server.playing < server.maxPlayers-1 and server.id ~= game.JobId and not string.find(file, game.JobId) then
            TeleportService:TeleportToPlaceInstance(placeId, server.id, game.Players.LocalPlayer)
            break
        end
    end
else
    warn("Failed to find a server to hop.")
end

end
end
