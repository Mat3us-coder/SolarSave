
if(!instance_exists(obj_dialog)){

	var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);
	var _diag = point_distance(0,0,_hor,_ver)

	if (_diag > 0){
		_hor /= _diag;
		_ver /= _diag;
	}
	if (_hor !=0 or _ver !=0){
		if (_ver > 0) sprite_index = spr_player_walk_down;
		else if (_ver < 0) sprite_index = spr_player_walk_up;
		else if (_hor > 0) sprite_index = spr_player_walk_right;
		else if (_hor < 0) sprite_index = spr_player_walk_left;
	
		facing= point_direction(0,0,_hor,_ver);
	}
	else{
		if(sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
		if(sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
		if(sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
		if(sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
	}
	if(alarm[1] <= 0){
		if(keyboard_check_pressed(ord("J"))){
			var _inst = instance_create_depth(x,y,depth,obj_attack);
			_inst.image_angle = facing;
			_inst.damage *= damage;
		
			alarm[1] = atk_speed;
		}
	}

	if (alarm[2] <=0 && alarm[3] <=0 && keyboard_check_pressed(ord("K"))){
			iframes = true;
			move_speed = dash_speed;
			alarm[2] = 5;
			alarm[3] = 120;
			image_blend = c_blue;
	}

}




