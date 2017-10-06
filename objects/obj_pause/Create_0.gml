/// @description Insert description here
// You can write your code in this editor
pauseSurf = surface_create(view_wport[0],view_hport[0])

surface_set_target(pauseSurf);
draw_clear_alpha(c_white,0)
with(all) {
	if (visible == true) {
		x = x - view_xport[0];
		y = y - view_yport[0];
		event_perform(ev_draw,0)
		x = x + view_xport[0];
		y = x + view_yport[0];
	}
}
surface_reset_target()

instance_deactivate_all(true)
visible = true