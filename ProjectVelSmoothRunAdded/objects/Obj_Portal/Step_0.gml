/// @description
// You can write your code in this editor

//flicker
litfactor = reach_tween(litfactor,litflicker,mult);

if litfactor = 101 {litflicker = 99;}
if litfactor = 99 
{
	litflicker = 101;
	mult = choose(1.2,1.3,1.4);
}

//nextroom

if Obj_Player.input_use && range 
{
	Obj_Transition.next = 1;
	range = 0;
}

if Obj_Transition.opacity == 1
{
	Obj_Transition.transitioned =1;
	room_goto_next();
}


