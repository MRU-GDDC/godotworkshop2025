extends TileMapLayer



func _ready() -> void:
	var tween = get_tree().create_tween()
	tween.set_loops(0)
	tween.tween_property($".","position",Vector2(0,-300),(1.5))
	tween.chain().tween_property($".","position",Vector2(0,0),(0))
