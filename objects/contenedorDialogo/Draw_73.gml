/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(ObjTextoNombre) || !escribiendo) exit;
draw_set_font(fuenteDialogo);

var infoMensaje = dialogo[indMensaje];
var nombre = infoMensaje.locutor.nombre;
var mensaje = infoMensaje.mensaje;
var imagen = infoMensaje.locutor.sprite;


mensaje = string_copy(mensaje,0,letras);


draw_text(ObjTextoNombre.x,ObjTextoNombre.y,nombre);
var ancho = ObjMensaje.sprite_width;
draw_text_ext_color(ObjMensaje.x,ObjMensaje.y,mensaje,-1, ancho,
	c_black, c_green, c_green, c_black, 1);

var centrox = ObjImagen.x + ObjImagen.sprite_width/2;
var centroy = ObjImagen.y +ObjImagen.sprite_height;

var escalax = ObjImagen.sprite_width/sprite_get_width(imagen);
var escalay = ObjImagen.sprite_height/sprite_get_height(imagen);

draw_sprite_ext(imagen,0,centrox,centroy,escalax,escalay,0,-1,1);
