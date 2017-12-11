///Scr_Lighting_EndStep

gpu_set_blendmode(bm_subtract);
surface_set_target(light);

	//draw circles around lightsource
	draw_set_color(c_black);
	draw_set_alpha(0.2);
	
	draw_circle(x, y - litoffset, litfactor + litfactor/2,0);
	
	draw_set_color(c_white);
	draw_set_alpha(1);

	draw_circle(x, y - litoffset, litfactor,0);
	
surface_reset_target();
gpu_set_blendmode(bm_normal);