selonian_warrior = Creature:new {
	objectName = "@mob/creature_names:selonian_warrior",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "selonian",
	faction = "",
	level = 13,
	chanceHit = 0.3,
	damageMin = 140,
	damageMax = 150,
	baseXp = 714,
	baseHAM = 1500,
	baseHAMmax = 1900,
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_selonian_f_01.iff",
		"object/mobile/dressed_selonian_f_02.iff",
		"object/mobile/dressed_selonian_f_03.iff",
		"object/mobile/dressed_selonian_f_04.iff",
		"object/mobile/dressed_selonian_f_05.iff",
		"object/mobile/dressed_selonian_f_06.iff",
		"object/mobile/dressed_selonian_f_07.iff",
		"object/mobile/dressed_selonian_f_08.iff",
		"object/mobile/dressed_selonian_f_09.iff",
		"object/mobile/dressed_selonian_f_10.iff",
		"object/mobile/dressed_selonian_f_11.iff",
		"object/mobile/dressed_selonian_f_12.iff",
		"object/mobile/dressed_selonian_m_01.iff",
		"object/mobile/dressed_selonian_m_02.iff",
		"object/mobile/dressed_selonian_m_03.iff",
		"object/mobile/dressed_selonian_m_04.iff",
		"object/mobile/dressed_selonian_m_05.iff",
		"object/mobile/dressed_selonian_m_06.iff",
		"object/mobile/dressed_selonian_m_07.iff",
		"object/mobile/dressed_selonian_m_08.iff",
		"object/mobile/dressed_selonian_m_09.iff",
		"object/mobile/dressed_selonian_m_10.iff",
		"object/mobile/dressed_selonian_m_11.iff",
		"object/mobile/dressed_selonian_m_12.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}				
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 500000
		}
	},
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(selonian_warrior, "selonian_warrior")
