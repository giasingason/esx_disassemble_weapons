local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX             				 = nil

local cardOpen 					= false
local playerData 				= {}
local windowavg					= false
local windowavd					= false
local windowarg					= false
local windoward					= false
local window 					= false
local engineOn 					= true
local speedkm 					= 0

local Time                      = 0
local Time2                     = 0


Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

function OpenCivilianActionsMenu()

    local elements = {}

    local Weapons = {

		"WEAPON_PISTOL",
		"WEAPON_ASSAULTRIFLE",
		"WEAPON_PUMPSHOTGUN",
		"WEAPON_MICROSMG",
		"WEAPON_SMG",
		"WEAPON_CARBINERIFLE",
		"WEAPON_MARKSMANRIFLE",
		"WEAPON_COMBATPISTOL",
		"WEAPON_APPISTOL",
		"WEAPON_PISTOL50",
		"WEAPON_ASSAULTSMG",
		"WEAPON_VINTAGEPISTOL",
		"WEAPON_MUSKET",
		"WEAPON_SPECIALCARBINE",
		"WEAPON_SNSPISTOL"

	}

	local White = {

		"WEAPON_SMOKEGRENADE",
		"WEAPON_FLASHLIGHT",
		"WEAPON_PETROLCAN",
		"WEAPON_NIGHTSTICK",
		"WEAPON_STUNGUN",
		"WEAPON_BZGAS",
		"WEAPON_SWITCHBLADE",
		"WEAPON_KNUCKLE"

	}
		
	for i = 1, #Weapons do
		local weapon_t = Weapons[i]
		local weapon = GetHashKey(weapon_t)
		if HasPedGotWeapon(PlayerPedId(), weapon, false) then
			table.insert(elements, {label = _U('disassemble') .. weapon_t, value = 'immagazzina', arma = weapon_t})

			ESX.UI.Menu.CloseAll()

			ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'civilian_actions',
			{
			  css = 'identity',
			  title    = _U('disassemble_weapons'),
			  align    = 'top-left',
			  elements = elements
			},

			function(data, menu)
			local val = data.current.value

			if val == 'immagazzina' and (GetGameTimer() - Time2) > 1000 then
				menu.close()
				local playerPed  = PlayerPedId()
				local weaponHash = weapon
				local pedAmmo = GetAmmoInPedWeapon(playerPed, data.current.arma)
				TriggerServerEvent('smontaarmi', data.current.arma, pedAmmo)
				Citizen.Wait(800)
				OpenCivilianActionsMenu()
			end

		    end,
		    function(data, menu)
		        menu.close()
			end
		)

		end
	end

	for i = 1, #White do
		local weapon_w = White[i]
		local weaponw = GetHashKey(weapon_w)
		if HasPedGotWeapon(PlayerPedId(), weaponw, false) then
			table.insert(elements, {label = _U('disassemble') .. weapon_w, value = 'immagazzina', arma = weapon_w})

			ESX.UI.Menu.CloseAll()

			ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'civilian_actions',
			{
			  css = 'identity',
			  title    = _U('disassemble_weapons'),
			  align    = 'top-left',
			  elements = elements
			},

			function(data, menu)
			local val = data.current.value

			if val == 'immagazzina' and (GetGameTimer() - Time2) > 1000  then
				menu.close()
				local playerPed  = PlayerPedId()
				local weaponWHash = weaponw
				local pedAmmoW = GetAmmoInPedWeapon(playerPed, weapon_w)
				TriggerServerEvent('smontaarmi', data.current.arma, pedAmmoW)			
				Citizen.Wait(800)
				
				OpenCivilianActionsMenu()
			end

		    end,
		    function(data, menu)
		        menu.close()
			end
		)

		end
	end
	Time2 = GetGameTimer()
end

RegisterNetEvent('montaarma')
AddEventHandler('montaarma', function(arma, munizioni, maxy)

	local playerPed  = PlayerPedId()
    local weaponHash = GetHashKey(arma)
    local pedAmmo = GetAmmoInPedWeapon(playerPed, weaponHash) 

	local somma = math.floor(pedAmmo + munizioni)
	
	if HasPedGotWeapon(PlayerPedId(), weaponHash, false) then
		if somma <= 250 then
			SetPedAmmo(playerPed, weaponHash, somma)
		else
			SetPedAmmo(playerPed, weaponHash, maxy)
			local differenza = math.floor(somma - maxy) 
			TriggerServerEvent('smontaarmi:fix_ammu', 'm'..arma, differenza)
		end
	else
		TriggerEvent("mt:missiontext", _U('have_weapon'), 3000)
		TriggerServerEvent('smontaarmi:fix_ammu', m..arma, munizioni)
	end
	
	
end)

Citizen.CreateThread(function()
	while true do
		Wait(1)
		if IsControlPressed(0,  Keys['F9']) and (GetGameTimer() - Time) > 500 then			
			OpenCivilianActionsMenu()
			Time = GetGameTimer()
		end
	end
end)
