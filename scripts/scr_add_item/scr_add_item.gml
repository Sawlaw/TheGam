/// @function addItem
/// @description Adds an item to the grid
/// @argument0 ds_grid Grid_To_Add
/// @argument1 String Item_Name
/// @argument2 Int Item_Amount
/// @argument3 String Item_Description
/// @argument4 Sprite Item_Sprite
/// @argument5 Script Item_Script

gridToAddTo = argument0;
newItemName = argument1;
newItemAmount = argument2;
newItemDescription = argument3;
newItemSprite = argument4;
newItemScript = argument5;

//Item is already in Inventory
for (i = 0; i < ds_grid_height(gridToAddTo); i++) {
	if(ds_grid_get(gridToAddTo, 0, i) == newItemName) {
		ds_grid_set(gridToAddTo, 1, i, ds_grid_get(gridToAddTo, 1, i) + newItemAmount)
		return true;
	}
}
//Item is not already in Inventory
if(ds_grid_get(gridToAddTo, 0 , 0) != 0) {
	ds_grid_resize(gridToAddTo, playerInventoryWidth, ds_grid_height(gridToAddTo) + 1)
}

newItemSpot = ds_grid_height(gridToAddTo) - 1;
ds_grid_set(gridToAddTo, 0, newItemSpot, newItemName);
ds_grid_set(gridToAddTo, 1, newItemSpot, newItemAmount);
ds_grid_set(gridToAddTo, 2, newItemSpot, newItemDescription);
ds_grid_set(gridToAddTo, 3, newItemSpot, newItemSprite);
ds_grid_set(gridToAddTo, 4, newItemSpot, newItemScript);



