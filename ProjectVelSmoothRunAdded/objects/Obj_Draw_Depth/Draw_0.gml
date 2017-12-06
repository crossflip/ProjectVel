/// @description draw grid
// You can write your code in this editor
var inst_num = instance_number(Par_Depth);
var d_grid = ds_depthgrid;

if ds_exists(ds_depthgrid,ds_type_grid)
{
	//resize
	ds_grid_resize(d_grid, 2, inst_num);

	//add instances
	var yy = 0;
	with (Par_Depth)
	{
		d_grid[# 0, yy] = id;
		d_grid[# 1, yy] = y;
		yy += 1;
	}

	//sort grid boi
	ds_grid_sort(d_grid,1,1);

	//loop through grid and draw shit lul
	var inst = 0;
	yy = 0;

	repeat inst_num
	{
		//get id
		inst = d_grid[# 0, yy];

		//draw self
		with inst
		{
			event_perform(ev_draw,0);
		}
		yy += 1;

	}
}