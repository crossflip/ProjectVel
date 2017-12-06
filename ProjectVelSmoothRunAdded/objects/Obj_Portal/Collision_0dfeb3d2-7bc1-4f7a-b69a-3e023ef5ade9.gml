/// @description quit
// You can write your code in this editor

Obj_Transition.next = 1;

if Obj_Transition.opacity == 1
{
	room_goto_next();
	Obj_Transition.transitioned =1;
}
