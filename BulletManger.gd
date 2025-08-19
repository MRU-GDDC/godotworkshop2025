extends Node

@export var bullet: PackedScene
var right: Marker2D
var left: Marker2D

func _ready() -> void:
	right = $Right
	left = $Left




func _on_timer_timeout() -> void:
	var bullet = bullet.instantiate()
	bullet.position = Vector2(randf_range(right.position.x, left.position.x), right.position.y )
	add_child(bullet)
