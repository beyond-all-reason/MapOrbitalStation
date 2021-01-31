--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- mapinfo.lua
--

-- TODO V3
-- Fix bridge sides -- done
-- fix center sides -- dont care
-- go with .tga for floortilescheckerd --done?
-- remake dnts with offsets for Metal_ReinforcedGridWall_2k_dnts_flipped
-- redo specular nicely
-- add believeable rust everywhere
-- add rusted layer of Metal_BrushedMetalTilesDirty_2k_dnts_flipped --done
-- redo mountain range in WM --done  
-- 

local mapinfo = {
	name        = "Orbital_Station_V2",
	shortname   = "Orbital_Station_V2",
	description = "2-8 Player Metal Map, [teh]Beherith",-- (mysterme@gmail.com)"
	author      = "TradeMark, [teh]Beherith",
	version     = "2",
	--mutator   = "deployment";
	--mapfile   = "", --// location of smf/sm3 file (optional)
	modtype     = 4, --// 1=primary, 0=hidden, 3=map
	depend      = {},
	replace     = {},

	--startpic   = "", --// deprecated
	--StartMusic = "", --// deprecated

	maphardness     = 70,
	notDeformable   = false,
	gravity         = 40,
	tidalStrength   = 0,
	maxMetal        = 100,
	extractorRadius = 2.0,
	voidWater       = true,
	--voidGround       = true,
	autoShowMetal   = true,

	smf = {
		minheight = -50, --as they should be correct in smf
		maxheight = 180,
		--minimapTex = "minimap.png",
		--smtFileName0 = "Stronghold_V4.smt",
		--smtFileName1 = "",
		--smtFileName.. = "",
		--smtFileNameN = "",
		--grassmapTex = "", --specifies grass distribution, nonzero values mean place grass there
	},

	sound = {  --https://github.com/spring/spring/blob/master/rts/System/Sound/EFXPresets.cpp
		preset = "default",
		passfilter = {
			gainlf = 1.0,
			gainhf = 1.0,
		},
		reverb = {
		},
	},
	
	grass = {
		bladeWaveScale = 2.0,
		bladeWidth = 0.6,
		bladeHeight = 8.0,
		bladeAngle = 2.57,
		bladeColor = {0.2, 0.3, 0.2},
	},
	
	resources = {
		--grassBladeTex = "grass_blade_tex.tga", --blade texture
		--grassShadingTex = "grass_shading_tex.tga", --defaults to minimap
		--detailTex = "detailtexblurred.bmp",
		specularTex = "orbstation_specular.tga",
		--specularTex = "SpeedMetal_texture_barv3_rust_spec_16k.dds",
		splatDetailTex = "speedmetal.dds",
		splatDistrTex = "orbstation_splatdist.tga", --sand, rock, pebbles, cracks
		--skyReflectModTex = "rrsky.dds",
		splatDetailNormalDiffuseAlpha = 0, --yep, none of this
		splatDetailNormalTex1 = "Metal_FloorTilesCheckered_2k_dnts.dds";
		splatDetailNormalTex2 = "Metal_BrushedMetalTilesDirty_2k_dnts_flipped.dds";
		splatDetailNormalTex3 = "Metal_FloorTilesCheckered_2k_dnts.dds";
		splatDetailNormalTex4 = "Metal_FloorTilesCheckered_2k_dnts.dds";
		--detailNormalTex = "twinlakesmodlab_Normal.dds",
		--lightEmissionTex = "",
	},

	splats = {
		texScales = {0.002604166666, 0.0078125, 0.00390625, 0.01},
		texMults  = {0.5, 0.9, 0.01, 0.01}, --floortiles, centerwalkway, outsideedgeplates, cliffs
	},

	atmosphere = {
		minWind      = 30,
		maxWind      = 30,

		fogColor     = {0.8, 0.8, 0.8},
		fogStart     = 0.8,
		fogEnd       = 1.0,

		sunColor     = {1.0, 1.0, 1.0},
		skycolor     = {0.9, 0.9, 0.9},
		skyDir       = {0.0, 0.0, -1.0},
		--skyDir       = {0.0, 0.0, -1.0}, --theoretically makes the center of the skybox cross in players view
		--skyBox       = "CorePrime.dds",
		skyBox       = "Eta_Carinae_dark3_Beherith.dds",

		cloudDensity = 0.35,
		cloudColor   = {0.7, 0.9, 0.9},
	},

	lighting = {
		--// dynsun
		sunStartAngle = 0.0,
		sunOrbitTime  = 1440.0, --how do i turn this off?
		sunDir        = {0.2, 0.8, 0.7, 1e9},

		--// unit & ground lighting
         groundambientcolor            = { 0.2, 0.2, 0.2 },
         grounddiffusecolor            = { 0.7, 0.7, 0.7 },
         groundspecularcolor            = { 1.0, 1.0, 1.0 },
         groundshadowdensity           = 1.0,
         unitambientcolor           = { 0.4, 0.4, 0.4 },
         unitdiffusecolor           = { 0.8, 0.8, 0.8 },
         unitspecularcolor           = { 1.0, 1.0, 1.0 },
         unitshadowdensity          = 1.0,
		 specularsuncolor           = { 1.0, 1.0, 1.0 },
		 
		--specularExponent    = 100.0,--unused?
		
	},
	
	water = {
		damage =  200,

		repeatX = 0.0,
		repeatY = 0.0,

		absorb    = { 0.00, 0.00, 0.37 },
		basecolor = { 0.0, 0.0, 0.0 },
		mincolor  = { 0.0, 0.0, 0.0 },

		ambientFactor  = 1.0,
		diffuseFactor  = 1.0,
		specularFactor = 1.4,
		specularPower  = 40.0,

		surfacecolor  = { 1.0, 0.65, 1.0 },
		surfaceAlpha  = 0.1,
		diffuseColor  = {0.0, 0.0, 0.0},
		specularColor = {0.0, 0.0, 0.0},
		--planeColor = {0.00, 0.00, 0.00},

		fresnelMin   = 0.2,
		fresnelMax   = 1.6,
		fresnelPower = 8.0,

		reflectionDistortion = 1.0,

		blurBase      = 2.0,
		blurExponent = 1.5,

		perlinStartFreq  =  8.0,
		perlinLacunarity = 3.0,
		perlinAmplitude  =  0.9,
		windSpeed = 1.0, --// does nothing yet

		shoreWaves = true,
		forceRendering = false,
		
		hasWaterPlane = false,

		--// undefined == load them from resources.lua!
		--texture =       "",
		--foamTexture =   "",
		--normalTexture = "",
		--caustics = {
		--	"",
		--	"",
		--},
	},
	
	teams = {
		[0] = {startPos = {x = 2560, z = 4810}},
		[1] = {startPos = {x = 2560, z = 310}},
		[2] = {startPos = {x = 4810, z = 2560}},
		[3] = {startPos = {x = 310, z = 2560}},
	},

	terrainTypes = {
		[0] = {
			name = "Station",
			hardness = 1.0,
			receiveTracks = true,
			moveSpeeds = {
				tank  = 1.5,
				kbot  = 1.5,
				hover = 1.5,
				ship  = 1.5,
			},
		},
		[1] = {
			name = "Earth",
			hardness = 1.0,
			receiveTracks = true,
			moveSpeeds = {
				tank  = 1.0,
				kbot  = 1.0,
				hover = 1.0,
				ship  = 1.0,
			},
		},
		[2] = {
			name = "Iron",
			hardness = 100.0,
			receiveTracks = true,
			moveSpeeds = {
				tank  = 1.2,
				kbot  = 1.0,
				hover = 1.0,
				ship  = 1.0,
			},
		},
		[3] = {
			name = "Rock",
			hardness = 5.0,
			receiveTracks = true,
			moveSpeeds = {
				tank  = 0.6,
				kbot  = 0.6,
				hover = 1.0,
				ship  = 1.0,
			},
		},
		[4] = {
			name = "Iron",
			hardness = 10.0,
			receiveTracks = true,
			moveSpeeds = {
				tank  = 1.5,
				kbot  = 1.5,
				hover = 1.0,
				ship  = 1.0,
			},
		},
		[5] = {
			name = "None",
			hardness = 1.0,
			receiveTracks = true,
			moveSpeeds = {
				tank  = 1.0,
				kbot  = 1.0,
				hover = 1.0,
				ship  = 1.0,
			},
		},
		[6] = {
			name = "None",
			hardness = 1.0,
			receiveTracks = true,
			moveSpeeds = {
				tank  = 1.0,
				kbot  = 1.0,
				hover = 1.0,
				ship  = 1.0,
			},
		},
		[7] = {
			name = "None",
			hardness = 1.0,
			receiveTracks = true,
			moveSpeeds = {
				tank  = 1.0,
				kbot  = 1.0,
				hover = 1.0,
				ship  = 1.0,
			},
		},

	},

	custom = {
		fog = {
			color    = {1.0, 0.65, 1.0},
			height   = "60%", --// allows either absolue sizes or in percent of map's MaxHeight
			fogatten = 0.02,
		},
		--precipitation = {
			--weather = "off",
			--density   = 17500,
			--size      = 1.2,
			--speed     = 20,
			--windscale = 1,
			--texture   = 'LuaUI/effects/snowflake.png',
		--},
	},
}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Helper

local function lowerkeys(ta)
	local fix = {}
	for i,v in pairs(ta) do
		if (type(i) == "string") then
			if (i ~= i:lower()) then
				fix[#fix+1] = i
			end
		end
		if (type(v) == "table") then
			lowerkeys(v)
		end
	end
	
	for i=1,#fix do
		local idx = fix[i]
		ta[idx:lower()] = ta[idx]
		ta[idx] = nil
	end
end

lowerkeys(mapinfo)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Map Options

if (Spring and Spring.GetMapOptions) then
	local function tmerge(t1, t2)
		for i,v in pairs(t2) do
			if (type(v) == "table") then
				t1[i] = t1[i] or {}
				tmerge(t1[i], v)
			else
				t1[i] = v
			end
		end
	end

	getfenv()["mapinfo"] = mapinfo
		local files = VFS.DirList("mapconfig/mapinfo/", "*.lua")
		table.sort(files)
		for i=1,#files do
			local newcfg = VFS.Include(files[i])
			if newcfg then
				lowerkeys(newcfg)
				tmerge(mapinfo, newcfg)
			end
		end
	getfenv()["mapinfo"] = nil
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

return mapinfo

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------