var i = 0;
repeat(buttons) {
	draw_set_font(fnt_main)
	draw_set_halign(fa_center)
	draw_set_valign(fa_bottom)
	draw_set_color(c_black)
	
	if (menu_index == i) draw_set_color(c_red);
	
	draw_text (menu_x, menu_y + button_h * i, button[i])
	i++
	}