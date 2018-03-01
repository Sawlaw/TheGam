/// @function removeItem
/// @description Removes an item to the grid
/// @argument0 ds_grid Grid_To_Remove
/// @argument1 String Item_Name
/// @argument2 Int Item_Amount
/// @argument3 String Item_Description
/// @argument4 Sprite Item_Sprite
/// @argument5 Script Item_Script

gridToRemoveTo = argument0;
newItemName = argument1;
newItemAmount = argument2;
newItemDescription = argument3;
newItemSprite = argument4;
newItemScript = argument5;

//Only 1 item in inventory
if(ds_grid_height(playerInventory) == 1) {
	if(ds_grid_get(playerInventory, 1, 0) > 1) {
		ds_grid_set(playerInventory, 1, 0, (ds_grid_get(playerInventory, 1, 0) - 1 )) }
	else {
		for(i = 0;i < playerInventoryWidth; i++) {
			ds_grid_set(playerInventory, i, 0, 0);
		}
	}
}
//everything else



