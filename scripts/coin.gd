extends Area2D

@onready var game_manager = %GameManager

func _on_body_entered(body):
	print("Money up!")
	game_manager.add_coin()
	queue_free()
