scr_get_input();
// Get the axis
var xaxis = (rightkey - leftkey);
var yaxis = (downkey - upkey);

// Get direction
var dir = point_direction(0, 0, xaxis, yaxis);

// Get the length
if (xaxis == 0 and yaxis == 0) {
    len = 0;
} else { 
    len = spd;
}

// Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += (hspd);
phy_position_y += (vspd);


//control
image_speed = sign(len) * (1);
if (len == 0) image_index = 0;

//vertical sprites
if (vspd > 0) {
	sprite_index = spr_player_down;
		if (image_index == 11) {
		image_index = 2
	}
} else if (vspd < 0) {
	sprite_index = spr_player_up;
}

//horizontal sprites            
if (hspd > 0) {
	sprite_index = spr_player_right;
	if (image_index == 11) {
		image_index = 2
	}
	
} else if (hspd < 0) { 
	sprite_index = spr_player_left;
		if (image_index == 11) {
		image_index = 2
	}	

}
