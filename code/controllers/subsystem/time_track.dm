SUBSYSTEM_DEF(time_track)
	name = "Time Tracking"
	wait = 10
	init_order = INIT_ORDER_TIMETRACK
	runlevels = RUNLEVEL_LOBBY | RUNLEVELS_DEFAULT

	var/time_dilation_current = 0

	var/time_dilation_avg_fast = 0
	var/time_dilation_avg = 0
	var/time_dilation_avg_slow = 0

	var/first_run = TRUE

	var/last_tick_realtime = 0
	var/last_tick_byond_time = 0
	var/last_tick_tickcount = 0

	/// Displays a lie to the players about the current time dilation.
	/// Uncomment if players are complaining about lag and they're right
	// var/debug_just_flat_out_lie_to_the_players = FALSE
	// var/debug_the_outright_dirty_lie_we_are_telling = 5
	// var/debug_the_outright_dirty_lie_we_are_telling_fast = 0
	// var/debug_the_outright_dirty_lie_we_are_telling_average = 0
	// var/debug_the_outright_dirty_lie_we_are_telling_slow = 0

/datum/controller/subsystem/time_track/Initialize(start_timeofday)
	. = ..()
	GLOB.perf_log = "[GLOB.log_directory]/perf-[GLOB.round_id ? GLOB.round_id : "NULL"]-[SSmapping.config?.map_name].csv"
	log_perf(
		list(
			"time",
			"players",
			"tidi",
			"tidi_fastavg",
			"tidi_avg",
			"tidi_slowavg",
			"maptick",
			"num_timers",
			"air_turf_cost",
			"air_turf_thread_time",
			"air_equalize_cost",
			"air_post_process_cost",
			"air_eg_cost",
			"air_highpressure_cost",
			"air_hotspots_cost",
			"air_heat_spread_cost",
			"air_pipenets_cost",
			"air_rebuilds_cost",
			"air_amt_gas_mixes",
			"air_alloc_gas_mixes",
			"air_hotspot_count",
			"air_network_count",
			"air_delta_count",
		)
	)

/datum/controller/subsystem/time_track/fire()
	// if(debug_just_flat_out_lie_to_the_players)
	// 	fabricate_lie()

	var/current_realtime = REALTIMEOFDAY
	var/current_byondtime = world.time
	var/current_tickcount = world.time/world.tick_lag
	GLOB.glide_size_multiplier = (current_byondtime - last_tick_byond_time) / (current_realtime - last_tick_realtime)

	if(times_fired % 10)	// everything else is once every 10 seconds
		return

	if (!first_run)
		var/tick_drift = max(0, (((current_realtime - last_tick_realtime) - (current_byondtime - last_tick_byond_time)) / world.tick_lag))

		time_dilation_current = tick_drift / (current_tickcount - last_tick_tickcount) * 100

		time_dilation_avg_fast = MC_AVERAGE_FAST(time_dilation_avg_fast, time_dilation_current)
		time_dilation_avg = MC_AVERAGE(time_dilation_avg, time_dilation_avg_fast)
		time_dilation_avg_slow = MC_AVERAGE_SLOW(time_dilation_avg_slow, time_dilation_avg)
	else
		first_run = FALSE
	last_tick_realtime = current_realtime
	last_tick_byond_time = current_byondtime
	last_tick_tickcount = current_tickcount
	SSblackbox.record_feedback("associative", "time_dilation_current", 1, list("[SQLtime()]" = list("current" = "[time_dilation_current]", "avg_fast" = "[time_dilation_avg_fast]", "avg" = "[time_dilation_avg]", "avg_slow" = "[time_dilation_avg_slow]")))
	log_perf(
		list(
			world.time,
			length(GLOB.clients),
			time_dilation_current,
			time_dilation_avg_fast,
			time_dilation_avg,
			time_dilation_avg_slow,
			MAPTICK_LAST_INTERNAL_TICK_USAGE,
			length(SStimer.timer_id_dict),
			SSair.cost_turfs,
			SSair.turf_process_time(),
			SSair.cost_equalize,
			SSair.cost_post_process,
			SSair.cost_groups,
			SSair.cost_highpressure,
			SSair.cost_hotspots,
			SSair.cost_superconductivity,
			SSair.cost_pipenets,
			SSair.cost_rebuilds,
			SSair.get_amt_gas_mixes(),
			SSair.get_max_gas_mixes(),
			length(SSair.hotspots),
			length(SSair.networks),
			length(SSair.high_pressure_delta)
		)
	)

/datum/controller/subsystem/time_track/proc/get_anger()
	// if(debug_just_flat_out_lie_to_the_players)
	// 	return "[debug_the_outright_dirty_lie_we_are_telling]% AVG:([debug_the_outright_dirty_lie_we_are_telling_fast]%, [debug_the_outright_dirty_lie_we_are_telling_average]%, [debug_the_outright_dirty_lie_we_are_telling_slow]%)"
	return "[round(SStime_track.time_dilation_current,1)]% AVG:([round(SStime_track.time_dilation_avg_fast,1)]%, [round(SStime_track.time_dilation_avg,1)]%, [round(SStime_track.time_dilation_avg_slow,1)]%)"

// /datum/controller/subsystem/time_track/proc/fabricate_lie()
// 	if(prob(5))
// 		debug_the_outright_dirty_lie_we_are_telling += rand(-2,2)
// 	debug_the_outright_dirty_lie_we_are_telling = clamp(debug_the_outright_dirty_lie_we_are_telling, 3, 10)

// 	debug_the_outright_dirty_lie_we_are_telling_fast = round(MC_AVERAGE_FAST(debug_the_outright_dirty_lie_we_are_telling_fast, debug_the_outright_dirty_lie_we_are_telling), 1)
// 	debug_the_outright_dirty_lie_we_are_telling_average = round(MC_AVERAGE(debug_the_outright_dirty_lie_we_are_telling_average, debug_the_outright_dirty_lie_we_are_telling), 1)
// 	debug_the_outright_dirty_lie_we_are_telling_slow = round(MC_AVERAGE_SLOW(debug_the_outright_dirty_lie_we_are_telling_slow, debug_the_outright_dirty_lie_we_are_telling), 1)


