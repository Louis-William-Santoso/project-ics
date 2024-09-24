extends Node2D
var speed = 2.5

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	move_local_x(-speed)


func _on_add_score_body_entered(body: Node2D) -> void:
	if body.name == "little_jhonny":
		AddSkor.score += 1
