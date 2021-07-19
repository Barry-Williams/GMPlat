/// @description Spawn power
// You can write your code in this editor
randomise();
if (room == rL1){
	spawn(oPower,10, "power")
	instance_create_layer(98,356,"player",oPlayer);
	instance_create_layer(98,356,"gun",oGun);
}

if room == rL2{
	instance_destroy(oPlayer);
	instance_destroy(oGun);
	instance_destroy(oPower);
	instance_destroy(oEmeny);
	
	spawn(oEmeny, 6, "enemy");
	spawn(oPower, 2, "power");
	instance_create_layer(98,356,"player",oPlayer);
	instance_create_layer(98,356,"gun",oGun);
}