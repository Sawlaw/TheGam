if (image_index == 2) image_speed = 0;
object_set_visible(obj_inventory_gui, true)
scr_get_input();
if (inv_key) {
	instance_activate_object(obj_player)
	instance_activate_all()
	if (instance_exists(obj_player)){
		obj_view.x = obj_player.x;
		obj_view.y = obj_player.y;
	}
	instance_destroy();
}