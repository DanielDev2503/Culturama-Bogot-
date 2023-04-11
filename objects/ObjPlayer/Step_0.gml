velocidad = 0.5;
velocidad_maxima = 10;
freno = 0.25;
//movimiento
{

	
if keyboard_check(vk_right){
<<<<<<< HEAD
  motion_add(0, velocidad);
=======
  motion_add(0, 0.5);
>>>>>>> 9945726f67e6077e9914a6b91bd5bbee0c3393c3
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

if !keyboard_check(vk_right) && hspeed > 0 {
	hspeed = sign(hspeed) * max(0, abs(hspeed) - freno);
}
if !keyboard_check(vk_left) && hspeed < 0 {
	hspeed = sign(hspeed) * max(0, abs(hspeed) - freno);
}
if !keyboard_check(vk_up) && vspeed < 0 {
	vspeed = sign(vspeed) * max(0, abs(vspeed) - freno);
}
if !keyboard_check(vk_down) && vspeed > 0 {
	vspeed = sign(vspeed) * max(0, abs(vspeed) - freno);
}
}
//velocidad máxima
{
if(speed>velocidad_maxima)
	motion_set(direction,velocidad_maxima);

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