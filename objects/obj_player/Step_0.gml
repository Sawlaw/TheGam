event_inherited()
scr_get_input()
script_execute(state);
if (inv_key) {
var picked_up_item = "Potion"
var picked_up_count = 1;

if(ds_grid_value_exists(obj_inventory.inventory,0,0,0,ds_grid_height(obj_inventory.inventory)-1,picked_up_item))
{
    var item_row = ds_grid_value_y(obj_inventory.inventory,0,0,0,ds_grid_height(obj_inventory.inventory)-1,picked_up_item);
    ds_grid_add(obj_inventory.inventory,1,item_row,picked_up_count);
}
else
{
    ds_grid_resize(obj_inventory.inventory,ds_grid_width(obj_inventory.inventory),ds_grid_height(obj_inventory.inventory)+1);
    ds_grid_set(obj_inventory.inventory,0,0,"Potion");
    ds_grid_set(obj_inventory.inventory,1,0,1);
}	
}