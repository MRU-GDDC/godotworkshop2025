extends Area2D

@export var damage: int

func _process(delta: float) -> void:
	position.y += 200 * delta




func _on_body_entered(body: Node2D) -> void:
	if body.has_method("take_damage"):
		body.take_damage(damage)
		queue_free()
