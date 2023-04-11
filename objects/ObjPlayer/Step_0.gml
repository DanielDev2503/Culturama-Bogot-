velocidad = 0.5;
velocidad_maxima = 10;
//movimiento
{

	
if keyboard_check(vk_right){
  motion_add(0, velocidad);
}
if keyboard_check(vk_left) {
  motion_add(180, velocidad);
}
if keyboard_check(vk_up) {
  motion_add(90, velocidad);
}
if keyboard_check(vk_down) {
  motion_add(270, velocidad);
}
}
//desaceleración
{
if !keyboard_check(vk_right){
	if(hspeed>0){
		motion_add(0, -0.25);
	}
}
if !keyboard_check(vk_left){
	if(hspeed<0){
		motion_add(180, -0.25);
	}
}
if !keyboard_check(vk_up){
	if(vspeed<0){
		motion_add(90, -0.25);
	}
}
if !keyboard_check(vk_down){
	if(vspeed>0){
		motion_add(270, -0.25);
	}
}
}
//velocidad máxima
{
if(abs(hspeed)>velocidad_maxima)
	hspeed=velocidad_maxima*(hspeed/hspeed);
if(abs(vspeed)>10)
	vspeed=velocidad_maxima*(vspeed/vspeed);
//colision con muro
}
{
	if !place_free(x+hspeed,y){
		hspeed=0;
	}
	if !place_free(x,y+vspeed){
		vspeed = 0;
	}
		
}