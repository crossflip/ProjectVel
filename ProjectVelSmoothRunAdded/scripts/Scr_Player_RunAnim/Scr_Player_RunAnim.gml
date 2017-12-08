///Scr_Player_WalkAnim

sprite_index = Spr_PlayerRunSheet;
var frame_size = 64;
var anim_speed =10;


var xx = x - x_offset;
var yy = y - y_offset;

//anims
if xsp < 0 { yframe = 128;}
else if xsp > 0 {yframe = 64;}
else if ysp < 0 {yframe = 256;}
else if ysp > 0 {yframe = 192;}
else if ysp = 0 && xsp = 0 {yframe = 0;}

if xsp = 0 && ysp = 0 
{
	anim_length = 6;
	anim_speed = 7;
}
else if xsp != 0 
{
	anim_length = 10;
	anim_speed = 12;
}
else if ysp != 0 
{
	anim_length = 10;
	anim_speed = 12;
}

xframe += anim_speed/60;
if floor(xframe)*frame_size >= anim_length*frame_size {xframe = 0;}

draw_sprite_part(Spr_PlayerRunSheet,0,floor(xframe)*frame_size,yframe,48,64,xx,yy)

