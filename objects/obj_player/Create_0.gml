move_speed = 2;
hp = 10;
hp_total = hp;
damage = 1;
facing = 0;
atk_range = 0.5;
atk_speed = 40;


dash_speed = 12;
max_speed= 2;
iframes = false;

level = 1;
xp = 0;
xp_require = 100;
gold = 0;

monstros_matados = 0;
ervas_coletadas = 0;
caminho_liberado_monstros = 0;
cristais = 0;

action = false;

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




//cutscene inicial

if (!instance_exists(obj_dialog)) {
            create_dialog([
                {
                    name: "Protagonista",
                    msg: "..."
                },
                {
                    name: "Protagonista",
                    msg: "Meu irmão... Preciso Salvá-lo!"
                },
                {
                    name: "Protagonista",
                    msg: "Ouvi de um ancião que a cura para esta doença são por meio dos 4 cristais mágicos."
                },
                {
                    name: "Protagonista",
                   msg: "Será que alguem dá vila sabe sobre esses cristais mágicos?"
                },
				 {
                    name: "Protagonista",
                    msg: "Seja forte, irmão!"
                }
            ]);
}