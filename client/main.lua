RegisterCommand('spawnnped', function(source, args) -- /spawnped PEDNAME
	local ped = GetHashKey(args[1])
	local player = PlayerPedId()
	RequestModel(ped)
	while not HasModelLoaded(ped) do
		Citizen.Wait(1)
		RequestModel(ped)
	end
	local x, y, z = table.unpack(GetEntityCoords(player))
	local heading = table.unpack(GetEntityHeading(player))
	CreatePed(ped, x, y + 0.5, z + 0.2, heading, true, false)	
end)