///Scr_Player_WalkAnim
sprite_index = Spr_PlayerRunSheet;
var frame_size = 64;
var anim_speed =10;


var xx = x - x_offset;
var yy = y - y_offset;

//anims
if moveX < 0 { yframe = 128;}
else if moveX > 0 {yframe = 64;}
else if moveY < 0 {yframe = 256;}
else if moveY > 0 {yframe = 192;}
else if moveY = 0 && moveX = 0 {yframe = 0;}

if moveX = 0 && moveY = 0 
{
	anim_length = 6;
	anim_speed = 7;
}
else if moveX != 0 
{
	anim_length = 10;
	anim_speed = 10;
}
else if moveY != 0 
{
	anim_length = 10;
	anim_speed = 10;
}

xframe += anim_speed/60;
if floor(xframe)*frame_size >= anim_length*frame_size {xframe = 0;}

draw_sprite_part(Spr_PlayerRunSheet,0,floor(xframe)*frame_size,yframe,48,64,xx,yy)

