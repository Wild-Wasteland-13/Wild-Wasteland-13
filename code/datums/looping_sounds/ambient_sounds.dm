/datum/looping_sound/ambient
	/// Chance every 'mid_length' time to play an ambient sound
	chance = 1
	//varies pitch
	vary = TRUE
	//varies sound direction 
	vary_direction = TRUE
	/// adds in varied volumes, use this format plz: volume = SOUND_LOOP_VOL_RANGE(min, max)
	volume = SOUND_LOOP_VOL_RANGE(10, 50)
	/// Plays the sound directly to the player, cus ambient sounds dont have a real source tile
	direct = TRUE
	/// Here used as time between rolls for sounds happening
	loop_delay = 5 SECONDS

// random bullshit used for testing
/datum/looping_sound/ambient/debug
	chance = 25 // might be kinda low for ambience
	vary = TRUE
	volume = SOUND_LOOP_VOL_RANGE(10, 50)
	direct = TRUE
	vary_direction = TRUE
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/misc/sadtrombone.ogg', 3.5 SECONDS, 1), 
		SOUND_LOOP_ENTRY('sound/machines/microwave/microwave-mid2.ogg', 1 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/machines/sm/supermatter1.ogg', 1 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/items/geiger/ext3.ogg', 0.2 SECONDS, 1)
		)
/datum/looping_sound/ambient/debug2
	chance = 100
	vary = TRUE
	volume = SOUND_LOOP_VOL_RANGE(10, 50)
	direct = TRUE
	loop_delay = 0
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13weapons/american180.ogg', 0.2 SECONDS, 1), 
		SOUND_LOOP_ENTRY('sound/f13weapons/boltfire.ogg', 1.7 SECONDS, 1), 
		SOUND_LOOP_ENTRY('sound/f13weapons/laser_rifle.ogg', 2.2 SECONDS, 1), 
		SOUND_LOOP_ENTRY('sound/f13weapons/magnum_fire.ogg', 2.4 SECONDS, 1)
		)

//Ambience Pack//

/datum/looping_sound/ambient/critters
	chance = 25
	vary = FALSE
	vary_direction = TRUE
	volume = SOUND_LOOP_VOL_RANGE(30, 65)
	direct = TRUE
	loop_delay = 3 MINUTES
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/bear_1.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/bear_2.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/dog_distant_1.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/wild1.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/wild1.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/frog_1.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/frog_2.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/coyote_1.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/coyote_2.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/squirrel_1.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/battle_1.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/battle_2.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/battle_3.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/rattlesnake_1.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/rattlesnake_2.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/rattlesnake_3.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/bird_1.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/bird_2.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/bird_3.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/bird_4.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/bird_5.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/bird_6.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/bird_7.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/bird_8.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13effects/sunsetsounds/cougar.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13effects/sunsetsounds/lynx.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13effects/sunsetsounds/wolfhowl.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13effects/sunsetsounds/coyoteawoo.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13effects/sunsetsounds/coyoteawoo2.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13effects/sunsetsounds/coyoteawoo3.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13effects/sunsetsounds/coyoteawoo4.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13effects/sunsetsounds/coyoteawoo5.ogg', 10 SECONDS, 1)
	)

//ANIMALS//
///////////////////
//Small Critters//
/////////////////

/datum/looping_sound/ambient/critters/frogs
	chance = 70
	vary = FALSE
	vary_direction = TRUE
	volume = SOUND_LOOP_VOL_RANGE(40, 65)
	direct = TRUE
	loop_delay = 1 MINUTES
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/frog_1.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/frog_2.ogg', 10 SECONDS, 1),
	)

//End Small Critters//

///////////
///Birds///
//////////
/datum/looping_sound/ambient/critters/birds
	chance = 40
	vary = FALSE
	vary_direction = TRUE
	volume = SOUND_LOOP_VOL_RANGE(40, 65)
	direct = TRUE
	loop_delay = 2 MINUTES
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/bird_1.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/bird_2.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/bird_3.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/bird_4.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/bird_5.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/bird_6.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/bird_7.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/bird_8.ogg', 10 SECONDS, 1),
	)

/datum/looping_sound/ambient/critters/birds/crow
	chance = 40
	vary = FALSE
	vary_direction = TRUE
	volume = SOUND_LOOP_VOL_RANGE(65, 75)
	direct = TRUE
	loop_delay = 2 MINUTES
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/crow_1.ogg', 17 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/crow_2.ogg', 25 SECONDS, 1),
	)
//////////////
//End Birds//
/////////////

//ANIMALS END//


//PLACES//

//Civilization//
/datum/looping_sound/ambient/city
	chance = 100
	vary = FALSE
	volume = SOUND_LOOP_VOL_RANGE(100, 100)
	direct = TRUE
	loop_delay = 1 SECONDS
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/ambicity1.ogg', 151 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambicity2.ogg', 62 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambicity3.ogg', 60 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambicity4.ogg', 92 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambicity5.ogg', 48 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambicity6.ogg', 82 SECONDS, 1),
	)


/datum/looping_sound/ambient/town
	chance = 100
	vary = FALSE
	volume = SOUND_LOOP_VOL_RANGE(100, 100)
	direct = TRUE
	loop_delay = 0
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/ambibuilding1.ogg', 130 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambibuilding2.ogg', 130 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/building.ogg', 4 SECONDS, 1),
	)

	//Buildings//
/datum/looping_sound/ambient/building
	chance = 80
	vary = FALSE
	vary_direction = TRUE
	volume = SOUND_LOOP_VOL_RANGE(100, 100)
	direct = TRUE
	loop_delay = 30 SECONDS
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/ambibuilding1.ogg', 60 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambibuilding2.ogg', 71 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambibuilding3.ogg', 24 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambibuilding4.ogg', 47 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/shack.ogg', 7 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/warehouse.ogg', 9 SECONDS, 1),
	)

/datum/looping_sound/ambient/building/church
	chance = 50
	vary = FALSE
	vary_direction = TRUE
	volume = SOUND_LOOP_VOL_RANGE(100, 100)
	direct = TRUE
	loop_delay = 30 SECONDS
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/ambience/ambiholy.ogg', 12 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/ambience/ambiholy3.ogg', 24 SECONDS, 1),
	)

/datum/looping_sound/ambient/building/hospital
	chance = 100
	vary = FALSE
	vary_direction = TRUE
	volume = SOUND_LOOP_VOL_RANGE(100, 100)
	direct = TRUE
	loop_delay = 30 SECONDS
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/ambihospital1.ogg', 19 SECONDS, 1),
	)

/datum/looping_sound/ambient/building/sulphurtribe
	chance = 50
	vary = FALSE
	vary_direction = TRUE
	volume = SOUND_LOOP_VOL_RANGE(100, 100)
	direct = TRUE
	loop_delay = 30 SECONDS
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/ambitribe1.ogg', 40 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambitribe2.ogg', 24 SECONDS, 1),
	)

//Civilzation End//


//Wilderness//
/datum/looping_sound/ambient/forest
	chance = 100
	vary = FALSE
	volume = SOUND_LOOP_VOL_RANGE(100, 100)
	direct = TRUE
	loop_delay = 1 SECONDS
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiforest1.ogg', 24 SECONDS, 1),
	)

/datum/looping_sound/ambient/swamp
	chance = 100
	vary = FALSE
	volume = SOUND_LOOP_VOL_RANGE(100, 100)
	direct = TRUE
	loop_delay = 0
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiswamp1.ogg', 130 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiswamp2.ogg', 130 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiswamp3.ogg', 130 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiswamp4.ogg', 130 SECONDS, 1),
	)

/datum/looping_sound/ambient/swamp/quiet
	chance = 100
	vary = FALSE
	volume = SOUND_LOOP_VOL_RANGE(69, 69)
	direct = TRUE
	loop_delay = 0
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiswamp1.ogg', 130 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiswamp2.ogg', 130 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiswamp3.ogg', 130 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiswamp4.ogg', 130 SECONDS, 1),
	)

//Wildeness End

/datum/looping_sound/ambient/woodcreak
	chance = 50
	vary = FALSE
	vary_direction = TRUE
	volume = SOUND_LOOP_VOL_RANGE(100, 100)
	direct = TRUE
	loop_delay = 20 SECONDS
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiwoodcreak1.ogg', 17 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiwoodcreak2.ogg', 16 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiwoodcreak3.ogg', 23 SECONDS, 1),
	)


//Underground//
/datum/looping_sound/ambient/tunnel
	chance = 50
	vary = FALSE
	vary_direction = TRUE
	volume = SOUND_LOOP_VOL_RANGE(100, 100)
	direct = TRUE
	loop_delay = 20 SECONDS
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/drops.ogg', 10 SECONDS, 1),
	)

/datum/looping_sound/ambient/cave
	chance = 100
	vary = FALSE
	volume = SOUND_LOOP_VOL_RANGE(100, 100)
	direct = TRUE
	loop_delay = 0
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/cave.ogg', 12 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/enclave_vault.ogg', 12 SECONDS, 1),
	)

/datum/looping_sound/ambient/sewers
	chance = 100
	vary = FALSE
	volume = SOUND_LOOP_VOL_RANGE(100, 100)
	direct = TRUE
	loop_delay = 0
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/sewers.ogg', 7 SECONDS, 1),
	)

//Underground End//

//Generic Ambience//
/datum/looping_sound/ambient/general
	chance = 40
	vary = FALSE
	volume = SOUND_LOOP_VOL_RANGE(60, 80)
	direct = TRUE
	loop_delay = 0
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_1.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_2.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_3.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_4.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_5.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_6.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_7.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_8.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_9.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_10.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_11.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_12.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_13.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_14.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_15.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_16.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_17.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_18.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambigen_19.ogg', 10 SECONDS, 1),
		//SOUND_LOOP_ENTRY('sound/ambience/ambigen5.ogg', 15 SECONDS, 1), //Might Opt back into these later ~TK
		//SOUND_LOOP_ENTRY('sound/ambience/ambigen6.ogg', 33 SECONDS, 1),
		//SOUND_LOOP_ENTRY('sound/ambience/ambigen9.ogg', 9 SECONDS, 1),
		//SOUND_LOOP_ENTRY('sound/ambience/ambigen10.ogg', 20 SECONDS, 1),
		//SOUND_LOOP_ENTRY('sound/ambience/ambigen15.ogg', 12 SECONDS, 1),
	)

/datum/looping_sound/ambient/lightbulb
	chance = 100
	vary = FALSE
	vary_direction = TRUE
	volume = SOUND_LOOP_VOL_RANGE(100, 100)
	direct = TRUE
	loop_delay = 0 SECONDS
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiflouriscentlight_1.ogg', 5 SECONDS, 1),
	)

/datum/looping_sound/ambient/torch
	chance = 100
	vary = FALSE
	vary_direction = TRUE
	volume = SOUND_LOOP_VOL_RANGE(100, 100)
	direct = TRUE
	loop_delay = 0 SECONDS
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/ambitorch_1.ogg', 6 SECONDS, 1),
	)

/datum/looping_sound/ambient/steam
	chance = 100
	vary = FALSE
	volume = SOUND_LOOP_VOL_RANGE(15, 50)
	direct = TRUE
	loop_delay = 0
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13effects/steam_short.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13effects/steam_long.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/ambience/ambimaint1.ogg', 14 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/ambience/ambimaint4.ogg', 12 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/ambience/ambimaint6.ogg', 6 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/ambience/ambimaint7.ogg', 6 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/ambience/ambimaint9.ogg', 6 SECONDS, 1),
	)

//Generic Ambience End//

//Radio Texarkana//

/datum/looping_sound/ambient/djswampass
	chance = 10
	vary = FALSE
	volume = SOUND_LOOP_VOL_RANGE(100, 100)
	direct = TRUE
	loop_delay = 10 MINUTES
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiRT1.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiRT2.ogg', 10 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiRT3.ogg', 10 SECONDS, 1),
	)

/datum/looping_sound/ambient/radiostatic
	chance = 100
	vary = FALSE
	volume = SOUND_LOOP_VOL_RANGE(80, 100)
	direct = TRUE
	loop_delay = 0
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/f13ambience/ambiwhitenoise1.ogg', 18 SECONDS, 99),
	)

/datum/looping_sound/ambient/radiomusic
	chance = 70
	vary = FALSE
	volume = SOUND_LOOP_VOL_RANGE(90, 90)
	direct = TRUE
	loop_delay = 1 MINUTES
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/music/rocketridersprayer.ogg', 370 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/f13/thats_life.ogg', 124 SECONDS, 10),
		SOUND_LOOP_ENTRY('sound/f13/hanging_me.ogg', 185 SECONDS, 10),
		SOUND_LOOP_ENTRY('sound/f13/rainmustfall.ogg', 208 SECONDS, 10),
		SOUND_LOOP_ENTRY('sound/f13/masters_call.ogg', 121 SECONDS, 10),
		SOUND_LOOP_ENTRY('sound/f13/meetagain.ogg', 119 SECONDS, 10),
		SOUND_LOOP_ENTRY('sound/f13/sixteentons.ogg', 135 SECONDS, 10),
		SOUND_LOOP_ENTRY('sound/f13/orangesky.ogg', 114 SECONDS, 10),
		SOUND_LOOP_ENTRY('sound/f13/rockinrobin.ogg', 121 SECONDS, 10),
		SOUND_LOOP_ENTRY('sound/f13/waybackhome.ogg', 114 SECONDS, 10),
		SOUND_LOOP_ENTRY('sound/f13/ragtime_cowboyjoe.ogg', 144 SECONDS, 10),
		SOUND_LOOP_ENTRY('sound/f13/mightyman.ogg', 109 SECONDS, 10),
		SOUND_LOOP_ENTRY('sound/f13/cottonfields.ogg', 110 SECONDS, 10),
		SOUND_LOOP_ENTRY('sound/f13/bingobango.ogg', 103 SECONDS, 10),
		SOUND_LOOP_ENTRY('sound/f13/sixtyminute.ogg', 97 SECONDS, 10),
		SOUND_LOOP_ENTRY('sound/f13/kickinthehead.ogg', 120 SECONDS, 10),
		SOUND_LOOP_ENTRY('sound/f13/anythinggoes.ogg', 97 SECONDS, 10),
		SOUND_LOOP_ENTRY('sound/f13/thats_life.ogg', 124 SECONDS, 10),
	)
// Radio Texarkana End//

