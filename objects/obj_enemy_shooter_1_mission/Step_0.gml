if (instance_exists(obj_player)){
	var _dist = distance_to_object(obj_player);
	
	if(_dist < keep_distance){
		var _dir = point_direction(obj_player.x, obj_player.y,x,y);
		
		target_x = obj_player.x + lengthdir_x(keep_distance, _dir);
		target_y = obj_player.y + lengthdir_y(keep_distance, _dir);
		enemy_shoot();
	}
	else if (_dist > keep_distance + 20 && _dist < distance_to_player){
		var _dir = point_direction(x,y,obj_player.x,obj_player.y);
		
		enemy_shoot();
		target_x = obj_player.x + lengthdir_x(keep_distance, _dir);
		target_y = obj_player.y + lengthdir_y(keep_distance, _dir);
		
	}
	var _hor = clamp(target_x - x, -1,1);
	var _ver = clamp(target_y - y,-1,1);
	
	move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_enemy_parent]);
	
}