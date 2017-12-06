//smoooth

var hspeed_wanted = 0;
var vspeed_wanted = 0;

if input_right - input_left = 1 {hspeed_wanted += spd;}
else if input_right - input_left = -1 {hspeed_wanted -= spd;}
else if input_right - input_left = 0 {hspeed_wanted = 0;}
if input_up - input_down = 1 {vspeed_wanted -= spd;}
else if input_up - input_down = -1 {vspeed_wanted += spd;}
else if input_up - input_down = 0 {vspeed_wanted = 0;}


spd = run_spd; 
//set this in player when you set the state



//direction
moveX += (hspeed_wanted - moveX) * 0.2;
moveY += (vspeed_wanted - moveY) * 0.2;

var xsp = round(moveX);
var ysp = round(moveY);

//collision

if xsp != 0
{
	if place_meeting(x+xsp,y,Obj_BlockParent)
	{
		repeat(abs(xsp))
		{
			if !place_meeting(x+sign(xsp),y,Obj_BlockParent)
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
	if place_meeting(x,y+ysp,Obj_BlockParent)
	{
		repeat(abs(ysp))
		{
			if !place_meeting(x,y+sign(ysp),Obj_BlockParent)
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