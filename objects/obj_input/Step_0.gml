/// @description Insert description here
// You can write your code in this editor
scr_get_input();
if (pause_key) {
//instance_create_depth(0,0,0,obj_pause)
if (pause == false) {
	previousRoom = room;
	pause = true;
	room_goto(rm_pause)
} else if (pause == true) {
	
	room_goto(previousRoom)
	pause = false
}
}