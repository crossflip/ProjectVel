/// Scr_Player_SmoothMoveState

var hspeed_wanted = 0;
var vspeed_wanted = 0;

if input_right - input_left = 1 {hspeed_wanted += spd;}
else if input_right - input_left = -1 {hspeed_wanted -= spd;}
else if input_right - input_left = 0 {hspeed_wanted = 0;}
if input_up - input_down = 1 {vspeed_wanted -= spd;}
else if input_up - input_down = -1 {vspeed_wanted += spd;}
else if input_up - input_down = 0 {vspeed_wanted = 0;}


//direction
moveX += (hspeed_wanted - moveX) * 0.2;
moveY += (vspeed_wanted - moveY) * 0.2;

xsp = round(moveX);
ysp = round(moveY);

//collision

if xsp != 0
{
	if !place_free(x+xsp,y-2)
	{
		repeat(abs(xsp))
		{
			if place_free(x+sign(xsp),y)
			{
				x += sign(xsp);
			}
			else { break; }
		}
		xsp = 0;
	}
}

if ysp != 0
{
	if !place_free(x,y+ysp)
	{
		repeat(abs(ysp))
		{
			if place_free(x,y+sign(ysp))
			{
				y += sign(ysp);
			}
			else { break; }
		}
		ysp = 0;
	}
}


x += xsp;
y += ysp;