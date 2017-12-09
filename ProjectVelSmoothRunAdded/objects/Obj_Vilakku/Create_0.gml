/// @description Insert description here
// You can write your code in this editor
collideable = 0;
litfactor = 10;
litoffset = 3;
flicker = 0.5;

variant = choose(Spr_VilakkuA,Spr_VilakkuB);
anim_speed = choose(0.04,0.06);
anim = 0;
xscale = choose(1,-1);

if variant == Spr_VilakkuB 
{
	litfactor = 15;
	litoffset = 5;
}

