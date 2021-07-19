/// @desc
if (room != global.startmenu){
	if (menu_control==false){
		instance_deactivate_all(true);
		menu_control = true;
		with (oPlayer) can_move = false;
	}
	else{
		instance_activate_all();
		menu_control = false;
		with (oPlayer) can_move = true;
	}
}