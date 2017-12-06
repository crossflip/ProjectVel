///Scr_Lighting_Create

surflighting = surface_create(room_width,room_height);

surface_set_target(surflighting);
draw_clear_alpha(c_black,0)

//reset to application surface
surface_reset_target();