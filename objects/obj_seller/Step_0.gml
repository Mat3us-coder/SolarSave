
if(!instance_exists(obj_dialog) && keyboard_check_released(ord("J"))){
	can_talk_again = true;
}

if (!instance_exists(obj_dialog)) {
    if (distance_to_object(obj_player) < 1) {
        can_talk = true;

        if (can_talk_again && keyboard_check_pressed(ord("J"))) {
            can_talk_again = false;

            create_dialog([
                {
                    name: "Mercador",
                    msg: "Ola Aventureiro, Gostaria de algumas Bugigangas?"
                },
                {
                    name: "Mercador",
                    msg: "Para comprar melhora de dano, interaja com o pano vermelho."
                },
                 {
                    name: "Mercador",
                    msg: "Para comprar melhora de velocidade de ataque, interaja com o pano azul."
                },
                {
                    name: "Mercador",
                    msg: "Para comprar melhora de alcance de ataque, interaja com o pano roxo."
                },
				{
				
                    name: "Mercador",
                    msg: "Qualquer um dos panos custa 2000 ouros, e podem ser comparadas 4 vezes no total."
                }
            ]);
        }
    } else {
        can_talk = false;
    }
}


//if(keyboard_check_pressed(ord("J")) && place_meeting(x,y,obj_player)){
//	if(nivel_upgrade < nivel_maximo){
//		if(obj_player.gold >= custo_upgrade_dano){
//			obj_player.gold -= custo_upgrade_dano;
//			obj_player.damage += dano_por_upgrade;
//			nivel_upgrade += 1;
//		}
//	}else{
//		exit;
//	};
//}

//if(keyboard_check_pressed(ord("K")) && place_meeting(x,y,obj_player)){
//	if(nivel_upgrade < nivel_maximo){
//		if(obj_player.gold >= custo_upgrade_range){
			
//			obj_player.gold -= custo_upgrade_range;
//			obj_player.atk_range += range_por_upgrade;
//			obj_player.atk_range =+ range_por_upgrade;
//			nivel_upgrade += 1;
//		}
//	}else{
//		exit;
//	};
//}

//if(keyboard_check_pressed(ord("L")) && place_meeting(x,y,obj_player)){
//	if(nivel_upgrade < nivel_maximo){
//		if(obj_player.gold >= custo_upgrade_atkspd){
			
//			obj_player.gold -= custo_upgrade_atkspd;
//			obj_player.atk_speed += atkspd_por_upgrade;
//			nivel_upgrade += 1;
//		}
//	}else{
//		exit;
//	};
//}