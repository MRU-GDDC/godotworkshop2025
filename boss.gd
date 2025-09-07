extends Area2D

@export var health:int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(0,30)
	var tween = get_tree().create_tween()
	tween.set_loops(0)
	tween.tween_property($".","position",Vector2(460,30),randf_range(3,6))
	tween.chain().tween_property($".","position",Vector2(30,30),randf_range(3,6))
	pass # Replace with function body.
func take_damage(damage: int):
	health = health  - damage
	if health <= 0:
		queue_free()
		GameManager.boss_deafeted.emit()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
