/// @desc

if (global.team == 1)
	sendBall()

// score
if (bbox_right > room_width) {
	x = xstart
	y = ystart
	
	dir = 225
	base_spd = 4
	
	hsp = lengthdir_x(base_spd, dir)
	vsp = lengthdir_y(base_spd, dir)
}

if (bbox_left < 0) {
	x = xstart
	y = ystart
	
	dir = -45
	base_spd = 4
	
	hsp = lengthdir_x(base_spd, dir)
	vsp = lengthdir_y(base_spd, dir)
}

// hit by pad
if (place_meeting(x + hsp, y + vsp, oPad) and !place_meeting(x, y, oPad))
{
	if (dir > 90 and dir <= 270) { // moving to the left
		dir = choose(irandom_range(0, 60), irandom_range(300, 360))
	}
	else {
		dir = irandom_range(120, 240)
	}
	
	base_spd += .5
	
	hsp = lengthdir_x(base_spd, dir)
	vsp = lengthdir_y(base_spd, dir)
}

// bounce
if (bbox_top + vsp < 0) {
	vsp = -vsp
}
if (bbox_bottom + vsp > room_height) {
	vsp = -vsp
}


x += hsp
y += vsp