/// @description Insert description here
// You can write your code in this editor
if (state != scr_enemy_stall_state) {
	var dir = point_direction(other.x,other.y,x,y)
	var xdir = lengthdir_x(1, dir);
	var ydir = lengthdir_y(1, dir);
	var damage = instance_create_layer(other.x + xdir, other.y + ydir, 0 , obj_damage)
	damage.creator = id;
	damage.knockback = 25;
	state = scr_enemy_stall_state
	alarm [1] = room_speed;
}
scr_add_item(playerInventory, "Times Hurt", 1, "Ouchie", sprite1, "")