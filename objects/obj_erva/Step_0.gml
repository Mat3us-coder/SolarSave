if(place_meeting(x,y,obj_player) && keyboard_check_pressed(ord("J"))){
	obj_player.ervas_coletadas += adicionar_quantidade;
	instance_destroy();
}