/// @description Insert description here
// You can write your code in this editor


if (!escribiendo) exit;

var infoMensaje = dialogo[indMensaje];

var mensaje = infoMensaje.mensaje;
var longitudMensaje = string_length(mensaje);


mensaje_completo = letras>=longitudMensaje;
if (!mensaje_completo){
	if (keyboard_check_pressed(vk_space)){
		letras = longitudMensaje;
	}
	else letras+=velocidadEscritura;
}else{
	if (keyboard_check_pressed(vk_space)){
		if ((indMensaje+1)<array_length(dialogo)){
			pasarMensaje();
		}else{
			escribiendo = false;
			cerrar_cuadro_dialogo();
		}
	}
}
