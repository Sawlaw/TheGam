//nothing
if (surface_exists(pauseSurf)) {
	draw_set_color(c_black)
	draw_set_alpha(0.45)
	draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0)
	draw_surface(pauseSurf,view_xport[0],view_yport[0])
}