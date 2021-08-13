/// @description Collide with enemy
// You can write your code in this editor
if can_hit{
	hp --;
	can_hit = false;
	alarm[1] = room_speed;
	with (other) flash = room_speed;
}
