draw_text(200, 100, string("capajugador: ") + string(depth));

draw_text(200, 200, string("hspeed: ") + string(hspeed));

draw_text(200, 150, string("speed: ") + string(speed));

if (NpcCercano){
	draw_text(200, 250, string("capanpc: ") + string(NpcCercano.sprite_width)+", "+string(NpcCercano.sprite_height));
}