fbase_imperial_army_captain_hard = Creature:new {
	objectName = "@mob/creature_names:fbase_imperial_army_captain_hard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 62,
	chanceHit = 0.62,
	damageMin = 455,
	damageMax = 620,
	baseXp = 6200,
	baseHAM = 12000,
	baseHAMmax = 16500,
	armor = 1,
	resists = {10,10,10,10,10,10,10,-1,-1},
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
	templates = {"object/mobile/dressed_imperial_captain_m.iff"},

--Imperial Officer Loot Template	
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 7500000},
				{group = "stormtrooper_common", chance = 2500000},

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
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "imperialRecruiterConvoTemplate",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster,carbineermid,riflemanmid)
}

CreatureTemplates:addCreatureTemplate(fbase_imperial_army_captain_hard, "fbase_imperial_army_captain_hard")
