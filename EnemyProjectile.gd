extends Area2D



func _process(delta: float) -> void:
	position.y += 200 * delta




func _on_body_entered(body: Node2D) -> void:
	if body.get_script():
		var script = body.get_script()
		if body.has_method("take_damage"):
			script.take_damage(1)
			queue_free()
