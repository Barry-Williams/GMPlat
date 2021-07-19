global.startmenu = room_add();
room_set_height(global.startmenu, display_get_height());
room_set_width(global.startmenu, display_get_width());
room_set_persistent(global.startmenu, false);
room_goto(global.startmenu);
