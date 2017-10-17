/// @description Insert description here
// You can write your code in this editor
scr_get_input();
if (pause_key) {
//instance_create_depth(0,0,0,obj_pause)
	if (global.pause == false) {
		global.previousRoom = room;
		room_goto(rm_pause)
		global.pause = true;

	} else {
		room_goto(global.previousRoom)
		global.pause = false
	}
}