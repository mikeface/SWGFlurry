crackdown_stormtrooper_captain = Creature:new {
	objectName = "@mob/creature_names:crackdown_stormtrooper_captain",
	randomNameType = NAME_STORMTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 1,
	chanceHit = 0.38,
	damageMin = 280,
	damageMax = 290,
	baseXp = 45,
	baseHAM = 8300,
	baseHAMmax = 10100,
	armor = 0,
	resists = {0,0,0,-1,30,-1,30,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,
	scale = 1.05,

	templates = {"object/mobile/dressed_stormtrooper_captain_white_white.iff",
			"object/mobile/dressed_stormtrooper_groupleader_m.iff"},

--Imperial Stormtrooper Officer Loot Template	
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "stormtrooper_common", chance = 2500000},
				{group = "imperial_officer_common", chance = 2500000},

						},
			lootChance = 500000 

		},
		{
			groups = {
				{group = "g_imperial_credit", chance = 10000000}
		},
			lootChance = 200000 
		},
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 750000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 50000
		},
		{
			groups = {
				{group = "rebpoints", chance = 10000000}
		},
			lootChance = 100000 
		},
	},
	weapons = {"stormtrooper_weapons"},
	conversationTemplate = "imperialRecruiterConvoTemplate",
	attacks = merge(riflemanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(crackdown_stormtrooper_captain, "crackdown_stormtrooper_captain")
