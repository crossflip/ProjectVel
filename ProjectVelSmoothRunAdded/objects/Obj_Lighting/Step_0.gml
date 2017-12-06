/// @description Insert description here
// You can write your code in this editor

if surface_exists(light)
{
	surface_set_target(light);
	
	//make dark overlay

	draw_set_color(make_color_hsv(240,100,10));
	draw_set_alpha(0.3);
	draw_rectangle(0,0,room_width,room_height,0);

	gpu_set_blendmode(bm_subtract);

	

	

	
	//reset all draws	
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
}
else
{
	light = surface_create(room_width,room_height);
	surface_set_target(light);
	draw_clear_alpha(c_black,0);
}