

//dir = face * 90;
len = spd * 3

// Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += (hspd);
phy_position_y += (vspd);

//create dash effect
var dash = instance_create_depth(x,y,-y,obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;