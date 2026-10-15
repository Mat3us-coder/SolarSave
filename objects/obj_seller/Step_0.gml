if(keyboard_check_pressed(ord("J")) && place_meeting(x,y,obj_player)){
	if(nivel_upgrade < nivel_maximo){
		if(obj_player.gold >= custo_upgrade_dano){
			obj_player.gold -= custo_upgrade_dano;
			obj_player.damage += dano_por_upgrade;
			nivel_upgrade += 1;
		}
	}else{
		exit;
	};
}

if(keyboard_check_pressed(ord("K")) && place_meeting(x,y,obj_player)){
	if(nivel_upgrade < nivel_maximo){
		if(obj_player.gold >= custo_upgrade_range){
			
			obj_player.gold -= custo_upgrade_range;
			obj_player.atk_range += range_por_upgrade;
			obj_player.atk_range =+ range_por_upgrade;
			nivel_upgrade += 1;
		}
	}else{
		exit;
	};
}

if(keyboard_check_pressed(ord("L")) && place_meeting(x,y,obj_player)){
	if(nivel_upgrade < nivel_maximo){
		if(obj_player.gold >= custo_upgrade_atkspd){
			
			obj_player.gold -= custo_upgrade_atkspd;
			obj_player.atk_speed += atkspd_por_upgrade;
			nivel_upgrade += 1;
		}
	}else{
		exit;
	};
}