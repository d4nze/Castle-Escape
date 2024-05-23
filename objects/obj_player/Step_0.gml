var _h_input = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left)
var _v_input = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)

h_spd = _h_input * 16
v_spd = _v_input * 16

if place_meeting(x + h_spd, y, global.walls)
	h_spd = 0
if place_meeting(x + h_spd, y, obj_box)
{
	box_logic_x(instance_place(x + h_spd, y, obj_box), h_spd)
	if place_meeting(x + h_spd, y, obj_box)
		h_spd = 0
}
x += h_spd

if place_meeting(x, y + v_spd, global.walls)
	v_spd = 0
if place_meeting(x, y + v_spd, obj_box)
{
	box_logic_y(instance_place(x, y + v_spd, obj_box), v_spd)
	if place_meeting(x, y + v_spd, obj_box)
		v_spd = 0
}
y += v_spd
