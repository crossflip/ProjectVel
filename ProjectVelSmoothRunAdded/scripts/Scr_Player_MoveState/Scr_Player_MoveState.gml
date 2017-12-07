///Scr_Player_MoveState


//direction
moveX = (input_right - input_left) * spd;
moveY = (input_down - input_up) * spd;

//collision

if moveX != 0
{
	if !place_free(x+moveX,y-2)
	{
		repeat(abs(moveX))
		{
			if place_free(x+sign(moveX),y)
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
	if !place_free(x,y+moveY)
	{
		repeat(abs(moveX))
		{
			if place_free(x,y+sign(moveY))
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