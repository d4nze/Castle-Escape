function box_logic_x(_obj_instance, _h_spd)
{
	_obj_instance.h_spd = _h_spd
	with(_obj_instance)
	{
		if place_meeting(x + h_spd, y, global.walls) or place_meeting(x + h_spd, y, obj_box) or place_meeting(x + h_spd, y, obj_box_horizontal) or place_meeting(x + h_spd, y, obj_box_vertical)
			h_spd = 0
		x += h_spd
	}
}