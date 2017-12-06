


//sprinting
if input_run
{
	spd = run_spd;
}
else 
{
	spd = walk_spd;
}


//direction
moveX = (input_right - input_left) * spd;
moveY = (input_down - input_up) * spd;

//collision

if moveX != 0
{
	if place_meeting(x+moveX,y,Obj_BlockParent)
	{
		repeat(abs(moveX))
		{
			if !place_meeting(x+sign(moveX),y,Obj_BlockParent)
			{
				x += sign(moveX);
			}
			else { break; }
		}
		moveX = 0;
	}
}

if moveY != 0
{
	if place_meeting(x,y+moveY,Obj_BlockParent)
	{
		repeat(abs(moveX))
		{
			if !place_meeting(x,y+sign(moveY),Obj_BlockParent)
			{
				y += sign(moveY);
			}
			else { break; }
		}
		moveY = 0;
	}
}


x += round(moveX)
y += round(moveY)