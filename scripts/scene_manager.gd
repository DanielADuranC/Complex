extends CanvasLayer

var pantallanegra: ColorRect

func _ready() -> void:
	layer = 50
	
	pantallanegra = ColorRect.new()
	pantallanegra.color = Color(0, 0, 0, 0)
	pantallanegra.set_anchors_preset(Control.PRESET_FULL_RECT)
	pantallanegra.mouse_filter = Control.MOUSE_FILTER_IGNORE
	
	add_child(pantallanegra)
	
	
	
func cambiar_escena(escena: String):
	pantallanegra.mouse_filter = Control.MOUSE_FILTER_STOP
	
	var tween = create_tween()
	tween.tween_property(pantallanegra, "color:a", 1, 2)
	await tween.finished
	
	get_tree().change_scene_to_file(escena)
	
	var tween2 = create_tween()
	tween2.tween_property(pantallanegra, "color:a", 0, 2)
	await tween.finished
	
	pantallanegra.mouse_filter = Control.MOUSE_FILTER_IGNORE
