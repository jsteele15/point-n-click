extends Node2D

var item_type : int = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("click"):
		Dialogic.VAR.items.screwdriver = true
		Dialogic.start("screwdriver_found")
		call_deferred("queue_free")
