/// @description Insert description here
// You can write your code in this editor

if shader_is_compiled(shd_pattern_01) && (playerShader == true) {
	shader_set(shd_pattern_01);
	babak = shader_get_sampler_index(shd_pattern_01, "back");
	spr = sprite_get_texture(spr_pattern_01,0)
	uwu =	shader_get_uniform(shd_pattern_01, "uvs");
	recipe = shader_get_uniform(shd_pattern_01, "recip_size");
	tex = sprite_get_uvs(spr_pattern_01, 0)
	tex1 = tex[0];
	tex2 = tex[1];
	tex3 = tex[2] - tex[0];
	tex4 = tex[3] - tex[1];
	shader_set_uniform_f(uwu,tex1,tex2,tex3,tex4)
	shader_set_uniform_f(recipe,1/300,1/300)
	texture_set_stage(babak,spr)//
	draw_self()
	shader_reset();
	} else {
	draw_self();
	}