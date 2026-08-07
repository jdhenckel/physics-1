extends Node2D

var LittleBox = preload("res://little_box.tscn")
var n = 0
var vs

func new_box():
	var b = LittleBox.instantiate()
	b.position = Vector2(randf_range(0, vs.x), randf_range(0, vs.y))
	add_child(b)

func _ready():
	vs = get_viewport().get_visible_rect().size
	for i in 10:
		new_box()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	n += 1
	if n > 20:
		n = 0
		new_box()
