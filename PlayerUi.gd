extends Control

func _ready() -> void:
	$ProgressBar.max_value = PlayerStats.player_helth

func _process(delta: float) -> void:
	$ProgressBar.value = PlayerStats.player_helth

	if(PlayerStats.player_score > 0):
		PlayerStats.player_score = PlayerStats.player_score - 1 * delta
		$Label.text = "score: " + str(PlayerStats.player_score) 
	pass
