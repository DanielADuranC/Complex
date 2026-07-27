extends Node


#PRUEBA (generada con inteligencia artificial, simulando las escenas del juego)
var mapa_escenas: Dictionary = {
	"inicio": ["bosque", "castillo"],
	"bosque": ["cueva", "final_bueno"],
	"castillo": ["mazmorra"],
	"cueva": ["final_neutro"],
	"mazmorra": ["final_malo"],
	"final_bueno": [],
	"final_malo": [],
	"final_neutro": [],
	"escena_olvidada": ["final_malo"]
}

func verificar_conectividad(nodo_inicio: String):
	var array : Array = [nodo_inicio]
	var nodos_visitados: Array = []
	var nodos_totales: Array = mapa_escenas.keys()
	
	while array.size() > 0:
		var nodo_actual = array.pop_back()
		if not nodo_actual in nodos_visitados:
			nodos_visitados.append(nodo_actual)
			for nodo_adyacente in mapa_escenas.get(nodo_actual, []):
				array.append(nodo_adyacente)
	
	if nodos_visitados.size() == nodos_totales.size():
		return "Todos los nodos fueron alcanzados, la ruta de escenas está bien conectada"
	else:
		var nodos_huerfanos: Array = []
		for nodo in nodos_totales:
			if not nodo in nodos_visitados:
				nodos_huerfanos.append(nodo)
		return "No se pudo alcanzar los nodos: " + str(nodos_huerfanos) + " Hay que revisar las escenas"
		
func _ready() -> void:
	print(verificar_conectividad("inicio"))
