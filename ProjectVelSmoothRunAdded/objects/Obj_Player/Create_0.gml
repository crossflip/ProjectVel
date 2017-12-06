/// @description Creato
//5nite state machines

enum states
{
	walk,
	potato,
	combat
}

//lightsettings
litfactor = 50;
litoffset = 24;

//initialize state
state = states.walk

//movement variables
spd = 1.5;
walk_spd = 1.5;
run_spd = 3;
moveX = 0;
moveY = 0;


//anim variables
xframe = 0;
yframe = 0;
anim_length = 6;
y_offset = sprite_get_yoffset(mask_index)
x_offset = sprite_get_xoffset(mask_index)

//dustparticle
dustcount = 0;
dustindex = Spr_DustA;

dustsystem = part_system_create();
part_system_depth(dustsystem,depth+1);

dust = part_type_create();
part_type_life(dust,20,25);

dustemitter = part_emitter_create(dustsystem);






