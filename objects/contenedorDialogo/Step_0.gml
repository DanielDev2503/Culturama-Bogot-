/// @description Insert description here
// You can write your code in this editor


if (!escribiendo) exit;

var infoMensaje = dialogo[indMensaje];

var mensaje = infoMensaje.mensaje;

if (letras < string_length(mensaje)){
	letras+=velocidadEscritura;
}

else{
	if (keyboard_check_pressed(vk_space)){
		if ((indMensaje+1)<array_length(dialogo)){
			pasarMensaje();
		}else{
			show_message("dialogo terminado");
			cerrar_cuadro_dialogo();
		}
	}
}