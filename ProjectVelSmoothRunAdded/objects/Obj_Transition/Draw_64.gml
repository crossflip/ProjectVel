/// @description fadeblack
// You can write your code in this editor
if next == 1
{
	opacity = clamp(opacity + (fade * 0.05),0,1)
}

if opacity == 1
{
	fade = -1;
}

draw_set_alpha(opacity);
draw_set_color(c_black);
draw_rectangle(0,0,guiWidth,guiHeight,0);
draw_set_alpha(1);

if next == 1 && fade = -1

if transitioned == 1 && opacity == 0
{
	fade = 1;
	next = 0;
	transitioned = 0;
}