extends Node

@onready var score_label = $ScoreLabel

var score = 0

func add_coin():
	score += 1
	score_label.text = "You collected " + str(score) + " coins, "

