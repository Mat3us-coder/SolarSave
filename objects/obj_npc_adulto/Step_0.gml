if (!instance_exists(obj_dialog)) {
    if (distance_to_object(obj_player) < 2) {
        can_talk = true;
        if (can_talk_again && keyboard_check_pressed(ord("J"))) {
            can_talk_again = false;

            create_dialog([
                {
                    name: "Adulto afoito",
                    msg: "Fazendeiro! Fazendeiro! É importante!"
                },
				{
                    name: "Adulto afoito",
                    msg: "Parece que o único caminho que leva para a vila está cheia de monstros!"
                },
				{
                    name: "Adulto afoito",
                    msg: "Que cara é essa?! Você sabe lutar, não sabe?"
                },
				{
                    name: "Adulto afoito",
                    msg: "... Deixe de ser covarde!"
                },
				{
                    name: "Adulto afoito",
                    msg: "Use sua arma com a tecla J e use sua arrancada com a tecla K!"
                },
            ]);
        }
	}
	}