/// @description Insert description here
// You can write your code in this editor


var xCamara = camera_get_view_x(global.Camara);

var yCamara = camera_get_view_y(global.Camara);


var objX = ObjetivoCamara.x - global.AnchoCamara/2;
var objY = ObjetivoCamara.y - global.AltoCamara/2;


objX = clamp(objX,0,room_width-global.AnchoCamara);
objY = clamp(objY,0,room_height-global.AltoCamara);


xCamara = lerp(xCamara,objX,VelocidadCamara);

yCamara = lerp(yCamara,objY,VelocidadCamara);

camera_set_view_pos(global.Camara,xCamara,yCamara);