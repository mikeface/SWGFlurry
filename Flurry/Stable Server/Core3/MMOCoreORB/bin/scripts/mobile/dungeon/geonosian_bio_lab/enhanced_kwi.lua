enhanced_kwi = Creature:new {
	objectName = "@mob/creature_names:geonosian_enhanced_kwi",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 106,
	chanceHit = 1.75,
	damageMin = 1000,
	damageMax = 1500,
	baseXp = 10081,
	baseHAM = 27000,
	baseHAMmax = 33000,
	armor = 2,
	resists = {140,140,5,140,5,5,5,5,-1},
	meatType = "meat_herbivore",
	meatAmount = 100,
	hideType = "hide_leathery",
	hideAmount = 85,
	boneType = "bone_mammal",
	boneAmount = 75,
	milk = 0,
	tamingChance = 0,
	ferocity = 16,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/kwi.iff"},
	scale = 1.4,
	lootGroups = {
		{
			groups = {
				{group = "enhanced_kwi", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "nge_all", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "fire_breathing_spider", chance = 10000000},
			},
			lootChance = 5000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""},
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(enhanced_kwi, "enhanced_kwi")
