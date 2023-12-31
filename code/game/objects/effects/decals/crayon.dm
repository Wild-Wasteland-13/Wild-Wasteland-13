/obj/effect/decal/cleanable/crayon
	name = "rune"
	desc = "Graffiti. Damn kids."
	icon = 'icons/effects/crayondecal.dmi'
	icon_state = "rune1"
	plane = ABOVE_WALL_PLANE //makes the graffiti visible over a wall.
	gender = NEUTER
	mergeable_decal = FALSE
	var/area_border = FALSE
	var/do_icon_rotate = TRUE
	var/rotation = 0
	var/paint_colour = "#FFFFFF"

/obj/effect/decal/cleanable/crayon/Initialize(mapload, main, type, e_name, graf_rot, alt_icon = null, area_border = FALSE)
	. = ..()

	if(e_name)
		name = e_name
	desc = "A [name] vandalizing the vicinity."
	if(alt_icon)
		icon = alt_icon
	if(type)
		icon_state = type
	if(graf_rot)
		rotation = graf_rot
	src.area_border = area_border
	if(area_border)
		desc += " The area builder will consider this as a wall for the purposes of defining a room."
	if(rotation && do_icon_rotate)
		var/matrix/M = matrix()
		M.Turn(rotation)
		src.transform = M
	if(main)
		paint_colour = main
	add_atom_colour(paint_colour, FIXED_COLOUR_PRIORITY)
