draw_set_halign(fa_center); draw_set_valign(fa_middle); draw_set_font(Font_Credits);


if(instance_exists(obj_player)){
	if(obj_player.cristais >= obj_player.cristais_necessarios){
		draw_text(_cx, _cy - 150, "OBRIGADO POR JOGAR!");
		draw_text(_cx, _cy - 130, "Seu irmão está a salvo!");
	}
}

draw_text(_cx, _cy - 100, "CRÉDITOS"); 

draw_text(_cx, _cy - 50, "Programação: Vitor Hugo Dos Santos Pedrini");

draw_text(_cx, _cy - 17.5, "Programação: Mateus Ferreira Dias");

draw_text(_cx, _cy + 17.5, "Áudio e Músicas: Luiz Fernando Guimarães Pereira"); 

draw_text(_cx, _cy + 50, "Arte e Design: Clarice Constance Nogueira Paul"); 

draw_text(_cx, _cy + 120, "Pressione [ESPAÇO] ou [ESC] para voltar");

