/// @description Animaciones
switch (nombre){
	case nombresDeLosEnemigos.hongo: 
		if (!aplastado){
			if (image_index > 2){
				image_index = 0;
			}
		} else {
			image_index = 2;
			image_speed = 0;
		}
		break;
	case nombresDeLosEnemigos.tortuga: 
		if (aplastado){
			sprite_index = spr_caparazon_tortuga;
		} else {
			sprite_index = spr_tortuga;
		}
		break;
}