event_inherited()
scr_get_input()
script_execute(state);

if (inv_key) {
	if(instance_exists(obj_inventory_gui)) {
		instance_destroy(obj_inventory_gui)
	} else {
		instance_create_depth(view_yport[0]/2,view_xport[0]/2,0,obj_inventory_gui)
	}
}

if (upkey) {
	scr_add_item(playerInventory, "Egg", 1, "A Egg", sprite1, undefined)
}
if (downkey) {
	scr_add_item(playerInventory, "Not Egg", 2, "A Egg", sprite1, undefined)
}
