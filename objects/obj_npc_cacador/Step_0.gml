if (!instance_exists(obj_dialog)
&& keyboard_check_released(ord("J"))) {
    can_talk_again = true;
}

if (!instance_exists(obj_dialog)) {
    if (distance_to_object(obj_player) < 8) {
        can_talk = true;

        if (can_talk_again
        && keyboard_check_pressed(ord("J"))
        && obj_player.monstros_matados < monstros_necessarios) {

            can_talk_again = false;

            create_dialog([
                {
                    name: "Caçador",
                    msg: "Ei, Fazendeiro! Precisamos conversar."
                },
                {
                    name: "Caçador",
                    msg: "Os monstros estão se aproximando cada vez mais da vila."
                },
                {
                    name: "Caçador",
                    msg: "Nunca vi essas criaturas tão agressivas. Tem alguma coisa errada."
                },
                {
                    name: "Caçador",
                    msg: "Preciso que você derrote 10 monstros para ajudar a proteger nossos moradores."
                },
                {
                    name: "Caçador",
                    msg: "Não é um trabalho fácil, mas posso te recompensar por isso."
                }
            ]);

        } else if (can_talk_again
        && keyboard_check_pressed(ord("J"))
        && obj_player.monstros_matados >= monstros_necessarios
        && !recompensa_entregue) {

            can_talk_again = false;
            recompensa_entregue = true;

            obj_player.gold += 2000;
			obj_player.cristais += 1;

            create_dialog([
                {
                    name: "Caçador",
                    msg: "Você realmente conseguiu! Muito bem!"
                },
                {
                    name: "Caçador",
                    msg: "Por enquanto, a região está um pouco mais segura."
                },
                {
                    name: "Caçador",
                    msg: "Mas essas criaturas não estão agindo normalmente. Parece que estão fugindo de alguma coisa."
                },
                {
                    name: "Caçador",
                    msg: "Tome, este cristal estava guardado comigo. Acho que será mais útil nas suas mãos."
                },
                {
                    name: "Protagonista",
                    msg: "Mais um cristal! Agora tenho " + string(obj_player.cristais) + " de " + string(obj_player.cristais_necessarios) + "."
                },
                {
                    name: "Caçador",
                    msg: "E aqui estão seus 400 ouros. Você mereceu."
                },
				 {
                    name: "Caçador",
                    msg: "Se quer mais uma dessas coisas, o último cristal está dentro da caverna do monstro, fica à esquerda da vila!"
                }
            ]);

        } else if (can_talk_again
        && keyboard_check_pressed(ord("J"))
        && recompensa_entregue) {

            can_talk_again = false;

            create_dialog([
                {
                    name: "Caçador",
                    msg: "Continue atento, Fazendeiro. Ainda não sabemos o que está acontecendo na floresta."
                }
            ]);
        }

    } else {
        can_talk = false;
    }
}