function quest_progress(_tipo, _quantidade = 1){	
	with(obj_quest){
		if(quest_ativa && !quest_completa && quest_tipo = _tipo){
			quest_progresso += _quantidade;
			
			if(quest_progresso >= quest_objetivo){
				quest_progresso = quest_progresso;
				quest_completa = true;
				quest_ativa = false;
			}
		}
	}
}