/// @description Animations Boi


draw_sprite(Spr_PlayerShadow,0,x,y + 3);

if (state = states.walk)
{
		Scr_Player_WalkAnim();
}
else if (state = states.combat)
{
		Scr_Player_RunAnim();
}


