/// @description Draw score
gui_w = display_get_gui_width()
draw_text(40,40, score)
if (oPlayer.hp > 15){ //draw 1 heart and hp in numbers if over 15
	draw_sprite(sHeart, 0, gui_w - 40, 0)
	draw_text(gui_w, 40, oPlayer.hp)
}else{
	for (var i = 0; i < oPlayer.hp; i++){ //loop to draw 1 heart per hp
		var _xx = gui_w - i * 40
		draw_sprite(sHeart, 0, _xx, 0)
	}
}


