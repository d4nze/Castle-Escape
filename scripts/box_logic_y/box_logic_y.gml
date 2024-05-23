function box_logic_y(obj_instance, v_spd){
	obj_instance.v_spd = v_spd
	with(obj_instance)
	{
		if place_meeting(x, y + v_spd, obj_wall)
			v_spd = 0
		else if place_meeting(x, y + v_spd, obj_box)
		{
			box_logic_x(instance_place(x, y + v_spd, obj_box), v_spd)
			if place_meeting(x, y + v_spd, obj_box)
				v_spd = 0
		}
		y += v_spd
	}
}