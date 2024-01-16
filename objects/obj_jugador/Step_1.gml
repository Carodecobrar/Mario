if (!place_meeting(x + vel, y, obj_bloque)){
	if keyboard_check(vk_right){
		x += vel;	
	}
}
if (!place_meeting(x - vel, y, obj_bloque)){
	if keyboard_check(vk_left){
		x -= vel;	
	}
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

if (place_meeting(x, y + 1, obj_bloque) && keyboard_check(vk_up) && estado == estados.normal){
	vsp = vel_salto;
}
y += vsp;