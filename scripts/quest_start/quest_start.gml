function quest_start(_nome, _tipo, _quantidade){
	with(obj_quest){
		quest_ative = true;
		quest_completa = false;
		
		quest_nome = _nome;
		quest_tipo = _tipo;
		quest_objetivo = _quantidade;
		quest_progresso = 0;
	}
}