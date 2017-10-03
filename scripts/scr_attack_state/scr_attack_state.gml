/*
image_speed = .5
switch (sprite_index) {
	case spr_player_down;
	sprite_index = spr_player_attack down
	break
	
	case spr_player_up;
	sprite_index = spr_player_attack down
	break
	
	case spr_player_left;
	sprite_index = spr_player_attack left
	
	case spr_player_right;
	sprite_index = spr_player_attack right
	break
	if (image_index >= 3) {
	instance_create(x,y, obj_damage);
*/
if (attacked == false) {
	var xx = 0
	var yy = 0
	switch(sprite_index) {
		case spr_player_up:
		xx = x
		yy = y - 13
		break
		
		case spr_player_down:
		xx = x
		yy = y + 16
		break
		
		case spr_player_left:
		xx = x - 12
		yy = y + 2
		break
		
		case spr_player_right:
		xx = x + 12
		yy = y + 2
		break
	}
	var damage = instance_create_layer(xx,yy,0, obj_damage)
	damage.creator = id;
	attacked = true;
}

state = scr_move_state
attacked = false