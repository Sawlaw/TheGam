/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_inventory_gui)) {
	inventoryDisplay = instance_create_depth(0,0,-999,obj_inventory_gui) {
		with(inventoryDisplay) {
			x = camera_get_view_width(view[0])/2 - sprite_get_xoffset(sprite_index)
			y = camera_get_view_height(view[0])/2 - sprite_get_yoffset(sprite_index)
		}
	}
} else {
	instance_destroy(obj_inventory_gui);
}
	