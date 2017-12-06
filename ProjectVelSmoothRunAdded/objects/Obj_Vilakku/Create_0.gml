/// @description Insert description here
// You can write your code in this editor
litfactor = 10;
litoffset = 3;

variant = choose(Spr_VilakkuA,Spr_VilakkuB);
anim_speed = choose(0.02,0.03);
anim = 0;

if variant == Spr_VilakkuB 
{
	litfactor = 15;
	litoffset = 5;
}
