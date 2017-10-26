imperial_scientist = Creature:new {
	objectName = "@mob/creature_names:scientist",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 1,
	chanceHit = 0.25,
	damageMin = 50,
	damageMax = 55,
	baseXp = 113,
	baseHAM = 180,
	baseHAMmax = 220,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
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
	creatureBitmask = NONE,
	diet = HERBIVORE,
	templates = { "object/mobile/dressed_combatmedic_trainer_human_male_01.iff", 
			"object/mobile/dressed_brigade_captain_human_male_01.iff",
			"object/mobile/dressed_hutt_medic2_twilek_male_01.iff",
			"object/mobile/dressed_combatmedic_trainer_human_female_01.iff",
			"object/mobile/dressed_doctor_trainer_moncal_male_01.iff",
			"object/mobile/dressed_combatmedic_trainer_rodian_male_01.iff",
			"object/mobile/dressed_mercenary_medic_rodian_female_01.iff"},

--Imperial Enlisted Loot Template	
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
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
	weapons = {},
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",	
	attacks = brawlernovice
}

CreatureTemplates:addCreatureTemplate(imperial_scientist, "imperial_scientist")
