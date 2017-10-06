/// @description Insert description here
// You can write your code in this editor
	draw_set_color(c_black)
	draw_set_alpha(0.75)
	draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0)
	draw_set_font(fnt_main)
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_text((view_wport[0])/2 - 50,(view_hport[0])/2 - 200, "Game Paused")