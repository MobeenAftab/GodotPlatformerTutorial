extends Area2D

# Signls trigger code based on events.


func _on_body_entered(body):
	print("Money up!")
	# Remove coin from scene.
	queue_free()
