/// @description All that player stuff
// You can write your code in this editor
Scr_Getinputs ();

if (state = states.walk)
{
	Scr_Player_MoveState();
}
if (state = states.combat)
{
	Scr_Player_SmoothMoveState();
}

//sprinting
if input_run
{
	state = states.combat
	spd = run_spd; 
}
else 
{
	state = states.walk
	spd = walk_spd;
}


//dust
if yframe > 0
{
	dustcount +=1
}
else {dustcount = 20;}

part_type_sprite(dust,dustindex,1,1,0);

part_emitter_region(dustsystem,dustemitter,x,x,y,y,ps_shape_rectangle,ps_distr_linear);

if dustcount > 30
{
	part_emitter_burst(dustsystem,dustemitter,dust,1);
	dustcount = 0;
	dustindex = choose(Spr_DustA,Spr_DustB,Spr_DustC);
}

