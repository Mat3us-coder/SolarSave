if(!instance_exists(obj_dialog) && keyboard_check_released(ord("J"))){
	can_talk_again = true;
}

if (!instance_exists(obj_dialog)) {
    if (distance_to_object(obj_player) < 8) {
        can_talk = true;
        if (can_talk_again && keyboard_check_pressed(ord("J")) && obj_player.ervas_coletadas < coletas_necessarias) {
            can_talk_again = false;

            create_dialog([
                {
                    name: "Monstro Gentil",
                    msg: "Alto lá, Fazendeiro! Não sou seu inimigo!"
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
                    msg: "Oque? Onde encontrá-las? Ora essa! Estão por todos os lados, são essas plantinhas azuis"
                },
				{
                    name: "Monstro Gentil",
                    msg: "Mas é SUPER conveniente, porque você pode facilmente acha-las por aí! Relaxa, você será recompensado."
                },
				{
                    name: "Monstro Gentil",
                    msg: "Eu só não pego porque... Sabe... Meio que não tenho mãos..."
                },
				{
                    name: "Monstro Gentil",
                    msg: "Ei, que cara é essa? Não vai achando que darei uma de joão sem braço, hahahahaha!"
                },
            ]);
        }else if(can_talk_again && keyboard_check_pressed(ord("J")) && obj_player.ervas_coletadas >= coletas_necessarias && !recompensa_entregue){
			
			can_talk_again = false;
			recompensa_entregue = true;
			obj_player.gold += 500;
			obj_player.cristais += 1;
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
                    msg: "Bom... Acho que tenho essa coisa... Aqui! Tome isso."
                },
				{
                    name: "Protagonista",
                    msg: "Parece um dos cristais... Ótimo! Agora tenho um total de " + string(obj_player.cristais) + " de " + string(obj_player.cristais_necessarios)
                },
				{
                    name: "Protagonista",
                    msg: "Esse cristal é brilhante mesmo, parece que ele deixa tudo mais... CLARO, hahahahahaha!"
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
                    name: "Monstro Gentil",
                    msg: "Não sei muito sobre esses cristais mágicos, não sou um especialista em... Arcano...!"
                },
				{
                    name: "Monstro Gentil",
                    msg: "..."
                },
				{
                    name: "Monstro Gentil",
                    msg: "Porque você nunca ri das minhas piadas?"
                },
            ]);
        }
	}
	}