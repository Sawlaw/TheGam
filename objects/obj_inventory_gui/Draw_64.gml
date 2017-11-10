object_set_visible(obj_inventory_gui, true)
draw_self();
draw_set_color(c_white);
leftspace = 50
draw_text(bbox_left,bbox_top, "Item")
draw_text(bbox_left + leftspace, bbox_top, "Name")
draw_text(bbox_left +300, bbox_top, "Amount")


for (i = 0; i < inventoryEndAt; i++) {
	
	
	draw_text(bbox_left + leftspace, bbox_top + (i * 13) + 20,ds_grid_get(myItems, 0, i))
	
	draw_text(bbox_left + 300, bbox_top + (i * 13) + 20,ds_grid_get(myItems, 1, i))
	
	draw_sprite(ds_grid_get(myItems, ))
}