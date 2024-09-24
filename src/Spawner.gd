extends Timer

var spawnParalon = load("res://tscn/pipa_paralon.tscn") 

func _on_timeout() -> void:
	print("paralon deployed")
	
	var inst = spawnParalon.instantiate()
	owner.add_child(inst)
	
	inst.position = Vector2(1, randf_range(150, -150))
	pass # Replace with function body.
 
