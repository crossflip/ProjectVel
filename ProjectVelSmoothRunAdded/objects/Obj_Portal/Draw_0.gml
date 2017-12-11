/// @description draw anims
// You can write your code in this editor
sprite_index = Spr_StatueFireSheet;
var frame_size = 64;
var anim_speed = 10;
anim_length = 8;


var xx = x - x_offset;
var yy = y - y_offset;


xframe += anim_speed/60;
if floor(xframe)*frame_size >= anim_length*frame_size {xframe = 0;}

draw_sprite_part(Spr_StatueFireSheet,0,floor(xframe)*frame_size,yframe,64,96,xx,yy)

if distance_to_object(Obj_Player) < 80
{
	range = 1;
}
else {range = 0;}
