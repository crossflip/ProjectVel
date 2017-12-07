/// @description Insert description here
// You can write your code in this editor
if anim = 1 {litfactor = litfactor + random_range(-1,1);}

draw_sprite_ext(variant,floor(anim),x,y,xscale,1,0,c_white,1);


anim += anim_speed;
if anim > 2 {anim = 0;}
