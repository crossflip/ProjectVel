/// @description follow object
// You can write your code in this editor

xTo = clamp(following.x, following.x - hborder, following.x + hborder);
yTo = clamp(following.y, following.y - vborder, following.y + vborder);

x += (xTo - x)/20;
y += (yTo - y)/20;