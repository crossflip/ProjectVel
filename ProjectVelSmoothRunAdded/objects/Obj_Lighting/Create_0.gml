/// @description Create roomsize surface
// You can write your code in this editor
globalvar light;

light = surface_create(room_width,room_height);

surface_set_target(light);
draw_clear_alpha(c_black,0)

//reset to application surface
surface_reset_target();

depth = -9999