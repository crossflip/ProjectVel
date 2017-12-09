///Scr_Player_MoveState



//direction
moveX = (input_right - input_left) * spd;
moveY = (input_down - input_up) * spd;

//collision

if moveX != 0
{
	var collisionH = instance_place(x+moveX,y,Par_Block);
	if collisionH != noone && collisionH.collideable
	{
		repeat(abs(moveX))
		{
			if !place_meeting(x+sign(moveX),y,Par_Block)
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
	var collisionV = instance_place(x,y+moveY,Par_Block);
	if collisionV != noone && collisionV.collideable
	{
		repeat(abs(moveX))
		{
			if !place_meeting(x,y+sign(moveY),Par_Block)
			{
				y += sign(moveY);
			}
			else { break; }
		}
		moveY = 0;
	}
}


x += moveX
y += moveY