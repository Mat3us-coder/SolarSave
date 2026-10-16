if(!instance_exists(obj_dialog) && keyboard_check_released(ord("J"))){
	can_talk_again = true;
}

if (!instance_exists(obj_dialog)) {
    if (distance_to_object(obj_player) < 8) {
        can_talk = true;
        if (can_talk_again && keyboard_check_pressed(ord("J")) && obj_player.lenhas_coletadas < coletas_necessarias) {
            can_talk_again = false;

            create_dialog([
                {
                    name: "Adulto Arrogante",
                    msg: "Hmph! Eu preferia quando seus pais geriam a vila!"
                },
				{
                    name: "Adulto Arrogante",
                    msg: "Vocês jovens vivem na gandaia! Mas se você coletar 4 lenhas para mim eu posso te recompensar!"
                },
				{
                    name: "Adulto Arrogante",
                    msg: "Onde encontrar? Ora, Ao sul, seu fedelho! Mas cuidado, lá tem alguns monstros poderosos, vá com cautela!"
                },
            ]);
        }else if(can_talk_again && keyboard_check_pressed(ord("J")) && obj_player.lenhas_coletadas >= coletas_necessarias && !recompensa_entregue){
			
			can_talk_again = false;
			recompensa_entregue = true;
			obj_player.gold += 1000;
			obj_player.cristais += 1;
			 create_dialog([
                {
                    name: "Adulto arrogante",
                    msg: "Hmph! E não é que você realmente coletou as lenhas..."
                },
				{
                    name: "Adulto arrogante",
                    msg: "Cristais mágicos? Bom... Tenho algo parecido."
                },
				{
                    name: "Protagonista",
                    msg: "Parece um dos cristais... Ótimo! Agora tenho um total de " + string(obj_player.cristais) + " de " + string(obj_player.cristais_necessarios)
                }
            ]);
		}else{
			can_talk = false;
		}
    } else {
        can_talk = false;
    }
}


if (!instance_exists(obj_dialog)) {
    if (distance_to_object(obj_player) < 8) {
        can_talk = true;
        if (can_talk_again && keyboard_check_pressed(ord("J"))) {
            can_talk_again = false;

            create_dialog([
                {
                    name: "Adulto arrogante",
                    msg: "Já tem oque queria, não é? Que tal me deixar em paz?!"
                },
            ]);
        }
	}
	}