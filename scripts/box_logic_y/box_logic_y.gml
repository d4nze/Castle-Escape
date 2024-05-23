function box_logic_y(_obj_instance, _v_spd)
{
	_obj_instance.v_spd = _v_spd
	with(_obj_instance)
	{
		if place_meeting(x, y + v_spd, obj_wall) or place_meeting(x, y + v_spd, obj_box)
			v_spd = 0
		y += v_spd
	}
}