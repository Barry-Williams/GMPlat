/// @desc menu items
#macro SAVEFILE "save.sav"

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width;
menu_y = gui_height - gui_margin;
menu_x_target = 25;
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
enum menu_committed{
	quit,
	cont,
	NewGame
}

menu_committed = -1;
menu_control = true;

menu_items[2] = "New Game";
menu_items[1] = "Continue";
menu_items[0] = "Quit";
menu_numitems = array_length(menu_items);
menu_cursor = 2;

