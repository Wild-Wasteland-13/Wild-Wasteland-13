/obj/effect/proc_holder/changeling/mimicvoice
	name = "Mimic Voice"
	desc = "We shape our vocal glands to sound like a desired voice."
	helptext = "Will turn your voice into the name that you enter. We must constantly expend chemicals to maintain our form like this."
	chemical_cost = 0 //constant chemical drain hardcoded
	dna_cost = 1
	req_human = 1
	action_icon = 'icons/mob/actions/actions_changeling.dmi'
	action_icon_state = "ling_mimic_voice"
	action_background_icon_state = "bg_ling"


// Fake Voice
/obj/effect/proc_holder/changeling/mimicvoice/sting_action(mob/user)
	var/datum/antagonist/changeling/changeling = user.mind.has_antag_datum(/datum/antagonist/changeling)
	if(changeling.mimicing)
		changeling.mimicing = ""
		changeling.chem_recharge_slowdown -= 0.5
		to_chat(user, span_notice("We return our vocal glands to their original position."))
		return

	var/mimic_voice = stripped_input(user, "Enter a name to mimic.", "Mimic Voice", null, MAX_NAME_LEN)
	if(!mimic_voice)
		return

	changeling.mimicing = mimic_voice
	changeling.chem_recharge_slowdown += 0.5
	to_chat(user, span_notice("We shape our glands to take the voice of <b>[mimic_voice]</b>, this will slow down regenerating chemicals while active."))
	to_chat(user, span_notice("Use this power again to return to our original voice and return chemical production to normal levels."))
	return TRUE
