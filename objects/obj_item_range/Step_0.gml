if(distance_to_object(obj_player) < 2){
	can_interact= true;
	
	if(keyboard_check_pressed(ord("K")) && place_meeting(x,y,obj_player)){
		if(nivel_upgrade < nivel_maximo){
			if(obj_player.gold >= custo_upgrade_range){
				obj_player.gold -= custo_upgrade_range;
				obj_player.atk_range += range_por_upgrade;
				nivel_upgrade += 1;
			}
		}else{
			exit;
		};
	}
}else{
	can_interact= false;
}