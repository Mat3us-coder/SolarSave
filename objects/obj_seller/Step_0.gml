
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