/// @description Animations Boi


draw_sprite(Spr_PlayerShadow,0,x,y + 0);

if (state = states.walk)
{
	y_offset = sprite_get_yoffset(Spr_PlayerIdle);
	x_offset = sprite_get_xoffset(Spr_PlayerIdle);
	Scr_Player_WalkAnim();
}
else if (state = states.combat)
{
	y_offset = sprite_get_yoffset(Spr_PlayerRun);
	x_offset = sprite_get_xoffset(Spr_PlayerRun);
	Scr_Player_RunAnim();
}


