extends Node



var mapa_escenas: Dictionary = {
	"inicio": ["calle"],
	"calle": ["calle_no_sangre", "cocina", "segundo_piso"],
	"cocina": ["finalsimismo", "finalasumadre", "bosquemonstruo"],
	"bosquemonstruo": ["finalluz", "finalhueco"],
	"segundo_piso": ["finalprota", "escenamadre"],
	"escenamadre": ["finalmadre"],
	"calle_no_sangre": ["casa", "calle_con_manos"],
	"casa": ["finalvoces", "bano"],
	"bano": ["finalangel"],
	"calle_con_manos": ["oscuridad"],
	"finalsimismo": [],
	"finalasumadre": [],
	"finalluz": [],
	"finalhueco": [],
	"finalprota": [],
	"finalmadre": [],
	"finalvoces": [],
	"finalangel": [],
	"oscuridad": []
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
