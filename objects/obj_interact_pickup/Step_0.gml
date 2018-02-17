if(distance_to_object(obj_player) < 10){
	if(obj_player.interact == true){
		scr_add_item(playerInventory,myItemName,myItemAmount,myItemDescrition,myItemSprite,myItemScript)
		instance_destroy()
	}
}