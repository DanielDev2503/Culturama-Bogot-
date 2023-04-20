/// @description Insert description here
// You can write your code in this editor

//#macro AnchoCamara 640
//#macro AltoCamara 360
//#macro EscaladoCamara 3

global.AnchoCamara = 1280;
global.AltoCamara = 720;
global.EscalaVision = 1.5;

#macro VelocidadCamara 0.1

ObjetivoCamara = ObjPlayer;
global.Camara = camera_create_view(0,0,global.AnchoCamara,global.AltoCamara);
//global.Camara = camera_create_view(0,0,global.AnchoCamara,global.AltoCamara,0,ObjPlayer,4,4,global.AnchoCamara,global.AltoCamara);


view_enabled = true;
view_visible[0] = true;

view_set_camera(0,global.Camara);
var AnchoPantalla= global.AnchoCamara;
var AltoPantalla = global.AltoCamara;
window_set_size(AnchoPantalla,AltoPantalla);
surface_resize(application_surface,AnchoPantalla,AltoPantalla);

window_set_position((display_get_width()-AnchoPantalla)/2,(display_get_height()-AltoPantalla)/2);