
function crearBotonInteractuar(npc){
	
	//var indicadores = instance_create_layer(0,0,"indicadores");
	
	var sx =npc.x+(npc.sprite_width*5/6),sy = npc.y-(npc.sprite_height*5/6);
	var indInteraccion = layer_sequence_create(global.CAPA_INDICADORES,sx,sy,indInteractuar);
	
	layer_depth(global.CAPA_INDICADORES, (depth > npc.depth) ? npc.depth - 1 : depth + 1);
	var escala = min(npc.sprite_width/36,1.5);
	
	layer_sequence_xscale(indInteraccion,escala);
	layer_sequence_yscale(indInteraccion,escala);
	npc.indicadorInteraccion = indInteraccion;
	
}
function eliminarBotonInteractuar(npc){
	layer_sequence_destroy(npc.indicadorInteraccion);
	
	npc.indicadorInteraccion = noone;

}
