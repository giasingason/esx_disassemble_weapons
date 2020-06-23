local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
--------------------------------SMONTAGGIO ARMI-----------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

RegisterServerEvent('smontaarmi')
AddEventHandler('smontaarmi', function(weapon_t, pedAmmo)

  local _source = source
  local xPlayer  = ESX.GetPlayerFromId(source)

  xPlayer.removeWeapon(weapon_t, 500)
  xPlayer.addInventoryItem(weapon_t, 1)
  xPlayer.addInventoryItem('m' .. weapon_t, pedAmmo)
	
end)

RegisterServerEvent('smontaarmibianche')
AddEventHandler('smontaarmibianche', function(weapon_t)

  local _source = source
  local xPlayer  = ESX.GetPlayerFromId(source)

  xPlayer.removeWeapon(weapon_t, 1)
  xPlayer.addInventoryItem(weapon_t, 1)
	
end)

----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
---------------------------------------USO ARMI-----------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

ESX.RegisterUsableItem('WEAPON_PISTOL', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_PISTOL'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_ASSAULTRIFLE', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_ASSAULTRIFLE'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_PUMPSHOTGUN', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_PUMPSHOTGUN'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_SMOKEGRENADE', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_SMOKEGRENADE'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_MICROSMG', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_MICROSMG'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_FLASHLIGHT', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_FLASHLIGHT'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_PETROLCAN', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_PETROLCAN'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_SMG', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_SMG'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_CARBINERIFLE', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_CARBINERIFLE'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_MARKSMANRIFLE', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_MARKSMANRIFLE'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_NIGHTSTICK', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_NIGHTSTICK'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_COMBATPISTOL', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_COMBATPISTOL'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_STUNGUN', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_STUNGUN'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_BZGAS', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_BZGAS'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_APPISTOL', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_APPISTOL'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_PISTOL50', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_PISTOL50'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_ASSAULTSMG', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_ASSAULTSMG'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_VINTAGEPISTOL', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_VINTAGEPISTOL'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_MUSKET', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_MUSKET'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_SPECIALCARBINE', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_SPECIALCARBINE'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_SWITCHBLADE', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_SWITCHBLADE'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_KNUCKLE', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_KNUCKLE'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

ESX.RegisterUsableItem('WEAPON_SNSPISTOL', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  local arma = 'WEAPON_SNSPISTOL'

  xPlayer.removeInventoryItem(arma, 1)
  xPlayer.addWeapon(arma, 0)

  TriggerClientEvent('esx:showNotification', source, _U('equip') .. arma)
end)

----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
----------------------------------USO MUNIZIONI-----------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

ESX.RegisterUsableItem('mWEAPON_PISTOL', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem('mWEAPON_PISTOL').count
	xPlayer.removeInventoryItem('mWEAPON_PISTOL', quantity)
	TriggerClientEvent('montaarma', source, 'WEAPON_PISTOL', quantity, 250)
end)

ESX.RegisterUsableItem('mWEAPON_ASSAULTRIFLE', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem('mWEAPON_ASSAULTRIFLE').count
	xPlayer.removeInventoryItem('mWEAPON_ASSAULTRIFLE', quantity)
	TriggerClientEvent('montaarma', source, 'WEAPON_ASSAULTRIFLE', quantity, 250)
end)

ESX.RegisterUsableItem('mWEAPON_PUMPSHOTGUN', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem('mWEAPON_PUMPSHOTGUN').count
	xPlayer.removeInventoryItem('mWEAPON_PUMPSHOTGUN', quantity)
	TriggerClientEvent('montaarma', source, 'WEAPON_PUMPSHOTGUN', quantity, 25)
end)

ESX.RegisterUsableItem('mWEAPON_MICROSMG', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem('mWEAPON_MICROSMG').count
	xPlayer.removeInventoryItem('mWEAPON_MICROSMG', quantity)
	TriggerClientEvent('montaarma', source, 'WEAPON_MICROSMG', quantity, 250)
end)

ESX.RegisterUsableItem('mWEAPON_SMG', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem('mWEAPON_SMG').count
	xPlayer.removeInventoryItem('mWEAPON_SMG', quantity)
	TriggerClientEvent('montaarma', source, 'WEAPON_SMG', quantity, 250)
end)

ESX.RegisterUsableItem('mWEAPON_CARBINERIFLE', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem('mWEAPON_CARBINERIFLE').count
	xPlayer.removeInventoryItem('mWEAPON_CARBINERIFLE', quantity)
	TriggerClientEvent('montaarma', source, 'WEAPON_CARBINERIFLE', quantity, 250)
end)

ESX.RegisterUsableItem('mWEAPON_MARKSMANRIFLE', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem('mWEAPON_MARKSMANRIFLE').count
	xPlayer.removeInventoryItem('mWEAPON_MARKSMANRIFLE', quantity)
	TriggerClientEvent('montaarma', source, 'WEAPON_MARKSMANRIFLE', quantity, 250)
end)

ESX.RegisterUsableItem('mWEAPON_COMBATPISTOL', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem('mWEAPON_COMBATPISTOL').count
	xPlayer.removeInventoryItem('mWEAPON_COMBATPISTOL', quantity)
	TriggerClientEvent('montaarma', source, 'WEAPON_COMBATPISTOL', quantity, 250)
end)

ESX.RegisterUsableItem('mWEAPON_APPISTOL', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem('mWEAPON_APPISTOL').count
	xPlayer.removeInventoryItem('mWEAPON_APPISTOL', quantity)
	TriggerClientEvent('montaarma', source, 'WEAPON_APPISTOL', quantity, 250)
end)

ESX.RegisterUsableItem('mWEAPON_PISTOL50', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem('mWEAPON_PISTOL50').count
	xPlayer.removeInventoryItem('mWEAPON_PISTOL50', quantity)
	TriggerClientEvent('montaarma', source, 'WEAPON_PISTOL50', quantity, 250)
end)

ESX.RegisterUsableItem('mWEAPON_ASSAULTSMG', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem('mWEAPON_ASSAULTSMG').count
	xPlayer.removeInventoryItem('mWEAPON_ASSAULTSMG', quantity)
	TriggerClientEvent('montaarma', source, 'WEAPON_ASSAULTSMG', quantity, 250)
end)

ESX.RegisterUsableItem('mWEAPON_VINTAGEPISTOL', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem('mWEAPON_VINTAGEPISTOL').count
	xPlayer.removeInventoryItem('mWEAPON_VINTAGEPISTOL', quantity)
	TriggerClientEvent('montaarma', source, 'WEAPON_VINTAGEPISTOL', quantity, 250)
end)

ESX.RegisterUsableItem('mWEAPON_MUSKET', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem('mWEAPON_MUSKET').count
	xPlayer.removeInventoryItem('mWEAPON_MUSKET', quantity)
	TriggerClientEvent('montaarma', source, 'WEAPON_MUSKET', quantity, 250)
end)

ESX.RegisterUsableItem('mWEAPON_SPECIALCARBINE', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem(mWEAPON_SPECIALCARBINE).count
	xPlayer.removeInventoryItem('mWEAPON_SPECIALCARBINE', quantity)
	TriggerClientEvent('montaarma', source, 'WEAPON_SPECIALCARBINE', quantity, 250)
end)

ESX.RegisterUsableItem('mWEAPON_SNSPISTOL', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem('mWEAPON_SNSPISTOL').count
	xPlayer.removeInventoryItem('mWEAPON_SNSPISTOL', quantity)
	TriggerClientEvent('montaarma', source, 'WEAPON_SNSPISTOL', quantity, 250)
end)

----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
-------------------------------RIMOZIONE MUNIZIONI--------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

RegisterServerEvent('smontaarmi:fix_ammu')
AddEventHandler('smontaarmi:fix_ammu', function(item, numero)
	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.addInventoryItem(item, numero)
end)
