/// @description Insert description here
// You can write your code in this editor
scr_get_input();
if(interact == true && (distance_to_object(obj_player) < npc_range)) {
	room_goto(npc_num)
}