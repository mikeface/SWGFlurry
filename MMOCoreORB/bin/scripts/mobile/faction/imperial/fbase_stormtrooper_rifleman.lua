fbase_stormtrooper_rifleman = Creature:new {
	objectName = "@mob/creature_names:fbase_stormtrooper_rifleman",
	randomNameType = NAME_STORMTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 38,
	chanceHit = 0.44,
	damageMin = 335,
	damageMax = 380,
	baseXp = 3800,
	baseHAM = 9200,
	baseHAMmax = 11200,
	armor = 0,
	resists = {110,110,140,15,15,15,15,-1,-1},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.05,
	templates = {"object/mobile/dressed_stormtrooper_rifleman_m.iff"},

--Imperial Stormtrooper Loot Template	
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
	weapons = {"st_rifleman_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",
	attacks = merge(riflemannovice,brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(fbase_stormtrooper_rifleman, "fbase_stormtrooper_rifleman")
