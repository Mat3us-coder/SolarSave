image_blend= c_white;

image_blend= c_white;

if(hp <=0){
	obj_player.add_xp(xp_value);
	obj_player.gold += gold_drop;
	obj_player.monstros_matados += 1
	instance_destroy();
	if(obj_player.hp < obj_player.hp_total){
		obj_player.hp += 1;
	}
}