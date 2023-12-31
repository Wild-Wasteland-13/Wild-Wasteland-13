/datum/keybinding/human
	category = CATEGORY_HUMAN
	weight = WEIGHT_MOB

/datum/keybinding/human/can_use(client/user)
	if(ishuman(user.mob))
		return TRUE
	if(isanimal(user.mob))
		return TRUE

/datum/keybinding/human/quick_equip
	hotkey_keys = list("E")
	name = "quick_equip"
	full_name = "Quick Equip"
	description = "Quickly puts an item in the best slot available"

/datum/keybinding/human/quick_equip/down(client/user)
	if(ishuman(user.mob))
		var/mob/living/carbon/human/H = user.mob
		H.quick_equip()
		return TRUE
	else if(isanimal(user.mob))
		var/mob/living/simple_animal/SA = user.mob
		SA.quick_equip()

/datum/keybinding/human/quick_equipbelt
	hotkey_keys = list("ShiftE")
	name = "quick_equipbelt"
	full_name = "Quick equip belt"
	description = "Put held thing in belt or take out most recent thing from belt"

/datum/keybinding/human/quick_equipbelt/down(client/user)
	var/mob/living/carbon/human/H = user.mob
	H.smart_equipbelt()
	return TRUE

/datum/keybinding/human/bag_equip
	hotkey_keys = list("ShiftB")
	name = "bag_equip"
	full_name = "Quick equip bag"
	description = "Put held thing in backpack or take out most recent thing from backpack"

/datum/keybinding/human/bag_equip/down(client/user)
	var/mob/living/carbon/human/H = user.mob
	H.smart_equipbag()
	return TRUE
