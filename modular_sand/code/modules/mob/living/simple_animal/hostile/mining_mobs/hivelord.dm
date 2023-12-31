/mob/living/simple_animal/hostile/asteroid/hivelord/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/glory_kill, \
		messages_unarmed = list("rips out skulls from the legion, one by one, until it's mangled carcass finally disappears!", "punches the shit out of the legion, making it scream until it finally gives out!", "punches their hand inside the gut of the legion, ripping off his regenerative core!"), \
		messages_pka = list("grabs the legion by it's arm with one hand, then shoots their gut repeatedly with their PKA!", "bashes the legion's skulls hard with their pka, until they crack and go inside their cursed host!"), \
		messages_pka_bayonet = list("stabs the legion's gut and pulls out their regenerative core!", "repeatedly stabs the legion in their \"head\" with the PKA's bayonet!", "rams the bayonet of their Kinetic Accelerator up the Legion's chin, lifting it up and then firing it, blowing its head off!"), \
		messages_crusher = list("chops the legion's hip like it's timber, until it finally gives out!", "kicks the legion onto the ground, then chops their face apart with their crusher!"), \
		health_given = 7.5, \
		threshold = (maxHealth/10 * 1.5), \
		crusher_drop_mod = 2)
