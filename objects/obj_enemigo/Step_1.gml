/// @description Colisiones y movimiento
if (!place_meeting(x + vel, y, obj_bloque)){
	if (derecha){
		hsp = vel;	
	}
}else{
	derecha = false;	
}
if (!place_meeting(x - vel, y, obj_bloque)){
	if (!derecha){
		hsp = -vel;	
	}
}else{
	derecha = true;	
}
vsp += grav;

var onepixel = sign(vsp) //up = -1, down = 1.
if (place_meeting(x,y+(vsp+(1*onepixel)),obj_bloque))
{
    //move as close as we can
    while (!place_meeting(x,y+onepixel,obj_bloque))
    {
        y = y + onepixel;
    }
    vsp = 0;
}

if nombre == nombresDeLosEnemigos.tortuga && aplastado{
	if (!pateado)
		hsp = 0;
	var jugadorDesdeLaIzquierda = collision_rectangle(x - 8, y - 8, x - 10, y + 8, obj_jugador, false, true);
	var jugadorDesdeLaDerecha = collision_rectangle(x + 8, y - 8, x + 10, y + 8, obj_jugador, false, true);
	if !pateado && (jugadorDesdeLaIzquierda || jugadorDesdeLaDerecha){
		vel = 4;
		pateado = true;
	}else if !pateado{	
		vel = 0.5;	
	}
	var jugadorDesdeArriba = collision_rectangle(x - 4, y - 10, x + 4, y - 9, obj_jugador, false, true);
	if (pateado && jugadorDesdeArriba && (sign(jugadorDesdeArriba.vsp) == 1)){
		hsp = 0;
		pateado = false;
		contador = contadorAplastado;
		//Comunicarse con mario para que salte
		with(jugadorDesdeArriba){
			vsp = vel_salto/2;
		}
	}
}
x += hsp;
y += vsp;