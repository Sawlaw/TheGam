object_set_visible(obj_inventory_gui, false)
display_set_gui_size(1280, 720);
myItems = playerInventory;
myColor = c_white;
isEmpty = false;
textborder = 22;

globalvar itemSelected, scrolledAmount, inventoryEndAt;
itemSelected = 0;
scrolledAmount = 0;
inventoryEndAt = min(ds_grid_height(myItems), floor((sprite_height - (textborder * 3) / 32)))
inventoryOnScreen = 0;
if (ds_grid_get(myItems, 0,0) == 0) {
	inventoryEndAt = 0;
	isEmpty = true;
}

visible = true
