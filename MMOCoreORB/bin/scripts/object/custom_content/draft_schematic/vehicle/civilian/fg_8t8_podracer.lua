object_draft_schematic_vehicle_civilian_fg_8t8_podracer = object_draft_schematic_vehicle_civilian_shared_fg_8t8_podracer:new {
	templateType = DRAFTSCHEMATIC,

	customObjectName = "FG 8T8 Podracer",


--TEMPLATE SCHEMATIC POD************************************************************
	craftingToolTab = 16, -- (See DraftSchematicObjectTemplate.h)
	complexity = 42,
	size = 1,
	factoryCrateSize = 5,

	xpType = "crafting_general",
	xp = 2600,

	assemblySkill = "general_assembly",
	experimentingSkill = "general_experimentation",
	customizationSkill = "vehicle_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n"},
	ingredientTitleNames = {"wiring_harness", "paint", "frame", "body_panel", "veh_autopilot_control_module", "turbine_control"},
	ingredientSlotType = {0, 0, 0, 2, 1, 1},
	resourceTypes = {"copper", "chemical", "steel", "object/tangible/component/vehicle/shared_custom_veh_body_panel.iff", "object/tangible/component/vehicle/shared_custom_veh_autopilot_control_module.iff", "object/tangible/component/vehicle/shared_custom_veh_turbine_control_module.iff"},
	resourceQuantities = {1500, 2500, 400, 10, 1, 2},
	contribution = {100, 100, 100, 100, 100, 100},

--********************************************************************************

	targetTemplate = "object/tangible/deed/vehicle_deed/fg_8t8_podracer_deed.iff",

	additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_fg_8t8_podracer, "object/draft_schematic/vehicle/civilian/fg_8t8_podracer.iff")
