extends RigidBody2D

func new_dir():
	linear_velocity = Vector2(randf_range(100, 500), 0).rotated(randf_range(0, TAU))

func _ready():
	new_dir()

var n=0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	n += 1
	if n % 1000 == 0: 
		new_dir()
