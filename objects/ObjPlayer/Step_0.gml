//movimiento
{
if keyboard_check(vk_right) {
  motion_add(0, 0.5);
}
if keyboard_check(vk_left) {
  motion_add(180, 0.5);
}
if keyboard_check(vk_up) {
  motion_add(90, 0.5);
}
if keyboard_check(vk_down) {
  motion_add(270, 0.5);
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
if(hspeed>10)
	hspeed=10;
if(hspeed<-10)
	hspeed=-10;
if(vspeed>10)
	vspeed=10;
if(vspeed<-10)
	vspeed=-10;
}
//colision con muro
{
	
}