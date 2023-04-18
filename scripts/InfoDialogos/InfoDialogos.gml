// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


global.locutores = ds_map_create()

function crearLocutor(Obj, nombre){
	global.locutores[? Obj] =  {nombre: nombre, sprite: object_get_sprite(Obj)};
}



crearLocutor(ObjPlayer, "TU");
crearLocutor(ObjNPC1, "NPC1");





global.dialogos = ds_map_create();

function agregarDialogo(idDialogo, dialogo){
	global.dialogos[? idDialogo] =  dialogo;
}

agregarDialogo(
	"pruebaNPC1",
	[
		{
			locutor: locutores[? ObjPlayer],
			mensaje: "Hola"
		},
		{
			locutor: locutores[? ObjNPC1],
			mensaje: "Estamos de pruebas..."
		},
	
		{
			locutor: locutores[? ObjNPC1],
			mensaje: "Este es un dialogo de pruebas..."
		},
		{
			locutor: locutores[? ObjNPC1],
			mensaje: "Este dialogo se destruira en 3..."
		},
		{
			locutor: locutores[? ObjPlayer],
			mensaje: "Espera que!"
		},
		{
			locutor: locutores[? ObjNPC1],
			mensaje: "2..."
		},
		{
			locutor: locutores[? ObjPlayer],
			mensaje: "Un momento! ¿¡Que esta pasando!?"
		},
		{
			locutor: locutores[? ObjNPC1],
			mensaje: "1..."
		}
	]	
)



