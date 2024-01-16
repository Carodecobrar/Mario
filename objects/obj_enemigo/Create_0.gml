/// @description Variables iniciales
image_speed = 0.1;
vel = 0.5;
grav = 0.2;
vel_salto = -5;
vsp = 0;
hsp = 0;
derecha = choose(true, false);
contador = 0;
contadorMorirse = 60;
contadorAplastado = 300;
nombre = nombresDeLosEnemigos.tortuga;
aplastado = false;
pateado = false;
randomize();
switch(nombre){
	case nombresDeLosEnemigos.hongo:
		sprite_index = spr_hongo;
		break;
	case nombresDeLosEnemigos.tortuga:
		sprite_index = spr_tortuga;
		break;
}