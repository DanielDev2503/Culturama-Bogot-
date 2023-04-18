function capas(){

	depth = -bbox_bottom
	if (NpcCercano.indicadorInteraccion){
		depthIndicador = layer_get_depth(global.CAPA_INDICADORES);
		
		if (NpcCercano.depth>depth && depth>depthIndicador){
			
			depth=round(depthIndicador)-1;
		}
	}
	
}