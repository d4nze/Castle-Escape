h_input = keyboard_check(vk_right) - keyboard_check(vk_left)
v_input = keyboard_check(vk_down) - keyboard_check(vk_up)

is_sprinting = keyboard_check(vk_shift)

// Sprint logic
current_spd = normal_spd

if is_sprinting
{
	if sprint_stamina > 0
	{
		current_spd = sprint_spd
		sprint_stamina--
	}
}
else
	sprint_stamina = min(sprint_stamina_start, sprint_stamina + 1)

// Adding momentum
h_spd = h_input * current_spd
v_spd = v_input * current_spd

// Simple collision

if place_meeting(x + h_spd, y, obj_wall)
	h_spd = 0
if place_meeting(x + h_spd, y, obj_box)
{
	box_logic_x(instance_place(x + h_spd, y, obj_box), h_spd)
	if place_meeting(x + h_spd, y, obj_box)
		h_spd = 0
}
x += h_spd
if place_meeting(x, y + v_spd, obj_wall)
	v_spd = 0
if place_meeting(x, y + v_spd, obj_box)
{
	box_logic_y(instance_place(x, y + v_spd, obj_box), v_spd)
	if place_meeting(x, y + v_spd, obj_box)
		v_spd = 0
}
y += v_spd