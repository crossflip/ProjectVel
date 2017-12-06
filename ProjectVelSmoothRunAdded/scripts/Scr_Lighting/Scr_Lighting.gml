///Scr_Lighting

if surface_exists(surflighting)
{
	surface_set_target(surflighting);
	
	//make dark overlay

	draw_set_color(make_color_hsv(240,100,10));
	draw_set_alpha(0.3);
	draw_rectangle(0,0,room_width,room_height,0);

	gpu_set_blendmode(bm_subtract);

	
	//draw circles around lightsource
	draw_set_color(c_black);
	draw_set_alpha(0.2);
	
	draw_circle(x, y - litoffset, litfactor + litfactor/2,0);
	
	draw_set_color(c_white);
	draw_set_alpha(1);


	draw_circle(x, y - litoffset, litfactor,0);	
	

	
	//reset all draws	
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
}
else
{
	surflighting = surface_create(room_width,room_height);
	surface_set_target(surflighting);
	draw_clear_alpha(c_black,0);
}