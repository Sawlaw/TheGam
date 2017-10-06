/// @description Insert description here
// You can write your code in this editor
scr_get_input();
if (pause_key) {
surface_free(pauseSurf)
instance_activate_all()
instance_destroy();
}