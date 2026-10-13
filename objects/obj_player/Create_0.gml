move_speed = 2;
hp = 10;
hp_total = hp;
damage = 1;
facing = 0;

dash_speed = 12;
max_speed= 2;
iframes = false;

level = 1;
xp = 0;
xp_require = 100;
gold = 0;

function add_xp(_xp_to_add){

	xp += _xp_to_add;
	if(xp >= xp_require){
		level++;
		xp -= xp_require;
		xp_require *= 1.4;
		
		hp_total += 5;
		hp = hp_total;
		damage += 0.8;
	}
}


tilemap= layer_tilemap_get_id("Tiles_Col");