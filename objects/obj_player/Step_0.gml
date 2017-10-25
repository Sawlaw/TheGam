event_inherited()
scr_get_input()
script_execute(state);
if (inv_key) {
	if(instance_exists(obj_inventory_gui)) {
		instance_destroy(obj_inventory_gui)
	} else {
		instance_create_depth(160,90,0,obj_inventory_gui)
	}
}
