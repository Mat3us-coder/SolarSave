if(!instance_exists(obj_dialog) && keyboard_check_released(ord("J"))){
	can_talk_again = true;
}

if (!instance_exists(obj_dialog)) {
    if (distance_to_object(obj_player) < 8) {
        can_talk = true;
        if (can_talk_again && keyboard_check_pressed(ord("J")) && obj_player.ervas_coletadas < ervas_necessarias) {
            can_talk_again = false;

            create_dialog([
                {
                    name: "Monstro Gentil",
                    msg: "Olá, Fazendeiro!"
                },
                {
                    name: "Monstro Gentil",
                    msg: "Não querendo abusar da sua boa vontade..."
                },
                {
                    name: "Monstro Gentil",
                    msg: "Mas pode coletar algumas ervas medicinais mágicas para mim?"
                },
                {
                    name: "Monstro Gentil",
                    msg: "..."
                },
				{
                    name: "Monstro Gentil",
                    msg: "Oque? Onde encontrá-las? Elas estão por aí pelo bosque, elas são azuis (Não me pergunte como)"
                },
				{
                    name: "Monstro Gentil",
                    msg: "Mas é SUPER conveniente, porque você pode facilmente acha-las por aí! Relaxa, você será recompensado."
                },
				{
                    name: "Monstro Gentil",
                    msg: "...Viu como sou legal?!"
                },
            ]);
        }else if(can_talk_again && keyboard_check_pressed(ord("J")) && obj_player.ervas_coletadas >= ervas_necessarias && !recompensa_entregue){
			
			can_talk_again = false;
			recompensa_entregue = true;
			obj_player.gold += 500;
			 create_dialog([
                {
                    name: "Monstro Gentil",
                    msg: "Olá, Fazendeiro!"
                },
				{
                    name: "Monstro Gentil",
                    msg: "E não é que você realmente coletou as ervas? *risadas monstruosamente gentis*"
                },
				{
                    name: "Monstro Gentil",
                    msg: "Aqui está! Talvez você consiga comprar desde uma paçoca até uma melhoria MORTÍFERA pra sua arma!"
                },
				{
                    name: "Monstro Gentil",
                    msg: "Viu como é bom ajudar as pessoas?"
                },
				{
                    name: "Monstro Gentil",
                    msg: "... Oque? Cristais Mágicos?"
                },
				{
                    name: "Monstro Gentil",
                    msg: "Desculpe, não gosto desse tipo de coisa, que tal sair perguntando por aí?"
                },
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
                    name: "Monstro Gentil",
                    msg: "Não sei nada sobre cristais mágicos, não sou um especialista em... Arcano...!"
                },
				{
                    name: "Monstro Gentil",
                    msg: "..."
                },
				{
                    name: "Monstro Gentil",
                    msg: "Nem toda piada precisa de um trocadilho, sabia?"
                },
            ]);
        }
	}
	}