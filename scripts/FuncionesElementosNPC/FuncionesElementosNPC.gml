
function crearBotonInteractuar(npc){
	
	//var indicadores = instance_create_layer(0,0,"indicadores");
	
	npc.indicadorInteraccion = layer_sequence_create("indicadores",npc.x,npc.y-(npc.sprite_height*(3/4)),indInteractuar);	
	
}
function eliminarBotonInteractuar(npc){
	layer_sequence_destroy(npc.indicadorInteraccion);
	
	npc.indicadorInteraccion = noone;

}
