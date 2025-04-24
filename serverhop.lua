repeat
    wait()
until game:IsLoaded()
if not isfile("vstyf.txt") then
    writefile("vstyf.txt", game.JobId)
else
    appendfile("vstyf.txt", game.JobId)
end
local file = readfile("vstyf.txt")
wait(5)
repeat
    wait()
until #workspace.Rendered.Rifts:GetChildren() >= 5
local rifts = workspace.Rendered.Rifts:GetChildren()
local dohop = true
for i, v in pairs(rifts) do
    if v.Name == "royal-chest" or v.Name == "aura-egg" then
        game:GetService("Players").LocalPlayer.PlayerGui.Intro.Play.Button.Label.Size = UDim2.fromScale(1, 1)
        game:GetService("Players").LocalPlayer.PlayerGui.Intro.Play.Button.Label.Text = "RIFT FOUND"
        (loadstring or load)(
            game:HttpGet("https://raw.githubusercontent.com/vestyx/VestyHub/refs/heads/main/loader.lua", true)
        )()
        dohop = false
    end
end
if dohop then
    local queue = queueonteleport or queue_on_teleport or nil
    if queue then
        queue(
            'wait(3) repeat wait() until game:IsLoaded() wait() local x = (loadstring or load)(game:HttpGet("https://raw.githubusercontent.com/cosmicpsx/script/refs/heads/main/serverhop.lua")) print(x) x()'
        )
    end
    if not queue then
        error("no queue")
    end
    wait(6)
    repeat
    local TeleportService = game:GetService("TeleportService")
    local HttpService = game:GetService("HttpService")

    local placeId = game.PlaceId
    local servers = {}

    local success, response =
        pcall(
        function()
            local e =  HttpService:JSONDecode(
                game:HttpGet(
                    "https://games.roblox.com/v1/games/" ..
                        placeId ..
                            "/servers/Public?sortOrder=Asc&limit=100&excludeFullGames=true"
                )
            )
            print(e, e.nextPageCursor)
            if not e.nextPageCursor then return e end
            return HttpService:JSONDecode(
                game:HttpGet(
                    "https://games.roblox.com/v1/games/" ..
                        placeId ..
                            "/servers/Public?sortOrder=Asc&limit=100&excludeFullGames=true&cursor="..e.nextPageCursor
                )
            )
        end
    )

    if success and response and response.data then
        print(#response.data)
        for _, server in pairs(response.data) do
        print(server.id)
            if server.playing < server.maxPlayers and server.id ~= game.JobId and not string.find(file, game.JobId) then
                appendfile("vstyf.txt", server.id)
                TeleportService:TeleportToPlaceInstance(placeId, server.id, game.Players.LocalPlayer)
                
                break
            end
        end
    else
        warn("Failed to find a server to hop.")
    end
    wait()
    until 1==2
end
