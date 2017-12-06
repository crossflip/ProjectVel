///Scr_Lighting_Draw

if !surface_exists(surflighting)
{
	surflighting = surface_create(room_width,room_height);
}
else if view_current == 0
{
	draw_surface(surflighting,0,0);
	surface_reset_target();
}