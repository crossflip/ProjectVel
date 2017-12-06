/// @description Insert description here
// You can write your code in this editor
if !surface_exists(light)
{
	light = surface_create(room_width,room_height);
}
else if view_current == 0
{
	draw_surface(light,0,0);
	surface_reset_target();
}