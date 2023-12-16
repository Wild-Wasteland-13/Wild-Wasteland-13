/datum/species/mammal
	name = "Anthromorph"
	id = "mammal"
	default_color = "4B4B4B"

	species_traits = list(MUTCOLORS,EYECOLOR,FACEHAIR,LIPS,HAIR,HORNCOLOR,WINGCOLOR,HAS_FLESH,HAS_BONE)

	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID|MOB_BEAST
	mutant_bodyparts = list("mcolor" = "FFFFFF","mcolor2" = "FFFFFF","mcolor3" = "FFFFFF", "mam_snouts" = "Husky", "mam_tail" = "Husky", "mam_ears" = "Husky", "deco_wings" = "None",
						"mam_body_markings" = "Husky", "taur" = "None", "horns" = "None", "legs" = "Plantigrade", "meat_type" = "Mammalian")
	attack_verb = "claw"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	meat = /obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/mammal
	liked_food = MEAT | FRIED
	disliked_food = TOXIC

	tail_type = "mam_tail"
	wagging_type = "mam_waggingtail"
	species_type = "furry"

	allowed_limb_ids = list("mammal","aquatic","avian","shadekin")

/datum/species/vox
	name = "Vox"
	id = "vox"
	roundstart = TRUE
	species_traits = list(MUTCOLORS,
		EYECOLOR,
		NO_UNDERWEAR,
		HAIR,
		FACEHAIR,
		MARKINGS
		)

	exotic_blood_color = "#9066BD"
	//flesh_color = "#808D11"


	attack_verb = "claw"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'

	say_mod = "shrieks"
	eye_type = "vox"
	mutant_bodyparts = list("mcolor" = "FFFFFF", "mcolor2" = "FFFFFF", "mcolor3" = "FFFFFF", "mam_tail" = "teshari tail, colorable", "mam_ears" = "None", "mam_body_markings" = list())
	allowed_limb_ids = null
	damage_overlay_type = "vox"

