
if(obj_input.dash_key) {
state = scr_dash_state;
alarm[0] = room_speed/8 }

if(obj_input.attack_key) {
image_index = 0;
state = scr_attack_state;
 }


// Get the axis
var xaxis = (obj_input.rightkey - obj_input.leftkey);
var yaxis = (obj_input.downkey - obj_input.upkey);

// Get direction
dir = point_direction(0, 0, xaxis, yaxis);

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
