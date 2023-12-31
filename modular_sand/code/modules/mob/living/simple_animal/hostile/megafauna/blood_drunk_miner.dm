/mob/living/simple_animal/hostile/megafauna/blood_drunk_miner
	crusher_loot = list(/obj/item/melee/transforming/cleaving_saw, /obj/item/gun/energy/kinetic_accelerator/premiumka/bdminer, /obj/item/borg/upgrade/modkit/lifesteal/miner, /obj/item/crusher_trophy/miner_eye)
	loot = list(/obj/item/melee/transforming/cleaving_saw, /obj/item/gun/energy/kinetic_accelerator/premiumka/bdminer, /obj/item/borg/upgrade/modkit/lifesteal/miner)

/mob/living/simple_animal/hostile/megafauna/blood_drunk_miner/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/glory_kill, \
		messages_unarmed = list("grabs the blood-drunk's arm, flips their cleaving saw with the other hand, and forcefully makes them chop off their own head with it!", "grabs blood-drunk by their PKA, aims it at their head and then shoots, splattering his brains out!", "rips out both of the blood-drunk's arms, then kicks their limp torso on the groundd and curbstomps their head in so hard it explodes!"), \
		messages_crusher = list("chops off the blood-drunk's cleaving saw arm in one swift move, then grabs the saw and swings it against their head, chopping their skull vertically in half!", "bashes the miner to the ground with the hilt of their crusher, then elbow drops their skull so hard it explodes in gore!", "chops the blood-drunk diagonally with their crusher, not quite cutting through but getting their crusher halfway stuck and killing the moaning fiend!"), \
		messages_pka = list("grabs the blood-drunk by the neck and flips them, shooting through their guts with a PKA blast!", "shoots at the blood-drunk's shoulder, exploding their arm! To finish the fiend off, they grab their PKA and bonk the blood-drunk's head inside their torso!", "doesn't bother with being fancy, and simply shoots at the blood-drunk's head with their PKA, exploding it in one violent blast!"), \
		messages_pka_bayonet = list("rams into the blood-drunk's stomach with their PKA's bayonet, knocking them and themselves down! To finish the fiend off, they simply stab into their torso like a madman with their bayonet!", "kicks the blood-drunk's knee hard, breaking it! While the fiend is stunned and barely standing, their chop their head off with the PKA's bayonet!"), \
		threshold = 50)

/obj/item/projectile/kinetic/miner
	color = "#FF0000"
