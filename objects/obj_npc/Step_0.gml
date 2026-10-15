if(!instance_exists(obj_dialog) && keyboard_check_released(ord("J"))){
	can_talk_again = true;
}

if (!instance_exists(obj_dialog)) {
    if (distance_to_object(obj_player) < 8) {
        can_talk = true;

        if (can_talk_again && keyboard_check_pressed(ord("J"))) {
            can_talk_again = false;

            create_dialog([
                {
                    name: "Monstro Gentil",
                    msg: "Ola Aventureiro, Nao sou seu inimigo!"
                },
                {
                    name: "Monstro Gentil",
                    msg: "Oque? Nao acredita em mim?"
                },
                {
                    name: "Monstro Gentil",
                    msg: "..."
                },
                {
                    name: "Monstro Gentil",
                    msg: "E Serio!"
                }
            ]);
        }
    } else {
        can_talk = false;
    }
}