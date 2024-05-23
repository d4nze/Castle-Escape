function box_logic_x(obj_instance, h_spd){
	obj_instance.h_spd = h_spd
	with(obj_instance)
	{
		if place_meeting(x + h_spd, y, obj_wall)
			h_spd = 0
		else if place_meeting(x + h_spd, y, obj_box)
		{
			box_logic_x(instance_place(x + h_spd, y, obj_box), h_spd)
			if place_meeting(x + h_spd, y, obj_box)
				h_spd = 0
		}
		x += h_spd
	}
}