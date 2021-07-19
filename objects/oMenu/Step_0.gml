/// @desc go through menu


if menu_control{
	if (keyboard_check_pressed(vk_up)){
		menu_cursor++;
		if (menu_cursor >= menu_numitems) menu_cursor = 0;
	}
	if (keyboard_check_pressed(vk_down)){
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_numitems-1;
	}
	if (keyboard_check_pressed(vk_enter)){
		menu_committed = menu_cursor;
		if (menu_committed == menu_committed.NewGame) room_goto(rL1);
		if (menu_committed == menu_committed.cont){
			if (!file_exists(SAVEFILE)) room_goto(rL1);
			else{
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				room_goto(target);
			}
		}
		if (menu_committed = menu_committed.quit) game_end();
	}
}
