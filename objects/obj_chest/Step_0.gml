
var loot = loot_list[irandom(array_length(loot_list) -1)];

if(!itsOpen && keyboard_check_pressed(ord("J")) && place_meeting(x,y,obj_player)){
	itsOpen = true;
	obj_player.gold += loot
	sprite_index = spr_chest_opened;
}