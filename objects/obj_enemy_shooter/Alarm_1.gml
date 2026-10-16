image_blend= c_white;

if(hp <=0){
	instance_destroy();
	obj_player.add_xp(xp_value);
	obj_player.gold += gold_drop;
	obj_player.hp += 2;
}