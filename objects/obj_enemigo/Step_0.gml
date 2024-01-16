/// @description Morirse
var jugadorDesdeArriba = collision_rectangle(x - 4, y - 10, x + 4, y - 9, obj_jugador, false, true);
if (jugadorDesdeArriba){
	switch(nombre){
		case nombresDeLosEnemigos.hongo:
			if (!aplastado){
				contador = contadorMorirse;
				//Comunicarse con mario para que salte
				with(jugadorDesdeArriba){
					vsp = vel_salto/2;
				}
				aplastado = true;
			}
			break;
		case nombresDeLosEnemigos.tortuga:
			if (!aplastado){
				contador = contadorAplastado;
				image_index = 0;
				image_speed = 0;
				aplastado = true;
			}
			break;
	}
}
if (contador != 0){
	if (!pateado)
		contador--;
} else {
	if (aplastado){
		if (nombre == nombresDeLosEnemigos.hongo)
			instance_destroy();
		else
			image_speed = 0.1;
		aplastado = false;	
	}
}

if derecha{
	image_xscale = 1;
}else{
	image_xscale = -1;
}
