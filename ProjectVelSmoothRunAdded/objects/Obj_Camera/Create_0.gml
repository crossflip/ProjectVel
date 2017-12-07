/// @description Init camera
// You can write your code in this editor
following = Obj_Player;

hborder = 60;
vborder = 30;

x = clamp(following.x, following.x - hborder, following.x + hborder);
y = clamp(following.y, following.y - vborder, following.y + vborder);

xTo = Obj_Player.x;
yTo = Obj_Player.y;