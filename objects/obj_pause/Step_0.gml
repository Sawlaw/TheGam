/// @description Insert description here
// You can write your code in this editor
scr_get_input();
if (pause_key) {
	surface_free(pauseSurf)
	instance_activate_object(obj_player)
	instance_activate_all()
	if (instance_exists(obj_player)){
		obj_view.x = obj_player.x;
		obj_view.y = obj_player.y;
	}
	instance_destroy();
}