/// @description Insert description here
// You can write your code in this editor


velocidadEscritura = 0.5;

escribiendo = false;

dialogo = -1;

indMensaje = 0;

letras = 0;

escribir = function (_dialogo){
	dialogo = _dialogo;
	escribiendo = true;
}

pasarMensaje = function(){
	indMensaje++;
	letras = 0;
}