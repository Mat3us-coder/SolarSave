function enemy_shoot(){
	if(alarm[2] <= 0){
		var _bullet = instance_create_depth(x,y, depth, obj_bullet);
	
		_bullet.direction = point_direction(x,y,obj_player.x, obj_player.y);
		_bullet.speed= 1;
		
	alarm[2] = 120;
	}
}