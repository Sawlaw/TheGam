/// @description Insert description here
// You can write your code in this editor
scr_get_input();

	var line_spacing=12;
	var skipped=0;
	var inventory_x = 0;
	var inventory_y = 0;
	var inventory_width=200;

	for(var i=0;i<ds_grid_height(inventory);i++)
	{
	   if(ds_grid_get(inventory,1,i)>0)
	   {
	       draw_set_halign(fa_left);
		   draw_set_color(c_white);
	       draw_text((view_wport[0])/2 - 50,(view_hport[0])/2 - 200,ds_grid_get(inventory,0,i))
	       draw_set_halign(fa_right);
	       draw_text((view_wport[0])/2 + 45,(view_hport[0])/2 - 200,ds_grid_get(inventory,1,i))
	  }
	 else
	     skipped++;
	}
