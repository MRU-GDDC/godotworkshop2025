extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GameManager.boss_deafeted.connect(victory)
	GameManager.player_lost.connect(game_over)

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func game_over():
	$Lost.visible = true
	print("lost")
	pass
func victory():
	$winner.visible = true
	$winner/VBoxContainer/WinnerScore.text = "score : " + str(PlayerStats.player_score) 
	
	print("winner")

	pass
