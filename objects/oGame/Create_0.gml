/// @description spawn number of object in random location
function spawn(object, number, _layer){
	var xx, yy;
	hh = sprite_get_height(object) / 2;
	hw = sprite_get_width(object) / 2;
	repeat(number){
		//xx = random(room_width);
		//yy = random(room_height)
		//while collision_line(xx, yy, xx, yy+20, oWall, false, false) > 0 && collision_rectangle(xx-64,yy-64,xx+64,yy+64,oWall,false,false){
		//while !place_free(xx,yy) && collision_line(xx, yy, xx, yy+10, oWall, false, false) < 0{
		while true{
			xx = random(room_width);
			yy = random(room_height);
			if collision_line(xx, yy, xx, yy+200, oWall, false, false) && collision_rectangle(xx-hw,yy-hh,xx+hw,yy+hh,oWall,false,false) < 0 break; 
		}
		instance_create_layer(xx, yy, _layer, object)		
	}
}
