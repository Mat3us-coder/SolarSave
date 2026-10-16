if (!instance_exists(obj_dialog)) {
    if (distance_to_object(obj_player) < 2) {
        can_talk = true;
        if (can_talk_again && keyboard_check_pressed(ord("J"))) {
            can_talk_again = false;

            create_dialog([
                {
                    name: "Adulta Despreocupada",
                    msg: "Tome cuidado fazendeiro!"
                },
				{
                    name: "Adulta Despreocupada",
                    msg: "Muitos monstros tem surgido na vila inexplicavelmente!"
                },
            ]);
        }
	}
	}