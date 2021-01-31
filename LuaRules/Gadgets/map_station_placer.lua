function gadget:GetInfo()
	return {
		name      = "Map Station Placer",
		desc      = "Spawns the Orbital Station",
		author    = "Beherith",
		date      = "2021 jan",
		license   = "PD",
		layer     = 0,
		enabled   = true  --  loaded by default?
	}
end

-- Spring.AddUnitIcon('wall_blank', 'icons/wall_blank.tga', 1, 100)
if (not gadgetHandler:IsSyncedCode()) then
  return false
end

Spring.Echo("Spawns walls")
-- if (Spring.GetGameFrame() >= 1) then
  -- return false
-- end

local SetUnitNeutral        = Spring.SetUnitNeutral
local SetUnitBlocking       = Spring.SetUnitBlocking
local SetUnitRotation       = Spring.SetUnitRotation
local SetUnitAlwaysVisible  = Spring.SetUnitAlwaysVisible
local CreateUnit            = Spring.CreateUnit
local CreateFeature         = Spring.CreateFeature

local featureslist = nil
local buildinglist = {
	{name = "station3", x = 2560, z = 2560, y = 0,},
}
local unitlist

-- Spring.AddUnitIcon('wall_blank', 'icons/wall_blank.tga', 1, 100) -- size = 1 , distance = 100 where distance is a multiplier for icon distance



	if ( buildinglist )	then	
		for i,uDef in pairs(buildinglist) do
			local wallID = CreateUnit(uDef.name, uDef.x, 0, uDef.z, 0, Spring.GetGaiaTeamID())
			--SetUnitRotation(wallID, 0, math.random()*32768, 0)
			SetUnitNeutral(wallID,true)
			SetUnitAlwaysVisible(wallID,true)
			--Spring.SetUnitDefIcon(Spring.GetUnitDefID(wallID), 'wall_blank')
			--Spring.Echo("set unitdeficon to wall_blank for",Spring.GetUnitDefID(wallID))
		end
	end
	--for i,fDef in pairs(featureslist) do
	--	Spring.Echo("placing wall..")
	--	local flagID = CreateFeature(fDef.name, fDef.x, Spring.GetGroundHeight(fDef.x,fDef.z), fDef.z,fDef.rot)
	--end


return false --unload
