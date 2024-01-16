if estado == estados.normal{
	if xprevious == x{
		image_index = 0;
	}

	if x > xprevious{
		image_xscale = 1;
	}
	if x < xprevious{
		image_xscale = -1;	
	}

	if !place_meeting(x, y + 1, obj_bloque){
		sprite_index = spr_mario_jump;	
	}else{
		sprite_index = spr_mario;	
	}
	
	var enemigoDesdeLaIzquierda = collision_rectangle(x - 8, y - 6, x - 10, y + 6, obj_enemigo, false, true);
	var enemigoDesdeLaDerecha = collision_rectangle(x + 8, y - 6, x + 10, y + 6, obj_enemigo, false, true);
	if enemigoDesdeLaIzquierda || enemigoDesdeLaDerecha{
		estado = estados.muerto;
	}
}
if (keyboard_check_pressed(reset_key))
	game_restart();