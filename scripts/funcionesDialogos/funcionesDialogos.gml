// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.cuadroDialogo = -1;
function crear_cuadro_dialogo(dialogo){
	var cuadroDialogo = instance_create_layer(0,0,global.CAPA_INDICADORES,contenedorDialogo);
	escala = 1.25;
	
	var cx = camera_get_view_x(global.Camara)+ global.AnchoCamara/2;
	var cy = camera_get_view_y(global.Camara)+ global.AltoCamara/2;
	global.cuadroDialogo = layer_sequence_create(global.CAPA_INDICADORES,cx,cy,SeqDialogo);
	layer_sequence_xscale(global.cuadroDialogo,escala);
	layer_sequence_yscale(global.cuadroDialogo,escala);
	cuadroDialogo.escribir(dialogo);
}

function cerrar_cuadro_dialogo(){
	layer_sequence_destroy(global.cuadroDialogo);
	global.cuadroDialogo = noone;
	instance_destroy(contenedorDialogo);
}