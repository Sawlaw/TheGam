/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_player) < 1) {
	scr_add_item(playerInventory,myItemName,myItemAmount,myItemDescrition,myItemSprite,myItemScript)
	instance_destroy()
}